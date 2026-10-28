USE `employee_directory`;

ALTER TABLE `employee` MODIFY `full_time` VARCHAR(32) NOT NULL;

UPDATE `employee` SET `full_time` = 'Full-time' WHERE `full_time` = '1';
UPDATE `employee` SET `full_time` = 'Part-time' WHERE `full_time` = '0';
