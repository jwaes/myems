-- MyEMS Reporting Database

-- ---------------------------------------------------------------------------------------------------------------------
-- Schema myems_reporting_db
-- ---------------------------------------------------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' ;
USE `myems`;

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_email_messages`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_email_messages` ;

CREATE TABLE IF NOT EXISTS `tbl_email_messages` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `recipient_name` VARCHAR(128) NOT NULL,
  `recipient_email` VARCHAR(128) NOT NULL,
  `subject` VARCHAR(128) NOT NULL,
  `message` LONGTEXT NOT NULL,
  `attachment_file_name` VARCHAR(128) NULL,
  `attachment_file_object` LONGBLOB NULL,
  `created_datetime_utc` DATETIME NOT NULL,
  `scheduled_datetime_utc` DATETIME NOT NULL,
  `status` VARCHAR(32) NOT NULL COMMENT 'new, sent, timeout',
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_email_messages_index_1`
ON `tbl_email_messages` (`status`, `scheduled_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_reports`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_reports` ;

CREATE TABLE IF NOT EXISTS `tbl_reports` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `uuid` CHAR(36) NOT NULL,
  `expression` LONGTEXT NULL COMMENT 'MUST be in JSON format',
  `is_enabled` BOOL NOT NULL,
  `last_run_datetime_utc` DATETIME,
  `next_run_datetime_utc` DATETIME,
  `is_run_immediately` BOOL NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_reports_index_1` ON `tbl_reports` (`name`);


-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_reports_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_reports_files` ;

CREATE TABLE IF NOT EXISTS `tbl_reports_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `uuid` CHAR(36) NOT NULL,
  `create_datetime_utc` DATETIME NOT NULL,
  `file_name` VARCHAR(255) NOT NULL,
  `file_type` VARCHAR(45) NOT NULL COMMENT 'file_type: xlsx, pdf or docx',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_reports_files_index_1` ON `tbl_reports_files` (`file_name`);
CREATE INDEX `tbl_reports_files_index_2` ON `tbl_reports_files` (`create_datetime_utc`);

-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_template_files`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_template_files` ;

CREATE TABLE IF NOT EXISTS `tbl_template_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `uuid` CHAR(36) NOT NULL,
  `report_id` BIGINT NOT NULL,
  `file_name` VARCHAR(255) NOT NULL,
  `file_type` VARCHAR(45) NOT NULL COMMENT 'file_type: xlsx, pdf or docx',
  `file_object` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_template_files_index_1` ON `tbl_template_files` (`file_name`);
CREATE INDEX `tbl_template_files_index_2` ON `tbl_template_files` (`report_id`);

COMMIT;
