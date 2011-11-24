#!/usr/bin/perl
####
#       RActrl -- v0.7 -- by AlexM -@- Lymphome
#       -> commandes faciles pour RAconsole Mangos
#
# exit : 0/ok, 1/error, 2/timeout (freeze ?)
#
# usage :
#       -s serveur
#       -p port
#       -U user
#       -P pass
#       -C "mangos command"             only one !
#       -f <filename>                   command list from file, comments are line beginning with #
#       -X                              ask for password
#       -h                              (-help & --help)
#       -v                              verbose messages
#       -d                              debug messages
#       -r                              console messages
#       pipe                            echo -e "mangos cmd\ncmd 2\ncmd3\n..." | RActrl
#       redir                           RActrl < /a/way/to/a_commande.file (comments ok)
####

# use strict;
use Socket;                     # net
use Fcntl;                      # net
use Term::ReadKey;              # -X, hidden pass
use Time::HiRes qw(usleep);     # usleep();

## CONF BASE
my $DEBUG=0;                    # en/disable debug msg
my $VERBOSE=0;                  # en/disable message
my $CONSOLE=0;                  # en/disable console message

## CONF DEFAUT
my $SVRPORT=3443;               # RA port       (-p)
my $SVRNAME="127.0.0.1";        # RA server     (-s)
my $SVRLOGIN="ADMIN";         # RA login      (-U)
my $SVRPASS="ADMIN";          # RA pass       (-P)
my $SVRASKPASS=0;               # ask password  (-X)
my $SVRTRY=5;                   # try to connect
my $SVRTIMEOUT=200000;          # network timeout (MICROseconds) (200000)
my $CMDTIMEOUT=30000000;        # command timeout (MICROseconds) (30000000)

## misc
my $count=0;
my $failed=0;
my $ret;

## commandes par defaut :
my $CMDLINE="";                 # empty (RActrl -C "mangos command")
my $CMDFILE="";                 # empty (RActrl -f file)
my $CMDPIPE="";                 # empty (echo -e "mangos command\nmangos command\n" | RActrl)
my @CMD = (
"ann Hello dudes !",
"ann Event tonight, 11pm, catch the chicken !",
"ann Have fun and a good game !");

############################################################​##############
#
# MAIN()
#
############################################################​##############

############################################################​##############
# ligne de commande ou commande par defaut

if ($VERBOSE) { print " ## parsing arguments\n"; }
$ret = check_args();
if ($ret > 0) { print " ## problem arguments\n"; exit(1); }

# prechargement des commandes (source)
my @CMD_TMP = ();

if ($VERBOSE) { print " ## mangos command from "; }
if ($CMDLINE ne "") {                           # opt -C "blah"
        if ($VERBOSE) { print "command line ($CMDLINE)\n"; }
        @CMD_TMP = ( "$CMDLINE" );
} elsif ($CMDFILE ne "") {                      # opt -f <file>
        if ($CMDFILE ne "") {
                if ($VERBOSE) { print "file ($CMDFILE)\n"; }
                open FILE, "<$CMDFILE";
                @CMD_TMP = <FILE>;
                close FILE;
        }
} elsif (-p STDIN || -f STDIN) {                # commands pipe/redir
        if ($VERBOSE) { print "pipe or redir\n"; }
        if ($SVRASKPASS) { print " ## no interactive auth with pipes or redirs, sorry\n"; exit(1); }

        while (defined ($ret = <STDIN>)) { @CMD_TMP = (@CMD_TMP, "$ret"); }
        if ($#CMD_TMP == 0) { print " ## shell redirection error (empty pipe ?)\n"; exit(1); }
} else {                                        # default var
        if ($VERBOSE) { print "internal var \@CMD\n"; }
        @CMD_TMP = @CMD;
}

# charge les commandes a envoyer a mangos
@CMD=();
$count = 0;
foreach (@CMD_TMP) {
        unless (/^#/) {                 # no comment <img class="postimage" src="images/smilies/smile.png" style="vertical-align: middle;" border="0" alt="Smile" title="Smile" />
                chomp;
                $count++;
                @CMD = (@CMD, "$_");
                if ($DEBUG) { print "  # cmd $count : $_\n"; }
        }
}
if ($VERBOSE) { print "  + $count commands loaded\n"; }

############################################################​##############
# CONNEXION

if ($VERBOSE) { print " ## connecting to $SVRNAME:$SVRPORT\n"; }
$ret = srv_connect();
if ($ret == 0) { print " ## connection error\n"; exit(1); }

if ($VERBOSE) { print " ## auth ($SVRLOGIN)\n"; }
$ret = srv_auth();
if ($ret < 0) { print " ## server time out !\n"; exit(2); }
if ($ret != 1) { print " ## auth error\n"; exit(1); }

############################################################​##############
# SEND COMMANDS

if ($VERBOSE) { print " ## sending mangos commands\n"; }
$count=0; $failed=0;
foreach $cmd (@CMD)                             # traite chaque commande
{
        $count++;
        if ($VERBOSE) { print "  > $count : \"$cmd\"\n"; }

        $ret = srv_sndcmd("$cmd");
        if ($ret < 0) {                 # TIME OUT
                print " # server $SVRNAME:$SVRPORT : TIME OUT ! ($count)\n";
                exit(2);
        } elsif ($ret == 0) {           # FAILED
                if ($VERBOSE) { print "  - $count : failed !\n"; }
                $failed ++;
        }
}

# CLOSE SOCK
send SOCK,"quit\n", 0;
close (SOCK);

##########
# END

print " ## server $SVRNAME:$SVRPORT : $count commands, $failed failed\n";
if ($DEBUG || $VERBOSE) { print " # no more to say.\n"; }
exit(0);

# END
##########


############################################################​##############
#
# SUB
#
############################################################​##############

############################################################​##############
# SUB SEND COMMANDS

sub srv_sndcmd()
{ # retourne 1 si ok, 0 sinon, -1 si timeout
        my $da_end = 1;
        my $da_cmd = $_[0];
        my $da_line = "";
        my $da_ok;
        my $timed = 0;

        if ($DEBUG) { print "  # CMD \"$da_cmd\"\n"; }
        send SOCK,"$cmd\n", 0;                                  # envoi commande
        $da_ok = 1;
        while ($da_end)                                         # bidouille d'attente de reponse serveur
        {
                if ($da_line = <SOCK>) {                        # retour RA
                        if ($da_line =~ /mangos/) {                     # retour == mangos
                                $da_end = 0;
                        } elsif ($da_line =~ /existe pas|no such command|Syntax:/) {
                                if ($DEBUG) { print "  # failed !\n"; }
                                if ($CONSOLE || $DEBUG) {
                                        $da_line =~ s/(\n|\r)//g;
                                        print "  # cons: $da_line\n";
                                }
                                $da_ok = 0;
                        } elsif ($CONSOLE || $DEBUG) {
                                $da_line =~ s/(\n|\r)//g;
                                print "  # cons: $da_line\n";
                        }
                } else {                                                # pas de retour encore, sleep un peu
                        usleep($SVRTIMEOUT);
                        $timed += $SVRTIMEOUT;
                }
                if ($timed > $CMDTIMEOUT) { return(-1); }               # too much sleep => timeout ret
        }
        return($da_ok);
}

############################################################​##############
# SUB AUTH RA CONSOLE

sub srv_auth()
{ # retourne 1 si ok, 0 2 3 si erreur, -1 si timeout
        my $my_auth=0;
        my $line="";
        my $timed=0;    # timeout ?

        if ($SVRASKPASS) {
                print " * enter password for user $SVRLOGIN : ";
                ReadMode('noecho');
                $SVRPASS = ReadLine(0);
                ReadMode('normal');
                print "\n";
        }
        if ($DEBUG) { print " # auth."; }

        while ($my_auth == 0)
        {
                if ($line = <SOCK>) {
                        if ($DEBUG>1) { print " ++ $line\n"; }                  # $DEBUG = 2 pour afficher
                        # credentials confirmation
                        if ($line =~ /Username|compte/) { send SOCK,"$SVRLOGIN\n", 0; if ($DEBUG) { print "USR.";} }
                        if ($line =~ /Password|passe/) { send SOCK,"$SVRPASS\n", 0; if ($DEBUG) { print "PWD.";} }
                        if ($line =~ /Logged in/) { if ($DEBUG) { print "OK ";} }                               # attend retour accord login
                        if ($line =~ /mangos/) { $my_auth = 1; if ($DEBUG) { print "!\n";} }                    # attend prompt
                        # errors :
                        if ($line =~ /No such user/) { $my_auth = 2; if ($DEBUG) { print " user KO !\n";} }
                        if ($line =~ /Wrong pass/) { $my_auth = 3; if ($DEBUG) { print " pass KO !\n";} }
                } else {
                        if ($DEBUG) { print "."; }
                        usleep($SVRTIMEOUT);
                        $timed += $SVRTIMEOUT;
                }
                if ($timed > $CMDTIMEOUT) { return(-1); }
        }
        return($my_auth);
}

############################################################​##############
# SUB SERVER CONNECT

sub srv_connect()
{ # retourne 1 si succes 0 sinon
        # Old tricks to get connected in perl (need use socket lib)
        my ($iaddr, $port, $paddr, $proto, $flags);

        if ($DEBUG) { print " # server checking..."; }
        $iaddr=inet_aton($SVRNAME);                                     # serv to connect
        # $port = getservbyname($SVRPORT, 'tcp');                       # /etc/services
        $port = $SVRPORT;

        if ($iaddr) {                                                   # check addr
                if ($DEBUG) { print "OK\n"; }                           # blabla
        } else {
                if ($DEBUG) { print "KO\n"; }
                return(0);
        }
               
        if ($DEBUG) { print " -> Connecting to $SVRNAME:$SVRPORT."; }

        $paddr   = sockaddr_in($port, $iaddr);                          # declare socket
        $proto   = getprotobyname('tcp');                               # tcp

        if (socket(SOCK, PF_INET, SOCK_STREAM, $proto)) {               # alloc sock
                if ($DEBUG) { print "."; }
        } else {
                if ($DEBUG) { print " # Unable to allocate a socket\n"; }
                return(0);
        }

        if ( $flags = fcntl(SOCK, F_GETFL, 0) )                         # socket en nonbloquant pour lecture sans attente
        {
                if ($DEBUG) { print "."; }
                if ( fcntl(SOCK, F_SETFL, $flags | O_NONBLOCK) )
                {
                        if ($DEBUG) { print "."; }
                } else {
                        if ($DEBUG) { print " # Unable to make socket nonblocking\n"; }
                        return(0);
                }
        } else {
                if ($DEBUG) { print " # Unable to get socket flags\n"; }
                return (0);
        }

        my $try = 0;
        while (! connect(SOCK, $paddr) && $try < $SVRTRY) {             # connect sock avec SVRTRY tentatives
                if ($DEBUG) { print ".";};
                $try++;
                usleep($SVRTIMEOUT);                    # need sleep pour socket nonblocking
        }
        if ($try == $SVRTRY ) { if ($DEBUG) { print "KO ! ($SVRTRY tentatives infructueuses)\n"; }; return (0); }


        if ($DEBUG) { print "connected\n"; }
        return(1);
}

############################################################​##############
# SUB CHECK CLI ARGS

sub check_args()
{ # retour : 0 ok, 1 ko
        my $arg_count = $#ARGV + 1;
        $i = 0;
        while ($i < $arg_count) {
                if ($DEBUG) { print " + argument $i : $ARGV[$i]\n"; }
                if ($ARGV[$i] =~ /-(h|-help)/) {                        ## AIDE
                        if ($DEBUG) { print " # HELP !!\n"; }
                        print_help();
                } elsif ($ARGV[$i] =~ /-s/) {                           ## override SERVER
                        if (defined $ARGV[$i+1]) {
                                if ($DEBUG) { print "   -> serveur $ARGV[$i+1]\n"; }
                                $SVRNAME = $ARGV[$i+1];
                                $i++;
                        }
                } elsif ($ARGV[$i] =~ /-p/) {                           ## override PORT
                        if (defined $ARGV[$i+1]) {
                                if ($DEBUG) { print "   -> port $ARGV[$i+1]\n"; }
                                $SVRPORT = $ARGV[$i+1];
                                $i++;
                        }
                } elsif ($ARGV[$i] =~ /-U/) {                           ## override USER
                        if (defined $ARGV[$i+1]) {
                                if ($DEBUG) { print "   -> user $ARGV[$i+1]\n"; }
                                $SVRLOGIN = $ARGV[$i+1];
                                $i++;
                        }
                } elsif ($ARGV[$i] =~ /-P/) {                           ## override PASS
                        if (defined $ARGV[$i+1]) {
                                if ($DEBUG) { print "   -> pass $ARGV[$i+1]\n"; }
                                $SVRPASS = $ARGV[$i+1];
                                $i++;
                        }
                } elsif ($ARGV[$i] =~ /-f/) {                           ## FILE COMMAND LIST
                        if (defined $ARGV[$i+1]) {
                                if ($DEBUG) { print "   -> commandfile $ARGV[$i+1]\n"; }
                                $CMDFILE = $ARGV[$i+1];
                                if (! -f $CMDFILE) {
                                        print " # FILE $CMDFILE DOESN'T EXIST !\n";
                                        return (1);
                                }
                                $i++;
                        }
                } elsif ($ARGV[$i] =~ /-[rdvX]/) {
                        if ($ARGV[$i] =~ /d/) {                                 ## DEBUG
                                $DEBUG=1;
                                if ($DEBUG) { print "   -> debug\n"; }
                        }
                        if ($ARGV[$i] =~ /X/) {                                 ## ASK FOR PASS
                                $SVRASKPASS=1;
                                if ($DEBUG) { print "   -> debug\n"; }
                        }
                        if ($ARGV[$i] =~ /v/) {                                 ## VERBOSE
                                $VERBOSE=1;
                                if ($DEBUG) { print "   -> verbose\n"; }
                        }
                        if ($ARGV[$i] =~ /r/) {                                 ## CONSOLE
                                $CONSOLE=1;
                                if ($DEBUG) { print "   -> print console messages\n"; }
                        }
                } elsif ($ARGV[$i] =~ /-C/) {                           ## COMMANDE
                        $CMDLINE = $ARGV[$i+1];
                        if ($DEBUG) { print "   -> CLI command\n"; }
                }
                $i++;
        }

        if ($DEBUG) { print " # $i processed args out of $arg_count\n"; }
        return(0);
}      

############################################################​##############
# HEEEEEEEEEEEELP !

sub print_help()
{
        print "usage : RActrl.pl -Xvdh -s server_ip -p server_port -U user_login -P user_pass -f <filename>\n";
        print "\t-X : ask for pass\n";
        print "\t-d : debug message\n";
        print "\t-v : verbose part of the process\n";
        print "\t-h : this help\n";
        exit(0);
}
