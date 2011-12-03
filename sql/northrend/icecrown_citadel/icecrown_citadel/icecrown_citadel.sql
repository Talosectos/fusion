-- ICC SQL (by Talos)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=38222;
UPDATE  `creature_template` SET  `AIName` =  'EventAI',`ScriptName` =  '' WHERE  `creature_template`.`entry`=38222;
DELETE FROM `creature_loot_template` WHERE `entry`=347800;

-- Spawn des trashs à 6H
UPDATE `creature` SET spawntimesecs=21600 WHERE map=631 AND spawntimesecs=7200;

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
(3822201,38222,0,0,100,30,0,0,0,0,11,71494,0,0,0,0,0,0,0,0,0,0, 'Vengeful Shade - Vengeful Blast'),
(3822202,38222,0,0,100,30,0,0,0,0,41,9000,0,0,0,0,0,0,0,0,0,0, 'Vengeful Shade - Despawn');

-- Quetes pour enlever le debuff Marque du champion déchu de saurfang
-- Quete pour le buff icc
DELETE FROM `quest_template` WHERE `entry`=2000001;
DELETE FROM `creature_involvedrelation` WHERE `id` = 37119 AND `quest` = 2000001;
DELETE FROM `creature_questrelation` WHERE `id` = 37119 AND `quest` = 2000001;
INSERT INTO `creature_involvedrelation` (`id` ,`quest`) VALUES (37119, 2000001);
INSERT INTO `creature_questrelation` (`id` ,`quest`) VALUES (37119, 2000001);
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`='37119'; /* Add quest giver flag to npc fordring*/
INSERT IGNORE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES
(2000001, 0, 0, 70, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Enlever moi cette marque!', '', '', '', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000001);
INSERT IGNORE INTO `quest_end_scripts` (`id` ,`delay` ,`command` ,`datalong` ,`datalong2` ,`datalong3` ,`datalong4` ,`data_flags` ,`dataint` ,`dataint2` ,`dataint3` ,`dataint4` ,`x` ,`y` ,`z` ,`o` ,`comments`) VALUES
('2000001', '0', '14', '72293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Remove ak of Fallen Champion Saurfang 10N');