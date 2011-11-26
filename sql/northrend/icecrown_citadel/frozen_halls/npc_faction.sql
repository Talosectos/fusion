-- Correction des factions des npcs pour éviter les problèmes avec les groupes mixtes
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`='37597';
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`='36990';
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`='37596';
