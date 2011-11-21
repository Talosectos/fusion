ALTER TABLE `account` DROP COLUMN `os` ;
ALTER TABLE `ip_banned` 
DROP PRIMARY KEY 
, ADD PRIMARY KEY (`ip`, `bandate`) ;


drop table `account_friends`;
drop table `autobroadcast`;
drop table `localization`;
drop table `warden_data_result`;