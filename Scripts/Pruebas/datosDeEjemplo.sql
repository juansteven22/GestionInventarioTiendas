BEGIN
  add_store('Tienda Central', 'Calle Principal 123');
  add_store('Tienda Norte', 'Avenida Norte 456');
  
  add_product('Laptop', 'Laptop de última generación', 999.99);
  add_product('Smartphone', 'Smartphone con cámara de alta resolución', 599.99);
  
  update_inventory(1, 1, 50);  -- 50 laptops en Tienda Central
  update_inventory(1, 2, 100); -- 100 smartphones en Tienda Central
  update_inventory(2, 1, 30);  -- 30 laptops en Tienda Norte
  update_inventory(2, 2, 75);  -- 75 smartphones en Tienda Norte
END;
/