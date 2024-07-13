CREATE TABLE stores (
  store_id NUMBER PRIMARY KEY,
  store_name VARCHAR2(100),
  location VARCHAR2(200)
);

CREATE TABLE products (
  product_id NUMBER PRIMARY KEY,
  product_name VARCHAR2(100),
  description VARCHAR2(500),
  price NUMBER(10,2)
);

CREATE TABLE inventory (
  inventory_id NUMBER PRIMARY KEY,
  store_id NUMBER,
  product_id NUMBER,
  quantity NUMBER,
  last_updated DATE,
  FOREIGN KEY (store_id) REFERENCES stores(store_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);