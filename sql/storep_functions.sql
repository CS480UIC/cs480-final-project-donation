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

CREATE DEFINER=`root`@`localhost` FUNCTION `get_item_count`() RETURNS int
    READS SQL DATA
BEGIN
RETURN (SELECT count(*) FROM item);
END

