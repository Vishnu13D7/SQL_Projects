create table Project_Insurance_Customer
(
 customer_id number(30) primary  key,
 first_name varchar2(255),
 last_name varchar2(255),
 email varchar2(255),
 age number(5),
 Gender char(5) not null,
 
  constraint Pro_Ins_Gen check( gender in('M','F')),
  constraint Pro_Ins_Email unique(email)
)
alter table Project_Insurance_Customer
add constraint Pro_Ins_Cust_age_Chk check(age is not null);

insert into Project_Insurance_Customer
values(1, 'John', 'Doe', 'john.doe@example.com', 28, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', 34, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (3, 'Alice', 'Johnson', 'alice.johnson@example.com', 26, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (4, 'Bob', 'Williams', 'bob.williams@example.com', 40, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (5, 'Charlie', 'Brown', 'charlie.brown@example.com', 36, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (6, 'Grace', 'Taylor', 'grace.taylor@example.com', 29, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (7, 'Ethan', 'Martin', 'ethan.martin@example.com', 41, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (8, 'Olivia', 'Davis', 'olivia.davis@example.com', 38, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (9, 'Lucas', 'Miller', 'lucas.miller@example.com', 45, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (10, 'Sophia', 'Wilson', 'sophia.wilson@example.com', 33, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (11, 'Megan', 'Brown', 'megan.brown@example.com', 30, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (12, 'Daniel', 'Johnson', 'daniel.johnson@example.com', 25, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (13, 'Emma', 'Williams', 'emma.williams@example.com', 35, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (14, 'James', 'Davis', 'james.davis@example.com', 28, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (15, 'Sophia', 'Taylor', 'sophia.taylor@example.com', 32, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (16, 'Liam', 'Martinez', 'liam.martinez@example.com', 29, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (17, 'Olivia', 'Hernandez', 'olivia.hernandez@example.com', 27, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (18, 'Lucas', 'Gonzalez', 'lucas.gonzalez@example.com', 34, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (19, 'Ava', 'Lopez', 'ava.lopez@example.com', 31, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (20, 'Mason', 'Wilson', 'mason.wilson@example.com', 26, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (21, 'Isabella', 'Anderson', 'isabella.anderson@example.com', 33, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (22, 'Ethan', 'Thomas', 'ethan.thomas@example.com', 29, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (23, 'Mia', 'Jackson', 'mia.jackson@example.com', 26, 'F');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (24, 'Alexander', 'White', 'alexander.white@example.com', 36, 'M');

INSERT INTO Project_Insurance_Customer (customer_id, first_name, last_name, email, age, gender) 
VALUES (25, 'Charlotte', 'Martin', 'charlotte.martin@example.com', 30, 'F');

Truncate table Project_Insurance_Customer;
Drop table Project_Insurance_Customer;

select * from Project_Insurance_Customer;

Savepoint T1;
create table Project_Insurance_Policy
(
 Policy_id number(30) primary key,
 customer_id number(30),
 Policy_number number(30),
 Policy_type varchar2(255),
 Start_date Date,
 end_date date,
 Premium_amount number(30),
 
 foreign key (customer_id) references Project_Insurance_Customer(customer_ID)
 )
 
 Alter table Project_Insurance_Policy
 add constraint Pro_Ins_Policy_Chk check (Policy_type in('Car Insurance','Bike Insurance','Truck Insurance'));
 
 Insert into Project_Insurance_Policy
 values(101, 1, 1001, 'Car Insurance',To_Date('2024-01-01','YYYY-MM-DD'),To_Date('2025-01-01','YYYY-MM-DD'),3000);
 
 
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (102, 2, 1002, 'Bike Insurance', TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (103, 3, 1003, 'Truck Insurance', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-01', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (104, 4, 1004, 'Car Insurance', TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (105, 5, 1005, 'Bike Insurance', TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (106, 6, 1006, 'Car Insurance', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (107, 7, 1007, 'Truck Insurance', TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2025-07-01', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (108, 8, 1008, 'Bike Insurance', TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (109, 9, 1009, 'Car Insurance', TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (110, 10, 1010, 'Bike Insurance', TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2025-10-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (111, 11, 1111, 'Car Insurance', TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-01', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (112, 12, 1122, 'Bike Insurance', TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-01', 'YYYY-MM-DD'), 1000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (113, 13, 1133, 'Truck Insurance', TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_DATE('2025-11-15', 'YYYY-MM-DD'), 10000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (114, 14, 1144, 'Car Insurance', TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2025-12-05', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (115, 15, 1155, 'Car Insurance', TO_DATE('2024-11-20', 'YYYY-MM-DD'), TO_DATE('2025-11-20', 'YYYY-MM-DD'), 3000);

INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (116, 16, 1166, 'Car Insurance', TO_DATE('2024-12-15', 'YYYY-MM-DD'), TO_DATE('2025-12-15', 'YYYY-MM-DD'), 3000);

-- Bike Insurance (Premium_amount = 1000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (117, 17, 1177, 'Bike Insurance', TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2025-12-20', 'YYYY-MM-DD'), 1000);

-- Truck Insurance (Premium_amount = 10000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (118, 18, 1188, 'Truck Insurance', TO_DATE('2024-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 10000);

-- Car Insurance (Premium_amount = 3000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (119, 19, 1199, 'Car Insurance', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2026-01-10', 'YYYY-MM-DD'), 3000);

-- Bike Insurance (Premium_amount = 1000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (120, 20, 1200, 'Bike Insurance', TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2026-01-15', 'YYYY-MM-DD'), 1000);

-- Truck Insurance (Premium_amount = 10000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (121, 21, 1211, 'Truck Insurance', TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2026-01-20', 'YYYY-MM-DD'), 10000);

-- Car Insurance (Premium_amount = 3000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (122, 22, 1222, 'Car Insurance', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2026-02-01', 'YYYY-MM-DD'), 3000);

-- Bike Insurance (Premium_amount = 1000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (123, 23, 1233, 'Bike Insurance', TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2026-02-10', 'YYYY-MM-DD'), 1000);

-- Truck Insurance (Premium_amount = 10000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (124, 24, 1244, 'Truck Insurance', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), 10000);

-- Car Insurance (Premium_amount = 3000)
INSERT INTO Project_Insurance_Policy (Policy_id, customer_id, Policy_number, Policy_type, Start_date, end_date, Premium_amount) 
VALUES (125, 25, 1255, 'Car Insurance', TO_DATE('2025-02-20', 'YYYY-MM-DD'), TO_DATE('2026-02-20', 'YYYY-MM-DD'), 3000);
 Alter table Project_Insurance_Policy
 add constraint Pro_Ins_Policy_Premium_chk check
 ((Policy_type='Car Insurance' and Premium_amount=3000)or
 (Policy_type='Bike Insurance' and Premium_amount=1000)or
 (Policy_type='Truck Insurance' and Premium_amount=10000));
 
 Alter table 
 
 Savepoint T2;
 select * from project_insurance_Policy;
 truncate table  project_insurance_Policy;
 
 
 create table Project_Insurance_Vehicle
 (
  Vehicle_ID varchar2(255) primary key,
  Vehicle_Reg_No number(30) not null,
  Policy_ID number(30),
  Vehicle_Make varchar2(255) not null,
  Vehicle_Model varchar2(255),
  Vehicle_type varchar2(255),
  
   foreign key (Policy_ID) References project_insurance_Policy(Policy_id),
  
  constraint Pro_Ins_Veh_type_chk check(Vehicle_type in('Car','Bike','Truck')),
  constraint Pro_Ins_Veh_Make_chk check(Vehicle_Make in('Toyota', 'Honda', 'Ford', 'Chevrolet', 'Nissan',
                                                    'Maruti Suzuki', 'Tata Motors', 'Mahindra', 'Hyundai', 'Renault')),
  constraint Pro_Ins_Veh_Model_chk check(Vehicle_Model in('Corolla', 'Civic', 'F150', 'Tahoe', 'Altima', 'Swift', 'Alto', 
                                                      'Innova', 'Polo', 'Creta', 'XUV500', 'Thar', 'Tigor', 'Verna', 'Ertiga'))
 )
 Drop table  Project_Insurance_Vehicle
  
  Insert into Project_Insurance_Vehicle
  Values('V001', 12345, 101, 'Toyota', 'Corolla', 'Car');
  
  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V002', 12346, 102, 'Honda', 'Civic', 'Bike');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V003', 12347, 103, 'Ford', 'F150', 'Truck');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V004', 12348, 104, 'Chevrolet', 'Tahoe', 'Car');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V005', 12349, 105, 'Maruti Suzuki', 'Swift', 'Bike');
  
  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V006', 12350, 106, 'Toyota', 'Innova', 'Car');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V007', 12351, 107, 'Ford', 'F150', 'Truck');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V008', 12352, 108, 'Honda', 'Civic', 'Bike');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V009', 12353, 109, 'Chevrolet', 'Tahoe', 'Car');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
  VALUES ('V010', 12354, 110, 'Maruti Suzuki', 'Swift', 'Bike');
  
  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
    VALUES ('V011', 12355, 111, 'Honda', 'Civic', 'Car');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
    VALUES ('V012', 12356, 112, 'Maruti Suzuki', 'Swift', 'Bike');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
   VALUES ('V013', 12357, 113, 'Ford', 'F150', 'Truck');

  INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
   VALUES ('V014', 12358, 114, 'Chevrolet', 'Tahoe', 'Car');

INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type) 
VALUES ('V015', 12359, 115, 'Toyota', 'Innova', 'Car');

INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V016', 12360, 116, 'Toyota', 'Corolla', 'Car');

-- Vehicle 17: Bike, Honda, Civic
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V017', 12361, 117, 'Honda', 'Civic', 'Bike');

-- Vehicle 18: Truck, Ford, F150
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V018', 12362, 118, 'Ford', 'F150', 'Truck');

-- Vehicle 19: Car, Chevrolet, Tahoe
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V019', 12363, 119, 'Chevrolet', 'Tahoe', 'Car');

-- Vehicle 20: Bike, Maruti Suzuki, Swift
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V020', 12364, 120, 'Maruti Suzuki', 'Swift', 'Bike');

-- Vehicle 21: Car, Hyundai, Creta
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V021', 12365, 121, 'Hyundai', 'Creta', 'Car');

-- Vehicle 22: Truck, Tata Motors, XUV500
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V022', 12366, 122, 'Tata Motors', 'XUV500', 'Truck');

-- Vehicle 23: Bike, Honda, Civic
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V023', 12367, 123, 'Honda', 'Civic', 'Bike');

-- Vehicle 24: Car, Renault, Verna
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V024', 12368, 124, 'Renault', 'Verna', 'Car');

-- Vehicle 25: Truck, Mahindra, Thar
INSERT INTO Project_Insurance_Vehicle (Vehicle_ID, Vehicle_Reg_No, Policy_ID, Vehicle_Make, Vehicle_Model, Vehicle_type)
VALUES ('V025', 12369, 125, 'Mahindra', 'Thar', 'Truck');
select * from Project_Insurance_Vehicle;
 Create table Project_Insurance_Claim
 (
  claim_id int primary key,
  policy_id number(30),
  claim_amount number(30),
  claim_date date,
  Status varchar2(255),
  claim_type varchar2(50),
   
  constraint Pro_Ins_Claim_Status_Chk check(Status in('Approved','Pending','Claimed','Under Investigation')),
  constraint Pro_Ins_Claim_Type check(claim_type in('Accident','Theft','Natural Disaster')),
  foreign key (policy_id) references Project_Insurance_Policy(Policy_id)
 )
 Insert into Project_Insurance_Claim
 values(201, 101, 5000,To_date('2024-06-01','YYYY-MM_DD'),'Pending', 'Accident');
 
 INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
 VALUES (202, 102, 2000, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Approved', 'Theft');

 INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
 VALUES (203, 103, 15000, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'Claimed', 'Natural Disaster');

 INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
 VALUES (204, 104, 7000, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Under Investigation', 'Accident');

 INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
 VALUES (205, 105, 3000, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Pending', 'Theft');
 
 INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
VALUES (206, 106, 6000, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'Pending', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
VALUES (207, 107, 15000, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
VALUES (208, 108, 2500, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'Claimed', 'Natural Disaster');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
VALUES (209, 109, 8000, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 'Under Investigation', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type)
VALUES (210, 110, 3500, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 'Pending', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (211, 111, 5000, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Pending', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (212, 112, 2000, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (213, 113, 10000, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 'Claimed', 'Natural Disaster');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (214, 114, 3000, TO_DATE('2024-12-05', 'YYYY-MM-DD'), 'Under Investigation', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (215, 115, 4000, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Pending', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (216, 116, 1500, TO_DATE('2024-11-25', 'YYYY-MM-DD'), 'Pending', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (217, 117, 2500, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Approved', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (218, 118, 8000, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 'Claimed', 'Natural Disaster');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (219, 119, 1200, TO_DATE('2024-12-15', 'YYYY-MM-DD'), 'Under Investigation', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (220, 120, 5000, TO_DATE('2024-11-22', 'YYYY-MM-DD'), 'Pending', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (221, 121, 7000, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 'Approved', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (222, 122, 6000, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 'Claimed', 'Natural Disaster');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (223, 123, 1800, TO_DATE('2024-12-20', 'YYYY-MM-DD'), 'Under Investigation', 'Theft');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (224, 124, 10000, TO_DATE('2024-11-18', 'YYYY-MM-DD'), 'Pending', 'Accident');

INSERT INTO Project_Insurance_Claim (claim_id, policy_id, claim_amount, claim_date, Status, claim_type) 
VALUES (225, 125, 4000, TO_DATE('2024-12-25', 'YYYY-MM-DD'), 'Approved', 'Theft');

 
 select * from Project_Insurance_Claim;
 
 create table Project_Insurance_Agent
 (
  Agent_ID varchar2(255) primary key,
  Agent_name varchar2(255) not null,
  Mobile number(30) not null,
  email varchar2(255) not null,
  hire_date date,
  commision_rate number(30) not null,
  
  constraint Pro_Ins_agent_Mobile_uni unique (Mobile),
  
  constraint Pro_Ins_agent_email_uni unique (email)
  );
  
  Insert into Project_Insurance_Agent
  values ('A001', 'Sarah Lee', 9876543210, 'sarah.lee@example.com',To_Date('2024-01-15','YYYY-MM-DD'), 5.0);
  
  INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate)
  VALUES ('A002', 'Michael Smith', 8765432109, 'michael.smith@example.com', TO_DATE('2021-02-20', 'YYYY-MM-DD'), 6.0);

  INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate)
  VALUES ('A003', 'Rachel Adams', 7654321098, 'rachel.adams@example.com', TO_DATE('2022-03-10', 'YYYY-MM-DD'), 7.5);

  INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate)
  VALUES ('A004', 'David Johnson', 6543210987, 'david.johnson@example.com', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 8.0);

  INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate)
  VALUES ('A005', 'Emily Brown', 5432109876, 'emily.brown@example.com', TO_DATE('2024-05-30', 'YYYY-MM-DD'),6.5);
  
  INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate) 
VALUES ('A006', 'Jack White', 9123456789, 'jack.white@example.com', TO_DATE('2024-06-01', 'YYYY-MM-DD'), 6.0);

INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate) 
VALUES ('A007', 'Lily Green', 9234567890, 'lily.green@example.com', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 5.5);

INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate) 
VALUES ('A008', 'James Brown', 9345678901, 'james.brown@example.com', TO_DATE('2022-08-15', 'YYYY-MM-DD'), 7.0);

INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate) 
VALUES ('A009', 'Mia Black', 9456789012, 'mia.black@example.com', TO_DATE('2021-09-20', 'YYYY-MM-DD'), 6.8);

INSERT INTO Project_Insurance_Agent (Agent_ID, Agent_name, Mobile, email, hire_date, commision_rate) 
VALUES ('A010', 'Oliver Gray', 9567890123, 'oliver.gray@example.com', TO_DATE('2020-10-05', 'YYYY-MM-DD'), 7.5);



ALTER TABLE Project_Insurance_Agent DROP CONSTRAINT Pro_Ins_agent_Mobile_uni;
ALTER TABLE Project_Insurance_Agent DROP CONSTRAINT Pro_Ins_agent_email_uni;
  select * from Project_Insurance_Agent;
  
 create table Project_Insurance_Policy_Sales
 ( Sale_id varchar2(255) not null,
   Policy_id number(30) not null,
   agent_id varchar2(255),
   sale_date date,
   
   constraint Pro_Ins_Pol_Sal unique (Sale_id),
   foreign key (Policy_id) references Project_Insurance_Policy(Policy_id),
   foreign key (agent_id) references Project_Insurance_Agent(Agent_ID)
 )
 
 Alter table Project_Insurance_Policy_Sales
 add sale_amount number(30) not null;
 
 Insert into Project_Insurance_Policy_Sales
 values('S001', 101, 'A001', TO_DATE('2024-01-05', 'YYYY-MM-DD'), 3200);
 
 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount)
 VALUES ('S002', 102, 'A002', TO_DATE('2024-02-10', 'YYYY-MM-DD'), 1100);

 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount)
 VALUES ('S003', 103, 'A003', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 10500);

 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount)
 VALUES ('S004', 104, 'A004', TO_DATE('2024-04-20', 'YYYY-MM-DD'), 3200);

 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount)
 VALUES ('S005', 105, 'A005', TO_DATE('2024-05-25', 'YYYY-MM-DD'), 1100);
 
 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S006', 106, 'A006', TO_DATE('2024-06-05', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S007', 107, 'A007', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 11000);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S008', 108, 'A008', TO_DATE('2024-08-20', 'YYYY-MM-DD'), 2500);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S009', 109, 'A009', TO_DATE('2024-09-10', 'YYYY-MM-DD'), 3400);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S010', 110, 'A010', TO_DATE('2024-10-05', 'YYYY-MM-DD'), 1100);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S011', 111, 'A001', TO_DATE('2024-11-10', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S012', 112, 'A002', TO_DATE('2024-12-05', 'YYYY-MM-DD'), 1100);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S013', 113, 'A003', TO_DATE('2024-11-18', 'YYYY-MM-DD'), 10500);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S014', 114, 'A004', TO_DATE('2024-12-02', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S015', 115, 'A005', TO_DATE('2024-11-25', 'YYYY-MM-DD'), 1100);
 
 INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S016', 116, 'A001', TO_DATE('2024-12-15', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S017', 117, 'A002', TO_DATE('2024-12-20', 'YYYY-MM-DD'), 1100);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S018', 118, 'A003', TO_DATE('2024-12-25', 'YYYY-MM-DD'), 10500);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S019', 119, 'A004', TO_DATE('2024-12-30', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S020', 120, 'A005', TO_DATE('2024-11-05', 'YYYY-MM-DD'), 1100);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S021', 121, 'A006', TO_DATE('2024-12-10', 'YYYY-MM-DD'), 3200);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S022', 122, 'A007', TO_DATE('2024-12-14', 'YYYY-MM-DD'), 11000);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S023', 123, 'A008', TO_DATE('2024-12-22', 'YYYY-MM-DD'), 2500);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S024', 124, 'A009', TO_DATE('2024-12-28', 'YYYY-MM-DD'), 3400);

INSERT INTO Project_Insurance_Policy_Sales (Sale_id, Policy_id, agent_id, sale_date, sale_amount) 
VALUES ('S025', 125, 'A010', TO_DATE('2024-11-30', 'YYYY-MM-DD'), 1100);
 
 drop table Project_Insurance_Policy_Sales;
 Savepoint T3;
 
 select * from Project_Insurance_Policy_Sales;
 

 select * from Project_Insurance_Customer
 order by customer_ID asc;
 commit;
 select * from project_insurance_Policy;
 select * from Project_Insurance_Vehicle;
 select * from Project_Insurance_Claim;
 select * from Project_Insurance_Agent;
 select * from Project_Insurance_Policy_Sales;



--SCENARIOS
--1)CUSTOMER Demographics Analysis
      --Understand the age and gender distribution of your customers to identify the most common age groups and gender demographics. 
      --This helps in tailoring marketing strategies and policy offerings to specific customer segments.
 
 select * from Project_Insurance_Customer; 
 
 select gender,
 case
    when age between 18 and 25 then '18-25'
    when age between 26 and 35 then '26-35'
    when age between 36 and 45 then '36-45'
    when age between 46 and 60 then '46-60'
    else '60+'
    end 
     as Age_group
     --count(*) as customer_count
    from Project_Insurance_Customer
 group by gender,Age_group
 order by  gender,Age_group;
          
SELECT gender,
              CASE
           WHEN age BETWEEN 25 AND 30 THEN '25-30'
           WHEN age BETWEEN 31 AND 35 THEN '31-35'
           WHEN age BETWEEN 36 AND 40 THEN '36-40'  -- Corrected from '25-30'
           ELSE '40+'
       END AS age_group,count(*) as Total_Count
FROM Project_Insurance_Customer
GROUP BY gender,
         CASE
             WHEN age BETWEEN 25 AND 30 THEN '25-30'
             WHEN age BETWEEN 31 AND 35 THEN '31-35'
             WHEN age BETWEEN 36 AND 40 THEN '36-40'  -- Corrected from '25-30'
             ELSE '40+'
         END
order by gender,CASE
             WHEN age BETWEEN 25 AND 30 THEN '25-30'
             WHEN age BETWEEN 31 AND 35 THEN '31-35'
             WHEN age BETWEEN 36 AND 40 THEN '36-40'  -- Corrected from '25-30'
             ELSE '40+'
         END ;

Select * from project_insurance_policy;

--2. Top Selling Insurance Policy Types

--Scenario: Identify the most popular insurance types (Car, Bike, Truck)
--to analyze the market trends and prioritize resource allocation, marketing, and product offerings.

--Insight: This query identifies the top-selling policy types and their respective revenues, 
--allowing you to focus on the most profitable insurance products.
select Policy_type,count(*) as Policy_Count,Sum(Premium_amount) as Total_Premium
from project_insurance_policy
group by Policy_type,Premium_amount
order by sum(Premium_amount) desc;

--Top Selling Agents
select a.Agent_name,p.Policy_ID,s.sale_amount
from Project_Insurance_Policy_Sales s
join Project_Insurance_Agent a on a.Agent_Id=s.agent_id
join project_insurance_Policy p on s.Policy_id= p.Policy_ID
order by s.sale_amount desc;

--Top Selling along with policies
select a.Agent_name,count(p.Policy_ID) as Total_Policies_Sold,sum(s.sale_amount) as Total_Sale_amount
from Project_Insurance_Policy_Sales s
join Project_Insurance_Agent a on a.Agent_Id=s.agent_id
join project_insurance_Policy p on s.Policy_id= p.Policy_ID
group by a.Agent_name,s.sale_amount
order by sum(s.sale_amount) desc;


select a.Agent_name,p.Policy_ID,s.sale_amount from Project_Insurance_Policy_Sales s
join Project_Insurance_Agent a on a.Agent_Id=s.agent_id
join project_insurance_Policy p on  s.Policy_id= p.Policy_ID
order by s.sale_amount desc;


select * from Project_Insurance_Policy_Sales s
join Project_Insurance_Agent a on a.Agent_Id=s.agent_id
join project_insurance_Policy p on  s.Policy_id= p.Policy_ID
join Project_Insurance_Vehicle v on v.Policy_ID= p.Policy_ID;
order by s.sale_amount desc;

--3. Policy Expiration and Retention Rate
--Scenario: Analyze policies that are nearing expiration to proactively reach out to 
--customers for renewal or retention campaigns, improving customer loyalty and retention rates.
      
 select * from Project_Insurance_Customer;
 union
 select * from Project_Insurance_Policy;
 
 select c.first_name,p.Policy_number,p.Policy_type,p.end_date,round(abs(sysdate-p.end_date),0) as days_remaining
 from Project_Insurance_Customer c
 join Project_Insurance_Policy p on c.customer_id=p.customer_id
 where end_date>sysdate and round(abs(sysdate-p.end_date),0)<=60;
 
 --TOP SELLING AGENT BY SALES VOLUME
 select a.Agent_name,count(s.Policy_id),sum(s.sale_amount)
 from Project_Insurance_Agent a
 Join Project_Insurance_Policy_Sales s
 on a.Agent_ID=s.agent_id
 group by a.Agent_name,s.sale_amount
 order by sum(s.sale_amount) desc;
 
--5)Customer Segementation by premium amount

select * from Project_Insurance_Customer;
select * from Project_Insurance_Policy;

 select c.first_name,c.last_name, p.Policy_number,p.Policy_type,p.Premium_amount,
 case 
   when p.Premium_amount between 500 and 2000 then 'Low_Premium'
   when p.Premium_amount between 2000 and 5000 then 'Med_Premium'
   else 'High_Premium'
   end as Premium_Segment
 from Project_Insurance_Customer c
 join Project_Insurance_Policy p 
 on c.customer_id =p.customer_id
 order by p.Premium_amount desc;
 
 --Claim Status Analysis along with Vehicle type and claim amount:
 select * from Project_Insurance_Vehicle;
 select * from Project_Insurance_Claim;
 
 select * from Project_Insurance_Vehicle v
 join Project_Insurance_Claim c
 on v.Policy_ID=c.policy_id;
 
 select v.vehicle_type,c.Status,count(c.Status),sum(c.claim_amount) from Project_Insurance_Vehicle v
 join Project_Insurance_Claim c
 on v.Policy_ID=c.policy_id
 group by v.vehicle_type,c.status,c.claim_amount
 order by c.claim_amount desc;
 
 
 --claim amounts by claim type
  select * from Project_Insurance_Claim;

select claim_type,round(avg(claim_amount),0) as Avg_Claim_Amount ,count(*) as claim_count from 
Project_Insurance_Claim
group by claim_type
order by Avg_claim_amount desc; 

--Note--    YOU MUST ORDER BY AVG_CLAIM_AMOUNT YOU DETERMINED

SELECT claim_type, 
       COUNT(*) AS claim_count, 
       SUM(claim_amount) AS total_claim_amount
FROM Project_Insurance_Claim
GROUP BY claim_type
ORDER BY total_claim_amount DESC;


--Sale amount analysis by vehicle type
select v.Vehicle_type,counT(p.Policy_ID) as Total_Policy ,sum(s.sale_amount) as Total_Sale_amount
from Project_Insurance_Vehicle v 
join Project_Insurance_Policy p on v.Policy_ID=p.Policy_ID
join Project_Insurance_Policy_Sales s on  p.Policy_ID=s.Policy_ID
group by v.Vehicle_type
order by Total_Sale_amount desc ;

SELECT v.Vehicle_type,count( p.Policy_ID) as Total_Policies ,sum(s.sale_amount) as Total_amount
FROM Project_Insurance_Vehicle v
JOIN Project_Insurance_Policy p ON v.Policy_ID = p.Policy_ID
JOIN Project_Insurance_Policy_Sales s ON p.Policy_ID = s.Policy_ID
group by v.Vehicle_type
order by Total_amount desc;

--TOP 3 CUSTOMERS
select  c.first_name,
        c.last_name,
        count(p.Policy_id) as Policy_count,
        sum(s.sale_amount),
        rank() over(order by sum(s.sale_amount) desc) as Rankings

from 
Project_Insurance_Customer c
join Project_Insurance_Policy p
on c.customer_id=p.customer_id
join Project_Insurance_Policy_Sales s
on p.Policy_id=s.Policy_id
group by  c.first_name, c.last_name
having rank() over(order by sum(s.sale_amount) desc)<=3
order by sum(s.sale_amount) desc


SELECT 
    first_name, 
    last_name, 
    Policy_count, 
    Total_Sales,Rankings
FROM (
    SELECT 
        c.first_name,
        c.last_name,
        COUNT(p.Policy_id) AS Policy_count,
        SUM(s.sale_amount) AS Total_Sales,
        RANK() OVER ( ORDER BY SUM(s.sale_amount) aSC)as Rankings
    FROM 
        Project_Insurance_Customer c
    JOIN 
        Project_Insurance_Policy p ON c.customer_id = p.customer_id
    JOIN 
        Project_Insurance_Policy_Sales s ON p.Policy_id = s.Policy_id
    GROUP BY 
        c.first_name, c.last_name
) Ranking_Rate
where Rankings<=3
ORDER BY 
    Total_Sales desc; -- Y
    
select
    first_name, 
    last_name, 
    Total_Sales,Rankings
from(SELECT 
        c.first_name,
        c.last_name,
        SUM(s.sale_amount) AS Total_Sales,
        Rank() over(order by sum(s.sale_amount) desc) as Rankings
    FROM 
        Project_Insurance_Customer c
    JOIN 
        Project_Insurance_Policy p ON c.customer_id = p.customer_id
    JOIN 
        Project_Insurance_Policy_Sales s ON p.Policy_id = s.Policy_id
    group by  c.first_name,c.last_name
        )Ranking_Rate
    where Rankings<=3;
    
--Claim amount status ranking
SELECT 
    c.Status,c.claim_amount,
    dense_Rank() OVER (order by c.claim_amount desc) AS Claims_Rank
FROM 
    Project_Insurance_Claim c;





