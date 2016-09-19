/* Create table `table` for triggers */
CREATE TABLE trigger_table(
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  table_id INT(11),
  val VARCHAR(255) DEFAULT NULL,
  status VARCHAR(255) DEFAULT 'insert',
  created TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;


/* Trigger for insert */
CREATE TRIGGER trigger_insert_table
BEFORE INSERT ON `table` FOR EACH ROW
BEGIN
  INSERT INTO trigger_table 
  SET 
      table_id = NEW.id,
      val = NEW.val,
      status = 'insert';
END


/* Trigger for update */
CREATE TRIGGER trigger_update_table
BEFORE UPDATE ON `table` FOR EACH ROW
BEGIN
  INSERT INTO trigger_table 
  SET 
      table_id = NEW.id,
      val = NEW.val,
      status = 'update';
END


/* Trigger for delete */
CREATE TRIGGER trigger_delete_table
BEFORE DELETE ON `table` FOR EACH ROW
BEGIN
  INSERT INTO trigger_table 
  SET 
      table_id = OLD.id,
      val = OLD.val,
      status = 'delete';
END
