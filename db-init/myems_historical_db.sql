-- MyEMS Historical Database

-- ---------------------------------------------------------------------------------------------------------------------
-- Schema myems_historical_db
-- ---------------------------------------------------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' ;
USE `myems`;

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_analog_value`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_analog_value` ;

CREATE TABLE IF NOT EXISTS `tbl_analog_value` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  `is_bad` BOOL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_analog_value_index_1` ON `tbl_analog_value` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_analog_value_index_2` ON `tbl_analog_value` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_analog_value_latest`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_analog_value_latest` ;

CREATE TABLE IF NOT EXISTS `tbl_analog_value_latest` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_analog_value_latest_index_1`
ON `tbl_analog_value_latest` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_analog_value_latest_index_2` ON `tbl_analog_value_latest` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_cost_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_cost_files` ;

CREATE TABLE IF NOT EXISTS `tbl_cost_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `file_name` VARCHAR(255) NOT NULL,
  `uuid` CHAR(36) NOT NULL,
  `upload_datetime_utc` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL COMMENT 'new, done, error',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_digital_value`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_digital_value` ;

CREATE TABLE IF NOT EXISTS `tbl_digital_value` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` INT NOT NULL,
  `is_bad` BOOL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_digital_value_index_1` ON `tbl_digital_value` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_digital_value_index_2` ON `tbl_digital_value` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_digital_value_latest`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_digital_value_latest` ;

CREATE TABLE IF NOT EXISTS `tbl_digital_value_latest` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` INT NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_digital_value_latest_index_1`
ON `tbl_digital_value_latest` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_digital_value_latest_index_2` ON `tbl_digital_value_latest` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_value`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_value` ;

CREATE TABLE IF NOT EXISTS `tbl_energy_value` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  `is_bad` BOOL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_value_index_1` ON `tbl_energy_value` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_energy_value_index_2` ON `tbl_energy_value` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_value_latest`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_value_latest` ;

CREATE TABLE IF NOT EXISTS `tbl_energy_value_latest` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_value_latest_index_1`
ON `tbl_energy_value_latest` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_energy_value_latest_index_2` ON `tbl_energy_value_latest` (`utc_date_time`);


-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_text_value`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_text_value` ;

CREATE TABLE IF NOT EXISTS `tbl_text_value` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` LONGTEXT NOT NULL,
  `is_bad` BOOL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_text_value_index_1` ON `tbl_text_value` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_text_value_index_2` ON `tbl_text_value` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_text_value_latest`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_text_value_latest` ;

CREATE TABLE IF NOT EXISTS `tbl_text_value_latest` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `point_id` BIGINT NOT NULL,
  `utc_date_time` DATETIME NOT NULL,
  `actual_value` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_text_value_latest_index_1`
ON `tbl_text_value_latest` (`point_id`, `utc_date_time`);
CREATE INDEX `tbl_text_value_latest_index_2` ON `tbl_text_value_latest` (`utc_date_time`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_offline_meter_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_offline_meter_files` ;

CREATE TABLE IF NOT EXISTS `tbl_offline_meter_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `file_name` VARCHAR(255) NOT NULL,
  `uuid` CHAR(36) NOT NULL,
  `upload_datetime_utc` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL COMMENT 'new, done, error',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));


-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_data_repair_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_data_repair_files` ;

CREATE TABLE IF NOT EXISTS `tbl_data_repair_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `file_name` VARCHAR(255) NOT NULL,
  `uuid` CHAR(36) NOT NULL,
  `upload_datetime_utc` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL COMMENT 'new, done, error',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_plan_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_plan_files` ;

CREATE TABLE IF NOT EXISTS `tbl_energy_plan_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `file_name` VARCHAR(255) NOT NULL,
  `uuid` CHAR(36) NOT NULL,
  `upload_datetime_utc` DATETIME NOT NULL,
  `status` VARCHAR(45) NOT NULL COMMENT 'new, done, error',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));

COMMIT;
