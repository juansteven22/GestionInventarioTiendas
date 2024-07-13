
--Verificar el inventario total de laptops:
SELECT get_total_inventory(1) AS total_laptops FROM DUAL;


--Actualizar el inventario y verificar el log:
BEGIN
  update_inventory(1, 1, 60);
END;
/

SELECT * FROM inventory_log;