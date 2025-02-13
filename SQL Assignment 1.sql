USE Lux_assignment;
CREATE TABLE Lux_assignment.Orders(
OrderID int primary key auto_increment,
CustomerID int not null,
OrderDate date not null,
TotalAmount int not null);

INSERT INTO Orders VALUES(default, 101,'2023-01-05',200);
INSERT INTO Orders VALUES(default, 102,'2023-01-07',150);
INSERT INTO Orders VALUES(default, 101,'2023-01-10',300);
INSERT INTO Orders VALUES(default, 103,'2023-01-15',450);
INSERT INTO Orders VALUES(default, 102,'2023-01-20',100);
INSERT INTO Orders VALUES(default, 101,'2023-01-25',250);

SELECT 
	CustomerID,
	SUM(TotalAmount),
	COUNT(OrderID) 
FROM Orders
GROUP BY CustomerID
HAVING COUNT(CustomerID) > 1
ORDER BY SUM(TotalAmount) DESC
;