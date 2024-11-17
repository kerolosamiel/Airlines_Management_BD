Use AirlineCompany
GO

-- Insert data into Airlines table
INSERT INTO [Airlines] VALUES
(1, 'Skyline Airways', '123 Aviation Blvd, New York, NY', 'John Doe'),
(2, 'Eagle Wings', '456 Horizon St, Los Angeles, CA', 'Jane Smith'),
(3, 'Oceanic Airlines', '789 Pacific Ave, Miami, FL', 'Emily Davis');

-- Insert data into AirlinePhones table
INSERT INTO [AirlinePhones] ([AirlineID], [Phone]) VALUES
(1, 1234567890),
(1, 9876543210),
(2, 1112223333),
(3, 4445556666),
(3, 7778889999);

-- Insert data into Employees table
INSERT INTO [Employees] VALUES
(1, 'Alice Green', Day('19900514'), Month('19900514'), Year('19900514'), 'Pilot', 'F', 1),
(2, 'Bob Brown', Day('19850923'), Month('19850923'), Year('19850923'), 'Hostess', 'M', 2),
(3, 'Charlie Black', Day('19921102'), Month('19921102'), Year('19921102'), 'Engineer', 'M', 3),
(4, 'Mike Zerk', Day('19901122'), Month('19901122'), Year('19901122'), 'Engineer', 'M', 3),
(5, 'Charlie Gane', Day('19820122'), Month('19820122'), Year('19820122'), 'Pilot', 'M', 3),
(6, 'Gony Jason', Day('20001002'), Month('20001002'), Year('20001002'), '20001002', 'M', 2),
(7, 'Alexandra Mores', Day('19901125'), Month('19901125'), Year('19901125'), 'hostess', 'F', 2),
(8, 'Skott Gony', Day('19860722'), Month('19860722'), Year('19860722'), 'Engineer', 'M', 1);

-- Insert data into EmpQualifications table
INSERT INTO [EmpQualifications] VALUES
(1, 'Commercial Pilot License'),
(1, 'Safety Training'),
(2, 'Cabin Crew Certification'),
(3, 'Aircraft Maintenance Certification');

-- Insert data into Transaction table
INSERT INTO [Transaction] VALUES
(1, 'Purchase of New Aircraft', '2024-01-15', 5000000.00, 1),
(2, 'Fuel Purchase', '2024-02-20', 100000.00, 2),
(3, 'Employee Salaries', '2024-03-10', 750000.00, 3);

-- Insert data into Aircrafts table
INSERT INTO [Aircrafts] VALUES
(1, 200, 'Boeing 737', 101, 'Alice Green', 'John White', 'Sarah Black', 'Emma Gray', 1),
(2, 150, 'Airbus A320', 102, 'Jack Brown', 'James Silver', 'Lucy Violet', 'Olivia Amber', 2);

-- Insert data into Routes table
INSERT INTO [Routes] VALUES
(1, 1500.50, 'New York', 'Chic', 'Domestic'),
(2, 8000.75, 'Los Angeles', 'Tokyo', 'International'),
(3, 5000.25, 'Miami', 'London', 'International');

-- Insert data into AircraftsRouts table
INSERT INTO [AircraftsRouts] VALUES
(1, 1, '2024-11-17 10:30:00', '2024-11-17 07:00:00', 300.00, 150),
(2, 2, '2024-11-18 12:00:00', '2024-11-18 02:00:00', 1200.00, 120),
(1, 3, '2024-11-19 08:00:00', '2024-11-19 01:30:00', 800.00, 100);
