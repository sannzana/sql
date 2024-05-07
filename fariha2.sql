CREATE TABLE Pets (
    PetID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Type VARCHAR2(100),
    Description VARCHAR2(500),
    Price DECIMAL(10, 2),
    Listed_at_Date DATE,
    Available CHAR(1) CHECK (Available IN ('Y', 'N'))
);


CREATE TABLE UnnamedPets (
    PetGroupID NUMBER PRIMARY KEY,
    Type VARCHAR2(100),
    Quantity NUMBER,
    Price DECIMAL(10, 2),
    Available CHAR(1) CHECK (Available IN ('Y', 'N'))
);

CREATE TABLE Health_Records (
    RecordID NUMBER PRIMARY KEY,
    PetID NUMBER,
   Age NUMBER(10,2),
    Weight NUMBER(10,2),
    HealthStatus VARCHAR2(255),
    Food_Habit VARCHAR2(255),
    LastCheckupDate DATE,
    Notes VARCHAR2(1000),
    FOREIGN KEY (PetID) REFERENCES Pets(PetID)
);

CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(255),
    Email VARCHAR2(255) UNIQUE,
    Phone VARCHAR2(20),
    Address VARCHAR2(500)
);
CREATE TABLE Products (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(255),
    Price DECIMAL(10, 2),
    StockQuantity NUMBER,
    Category VARCHAR2(100)
);
   
 CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    PetID NUMBER NULL,
    ProductID NUMBER NULL,
    PetGroupID NUMBER NULL,
    Numbers NUMBER,
    OrderDate DATE,
    Total DECIMAL(10, 2) NULL,
    Discount_code VARCHAR2(10),
    Remark VARCHAR2(1000),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (PetGroupID) REFERENCES UnnamedPets(PetGroupID),
    CONSTRAINT Check_ProductID_Numbers2
CHECK ((ProductID IS NOT NULL AND Numbers2 IS NOT NULL) OR (ProductID IS NULL AND Numbers2 IS NULL))
    CONSTRAINT Check_PetGroupID_Numbers
CHECK ((PetGroupID IS NOT NULL AND Numbers IS NOT NULL) OR (PetGroupID IS NULL AND Numbers IS NULL))
);


CREATE TABLE DeliveryStatus (
    DeliveryStatusID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    ExpectedDeliveryDate DATE,
    DeliveryDate DATE,
    IsDelivered CHAR(1) CHECK (IsDelivered IN ('Y', 'N')), -- 'Y' for yes, 'N' for no
    CustomerSatisfaction VARCHAR2(255),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
); 
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1001, 'Bella', 'Dog', 'breed: Labrador, furtype: Short, color: Black', 12000.00, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1002, 'Charlie', 'Dog', 'breed: Beagle, furtype: Short, color: Brown', 18000.00, TO_DATE('2023-05-02', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1003, 'Luna', 'Cat', 'breed: Persian, furtype: Long, color: White', 9000.00, TO_DATE('2023-05-03', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1004, 'Maxy', 'Dog', 'breed: Local, furtype: Medium, color: Black and Tan', 1500.00, TO_DATE('2023-05-04', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1005, 'Lucy', 'Cat', 'breed: Siamese, furtype: Short, color: Cream', 7000.00, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1006, 'Daisy', 'Dog', 'breed: Local, furtype: Smooth, color: White', 1300.00, TO_DATE('2023-05-06', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1007, 'Milo', 'Cat', 'breed: Maine Coon, furtype: Long, color: Brown', 11000.00, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1008, 'Bailey', 'Dog', 'breed: Local, furtype: Short, color: Brown', 7550.00, TO_DATE('2023-05-08', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1010, 'Sadie', 'Dog', 'breed: Poodle, furtype: Curly, color: White', 15400.00, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1011, 'Sky', 'Parrot', 'breed: Macaw, furtype: Feathered, color: Blue and Gold', 22200.00, TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1013, 'Echo', 'Parrot', 'breed: African Grey, furtype: Feathered, color: Grey', 15500.00, TO_DATE('2023-05-13', 'YYYY-MM-DD'), 'Y');
INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
VALUES (1016, 'Majesty2', 'Eagle', 'breed: Bald Eagle, furtype: Feathered, color: White and Brown', 30000.00, TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'N');




INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3001, 'Lovebirds', 30, 800.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3002, 'Goldfish', 20, 400.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3003, 'Koi', 15, 1500.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3004, 'Rabbits', 10, 1450.00, 'Y');






INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2001, 1001, 3, 10.0, 'Healthy', 'Dry food', TO_DATE('2023-04-30', 'YYYY-MM-DD'), 'No known issues');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2002, 1002, 2, 20.0, 'Healthy', 'Mix of dry and wet food', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Regular vaccinations needed');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2003, 1003, 4, 5.0, 'Healthy', 'Premium cat food', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Slight allergy to dust'); 
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2004, 1004, 5, 25.0, 'Healthy', 'Home cooked food', TO_DATE('2023-12-03', 'YYYY-MM-DD'), 'Requires monthly grooming');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2005, 1005, 6, 4.5, 'Healthy', 'Cat treats and kibble', TO_DATE('2022-02-04', 'YYYY-MM-DD'), 'No special care needed');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2006, 1006, 1, 15.0, 'Healthy', 'Puppy food', TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'Undergoing training'),
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2007, 1007, 3, 6.0, 'Healthy', 'Fish and wet food', TO_DATE('2024-02-06', 'YYYY-MM-DD'), 'Regular check-ups recommended');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2008, 1008, 2, 22.0, 'Healthy', 'Commercial dog food', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'Active and needs daily exercise');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2010, 1010, 3, 12.0, 'Healthy', 'Grain-free diet', TO_DATE('2023-12-03', 'YYYY-MM-DD'), 'Sensitive skin condition');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2011, 1011, 7, 1.0, 'Healthy', 'Seeds and nuts', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Bright and alert');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2013, 1013, 8, 0.9, 'Healthy', 'Specialized parrot food', TO_DATE('2023-10-12', 'YYYY-MM-DD'), 'Social and enjoys interaction');
INSERT INTO Health_Records (RecordID, PetID, Age, Weight, HealthStatus, Food_Habit, LastCheckupDate, Notes) VALUES
(2015, 1015, 10, 4.0, 'Healthy', 'Meat-based diet', TO_DATE('2024-05-1', 'YYYY-MM-DD'), 'Requires large enclosure');




INSERT INTO Customers (CustomerID, Name, Email, Phone, Address) VALUES
(1, 'Asa Devi', 'devi@email.com', '01575622811', '123/A New Elephant Road');
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address) VALUES
(2, 'Abir haider', 'abir@gmail.com', '01865555678', '456,Third Floor,Baily Road');
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address) VALUES
(3, 'Raufun Mia', 'rau12@gmail.com', '01722094433', 'Boro Bari, Khan road,Savar');
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address) VALUES
(4, 'Jolly Begum', 'begum@gmail.com', '01923434234', '321 Street Road,Dhaka');
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address) VALUES
(5, '', 'maryb@example.com', '555-6543', '654 Spruce Street, Hilltown')
(6, 'Alex Garcia', 'alexg@example.com', '555-7890', '987 Cedar Street, Lakeside');


INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(101, 'Premium Dog Food', 1150, 10, 'Pet Food');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(102, 'Cat Litter Box', 800,5 , 'Cat Accessories')
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(103, 'Bird Cage Large', 1550, 5, 'Bird Accessories');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(104, 'Aquarium Filter', 875, 8, 'Aquarium Supplies');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(105, 'Rabbit Hutch', 300, 4, 'Small Pet Accessories');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(106, 'Rubber Toys', 50, 300, 'Toys');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(107, 'Dog Leash', 200.00, 20, 'Dog Accessories');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(108, 'Catnip', 1110.99, 8, 'For Cats');
INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Category) VALUES
(119, 'Tropical Fish Food', 400, 20, 'Fish Food');



INSERT INTO Orders (OrderID, CustomerID, ProductID, Numbers2, OrderDate)
VALUES (5002, 2, 101, 2, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, petid, OrderDate,total)
VALUES (5007, 2, 1010, TO_DATE('2024-05-01', 'YYYY-MM-DD'),15400);
INSERT INTO Orders (OrderID, CustomerID, PetID, OrderDate) 
VALUES (5003, 4, 1011, SYSDATE);
INSERT INTO Orders (OrderID, CustomerID, PetID, PetGroupID, Numbers, OrderDate)
VALUES (5010,4, 1005, 3001, 4, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, ProductID, Numbers2, PetID, OrderDate)
VALUES (5012, 3, 106, 2, 1008,  TO_DATE('2024-04-11', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, petID,OrderDate )
VALUES (5007, 4, 1016, SYSDATE);
INSERT INTO Orders (OrderID, CustomerID, PetID, PetGroupID, Numbers, OrderDate)
 VALUES (5012,4, 1013, 3001, 1, TO_DATE('2024-05-01', 'YYYY-MM-DD'));



INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (1, 5002, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'N', NULL);
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (2, 5007, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'N', NULL);
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction) 
VALUES (3, 5003, SYSDATE + 7, 'N', NULL);
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (4, 5009, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'N', NULL);
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (5, 5005, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 'N', NULL);
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (6, 5010, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 'Y', 'Happy to receive the pets, said will order in future too');
INSERT INTO DeliveryStatus (DeliveryStatusID, OrderID, ExpectedDeliveryDate, IsDelivered, CustomerSatisfaction)
VALUES (7, 5005, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'N', NULL);


ALTER TABLE pet_info ADD CONSTRAINT fk_pet_info_PetID FOREIGN KEY (PetID) REFERENCES Pets(PetID)
ON DELETE CASCADE;


DROP TABLE pet_info;

ALTER TABLE Pets ADD colortype VARCHAR2(500);
ALTER TABLE Pets ADD furtype VARCHAR2(50);

ALTER TABLE Pets RENAME COLUMN colortype to description;

ALTER TABLE PETS  MODIFY Available CHAR(1) CHECK (Available IN ('Y', 'N'));

alter table pets drop column name;

WITH max_price(petname, pettype) AS (
    SELECT name AS petname, type AS pettype
    FROM pets
    WHERE price BETWEEN 1000 AND 2000
)
SELECT petname, pettype FROM max_price;


select count(customerId) as num_of_customer from customers;

select * from pets where type='Cat';

SELECT description FROM Pets WHERE petid = (SELECT petid FROM orders WHERE orderid = 6001);

update pets set description='breed-local,color-brown,fur_type-short' where petid=1014;

delete from customers where customerid=5002;

select Name from Pets where Price between 10000 and 20000;

select count(customerId) as num_of_customer from customers;

select type,count(*) as each_type_present from pets group by type;

select productId,avg(total) as avg_of_totla from orders group by productId;

select sum(total) from Orders

select productId,avg(total) as avg_of_totla from orders group by productId;

SELECT MAX(Price) AS Second_Highest_Price
FROM Pets
WHERE Price < (SELECT MAX(Price) FROM Pets);

select avg(age) from Health_Records

select sum(total) from Orders

select * from products where price=(select max(price) from products);
select * from products where price=(select min(price) from products); 

select name from customers where name like '%ne%';

 with age_over_avg as (select * from pets where petid=(select petid from health_records where age>(select avg(age) from health_records)))
 select count(*) from age_over_avg;

 SELECT SUM(Price) AS TotalPriceForBoxers FROM Pets WHERE Description LIKE '%breed-Boxer,%';

  select * from pets where type='Cat' and price<600;

  select name,type,price, listed_at_date from pets where (price>1600 or description like '%breed-boxer%') 
and not (price>1600 and description like '%breed-Boxer%');

SELECT name FROM pets WHERE price > SOME (SELECT price FROM pets WHERE petid =
 (SELECT petid FROM health_records WHERE age > 4));

 SELECT  name FROM pets WHERE price >ALL (SELECT price FROM pets WHERE petid =
 (SELECT petid FROM health_records WHERE age > 4));

 select * from pets where price<1000 and not exists (select * from pets where type='Bird');

 SELECT * FROM Pets NATURAL JOIN Health_Records WHERE Available = 'Y';

 SELECT O.OrderID, O.CustomerID,P.PetID, O.ProductID,  P.Name AS PetName,O.OrderDate, O.Total,O.Remark
FROM Orders O LEFT JOIN Pets P ON O.PetID = P.PetID WHERE  O.OrderDate >= TO_DATE('2022-01-01', 'YYYY-MM-DD') ORDER BY  O.OrderDate DESC;

SELECT P.PetID,P.Name,O.OrderID,O.OrderDate,O.Total
FROM Pets P LEFT OUTER JOIN Orders O ON P.PetID = O.PetID;

CREATE VIEW CustomerView AS
SELECT CustomerID, Name, Email, Phone, Address
FROM Customers;
SELECT * FROM CustomerView;




SET SERVEROUTPUT ON;
DECLARE 
    v_petId PETS.PetID%TYPE := 1020;
    v_name PETS.Name%TYPE := 'Puti';
    v_type PETS.Type%TYPE := 'Dog';
    v_description PETS.Description%TYPE := 'Friendly and energetic golden retriever';
    v_price PETS.Price%TYPE := 23000.00;
    v_listed_at_date PETS.Listed_at_Date%TYPE := SYSDATE;
    v_available PETS.Available%TYPE := 'Y';
BEGIN
    INSERT INTO Pets (PetID, Name, Type, Description, Price, Listed_at_Date, Available)
    VALUES (v_petId, v_name, v_type, v_description, v_price, v_listed_at_date, v_available);
    -- Optionally output a message confirming the insertion
    DBMS_OUTPUT.PUT_LINE('Inserted pet: ' || v_name);
END;
/


SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER Check_Pet_Availability
BEFORE INSERT OR UPDATE OF PetID ON Orders
FOR EACH ROW
DECLARE
    v_available CHAR(1);
BEGIN
    -- Check the availability of the pet if PetID is not NULL
    IF :NEW.PetID IS NOT NULL THEN
        SELECT Available INTO v_available FROM Pets WHERE PetID = :NEW.PetID;
        IF v_available = 'N' THEN
            RAISE_APPLICATION_ERROR(-20001, 'This pet is not currently available for orders.');
        END IF;
    END IF;
END;
/




CREATE OR REPLACE TRIGGER Update_Pet_Availability

AFTER INSERT OR UPDATE ON Orders
FOR EACH ROW
BEGIN
    -- Check if a PetID is included in the order
    IF :NEW.PetID IS NOT NULL THEN
        -- Update the pet's availability to 'N'
        UPDATE Pets
        SET Available = 'N'
        WHERE PetID = :NEW.PetID;
    END IF;
END;
/


        SET SERVEROUTPUT ON;
        CREATE OR REPLACE TRIGGER CHECK_QUANTITY
        BEFORE INSERT OR UPDATE OF PETGROUPID ON ORDERS
        FOR EACH ROW
 DECLARE
V_QUAN NUMBER;
 BEGIN
     IF :NEW.PETGROUPID IS NOT NULL THEN
         SELECT QUANTITY INTO V_QUAN FROM UNNAMEDPETS WHERE PetGroupID =  :NEW.PETGROUPID;
           IF V_QUAN <= 0 THEN
                RAISE_APPLICATION_ERROR(-20002, 'This Pet Group Has been Sold Out');
                  END IF;
           END IF;
END;
 /


SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER CHECK_QUANTITY_product
BEFORE INSERT OR UPDATE OF PRODUCTID ON ORDERS
FOR EACH ROW
DECLARE
V_QUAN NUMBER;
BEGIN
             IF :NEW.PRODUCTID IS NOT NULL THEN
              SELECT STOCKQUANTITY INTO V_QUAN FROM PRODUCTS WHERE PRODUCTID =   :NEW.PRODUCTID;
                    IF V_QUAN <= 0 THEN
                         RAISE_APPLICATION_ERROR(-20002, 'This Product is Sold Out');
                     END IF;
             END IF;
END;/


CREATE OR REPLACE TRIGGER count_numbers
BEFORE INSERT OR UPDATE OF numbers ON orders
FOR EACH ROW
DECLARE
   vcon PRODUCTS.StockQuantity%TYPE;
BEGIN
   IF :NEW.productid IS NOT NULL AND :NEW.numbers2 IS NOT NULL THEN
      SELECT stockquantity INTO vcon FROM products WHERE productid = :NEW.productid;
          IF vcon >= :NEW.numbers2 THEN  
           UPDATE products 
            SET stockquantity = stockquantity - :NEW.numbers2 
            WHERE productid = :NEW.productid;
        ELSE
             RAISE_APPLICATION_ERROR(-20003, 'Not available');
       END IF;
END IF;
END;
/



CREATE OR REPLACE TRIGGER Update_UnnamedPet_Quantity
BEFORE INSERT OR UPDATE ON Orders
FOR EACH ROW
DECLARE
       v_quantity NUMBER;
BEGIN
     IF :NEW.PetGroupID IS NOT NULL AND :NEW.Numbers IS NOT NULL THEN
         SELECT Quantity INTO v_quantity FROM UnnamedPets WHERE PetGroupID =      :NEW.PetGroupID;

         IF v_quantity >= :NEW.Numbers THEN
             UPDATE UnnamedPets
             SET Quantity = Quantity - :NEW.Numbers
             WHERE PetGroupID = :NEW.PetGroupID;
         ELSE
             RAISE_APPLICATION_ERROR(-20003, 'Not enough unnamed pets available for               PetGroupID: ' || TO_CHAR(:NEW.PetGroupID));
        END IF;
   END IF;
EXCEPTION
         WHEN NO_DATA_FOUND THEN
 RAISE_APPLICATION_ERROR(-20004, 'PetGroupID not found in UnnamedPets table: ' ||   TO_CHAR(:NEW.PetGroupID));
END;
/


CREATE OR REPLACE PROCEDURE InsertAndUpdateOrder(
    p_orderid         IN Orders.OrderID%TYPE,
    p_customerid      IN Orders.CustomerID%TYPE,
    p_petgroupid      IN Orders.PetGroupID%TYPE,
    p_numbers2        IN Orders.Numbers2%TYPE,  -- Correct parameter for quantity
    p_orderdate       IN Orders.OrderDate%TYPE,
    p_total           IN Orders.Total%TYPE,
    p_remark          IN Orders.Remark%TYPE
)
IS
    v_quantity        UnnamedPets.Quantity%TYPE;
BEGIN
    SAVEPOINT start_transaction;

    SELECT quantity INTO v_quantity FROM UnnamedPets WHERE PetGroupID = p_petgroupid;

    IF v_quantity >= p_numbers2 THEN  -- Corrected to use p_numbers2
        UPDATE UnnamedPets
        SET Quantity = Quantity - p_numbers2
        WHERE PetGroupID = p_petgroupid;

        INSERT INTO Orders (OrderID, CustomerID, PetGroupID, Numbers, OrderDate, Total, Remark)
        VALUES (p_orderid, p_customerid, p_petgroupid, p_numbers2, p_orderdate, p_total, p_remark);  -- Numbers should match p_numbers2 if that's intended

        COMMIT;
    ELSE
        ROLLBACK TO start_transaction;
        RAISE_APPLICATION_ERROR(-20003, 'Not enough UnnamedPets in stock for PetGroupID: ' || TO_CHAR(p_petgroupid));
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        ROLLBACK TO start_transaction;
        RAISE_APPLICATION_ERROR(-20004, 'PetGroupID not found in UnnamedPets table.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/




CREATE OR REPLACE TRIGGER Calculate_Order_Total
BEFORE INSERT OR UPDATE ON Orders
FOR EACH ROW
BEGIN
    :NEW.Total := 0;

    IF :NEW.ProductID IS NOT NULL AND :NEW.Numbers2 IS NOT NULL THEN
        SELECT Price * :NEW.Numbers2 INTO :NEW.Total
        FROM Products
        WHERE ProductID = :NEW.ProductID;
    END IF;

    IF :NEW.PetGroupID IS NOT NULL AND :NEW.Numbers IS NOT NULL THEN
        SELECT (:NEW.Total + (Price * :NEW.Numbers)) INTO :NEW.Total
        FROM UnnamedPets
        WHERE PetGroupID = :NEW.PetGroupID;
    END IF;

    IF :NEW.PetID IS NOT NULL AND :NEW.Numbers IS NOT NULL THEN
        SELECT (:NEW.Total + (Price * :NEW.Numbers)) INTO :NEW.Total
        FROM Pets
        WHERE PetID = :NEW.PetID;
    END IF;

   
END; 


CREATE OR REPLACE TRIGGER Check_date
BEFORE INSERT OR UPDATE ON Orders
FOR EACH ROW
DECLARE
    v_listed_at_date DATE;
BEGIN
    -- Only proceed if a PetID is associated with the order
    IF :NEW.PetID IS NOT NULL THEN
        -- Retrieve the listed date of the pet from the Pets table
        SELECT Listed_at_Date INTO v_listed_at_date FROM Pets WHERE PetID = :NEW.PetID;
        
        -- Compare the order date with the pet's listed date
        IF :NEW.OrderDate < v_listed_at_date THEN
            RAISE_APPLICATION_ERROR(-20010, 'Order date must be after the pet''s listed date.');
        END IF;
    END IF;
END;
/



CREATE OR REPLACE FUNCTION check_pet_availability(p_petID IN NUMBER) RETURN VARCHAR2
AS
  v_available CHAR(1);
BEGIN
  SELECT Available INTO v_available
  FROM Pets
  WHERE PetID = p_petID;
  
  IF v_available = 'Y' THEN
    RETURN 'Available';
  ELSE
    RETURN 'Not Available';
  END IF;

END;
/


