CREATE OR REPLACE PROCEDURE add_product (
  p_product_name IN VARCHAR2,
  p_description IN VARCHAR2,
  p_price IN NUMBER
) AS
BEGIN
  INSERT INTO products (product_id, product_name, description, price)
  VALUES (product_seq.NEXTVAL, p_product_name, p_description, p_price);
  COMMIT;
END;
/