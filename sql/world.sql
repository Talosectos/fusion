/*
-- Fix misc sql
*/

UPDATE `creature_template` SET `AIName`='' WHERE `entry`='20159';

-- Disable Training Dummy Move

UPDATE `dev_mangos`.`creature_template` SET `AIName`='NullAI' WHERE `entry`='31146';
UPDATE `dev_mangos`.`creature_template` SET `AIName`='NullAI' WHERE `entry`='32667';
UPDATE `dev_mangos`.`creature_template` SET `AIName`='NullAI' WHERE `entry`='32666';
UPDATE `dev_mangos`.`creature_template` SET `AIName`='NullAI' WHERE `entry`='31144';