select * from df1_order;
select * from df1_orders;
--Query 1: Top 10 highest revenue generating products 
select "product id",sum("list price" * "quantity") as total_revenue from df1_orders group by "product id" order by "total_revenue" desc limit 10;

--Query 2: Top 5 cities with the highest profit margins
select o."city",d."profit" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."city",d."profit" order by "profit" desc limit 5;

--Query 3: Total discount given for each category
select o."category",d."discount amount" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",d."discount amount" order by "discount amount" desc;

--Query 4: The average sale price per product category
select "category",avg("sales price") as "average sales price" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",d."sales price" order by "average sales price" desc;

--Query 5: The region with the highest average sale price
select "region",avg("sales price") as "average sales price" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."region",d."sales price" order by "average sales price" desc;

--Query 6: The total profit per category
select "category",sum("profit") as "total profit" from df1_orders d join df1_order o on o."sub category"=d."sub category" group by o."category",d."profit" order by "total profit" desc;

--Query 7: Top 3 segments with the highest quantity of orders
select "category","quantity" as "highest quantity" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",d."quantity" order by "highest quantity" desc limit 3;

--Query 8: The average discount percentage given per region
select "region",avg("discount percent") as "avg discount percent" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."region",d."discount percent" order by "avg discount percent" desc;

--Query 9: The product category with the highest total profit
select "category",sum("profit") as "highest total profit" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",d."profit" order by "highest total profit" desc limit 1;

--Query 10: The total revenue generated per year
select "year",sum("sales price" * "quantity") as "total revenue" from df1_orders group by "year" order by "year";

--Query 11: Total Revenue per Product Category
select "category",sum("sales price" * "quantity") as "total revenue" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category" order by "category" desc;

--Query 12: Top 5 Products by Profit
select "category",o."sub category",sum("profit") as "products by profit" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",o."sub category",d."profit" order by "products by profit" desc limit 5;

--Query 13: Average Sales Price per Sub Category
select d."sub category",avg("sales price") as "avg sales price" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by d."sub category" order by d."sub category" desc;

--Query 14: Total Discount amount given by Category
select "category",sum("discount amount") as "total discount amount" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."category",d."discount amount" order by "total discount amount" desc;

--Query 15: Total Orders per Segment
select count(distinct "order id") as "total orders" from df1_order order by "total orders" desc;

--Query 16: Profit Margin per City
select o."city",d."profit" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by d."profit",o."city" order by "profit" desc;

--Query 17: Average Profit per Category
select "category",avg("profit") as "average profit" from df1_orders d join df1_order o on o."sub category"=d."sub category" group by o."category",d."profit" order by "average profit" desc;

--Query 18: Top 3 Cities by Revenue
select o."city",sum(d."list price" * d."quantity") as "revenue" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."city" order by "revenue" desc limit 3;

--Query 19: Products with No Profit
select "product id" from df1_orders group by "product id" having sum("profit")=0;

--Query 20: Top 10 country with which segment has high sales
select "country","segment",sum("sales price") as "high sales" from df1_order o join df1_orders d on o."sub category"=d."sub category" group by o."country",o."segment",d."sales price" order by "high sales" desc limit 10;

