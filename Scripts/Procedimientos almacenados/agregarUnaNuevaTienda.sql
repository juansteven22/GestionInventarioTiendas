CREATE OR REPLACE PROCEDURE add_store (
  p_store_name IN VARCHAR2,
  p_location IN VARCHAR2
) AS
BEGIN
  INSERT INTO stores (store_id, store_name, location)
  VALUES (store_seq.NEXTVAL, p_store_name, p_location);
  COMMIT;
END;
/