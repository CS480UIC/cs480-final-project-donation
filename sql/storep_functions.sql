DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(in userName varchar(50), in userPsw varchar(50))
BEGIN
DECLARE selectName varchar(50);  
DECLARE selectPsw  varchar(50);
DECLARE result bool;

select user.username, user.password into selectName, selectPsw
	from user
    where user.username = userName and user.password = userPsw;
IF selectName is not null and selectPsw is not null then
	SET result = true;
ELSE set result = false;
END IF;
SELECT result;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `getTotalStores`() RETURNS varchar(50) CHARSET utf8
    COMMENT 'Show how many stores in database'
BEGIN
RETURN (SELECT count(*) FROM store); 
END$$
DELIMITER ;

USE `donation`;
DROP procedure IF EXISTS `donation`.`category_count`;
;

DELIMITER $$
USE `donation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_count`(IN count_name VARCHAR(50), OUT category_count INT)
    READS SQL DATA
BEGIN
SELECT COUNT(category_id) INTO category_count FROM donation.item, donation.category
WHERE count_name = category.category_name;

END$$

DELIMITER ;
;

USE `donation`;
DROP procedure IF EXISTS `donation`.`user_details`;
;

DELIMITER $$
USE `donation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_details`(IN user_email VARCHAR(50), IN user_phone VARCHAR(20))
BEGIN

DECLARE enterEmail VARCHAR(50);
DECLARE enterPhone VARCHAR(20);
DECLARE result BOOL;

SELECT tb_user.email, tb_user.phone into enterEmail, enterPhone
FROM tb_user
WHERE tb_user.email = user_email AND tb_user.phone = user_phone;
IF enterEmail IS NOT NULL AND enterPhone IS NOT NULL THEN
SET result = TRUE;
ELSE SET result = FALSE;
END IF;
SELECT result;

END$$

DELIMITER ;
;

USE `donation`;
DROP function IF EXISTS `donation`.`get_item_count`;
;

DELIMITER $$
USE `donation`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_item_count`() RETURNS int
    READS SQL DATA
BEGIN
RETURN (SELECT count(*) FROM item);

END$$

DELIMITER ;
;

USE `donation`;
DROP function IF EXISTS `donation`.`order_delivered`;
;

DELIMITER $$
USE `donation`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `order_delivered`() RETURNS int
    READS SQL DATA
BEGIN
RETURN (SELECT COUNT(order_id) FROM orders WHERE orderstatus = 'delivered');

END$$

DELIMITER ;
;

USE `donation`;
DROP function IF EXISTS `donation`.`pending_delivery`;
;

DELIMITER $$
USE `donation`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `pending_delivery`() RETURNS int
    READS SQL DATA
BEGIN
RETURN (SELECT count(order_id) FROM orders WHERE orderstatus = 'pending');

END$$

DELIMITER ;
