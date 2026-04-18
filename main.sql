CREATE TABLE products (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE sales (
    id INT,
    product_id INT,
    amount INT
);

INSERT INTO products VALUES
(1,'Telefon'),(2,'Noutbuk');

INSERT INTO sales VALUES
(1,1,400),(2,1,350),
(3,2,200);

SELECT p.name, SUM(s.amount) AS total_sales
FROM products p
INNER JOIN sales s ON p.id = s.product_id
GROUP BY p.name
HAVING SUM(s.amount) > 700;
