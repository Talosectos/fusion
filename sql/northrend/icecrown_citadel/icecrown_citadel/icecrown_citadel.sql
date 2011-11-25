-- ICC SQL (by Talos)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=38222;
UPDATE  `creature_template` SET  `AIName` =  'EventAI',`ScriptName` =  '' WHERE  `creature_template`.`entry`=38222;
DELETE FROM `creature_loot_template` WHERE `entry`=347800;

-- Suppression des loots dans les coffres Gunship Battle
-- Revert changes
/*UPDATE `gameobject_template` SET `data1`=201875 WHERE `entry`='202180';
UPDATE `gameobject_template` SET `data1`=201872 WHERE `entry`='201872';
UPDATE `gameobject_template` SET `data1`=201872 WHERE `entry`='202177';
UPDATE `gameobject_template` SET `data1`=201875 WHERE `entry`='201875';*/
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`='202180';
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`='201872';
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`='202177';
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`='201875';

-- Boss pour remplacer la cannonière
/* Revert Changes
DELETE FROM `creature_template` WHERE `entry`=347800;*/
INSERT IGNORE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `PowerType`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `vehicle_id`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(347800, 352160, 352680, 352690, 0, 0, 15945, 0, 0, 0, 'Cracoucass', 'Dans ta schtroumpf', '', 0, 83, 83, 7183500, 7183500, 0, 4258, 4258, 10573, 21, 21, 0, 2.8, 1.42857, 1, 3, 496, 674, 0, 813, 35, 2000, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 365, 529, 98, 6, 76, 347800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837154, 1093073, '', 0, 3, 300, 1, 0, 0, 0, 0, 0, 0, 0, 154, 1, 0, 2273, 0, 0, 0, 1, 'boss_jaraxxus');

-- Loot sur le boss de remplacement de la cannonnière
/* Revert
DELETE FROM `creature_loot_template` WHERE `entry` = 347800;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(201872,49426,100,0,2,2,0,0,0),
(201872,50340,0,1,1,1,0,0,0),
(201872,50787,0,1,1,1,0,0,0),
(201872,50788,0,1,1,1,0,0,0),
(201872,50789,0,2,1,1,0,0,0),
(201872,50790,0,2,1,1,0,0,0),
(201872,50791,0,1,1,1,0,0,0),
(201872,50792,0,2,1,1,0,0,0),
(201872,50793,0,1,1,1,0,0,0),
(201872,50794,0,1,1,1,0,0,0),
(201872,50795,0,2,1,1,0,0,0),
(201872,50796,0,2,1,1,0,0,0),
(201872,50797,0,2,1,1,0,0,0),
(201875,49426,100,0,2,2,0,0,0),
(201875,49908,10,0,1,1,0,0,0),
(201875,50274,75,0,1,1,0,0,0),
(201875,50349,0,2,1,1,0,0,0),
(201875,50366,0,1,1,1,0,0,0),
(201875,50653,0,3,1,1,0,0,0),
(201875,50654,0,3,1,1,0,0,0),
(201875,50655,0,3,1,1,0,0,0),
(201875,50656,0,2,1,1,0,0,0),
(201875,50657,0,3,1,1,0,0,0),
(201875,50658,0,1,1,1,0,0,0),
(201875,50659,0,2,1,1,0,0,0),
(201875,50660,0,1,1,1,0,0,0),
(201875,50661,0,1,1,1,0,0,0),
(201875,50663,0,2,1,1,0,0,0),
(201875,50664,0,2,1,1,0,0,0),
(201875,50665,0,1,1,1,0,0,0),
(201875,50667,0,3,1,1,0,0,0);
*/
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (201872,201875);
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(347800,49426,100,0,2,2,0,0,0),
(347800,50340,0,1,1,1,0,0,0),
(347800,50787,0,1,1,1,0,0,0),
(347800,50788,0,1,1,1,0,0,0),
(347800,50789,0,2,1,1,0,0,0),
(347800,50790,0,2,1,1,0,0,0),
(347800,50791,0,1,1,1,0,0,0),
(347800,50792,0,2,1,1,0,0,0),
(347800,50793,0,1,1,1,0,0,0),
(347800,50794,0,1,1,1,0,0,0),
(347800,50795,0,2,1,1,0,0,0),
(347800,50796,0,2,1,1,0,0,0),
(347800,50797,0,2,1,1,0,0,0);


-- ###################################
-- L'AIGUILLE INFERIEURE (LOWER SPIRE)
-- ###################################
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456424,347800,631,1,65535,0,2273,-250.475,2211.8,199.97,3.12588,604800,0,0,7183500,4258,0,0);

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
-- Adds Dame Murmemort Phase 2
(3822201,38222,0,2,100,30,0,0,0,0,11,71494,0,0,0,0,0,0,0,0,0,0, 'Vengeful Shade - Vengeful Blast');
