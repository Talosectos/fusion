-- Fix phase for mixed groups
UPDATE `creature` SET `phaseMask`=65535 WHERE `map`= '650' AND `phaseMask`='64';
UPDATE `creature` SET `phaseMask`=65535 WHERE `map`= '650' AND `phaseMask`='128';
-- Arelas Brilletoile only visible for alliance
UPDATE `creature` SET `phaseMask`=128 WHERE `id`=35005;
-- Jaeren Ligesol only visible for horde
UPDATE `creature` SET `phaseMask`=64 WHERE `id`=35004;

-- Fix factions for mixed groups
UPDATE creature_template SET faction_A = '14', faction_H = '14' WHERE entry IN (34701,36083,34702,36082,34928,35517,35119,35518,34657,36086,34703,36087,35451,35490,34705,36088,35572,36089,35617,36084,35571,36090,35570,36091);
