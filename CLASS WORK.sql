--- CREATED A TABLE AMBALI----
CREATE TABLE AMBALI(
ID SERIAL PRIMARY KEY,
FirstName VARCHAR(50),
LastName varchar(50),
Age INT,
Gender varchar(10),
Date_of_Birth DATE,
Place_of_Birth VArchar(20),
Email varchar(50)
);

---INSERTING VALUES INTO THE TABLE---
INSERT INTO AMBALI(FirstName, 
LastName, Age, Gender, Date_of_Birth, Place_of_Birth, Email)
Values('ABDULMUIZ','KABIR',25,'MALE', '1995-03-13','ALIMOSHO','assasin@gmail.com'),
('MARYAM','ALIYU', 18,'FEMALE', '2006-02-09','ENGLAND','amina21@gmail.com'),
('Eniola', 'Adeyoye',21,'FEMALE', '2004-03-11','KADUNA','tola@gmail.com'),
('TITI','OLUMU',45, 'FEMALE', '1990-03-09','LAGOS', 'skdbj@gmail.com'),
('ABDULAZEEZ','RIDWAN',25,'MALE', '1995-03-13','ALIMOSHO','assasin003@gmail.com'),
('KHADIJA','ALI', 18,'FEMALE', '2006-02-09','LONDON','ami5421@gmail.com'),
('ENITAN', 'ADELOLA',41,'FEMALE', '2004-03-11','KADUNA','TITtola@gmail.com'),
('AMINA','HASSAN',45, 'FEMALE', '1990-03-09','LAGOS', 'minaj@gmail.com'),
('MUBARAK','KABIR',25,'MALE', '1980-03-13','SOKOTO','aliyo009@gmail.com'),
('SAKINA','YAHYA',15,'MALE', '2015-03-13','ABUJA','saki@gmail.com');

----show result
SELECT * FROM AMBALI;

----LIMIT TO 8 ROWWS--
SELECT* FROM AMBALI LIMIT 8;

---DELETE 1 RECORD--
DELETE FROM AMBALI
WHERE ID = 1;

--DISPLAY RESULT---
SELECT* FROM AMBALI;

----ALTER TABLE--
ALTER TABLE AMBALI 
ADD ADDRESS VARCHAR(50);

ALTER TABLE AMBALI 
ADD PHONE_NO VARCHAR(20);

---UPDATE 2 RECORDS
UPDATE AMBALI 
SET ADDRESS = 'PLOT 21 MANDO, KADUNA'
WHERE ID = 2;

UPDATE AMBALI 
SET ADDRESS = 'PLOT 11 KANTA ROAD, KADUNA'
WHERE ID = 3;

UPDATE AMBALI 
SET PHONE_NO = '08029483731'
WHERE ID = 2;
UPDATE AMBALI 
SET PHONE_NO = '08097836463'
WHERE ID = 3;


---DISPLAY RESULTS---
SELECT * FROM AMBALI;










)