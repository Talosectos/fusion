/*
-- Fix misc sql
*/

UPDATE `creature_template` SET `AIName`='' WHERE `entry`='20159';

-- Disable Training Dummy Move

UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='31146';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='32667';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='32666';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='31144';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33243';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33272';
UPDATE `creature_template` SET `AIName`='NullAI' WHERE `entry`='33229';

-- Add auction npc for Dalaran
INSERT IGNORE INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid_1`,`modelid_2`,`modelid_3`,`modelid_4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`minhealth`,`maxhealth`,`PowerType`,`minmana`,`maxmana`,`armor`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`unk16`,`unk17`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`vehicle_id`,`equipment_id`,`trainer_id`,`vendor_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`) VALUES (50010,0,0,0,0,0,7993,0,7993,0,'El Comisario Navaro','Commissaire-priseur Neutre',NULL,0,50,50,2700,2700,0,0,0,0,35,35,2097152,1.1,1.14286,1,0,77,92,0,39,1,2000,0,0,36864,0,0,0,0,0,0,61.9,83.6,100,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,2,'');
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES (NULL,50010,571,1,1,0,0,5934.94,615.344,650.644,2.33115,25,5,0,2700,0,0,0);

-- Fix primordial saronite price at Dalaran reseller
UPDATE `npc_vendor` SET `ExtendedCost`=2744 WHERE `entry`='99321' and`item`='49908' and`ExtendedCost`='2723';

-- Add dalaran vendors
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456415,32638,571,1,1,0,0,5912.78,656.225,643.736,4.79965,25,5,0,12600,0,0,0),
(4456414,32639,571,1,1,0,0,5917.2,653.693,643.849,3.77392,25,5,0,12600,0,0,0),
(4456417,32641,571,1,1,0,0,5889.39,648.388,645.88,5.94869,25,5,0,12600,0,0,0),
(4456416,32642,571,1,1,0,0,5891.23,650.926,645.858,5.56856,25,5,0,12600,0,0,0);
