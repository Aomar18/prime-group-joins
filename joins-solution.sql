1. Get all customers and their addresses.

SELECT * FROM "customers" JOIN "addresses" ON "customers"."id"
 = "addresses"."id";



2. Get all orders and their line items.

SELECT 
"orders"."id" ,
"products"."description" ,
"line_items"."quantity" ,
"orders"."order_date"

FROM 
"orders"

JOIN 
"line_items"
ON
"orders"."id"="line_items"."order_id"

JOIN
"products"
ON
"line_items"."product_id"="products"."id"; 


3. Which warehouses have cheetos?

DELTA WAREHOUSE



SELECT 
"warehouse"."warehouse" ,
"products"."description" 

FROM
"warehouse"

JOIN 
"warehouse_product"

ON 
"warehouse"."id"=
"warehouse_product"."warehouse_id"

JOIN 
"products" 

ON 
"products"."id" =
"warehouse_product"."product_id"

WHERE 
"products"."description" =
'cheetos'
;


4. Which warehouses have diet pepsi?

Alpha , Delta , Gamma

SELECT 
"warehouse"."warehouse" ,
"products"."description" 

FROM
"warehouse"

JOIN 
"warehouse_product"

ON 
"warehouse"."id"=
"warehouse_product"."warehouse_id"

JOIN 
"products" 

ON 
"products"."id" =
"warehouse_product"."product_id"

WHERE 
"products"."description" =
'diet pepsi'
;



5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.







6. How many customers do we have?


7. How many products do we carry?


8. What is the total available on-hand quantity of diet pepsi?


9. (Stretch) How much was the total cost for each order?
10. (Stretch) How much has each customer spent in total?
11. (Stretch) How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
