CREATE OR REPLACE FUNCTION get_total_inventory (
  p_product_id IN NUMBER
) RETURN NUMBER AS
  v_total_quantity NUMBER;
BEGIN
  SELECT SUM(quantity) INTO v_total_quantity
  FROM inventory
  WHERE product_id = p_product_id;
  
  RETURN v_total_quantity;
END;
/