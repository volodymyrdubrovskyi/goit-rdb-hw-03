/*
1. Напишіть SQL команду, за допомогою якої можна:
вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products:
*/
SELECT * FROM products;
/*
-- вибрати тільки стовпчики name, phone з таблиці shippers:
*/
SELECT name, phone FROM shippers;

/*
2. Напишіть SQL команду, за допомогою якої можна знайти 
середнє, максимальне та мінімальне значення стовпчика price таблички products:
*/
SELECT MAX(price) AS MaxPrice FROM products;
SELECT MIN(price) AS MinPrice FROM products;
SELECT AVG(price) AS AvgPrice FROM products;

/*
3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення колонок 
category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків.
*/
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

/*
4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків),
які знаходиться в цінових межах від 20 до 100
*/
SELECT COUNT(*)
FROM products
WHERE price BETWEEN 20 AND 100;

/*
5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) 
та середню ціну (price) у кожного постачальника (supplier_id)
*/
SELECT supplier_id, COUNT(*) AS ProductCount, AVG(price) AS AvgPrice
FROM products
GROUP BY supplier_id;