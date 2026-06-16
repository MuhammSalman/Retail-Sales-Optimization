show databases;

use retail_sales_optimization;


-- Which product category produce highest sales
select `Product Category`, sum(`Total Amount`) as Revenue
from sales_data
group by `Product Category`
order by Revenue desc;


-- Which product category produce highest sales qunatity
select `Product Category`, sum(`Quantity`) as Quantity
from sales_data
group by `Product Category`
order by Quantity desc;


-- Which gender buying rate is higher
select Gender, sum(`Total Amount`) as Revenue
from sales_data
group by Gender
order by Revenue desc;


-- Which year produce highest sales
select Year, sum(`Total Amount`) as revenue
from sales_data
group by Year
order by revenue desc;


-- Which month produce highest sales
select Month, sum(`Total Amount`) as Revenue
from sales_data
group by Month
order by Revenue desc;


-- Which age category buying rate is highest
select `Age Category`, sum(`Total Amount`) as Revenue
from sales_data
group by `Age Category`
order by Revenue desc;


-- Which age category buying which product category the most and in how much quantity 
select `Age Category`, `Product Category`, sum(`Total Amount`) as Revenue, sum(`Quantity`) as quantity
from sales_data
group by `Age Category`, `Product Category`
order by Revenue desc;


-- Which product category have highest sales but lowest quantity sold
select `Product Category`, sum(`Total Amount`) as Revenue, sum(`Quantity`) as Quantity
from sales_data
group by `Product Category`
order by Revenue desc, Quantity asc;







