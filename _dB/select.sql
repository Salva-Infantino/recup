/* SELECT */
SELECT "coucou";

SELECT NAME, firstname FROM customer;

SELECT brand FROM car;

SELECT DISTINCT brand FROM car;

SELECT DISTINCT brand, count(brand) AS "Total de marque"
FROM car
group BY brand;
SELECT * FROM customer;
SELECT model FROM car WHERE brand="BMW";
SELECT * FROM customer
WHERE birthday < "2018-01-01";

SELECT * FROM customer
WHERE NAME <> "MULKAY";

SELECT idCustomer FROM customer
WHERE NAME = "MULKAY" AND firstname = "Morgane";

SELECT * FROM customer
WHERE NAME != "MULKAY";

select name, firstname
from customer
where gender = "M" AND zip like "4%";

select brand, model, price from car
where price between 20000 and 70000
order by price desc;

/* JOIN */
select `car`.brand, `car`.model,`car_type`.Type
from car inner join car_type on `car`.idCarType = `car_type`.idCarType;

/* UPDATE */
UPDATE customer
set zip = 5060
WHERE idCustomer = 96040517963;