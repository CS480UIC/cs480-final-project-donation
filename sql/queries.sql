CREATE VIEW `salesView` AS 
select `employee`.`last_name` AS `last_name`,`employee`.`first_name` AS `first_name` 
from `employee` where (`employee`.`position` = 'sales') 
order by `employee`.`last_name`;


CREATE VIEW `totalOrdersView` AS 
select lower(`orders`.`orderstatus`) AS `order_status`,
sum(`orders`.`total_amount`) AS `total_sales`,
max(month(`orders`.`order_date`)) AS `Recent_Month` ,
now() AS `Today_Time`   
from `orders` 
group by `order_status` 
having (`total_sales` > 20);

CREATE VIEW `orderUserView` AS
    SELECT 
        `U`.`first_name` AS `first_name`,
        `U`.`last_name` AS `last_name`
    FROM
        (`tb_user` `U`
        JOIN `orders` `O`)
    WHERE
        (`U`.`user_id` = `O`.`user_id`)
    GROUP BY `U`.`first_name` , `U`.`last_name`;

CREATE VIEW `biggerAvgSaleView` AS
select sales_id, order_id, total_amount
from orders as O 
where total_amount > (select avg(total_amount) from orders as O
                       where order_id = O.order_id);

CREATE VIEW `lessSalesView` AS
select first_name, last_name
from employee as E
where exists (
	select * from orders
    where sales_id = E.employee_id
    and total_amount< 10
);
