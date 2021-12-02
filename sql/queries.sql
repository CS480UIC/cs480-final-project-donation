CREATE VIEW `salesView` AS 
select `employee`.`last_name` AS `last_name`,`employee`.`first_name` AS `first_name`, `employ_id` AS `employee_id` 
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

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `donation`.`min_total_view` AS
    SELECT 
        `donation`.`orders`.`order_id` AS `order_id`,
        `donation`.`orders`.`order_date` AS `order_date`,
        MIN(`donation`.`orders`.`total_amount`) AS `MIN(total_amount)`
    FROM
        `donation`.`orders`;
	
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `donation`.`employee_poistion_view` AS
    SELECT 
        CONCAT('Employee: ',
                `donation`.`employee`.`first_name`,
                ' ',
                `donation`.`employee`.`last_name`) AS `CONCAT('Employee', first_name, last_name)`,
        `donation`.`employee`.`position` AS `position`
    FROM
        `donation`.`employee`
    ORDER BY `donation`.`employee`.`first_name`;
    
 CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `donation`.`user_view` AS
    SELECT 
        `donation`.`tb_user`.`user_id` AS `user_id`,
        `donation`.`tb_user`.`first_name` AS `first_name`,
        `donation`.`tb_user`.`last_name` AS `last_name`,
        `donation`.`tb_user`.`email` AS `email`
    FROM
        `donation`.`tb_user`
    ORDER BY `donation`.`tb_user`.`first_name`;

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `donation`.`august_sales_view` AS
    SELECT 
        `donation`.`orders`.`order_id` AS `order_id`,
        `donation`.`orders`.`order_date` AS `order_date`,
        COUNT(0) AS `COUNT(*)`,
        `donation`.`orders`.`orderstatus` AS `orderstatus`
    FROM
        `donation`.`orders`
    GROUP BY MONTH(`donation`.`orders`.`order_date`) , CAST(`donation`.`orders`.`order_date` AS DATE)
    HAVING (MONTH(`donation`.`orders`.`order_date`) = 8);
