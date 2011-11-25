-- Debug de la suite de quete de Quel'Dalar

-- Retour Arrière
-- UPDATE `creature_template` SET `faction_A`=2027, `faction_H`=2027, `unit_flags`=256 WHERE `entry`='36774';


-- Debug de la quete Les plans du Concordat agenté
-- Alliance
-- Horde
UPDATE `creature_template` SET `faction_A`=7, `faction_H`=7, `unit_flags`=0 WHERE `entry`='36774';

-- Modification de Quel'Dalar
UPDATE `creature_template` SET `modelid_1`=25398, `modelid_2`=0, `mindmg`=586, `maxdmg`=741, `attackpower`=895, `dmg_multiplier`=7, `ScriptName`='' WHERE `entry`='37158';
