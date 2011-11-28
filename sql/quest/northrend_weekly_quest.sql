-- Fusion specific raid quests
INSERT IGNORE INTO `quest_template` (`entry`,`Method`,`ZoneOrSort`,`MinLevel`,`QuestLevel`,`Type`,`RequiredClasses`,`RequiredRaces`,`RequiredSkill`,`RequiredSkillValue`,`RepObjectiveFaction`,`RepObjectiveValue`,`RequiredMinRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepFaction`,`RequiredMaxRepValue`,`SuggestedPlayers`,`LimitTime`,`QuestFlags`,`SpecialFlags`,`CharTitleId`,`PlayersSlain`,`BonusTalents`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestInChain`,`RewXPId`,`SrcItemId`,`SrcItemCount`,`SrcSpell`,`Title`,`Details`,`Objectives`,`OfferRewardText`,`RequestItemsText`,`EndText`,`CompletedText`,`ObjectiveText1`,`ObjectiveText2`,`ObjectiveText3`,`ObjectiveText4`,`ReqItemId1`,`ReqItemId2`,`ReqItemId3`,`ReqItemId4`,`ReqItemId5`,`ReqItemId6`,`ReqItemCount1`,`ReqItemCount2`,`ReqItemCount3`,`ReqItemCount4`,`ReqItemCount5`,`ReqItemCount6`,`ReqSourceId1`,`ReqSourceId2`,`ReqSourceId3`,`ReqSourceId4`,`ReqSourceCount1`,`ReqSourceCount2`,`ReqSourceCount3`,`ReqSourceCount4`,`ReqCreatureOrGOId1`,`ReqCreatureOrGOId2`,`ReqCreatureOrGOId3`,`ReqCreatureOrGOId4`,`ReqCreatureOrGOCount1`,`ReqCreatureOrGOCount2`,`ReqCreatureOrGOCount3`,`ReqCreatureOrGOCount4`,`ReqSpellCast1`,`ReqSpellCast2`,`ReqSpellCast3`,`ReqSpellCast4`,`RewChoiceItemId1`,`RewChoiceItemId2`,`RewChoiceItemId3`,`RewChoiceItemId4`,`RewChoiceItemId5`,`RewChoiceItemId6`,`RewChoiceItemCount1`,`RewChoiceItemCount2`,`RewChoiceItemCount3`,`RewChoiceItemCount4`,`RewChoiceItemCount5`,`RewChoiceItemCount6`,`RewItemId1`,`RewItemId2`,`RewItemId3`,`RewItemId4`,`RewItemCount1`,`RewItemCount2`,`RewItemCount3`,`RewItemCount4`,`RewRepFaction1`,`RewRepFaction2`,`RewRepFaction3`,`RewRepFaction4`,`RewRepFaction5`,`RewRepValueId1`,`RewRepValueId2`,`RewRepValueId3`,`RewRepValueId4`,`RewRepValueId5`,`RewRepValue1`,`RewRepValue2`,`RewRepValue3`,`RewRepValue4`,`RewRepValue5`,`RewHonorAddition`,`RewHonorMultiplier`,`RewOrReqMoney`,`RewMoneyMaxLevel`,`RewSpell`,`RewSpellCast`,`RewMailTemplateId`,`RewMailDelaySecs`,`PointMapId`,`PointX`,`PointY`,`PointOpt`,`DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`IncompleteEmote`,`CompleteEmote`,`OfferRewardEmote1`,`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`StartScript`,`CompleteScript`) VALUES 
-- Quest raid for Onyxia (Fusion add)
(100002,2,2159,80,80,62,0,0,0,0,0,0,0,0,0,0,0,0,20616,1,0,0,0,0,0,0,0,0,0,0,0,'[RAID - Repaire d''Onyxia] La fille d''Aile de mort doir mourir!','Profondément maléfique comme son père et son frère, Onyxia dirige une partie du Vol Noir depuis son repaire dans le marécage de Aprefange.
$n, Eteignez cette caverne de feu.','Tuez Onyxia.
Cette quête peut être achevée dans n''importe quels mode et difficulté de raid. ','La grosse enfin tombé, je vous en remercie. Peut être allons nous éviter un éventuel cataclysme maintenant...',NULL,'','Retournez voir l''Archimage Lan''dalock à Dalaran.',NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10184,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49426,47241,0,0,5,5,0,0,1090,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),
-- Quest raid for Archavon
(100001,2,4603,80,80,62,0,0,0,0,0,0,0,0,0,0,0,0,20616,1,0,0,0,0,0,0,0,0,0,0,0,'[RAID - Caveau d''Archavon] Les géants doivent mourir!','Le caveau d''Archavon abrite de colossale gardiens de pierre. Nul ne connaît leurs origines, mais leurs forces titanesque et leurs physionomie laissent supposer qu''il pourraient être des descendant des titans.
$n, tuez ces affames créatures de pierres. Vous devez tomber Emalon, Koralon et Archavon.','Tuez Emalon, Koralon et Archavon.
Cette quête peut être achevée dans n''importe quels mode et difficulté de raid. ','Maintenant que ces géants de caillou sont mort, nous pourrons enfin inspecter de plus près ces lieux.',NULL,'','Retournez voir l''Archimage Lan''dalock à Dalaran.',NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,31125,33993,35013,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49426,47241,0,0,5,5,0,0,1090,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0),
-- Quest Raid for Murmemort
(2459001,2,4812,80,80,62,0,0,0,0,0,0,0,0,0,0,0,0,20616,1,0,0,0,0,0,0,0,0,0,0,0,'[RAID - Citadelle de la Couronne de Glace] La liche Murmemort doit mourir !','The lich Lady Deathwhisper is the Supreme Overseer of the Cult of the Damned and keep the Oratory of the Damned. After the defeat of Kel''Thuzad at Naxxrammas, she rallied the cultists in the Citadel to defend the Lich King''s lair. $B$BWe have to defeat her if we want to reach the upper level of the Citadel. $B$BThe Council of Six has decreed the Lady Deathwhisper must die!','Kill Lady Deathwhisper.$B$BThis quest can be completed with any difficulty or size raid.','The Cult of the Damned is without its chief guardian thanks to you. Our attacks upon the Lich King''s forces will be all the more successful now.',NULL,'','Return to Archmage Lan''dalock in Dalaran.','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36855,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49426,47241,0,0,5,5,0,0,1090,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

-- Fusion specific heroic quest (Forge Of Souls, Pit of Saron)
INSERT IGNORE INTO `quest_template` (`entry`,`Method`,`ZoneOrSort`,`MinLevel`,`QuestLevel`,`Type`,`RequiredClasses`,`RequiredRaces`,`RequiredSkill`,`RequiredSkillValue`,`RepObjectiveFaction`,`RepObjectiveValue`,`RequiredMinRepFaction`,`RequiredMinRepValue`,`RequiredMaxRepFaction`,`RequiredMaxRepValue`,`SuggestedPlayers`,`LimitTime`,`QuestFlags`,`SpecialFlags`,`CharTitleId`,`PlayersSlain`,`BonusTalents`,`PrevQuestId`,`NextQuestId`,`ExclusiveGroup`,`NextQuestInChain`,`RewXPId`,`SrcItemId`,`SrcItemCount`,`SrcSpell`,`Title`,`Details`,`Objectives`,`OfferRewardText`,`RequestItemsText`,`EndText`,`CompletedText`,`ObjectiveText1`,`ObjectiveText2`,`ObjectiveText3`,`ObjectiveText4`,`ReqItemId1`,`ReqItemId2`,`ReqItemId3`,`ReqItemId4`,`ReqItemId5`,`ReqItemId6`,`ReqItemCount1`,`ReqItemCount2`,`ReqItemCount3`,`ReqItemCount4`,`ReqItemCount5`,`ReqItemCount6`,`ReqSourceId1`,`ReqSourceId2`,`ReqSourceId3`,`ReqSourceId4`,`ReqSourceCount1`,`ReqSourceCount2`,`ReqSourceCount3`,`ReqSourceCount4`,`ReqCreatureOrGOId1`,`ReqCreatureOrGOId2`,`ReqCreatureOrGOId3`,`ReqCreatureOrGOId4`,`ReqCreatureOrGOCount1`,`ReqCreatureOrGOCount2`,`ReqCreatureOrGOCount3`,`ReqCreatureOrGOCount4`,`ReqSpellCast1`,`ReqSpellCast2`,`ReqSpellCast3`,`ReqSpellCast4`,`RewChoiceItemId1`,`RewChoiceItemId2`,`RewChoiceItemId3`,`RewChoiceItemId4`,`RewChoiceItemId5`,`RewChoiceItemId6`,`RewChoiceItemCount1`,`RewChoiceItemCount2`,`RewChoiceItemCount3`,`RewChoiceItemCount4`,`RewChoiceItemCount5`,`RewChoiceItemCount6`,`RewItemId1`,`RewItemId2`,`RewItemId3`,`RewItemId4`,`RewItemCount1`,`RewItemCount2`,`RewItemCount3`,`RewItemCount4`,`RewRepFaction1`,`RewRepFaction2`,`RewRepFaction3`,`RewRepFaction4`,`RewRepFaction5`,`RewRepValueId1`,`RewRepValueId2`,`RewRepValueId3`,`RewRepValueId4`,`RewRepValueId5`,`RewRepValue1`,`RewRepValue2`,`RewRepValue3`,`RewRepValue4`,`RewRepValue5`,`RewHonorAddition`,`RewHonorMultiplier`,`RewOrReqMoney`,`RewMoneyMaxLevel`,`RewSpell`,`RewSpellCast`,`RewMailTemplateId`,`RewMailDelaySecs`,`PointMapId`,`PointX`,`PointY`,`PointOpt`,`DetailsEmote1`,`DetailsEmote2`,`DetailsEmote3`,`DetailsEmote4`,`DetailsEmoteDelay1`,`DetailsEmoteDelay2`,`DetailsEmoteDelay3`,`DetailsEmoteDelay4`,`IncompleteEmote`,`CompleteEmote`,`OfferRewardEmote1`,`OfferRewardEmote2`,`OfferRewardEmote3`,`OfferRewardEmote4`,`OfferRewardEmoteDelay1`,`OfferRewardEmoteDelay2`,`OfferRewardEmoteDelay3`,`OfferRewardEmoteDelay4`,`StartScript`,`CompleteScript`) VALUES
(600010,2,4277,80,80,85,0,0,0,0,0,0,0,0,0,0,0,0,20616,1,0,0,0,0,0,13245,0,8,0,0,0,'Preuve de la mort à la Fosse de Saron','Les salles gelées dispose d''un espace non couvert nommé la fosse. Cette fosse porta le nom d''un Dieu très ancien de la mort, Saron. Un ennemi que les Titans ne purent vaincre...Des abominations gardant ces lieux et faisant hommage à ce dieu méritent la mort à leurs tour!','Tuer Krick, Le Maître-Forge Gargivre et Tyrannus.$B$B Cette quête ne peut être effectuée qu''en mode héroïque.','Vous avez dû en affronter, des horreurs, en traversant la fosse...',NULL,NULL,'Retournez voir l''Archimage Lan''dalock à Dalaran.',NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36477,36494,36658,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49426,0,0,0,2,0,0,0,1090,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,222000,264600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(600011,2,4277,80,80,85,0,0,0,0,0,0,0,0,0,0,0,0,20616,1,0,0,0,0,0,13245,0,8,0,0,0,'Preuve de la mort à la forge des âmes','Les salles gelées dispose de plusieurs ailes, la première est une forge. Elle détient les âmes les plus innocentes comme les plus cruels.Le dévoreur des âmes est le gardien de ces lieux. Tuez le! Volez lui son âme, car il n''aura pas peur de vous la voler...','Tuer Le Dévoreur D''''âmes.$B$B Cette quête ne peut être effectuée qu''''en mode héroïque.','Vous avez dû en affronter, des horreurs, en traversant la forge...','','','Retournez voir l''''Archimage Lan''''dalock à Dalaran.','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36502,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49426,0,0,0,2,0,0,0,1090,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,222000,264600,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

-- Link des quetes sur l'archimage Lan dalock
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (20735,100002);
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (20735,100002);
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (20735,100001);
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (20735,100001);
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (20735,2459001);
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (20735,2459001);
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (20735,600010);
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (20735,600010);
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (20735,600011);
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (20735,600011);

-- Change quest exclusive group
-- Aub'Rekhan+Razuvious
UPDATE `quest_template` SET `ExclusiveGroup`=24580 WHERE `entry` IN (24580, 24582);
-- Noth+ Patchwerk
UPDATE `quest_template` SET `ExclusiveGroup`=24581 WHERE `entry` IN (24581,24583);
-- Leviathan+Tanchecaille
UPDATE `quest_template` SET `ExclusiveGroup`=24585 WHERE `entry` IN (24585,24586);
-- Ignis+Deconstructeur
UPDATE `quest_template` SET `ExclusiveGroup`=24587 WHERE `entry` IN (24587,24588);
-- Gargamoelle + Murmemort
UPDATE `quest_template` SET `ExclusiveGroup`=24590 WHERE `entry` IN (24590,2459001);
-- Croisé + caveau
UPDATE `quest_template` SET `ExclusiveGroup`=24589 WHERE `entry` IN (24589,100001);
-- Sanctum obsidien + Onyxia
UPDATE `quest_template` SET `ExclusiveGroup`=24579 WHERE `entry` IN (24579,100002);

-- Update Naxxramas raid objective quest
UPDATE `quest_template` SET `Title`='Maexxna Must Die!', `Details`='Maexxna — born deep within the mountains of Northrend many ages ago, she was captured within the dread citadel Naxxramas, where she gives birth to her brood, feeding them the corpses of all who dare venture too deeply into Naxxramas..$B$BThe Council of Six has decreed that Maexxna must die!', `Objectives`='Kill Maexxna.$B$BThis quest can be completed with any difficulty or size raid.', `OfferRewardText`='Word of your success precedes you, $C. Maexxna is no more. You did her a great service, $N.', `ReqCreatureOrGOId1`=15952 WHERE `entry`='24580';
UPDATE `locales_quest` SET `Title_loc2`='Maexxna doit mourir !', `Details_loc2`='Maexxna, qui naquit dans les profondeurs des montagnes de Norfendre il y a cela bien des lustres. Elle fut enfermée dans la funeste citadelle, où elle donne naissance à ses couvées et les nourrit de la chair de tous ceux qui osent s\'aventurer trop loin dans les tréfonds de Naxxramas.$B$BLe Conseil des Six a décidé que Maexxna devait mourir !', `OfferRewardText_loc2`='L\'annonce de votre succès vous précède, $C. Maexxna n\'est plus. Vous lui avez rendu un grand service, $N.' WHERE `entry`='24580';
UPDATE `quest_template` SET `Title`='The Four Horsemen Must Die!', `Details`='The most powerful death knights within Naxxramas are the four horsemen. They represent the pinnacle of Kel\'Thuzad\'s guard. The first, Thane Korth\'azz, holds the power of flame. The next, Lady Blaumeux, calls forth the power of shadows, drawing the souls of the living into the voracious embrace. Sir Zeliek, a paladin in life, so strong in his faith, that even in undeath, the power of the light still heeds his call, smiting his foes in battle. The final death knight, Lord Mograine, was the finest warrior that the death knights had ever seen. However, after the events of Azeroth, he vanished without a trace. Kel\'Thuzad has appointed Baron Rivendare in his place.$B$BThe Council of Six has decreed that Razuvious must die!', `Objectives`='Kill The Four Horsemen.$B$BThis quest can be completed with any difficulty or size raid.', `OfferRewardText`='Well done, $C. The Scourge military command out of Naxxramas has been thrown into disarray by the four horsemen\'s demise.', `ReqCreatureOrGOId1`=16064, `ReqCreatureOrGOId2`=16065, `ReqCreatureOrGOId3`=30549, `ReqCreatureOrGOId4`=16063, `ReqCreatureOrGOCount2`=1, `ReqCreatureOrGOCount3`=1, `ReqCreatureOrGOCount4`=1 WHERE `entry`='24582';
UPDATE `locales_quest` SET `Title_loc2`='Les quatres cavaliers doivent mourir !', `Details_loc2`='Les chevaliers de la mort les plus puissants de Naxxramas sont les quatre cavaliers. Ils constituent l\'élite suprême de la garde de Kel\'Thuzad. Le premier, Thane Korth\'azz, détient le pouvoir des flammes. La deuxième, dame Blaumeux, en appelle au pouvoir des ombres et attire les âmes des vivants dans l\'étreinte vorace de la mort. Sire Zeliek fut un paladin de son vivant, un paladin à la foi si forte qu\'il peut encore, dans la non-mort, adjurer le pouvoir de la Lumière pour châtier ses ennemis. Le dernier cavalier, le seigneur Mograine, fut le plus grand guerrier de l\'histoire des chevaliers de la mort...$B$BLe Conseil des Six a décidé que les quatres cavaliers doivent mourir !', `OfferRewardText_loc2`='Bien joué, $C. Le commandement militaire du Fléau en dehors de Naxxramas a été plongé dans le désarroi par le décès des Quatres Cavaliers.' WHERE `entry`='24582';
UPDATE `quest_template` SET `Title`='Loatheb Must Die!', `Details`='The hideous result of fusing the living plague of the Plaguelands with the bog beasts of Azeroth, Loatheb is said to control the power of healing itself.$B$BDestroy him! The Council of Six has decreed that Loatheb must die!', `Objectives`='Kill Loatheb.$B$BThis quest can be completed with any difficulty or size raid.', `OfferRewardText`='That\'s one less thorn in our side. With Loatheb destroyed, Scourge research into refining the means of creating the undead will grind to a halt.', `ReqCreatureOrGOId1`=16011 WHERE `entry`='24581';
UPDATE `locales_quest` SET `Title_loc2`='Horreb doit mourir !', `Details_loc2`='Horreb est le résultat de la fusion entre la peste vivante des Maleterres et les créatures des marais d\'Azeroth. On raconte qu\'elle contrôle le pouvoir de la guérison.$B$BDétruisez-la ! Le Conseil des six a décrété que\'Horreb doit mourir !', `OfferRewardText_loc2`='Une épine de moins dans notre flanc. Maintenant qu\'Horreb est détruit, la recherche du Fléau pour raffiner les moyens de créer des morts-vivants va s\'arrêter.' WHERE `entry`='24581';
UPDATE `quest_template` SET `Title`='Thaddius Must Die!', `Details`='Thaddius, built from the flesh of women and children, it is said that their souls are fused together - eternally bound within that foul prison of flesh. Disassemble the construct.$B$BThe Council of Six has decreed that Thaddius must die!', `Objectives`='Kill Thaddius.$B$BThis quest can be completed with any difficulty or size raid.', `OfferRewardText`='Children everywhere will sleep easier knowing that Thaddius is no more.', `ReqCreatureOrGOId1`=15928 WHERE `entry`='24583';
UPDATE `locales_quest` SET `Title_loc2`='Thaddius doit mourir !', `Details_loc2`='Thaddius est soi-disant assemblé à partir des corps de femmes et d\'enfants. Il se dit que leurs âmes à tous sont fusionnées, enfermées pour l\'éternité dans cette prison de chair.$B$BIl est temps de désassembler cette monstruosité ! Telle est la volonté du Conseil des Six !', `OfferRewardText_loc2`='Tous les enfants dormiront plus tranquillement maintenant que Thaddius n\'est plus.' WHERE `entry`='24583';

-- Update heroic daily quest reward
UPDATE `quest_template` SET `RewItemId1`=49426 WHERE `entry` IN (13255,13245,13248,13247,13253,13252,14199,13249,600010,600011);