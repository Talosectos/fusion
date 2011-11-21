ALTER TABLE `auction` ADD COLUMN `item_count` INT(11) UNSIGNED NOT NULL DEFAULT '0'  AFTER `item_template` , ADD COLUMN `item_randompropertyid` INT(11) NOT NULL DEFAULT '0'  AFTER `item_count` ;

ALTER TABLE `characters` DROP COLUMN `grantableLevels` ;

ALTER TABLE `character_equipmentsets` ADD COLUMN `ignore_mask` INT(11) UNSIGNED NOT NULL DEFAULT '0'  AFTER `iconname` ;

ALTER TABLE `character_instance` DROP COLUMN `extend` ;

ALTER TABLE `character_queststatus` ADD COLUMN `itemcount5` INT(11) UNSIGNED NOT NULL DEFAULT '0'  AFTER `itemcount4` , ADD COLUMN `itemcount6` INT(11) UNSIGNED NOT NULL DEFAULT '0'  AFTER `itemcount5` ;

ALTER TABLE `groups` ADD COLUMN `mainTank` INT(11) UNSIGNED NOT NULL  AFTER `leaderGuid` , ADD COLUMN `mainAssistant` INT(11) UNSIGNED NOT NULL  AFTER `mainTank` ;

ALTER TABLE `group_member` DROP COLUMN `roles` , DROP COLUMN `memberFlags` , ADD COLUMN `assistant` TINYINT(11) UNSIGNED NOT NULL  AFTER `memberGuid` ;

ALTER TABLE `guild_bank_item` 
DROP INDEX `item_guid_key` ;

ALTER TABLE `saved_variables` DROP COLUMN `NextRandomBGResetTime` ;

drop table `anticheat_config`;
drop table `anticheat_log`;
drop table `armory_character_feed_log`;
drop table `armory_character_stats`;
drop table `armory_game_chart`;
drop table `auctionhousebot`;
drop table `autobroadcast`;
drop table `character_battleground_random`;
drop table `character_extra`;
drop table `character_feed_log`;
drop table `character_myinfo`;
drop table `cheaters`;
drop table `data_backup`;
drop table `hidden_rating`;
drop table `item_soulbound_trade_data`;
