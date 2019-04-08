-- *Lines  11 to 191 * Task 0 - Reading CSV Data
-- *Lines 192 to 343 * Task 1 - Creating Tables with moving averages
-- *Lines 344 to 382 * Task 2 - Creating Master Table
-- *Lines 383 to 467 * Task 3 - Creating Signals for Stocks
-- *Lines 468 to 506 * Task 4 - Creating a UDF

USE assignment;

SHOW VARIABLES LIKE "secure_file_priv"; -- To find out the path where we have to put csv file in order to read it.

-- ****************************************************************************************************************************************************
-- Reading CSV Data---------------------------------------------------------------------------------------------------------------------------Task 0---
-- ****************************************************************************************************************************************************

-- Reading CSV Data into Table Bajaj Auto.-------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `Bajaj Auto`;
CREATE TABLE `Bajaj Auto`(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/Bajaj Auto.csv'
INTO TABLE `Bajaj Auto`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- Reading CSV Data into Table Eicher Motors.----------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `Eicher Motors`;
CREATE TABLE `Eicher Motors`(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/Eicher Motors.csv'
INTO TABLE `Eicher Motors`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- Reading CSV Data into Table Hero Motocorp.----------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `Hero Motocorp`;
CREATE TABLE `Hero Motocorp`(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/Hero Motocorp.csv'
INTO TABLE `Hero Motocorp`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- Reading CSV Data into Table Infosys.----------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Infosys;
CREATE TABLE Infosys(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/Infosys.csv'
INTO TABLE Infosys
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- Reading CSV Data into Table TCS.--------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS TCS;
CREATE TABLE TCS(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/TCS.csv'
INTO TABLE TCS
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- Reading CSV Data into Table TVS Motors.-------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `TVS Motors`;
CREATE TABLE `TVS Motors`(
	`Date` date,
	`Open Price` float(12,4),
    `High Price` float(12,4),
	`Low Price` float(12,4),
	`Close Price` float(12,4),
     WAP float(12,4),
    `No. of Shares` int(15),
    `No. of Trades` int(15),
    `Total Turnover (Rs.)` float(20,4),
    `Deliverable Quantity` varchar(12),
    `% Deli. Qty to Traded Qty` varchar(6),
    `Spread High-Low` float(10,2),
    `Spread Close-Open` float(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Assignment/TVS Motors.csv'
INTO TABLE `TVS Motors`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES -- Ignoring the first line of csv file as they are column names.
(@date_time_variable, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`,  `No. of Trades`, `Total Turnover (Rs.)`,
`Deliverable Quantity`, `% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`) -- Read few of the field to variables, so as to handle null values and conversion to Date
SET `Date` = STR_TO_DATE(@date_time_variable, '%e-%M-%Y')
;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------
-- Take a look at the tables that have been created.---------------------------------------------------------------------------------------------------
SELECT * FROM `Bajaj Auto` LIMIT 100;
SELECT * FROM `Eicher Motors` LIMIT 100;
SELECT * FROM `Hero Motocorp` LIMIT 100;
SELECT * FROM  Infosys LIMIT 100;
SELECT * FROM  TCS LIMIT 100;
SELECT * FROM `TVS Motors` LIMIT 100;

-- ****************************************************************************************************************************************************
-- Creating Tables with moving averages-------------------------------------------------------------------------------------------------------Task 1---
-- ****************************************************************************************************************************************************

-- Creating Table bajaj1.------------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS bajaj1;
CREATE TABLE bajaj1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM `Bajaj Auto`;

ALTER TABLE bajaj1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE bajaj1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE bajaj1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE bajaj1 DROP COLUMN RowNum;

-- Creating Table eicherMotors1.-----------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS eicherMotors1;
CREATE TABLE eicherMotors1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM `Eicher Motors`;

ALTER TABLE eicherMotors1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE eicherMotors1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE eicherMotors1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE eicherMotors1 DROP COLUMN RowNum;

-- Creating Table heroMotocorp1.-----------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS heroMotocorp1;
CREATE TABLE heroMotocorp1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM `Hero Motocorp`;

ALTER TABLE heroMotocorp1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE heroMotocorp1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE heroMotocorp1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE heroMotocorp1 DROP COLUMN RowNum;

-- Creating Table infosys1.----------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS infosys1;
CREATE TABLE infosys1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM Infosys;

ALTER TABLE infosys1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE infosys1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE infosys1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE infosys1 DROP COLUMN RowNum;

-- Creating Table tcs1.--------------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS tcs1;
CREATE TABLE tcs1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM TCS;

ALTER TABLE tcs1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE tcs1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE tcs1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE tcs1 DROP COLUMN RowNum;

-- Creating Table tvsMotors1.--------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS tvsMotors1;
CREATE TABLE tvsMotors1
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNum,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM `TVS Motors`;

ALTER TABLE tvsMotors1 -- Create RowNum as Primary Key so that we can Update Table.
ADD PRIMARY KEY (RowNum);

UPDATE tvsMotors1 -- The first 19 rows must show 20 Day Moving Average as null.
SET `20 Day MA` = null
WHERE RowNum < 20;

UPDATE tvsMotors1 -- The first 49 rows must show 50 Day Moving Average as null.
SET `50 Day MA` = null
WHERE RowNum < 50;

ALTER TABLE tvsMotors1 DROP COLUMN RowNum;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------
-- Taking a look at the Tables.------------------------------------------------------------------------------------------------------------------------

SELECT * FROM bajaj1 LIMIT 100; 
SELECT * FROM eicherMotors1 LIMIT 100; 
SELECT * FROM heroMotocorp1 LIMIT 100; 
SELECT * FROM infosys1 LIMIT 100; 
SELECT * FROM tcs1 LIMIT 100; 
SELECT * FROM tvsMotors1 LIMIT 100; 

-- ****************************************************************************************************************************************************
-- Creating Master Table----------------------------------------------------------------------------------------------------------------------Task 2---
-- ****************************************************************************************************************************************************

-- Create Date as Primary Key, so that join shown below is optimised.
ALTER TABLE bajaj1 ADD PRIMARY KEY (`Date`);
ALTER TABLE eicherMotors1 ADD PRIMARY KEY (`Date`);
ALTER TABLE heroMotocorp1 ADD PRIMARY KEY (`Date`);
ALTER TABLE infosys1 ADD PRIMARY KEY (`Date`);
ALTER TABLE tcs1 ADD PRIMARY KEY (`Date`);
ALTER TABLE tvsMotors1 ADD PRIMARY KEY (`Date`);

-- Creating Master Table.
DROP TABLE IF EXISTS master_table;
CREATE TABLE master_table AS(
SELECT 
	bajaj1.`Date` AS `Date`,
    bajaj1.`Close Price` AS Bajaj ,
    tcs1.`Close Price` AS TCS ,
    tvsMotors1.`Close Price` AS TVS,
    infosys1.`Close Price` AS Infosys,
    eicherMotors1.`Close Price` AS Eicher, 
    heroMotocorp1.`Close Price` AS Hero
FROM 
    bajaj1
INNER JOIN
    eicherMotors1 ON eicherMotors1.`Date` = bajaj1.`Date`
INNER JOIN 
    heroMotocorp1 ON heroMotocorp1.`Date` = bajaj1.`Date`
INNER JOIN
    infosys1 ON infosys1.`Date` = bajaj1.`Date`
INNER JOIN
    tcs1 ON tcs1.`Date` = bajaj1.`Date`
INNER JOIN
    tvsMotors1 ON tvsMotors1.`Date` = bajaj1.`Date`)
;

SELECT * FROM master_table LIMIT 100; -- Taking a look at the Table.

-- ****************************************************************************************************************************************************
-- Creating Signals for Stocks----------------------------------------------------------------------------------------------------------------Task 3---
-- ****************************************************************************************************************************************************

-- Creating table bajaj2.------------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS bajaj2;
CREATE TABLE bajaj2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM bajaj1;

-- Creating table eicherMotors2.-----------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS eicherMotors2;
CREATE TABLE eicherMotors2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM eicherMotors1;

-- Creating table heroMotocorp2.-----------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS heroMotocorp2;
CREATE TABLE heroMotocorp2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM heroMotocorp1;

-- Creating table infosys2.----------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS infosys2;
CREATE TABLE infosys2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM infosys1;

-- Creating table tcs2.--------------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS tcs2;
CREATE TABLE tcs2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM tcs1;

-- Creating table tvsMotors2.--------------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS tvsMotors2;
CREATE TABLE tvsMotors2
SELECT `Date`,
       `Close Price`,
        CASE -- Specifying Conditions for Signal Column. Possible values are Buy, Sell, Hold.
			WHEN `20 Day MA`>`50 Day MA` AND LAG(`20 Day MA`<`50 Day MA`,1) OVER() THEN 'Buy'
			WHEN `20 Day MA`<`50 Day MA` AND LAG(`20 Day MA`>`50 Day MA`,1) OVER() THEN 'Sell'
		ELSE 'Hold'
	END AS `Signal`
FROM tvsMotors1;


-- ----------------------------------------------------------------------------------------------------------------------------------------------------
-- Take a look at the tables created.------------------------------------------------------------------------------------------------------------------
SELECT * FROM bajaj2 LIMIT 100;
SELECT * FROM eicherMotors2 LIMIT 100;
SELECT * FROM heroMotocorp2 LIMIT 100;
SELECT * FROM infosys2 LIMIT 100;
SELECT * FROM tcs2 LIMIT 100;
SELECT * FROM tvsMotors2 LIMIT 100;

-- ****************************************************************************************************************************************************
-- Creating a UDF-----------------------------------------------------------------------------------------------------------------------------Task 4---
-- ****************************************************************************************************************************************************

-- Creating a UDF that returns Signal for a given Date for the Bajaj Stock.
DROP FUNCTION IF EXISTS return_signal;
DELIMITER $$
CREATE FUNCTION return_signal (d DATE)
RETURNS VARCHAR(10) DETERMINISTIC
BEGIN
DECLARE sig VARCHAR(10);
DECLARE MA20 FLOAT(10,4);
DECLARE MA50 FLOAT(10,4);
DECLARE MA20_prev FLOAT(10,4);
DECLARE MA50_prev FLOAT(10,4);
SET MA20 = (SELECT `20 Day MA` FROM bajaj1 WHERE `Date` = d); -- `Date is Primary Key, Query is Optimised`
SET MA50 = (SELECT `50 Day MA` FROM bajaj1 WHERE `Date` = d);
SET MA20_prev = (SELECT `20 Day MA` FROM bajaj1 WHERE `Date` = DATE_SUB(d, INTERVAL 1 DAY));
SET MA50_prev = (SELECT `50 Day MA` FROM bajaj1 WHERE `Date` = DATE_SUB(d, INTERVAL 1 DAY));
IF MA20>MA50 AND MA20_prev<MA50_prev THEN
	SET sig = 'Buy';
ELSEIF MA20<MA50 AND MA20_prev>MA50_prev THEN
	SET sig = 'Sell';
ELSE
	SET sig = 'Hold';
END IF ;
RETURN sig;
END
$$
DELIMITER ; -- Reset the Delimiter back to semi-colon.

-- Checking if the function works.
 SELECT * FROM bajaj2 WHERE `Date` = '2017-02-02';
 SELECT *, return_signal('2017-02-02') FROM bajaj1 WHERE `Date` = '2017-02-02';
-- Checking for first day.
 SELECT * FROM bajaj2 WHERE `Date` = '2015-01-01';
 SELECT *, return_signal('2015-01-01') FROM bajaj1 WHERE `Date` = '2015-01-01';
 
-- ****************************************************************************************************************************************************
-- Drawing Inferences-------------------------------------------------------------------------------------------------------------------------Task 5---
-- ****************************************************************************************************************************************************

-- Counting the Buy and Sell Signals-------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM bajaj2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM bajaj2 WHERE `Signal` IN('Buy');
-- ----------------------------------------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM eicherMotors2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM eicherMotors2 WHERE `Signal` IN('Buy');
-- ----------------------------------------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM heroMotocorp2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM heroMotocorp2 WHERE `Signal` IN('Buy');
-- ----------------------------------------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM infosys2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM infosys2 WHERE `Signal` IN('Buy');
-- ----------------------------------------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM tcs2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM tcs2 WHERE `Signal` IN('Buy');
-- ----------------------------------------------------------------------------------------------------------------
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Sell_Num FROM tvsMotors2 WHERE `Signal` IN('Sell');
SELECT *, ROW_NUMBER() OVER (ORDER BY `Date` ASC) AS Buy_Num FROM tvsMotors2 WHERE `Signal` IN('Buy');
