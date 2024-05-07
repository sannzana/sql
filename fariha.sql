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


For UNNAMEDPETS table:

INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3001, 'Lovebirds', 30, 800.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3002, 'Goldfish', 20, 400.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3003, 'Koi', 15, 1500.00, 'Y');
INSERT INTO UnnamedPets (PetGroupID, Type, Quantity, Price, Available)
VALUES (3004, 'Rabbits', 10, 1450.00, 'Y');



For HEALTH_RECORDS table:


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


For CUSTOMERS table:

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

For PRODUCTS table:

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

For ORDERS table:

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


For DELIVERYSTATUS table:

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
VALUES (7, 5005, TO_DATE('2024-04-15', 'YYYY
