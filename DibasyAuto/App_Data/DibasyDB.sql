-- Author: Abdulai Dibasy
-- Towson University
-- Date 12/2/2017
-- Purpose: Database script for IST 421 System

--Select the database to use
USE DibasyDB;
GO

--Declare script variable as type BIT
Declare @Pass BIT; --Used to make sure operation worked
Set @Pass = 1; -- set the value to represent TRUE 

------Drop Table tblStudent and Start Fresh-----
if exists (select * from sys.objects where name = 'tblCar')
BEGIN
    drop table tblCar;
END
------New Table tblStudent to Create-----
BEGIN TRY 
CREATE TABLE tblCar (
fldCarID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 

fldCarMake varchar(50) NOT NULL,
fldCarModel varchar(50) NOT NULL,
fldCarMilage varchar(50) NOT NULL,
fldCarPrice decimal(8, 2) NOT NULL, 
fldCarYear varchar(50) NOT NULL,
fldCarPicName varchar(50) NOT NULL);


PRINT 'tblCar created';
END TRY
BEGIN CATCH
 PRINT 'tblCar created was NOT created';
 Set @Pass = 0 --FALSE table not created
END CATCH


------Seed the tblStudent to Test design -----
BEGIN TRY
IF @Pass = 1 -- True if the table was created
BEGIN 
  INSERT INTO tblCar
  (fldCarMake, fldCarModel, fldCarMilage, fldCarYear, fldCarPrice, fldCarPicName )
  VALUES
 ('Ford ', 'Mustang', '52,045', '2007', '15000.00');

 INSERT INTO tblCar
  (fldCarMake, fldCarModel, fldCarMilage, fldCarYear, fldCarPrice, fldCarPicName )
 VALUES
  ('Chevrolet ', 'Camero', '20,045', '2016', '25000.00');
 PRINT 'tblCar was Seeded';
 END
ELSE  --Pass failed table creation
 PRINT 'tblCar was NOT Seeded';
END TRY
BEGIN CATCH -- issue with insert
 PRINT 'tblCar was NOT Seeded';
END CATCH


------Remove sprGetCar Stored Procedure -----
if exists (select * from sys.objects where name = 'sprGetCarByCarID')
BEGIN
DROP PROCEDURE sprGetCarByCarID
END
GO

------Create SPROC sprGetCarByCarID -----
CREATE PROCEDURE sprGetCarByCarID
@fldCarID int
AS
BEGIN
SELECT fldCarMake, fldCarModel, fldCarMilage, fldCarYear, fldCarPrice, fldCarPicName
FROM tblCar
WHERE fldCarID = @fldCarID;
END
GO
PRINT 'Stored Procedure sprGetCarByCarID was created';


------After Table tblStudent Schema Add XML Field -----
BEGIN TRY 
ALTER TABLE tblCar ADD fldXMLData XML NULL
PRINT 'tblCar Schema Altered';
END TRY
BEGIN CATCH
 PRINT 'tblCar Schema was NOT Altered';
END CATCH


UPDATE tblCar
  SET fldXMLData = '<root></root>'
  WHERE fldCarID = 1;

 UPDATE tblCar
  SET fldXMLData.modify('insert (<pnode><child1>Value 1</child1><child2>Value 2</child2></pnode>) into (/root)[1]')
  WHERE fldCarID = 1;

  Select fldXMLData
  from tblCar
  Where fldCarID = 1;

  Select [fldXMLData].value('(/root//pnode//child1)[1]', 'varchar(10)') AS Child
  from tblCar
  Where fldCarID = 1;

