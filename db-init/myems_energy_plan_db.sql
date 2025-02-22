-- MyEMS Energy Plan Database
-- ---------------------------------------------------------------------------------------------------------------------
-- Schema myems_energy_plan_db
-- ---------------------------------------------------------------------------------------------------------------------
USE `myems`;
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_combined_equipment_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_combined_equipment_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_combined_equipment_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `combined_equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_combined_equipment_input_category_hourly_index_1`
 ON `tbl_combined_equipment_input_category_hourly`
 (`combined_equipment_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_combined_equipment_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_combined_equipment_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_combined_equipment_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `combined_equipment_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_combined_equipment_input_item_hourly_index_1`
 ON `tbl_combined_equipment_input_item_hourly`
 (`combined_equipment_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_combined_equipment_output_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_combined_equipment_output_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_combined_equipment_output_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `combined_equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_combined_equipment_output_category_hourly_index_1`
 ON `tbl_combined_equipment_output_category_hourly`
 (`combined_equipment_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_container_charge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_container_charge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_container_charge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_container_charge_hourly_index_1`
 ON `tbl_energy_storage_container_charge_hourly`
 (`energy_storage_container_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_container_discharge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_container_discharge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_container_discharge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_container_discharge_hourly_index_1`
 ON `tbl_energy_storage_container_discharge_hourly`
 (`energy_storage_container_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_container_grid_buy_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_container_grid_buy_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_container_grid_buy_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_container_grid_buy_hourly_index_1`
 ON `tbl_energy_storage_container_grid_buy_hourly`
 (`energy_storage_container_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_container_grid_sell_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_container_grid_sell_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_container_grid_sell_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_container_grid_sell_hourly_index_1`
 ON `tbl_energy_storage_container_grid_sell_hourly`
 (`energy_storage_container_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_container_load_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_container_load_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_container_load_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_container_load_hourly_index_1`
 ON `tbl_energy_storage_container_load_hourly`
 (`energy_storage_container_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_power_station_charge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_power_station_charge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_power_station_charge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_power_station_charge_hourly_index_1`
 ON `tbl_energy_storage_power_station_charge_hourly`
 (`energy_storage_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_power_station_discharge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_power_station_discharge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_power_station_discharge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_power_station_discharge_hourly_index_1`
 ON `tbl_energy_storage_power_station_discharge_hourly`
 (`energy_storage_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_power_station_grid_buy_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_power_station_grid_buy_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_power_station_grid_buy_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_power_station_grid_buy_hourly_index_1`
 ON `tbl_energy_storage_power_station_grid_buy_hourly`
 (`energy_storage_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_power_station_grid_sell_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_power_station_grid_sell_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_power_station_grid_sell_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_power_station_grid_sell_hourly_index_1`
 ON `tbl_energy_storage_power_station_grid_sell_hourly`
 (`energy_storage_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_energy_storage_power_station_load_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_energy_storage_power_station_load_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_energy_storage_power_station_load_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_power_station_load_hourly_index_1`
 ON `tbl_energy_storage_power_station_load_hourly`
 (`energy_storage_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_equipment_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_equipment_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_equipment_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_input_category_hourly_index_1`
 ON `tbl_equipment_input_category_hourly`
 (`equipment_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_equipment_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_equipment_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_equipment_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_input_item_hourly_index_1`
 ON `tbl_equipment_input_item_hourly`
 (`equipment_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_equipment_output_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_equipment_output_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_equipment_output_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_output_category_hourly_index_1`
 ON `tbl_equipment_output_category_hourly`
 (`equipment_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_meter_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_meter_hourly_index_1`
 ON `tbl_meter_hourly`
 (`meter_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_charge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_charge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_charge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_charge_hourly_index_1`
 ON `tbl_microgrid_charge_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_discharge_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_discharge_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_discharge_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_discharge_hourly_index_1`
 ON `tbl_microgrid_discharge_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_evcharger_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_evcharger_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_evcharger_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_evcharger_hourly_index_1`
 ON `tbl_microgrid_evcharger_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_grid_buy_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_grid_buy_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_grid_buy_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_grid_buy_hourly_index_1`
 ON `tbl_microgrid_grid_buy_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_grid_sell_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_grid_sell_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_grid_sell_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_grid_sell_hourly_index_1`
 ON `tbl_microgrid_grid_sell_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_load_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_load_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_load_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_load_hourly_index_1`
 ON `tbl_microgrid_load_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_microgrid_photovoltaic_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_microgrid_photovoltaic_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_microgrid_photovoltaic_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrid_photovoltaic_hourly_index_1`
 ON `tbl_microgrid_photovoltaic_hourly`
 (`microgrid_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_offline_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_offline_meter_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_offline_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `offline_meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_offline_meter_hourly_index_1`
 ON `tbl_offline_meter_hourly`
 (`offline_meter_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_photovoltaic_power_station_generation_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_photovoltaic_power_station_generation_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_photovoltaic_power_station_generation_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `photovoltaic_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_photovoltaic_power_station_generation_hourly_index_1`
 ON `tbl_photovoltaic_power_station_generation_hourly`
 (`photovoltaic_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_photovoltaic_power_station_grid_buy_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_photovoltaic_power_station_grid_buy_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_photovoltaic_power_station_grid_buy_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `photovoltaic_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_photovoltaic_power_station_grid_buy_hourly_index_1`
 ON `tbl_photovoltaic_power_station_grid_buy_hourly`
 (`photovoltaic_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_photovoltaic_power_station_grid_sell_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_photovoltaic_power_station_grid_sell_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_photovoltaic_power_station_grid_sell_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `photovoltaic_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_photovoltaic_power_station_grid_sell_hourly_index_1`
 ON `tbl_photovoltaic_power_station_grid_sell_hourly`
 (`photovoltaic_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_photovoltaic_power_station_load_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_photovoltaic_power_station_load_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_photovoltaic_power_station_load_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `photovoltaic_power_station_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_photovoltaic_power_station_load_hourly_index_1`
 ON `tbl_photovoltaic_power_station_load_hourly`
 (`photovoltaic_power_station_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_shopfloor_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_shopfloor_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_shopfloor_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `shopfloor_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_shopfloor_input_category_hourly_index_1`
 ON `tbl_shopfloor_input_category_hourly`
 (`shopfloor_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_shopfloor_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_shopfloor_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_shopfloor_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `shopfloor_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_shopfloor_input_item_hourly_index_1`
 ON `tbl_shopfloor_input_item_hourly`
 (`shopfloor_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_space_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_space_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_space_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `space_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_space_input_category_hourly_index_1`
 ON `tbl_space_input_category_hourly`
 (`space_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_space_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_space_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_space_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `space_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_space_input_item_hourly_index_1`
 ON `tbl_space_input_item_hourly`
 (`space_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_space_output_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_space_output_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_space_output_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `space_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_space_output_category_hourly_index_1`
 ON `tbl_space_output_category_hourly`
 (`space_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_store_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_store_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_store_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `store_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_store_input_category_hourly_index_1`
 ON `tbl_store_input_category_hourly`
 (`store_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_store_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_store_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_store_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `store_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_store_input_item_hourly_index_1`
 ON `tbl_store_input_item_hourly`
 (`store_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_tenant_input_category_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_tenant_input_category_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_tenant_input_category_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tenant_id` BIGINT NOT NULL,
  `energy_category_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_tenant_input_category_hourly_index_1`
 ON `tbl_tenant_input_category_hourly`
 (`tenant_id`, `energy_category_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_tenant_input_item_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_tenant_input_item_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_tenant_input_item_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tenant_id` BIGINT NOT NULL,
  `energy_item_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_tenant_input_item_hourly_index_1`
 ON `tbl_tenant_input_item_hourly`
 (`tenant_id`, `energy_item_id`, `start_datetime_utc`);
-- ---------------------------------------------------------------------------------------------------------------------
-- Table `tbl_virtual_meter_hourly`
-- ---------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `tbl_virtual_meter_hourly` ;
CREATE TABLE IF NOT EXISTS `tbl_virtual_meter_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `virtual_meter_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `actual_value` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_virtual_meter_hourly_index_1`
 ON `tbl_virtual_meter_hourly` (`virtual_meter_id`, `start_datetime_utc`);
