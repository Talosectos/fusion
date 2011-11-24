#!/bin/bash
###############################################################################
# configuration
home="/opt/mangosr2"
mangosConf=$home"/etc/mangosd.conf"
updateFile=$home"/bin/heroic_daily_quest_selection.sql"
#
###############################################################################
# functions
function db_run()
{
    MYCMD='mysql --host='$1' --user='$3' --password='$4' --database='$5' '
    echo $($MYCMD <"$6")
}

function db_config_extract()
{
    echo `cat $1|grep "^"$2 |sed 's/^.*=\t*//'|sed 's/\"//g' |sed 's/\<//'|sed 's/\>//'|sed 's/\;/ /g'`
}
###############################################################################

########## Update npc quest takers end receivers
dtemp=$(db_config_extract $mangosConf "WorldDatabaseInfo")
read mangoshost mangosport mangosuser mangospass mangosdb <<<$dtemp

db_run $mangoshost $mangosport $mangosuser $mangospass $mangosdb "$updateFile"
