-- Debug de la suite de quete de Quel'Dalar

-- Retour Arrière
UPDATE `dev_mangos`.`creature_template` SET `faction_A`=2027, `faction_H`=2027, `unit_flags`=256 WHERE `entry`='36774';


-- Debug de la quete Les plans du Concordat agenté
-- Alliance
-- Horde
UPDATE `dev_mangos`.`creature_template` SET `faction_A`=7, `faction_H`=7, `unit_flags`=0 WHERE `entry`='36774';

