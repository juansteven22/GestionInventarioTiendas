CREATE TABLE inventory_log (
  log_id NUMBER PRIMARY KEY,
  inventory_id NUMBER,
  old_quantity NUMBER,
  new_quantity NUMBER,
  change_date DATE
);

CREATE SEQUENCE log_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER inventory_change_log
AFTER UPDATE OF quantity ON inventory
FOR EACH ROW
BEGIN
  INSERT INTO inventory_log (log_id, inventory_id, old_quantity, new_quantity, change_date)
  VALUES (log_seq.NEXTVAL, :OLD.inventory_id, :OLD.quantity, :NEW.quantity, SYSDATE);
END;
/