/*1. Создайте хранимую процедуру с именем «GetEmployeeOrders».
который принимает идентификатор сотрудника в качестве
параметра и возвращает все заказы, обработанные этим
сотрудником.
Пропишите запрос, который создаст требуемую процедуру.*/

DROP PROCEDURE IF EXISTS GetEmployeeOrders;
DELIMITER $$
$$
CREATE PROCEDURE GetEmployeeOrders(@pEmployeeID INT)
as
BEGIN
 SELECT OrderID 
 FROM Orders
 WHERE EmployeeID = @pEmployeeID; 
END$$
DELIMITER ;

/*2. Создайте таблицу EmployeeRoles, как на уроке и удалите ее.
Напишите запрос, который удалит нужную таблицу.*/

-- создание таблицы:
CREATE TABLE EmployeeRoles (
EmployeeRoleID INT PRIMARY KEY,
EmployeeID INT,
Role VARCHAR(50)
);
--удаление таблицы:
DROP TABLE EmployeeRoles;

/*3. Удалите все заказы со статусом 'Delivered' из таблицы OrderStatus,
которую создавали на семинаре
Напишите запрос, который удалит нужные строки в таблице.*/
DELETE FROM OrderStatus WHERE Status = 'Delivered';

