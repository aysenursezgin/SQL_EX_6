--1.actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

SELECT first_name 
FROM actor
UNION ALL
SELECT first_name 
FROM customer
ORDER BY first_name;



--2.actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

SELECT first_name 
FROM actor
INTERSECT
SELECT first_name 
FROM customer
ORDER BY first_name;



--3.actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

SELECT first_name 
FROM actor
EXCEPT
SELECT first_name 
FROM customer
ORDER BY first_name;



--4. İlk 3 sorguyu tekrar eden veriler için de yapalım.

----1. Actor ve Customer tablolarındaki tüm first_name verilerini sıralama (tekrar eden veriler dahil):

SELECT first_name 
FROM actor
UNION ALL
SELECT first_name 
FROM customer
ORDER BY first_name;
----2. Actor ve Customer tablolarındaki first_name sütunları için kesişen (tekrar eden) verileri sıralama:

SELECT a.first_name
FROM actor a
JOIN customer c ON a.first_name = c.first_name
ORDER BY a.first_name;
----3. Actor tablosunda bulunan ancak Customer tablosunda bulunmayan first_name verilerini sıralama:

SELECT first_name
FROM actor
WHERE first_name NOT IN (SELECT first_name FROM customer)
ORDER BY first_name;








