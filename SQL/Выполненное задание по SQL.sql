 Необходимо написать запросы, которые будут выводить следующую информацию:

1.	Вывести названия всех компаний, которые не выполнили заказ с 15.11.1996 – 18.02.1997 
SELECT companyName 
FROM Customers JOIN Orders
ON Cusromers.CustomerID=Orders.CustomerID
WHERE OrderDate NOT  BETWEEN 15.11.1996 AND 18.02.1997;

2.	Вывести названия компаний поставщиков, которые находятся в México D.F.;
      SELECT companyName 
      FROM Customers
      WHERE city  = ‘Mexico D.F.’;


3.  Вывести только те заказы, которые были оформлены с 12.12.1996 по 18.02.1997;
       SELECT OrderID 
       FROM Orders 
       WHERE orders BETWEEN 12.12.1996 AND 18.02.1997;

4. Вывести только тех заказчиков, название компании которых начинаются с ‘An’;

       SELECT  CustomerID
       FROM  Customers
       WHERE CompanyName LIKE ‘An%’;

5. Вывести названия компаний и заказы, которые они оформили, с суммой заказа более 17000. Использовать соединение таблиц.
        SELECT ComhanyName, OrderID
        FROM Customers  JOIN Orders
        ON Cusromers.CustomerID=Orders.CustomerID 
        WHERE OrderSum > 17.000;

6. Вывести следующие колонки: имя поставщика, сумма заказа. Результаты отсортировать по поставщикам в порядке убывания
         SELECT Cusromers.CompanyName, Orders.OrderSum
         FROM Customers  JOIN Orders
         ON Cusromers.CustomerID=Orders.CustomerID 
         ORDER BY Customers.CompanyName DESC; 

7. Вывести следующие колонки: имя поставщика, дата заказа. Вывести  таким образом, чтобы все заказчики из таблицы 1 были показаны в таблице результатов.
         SELECT CompanyName, OrderDate
          FROM Customers  JOIN Orders
         ON Cusromers.CustomerID=Orders.CustomerID;

