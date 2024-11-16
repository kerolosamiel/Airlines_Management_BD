-- Create a new database for the airline company
Create Database AirlineCompany
GO

-- Switch to the newly created database
Use AirlineCompany
Go

-- Create the Airlines table to store information about airlines
Create Table [Airlines] (
    [AirlineID] int, -- Unique identifier for the airline
    [Name] varchar(50),
    [Address] varchar(100),
    [ContactPerson] varchar(100),
    CONSTRAINT [PK_Airline] PRIMARY KEY (AirlineID) -- Primary key for the table
)
GO

-- Create the AirlinePhones table to store multiple phone numbers for each airline
Create Table [AirlinePhones] (
    [AirlineID] int, -- Foreign key referencing the Airlines table
    [Phone] int,
    CONSTRAINT [PK_Airline_Phones] PRIMARY KEY (AirlineID, Phone),  -- Composite primary key
    CONSTRAINT [FK_Airline] FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID) -- Foreign key constraint
)
GO

-- Create the Employees table to store information about employees
Create Table [Employees] (
    [EmployeeID] int, -- Unique identifier for the employee
    [Name] varchar(50),
    [Day]  date,
    [Month] date,
    [Year]  date,
    [Position] varchar(50),
    [Gender]   varchar(1), -- Gender of the employee (e.g., M/F)
    [AirlineID] int, -- Foreign key referencing the airline the employee works for
    CONSTRAINT [PK_Employee] PRIMARY KEY (EmployeeID), -- Primary key for the table
    CONSTRAINT [FK_Work_Airline] FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID) -- Foreign key constraint
)
GO

-- Create the EmpQualifications table to store employees' qualifications
Create Table [EmpQualifications] (
    [EmployeeID] int, -- Foreign key referencing the Employees table
    [Qualification] varchar(100),
    CONSTRAINT [PK_Qualifications] PRIMARY KEY (EmployeeID, Qualification), -- Composite primary key
    CONSTRAINT [FK_Employee_ID] FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) -- Foreign key constraint
GO

-- Create the Transaction table to store financial transactions
Create Table [Transaction] (
    [TransactionID] int, -- Unique identifier for the transaction
    [DESCRIPTION] varchar(250),
    [Date] date,
    [Amount] money,
    [RecordsID] int, -- Foreign key referencing an airline
    CONSTRAINT [PK_Transaction] PRIMARY KEY (TransactionID),  -- Primary key for the table
    CONSTRAINT [FK_Records_Transaction] FOREIGN KEY (RecordsID) REFERENCES Airlines(AirlineID) -- Foreign key constraint
)
GO

-- Create the Aircrafts table to store information about aircrafts
Create Table [Aircrafts] (
    [AircraftID] int, -- Unique identifier for the aircraft
    [Capacity] int, 
    [Model] varchar (50),
    [CrewID] int NOT NULL, -- ID of the crew assigned to the aircraft
    [AssistantPilot] varchar(25), 
    [MajorPilot] varchar(25),
    [Hostess1] varchar(25),
    [Hostess2] varchar(25),
    [OwnerID] int, -- Foreign key referencing the owner airline
    CONSTRAINT [PK_Aircraft] PRIMARY KEY (AircraftID), -- Primary key for the table
    CONSTRAINT [FK_Aircraft_Owner] FOREIGN KEY (OwnerID) REFERENCES Airlines(AirlineID) -- Foreign key constraint
)
GO

-- Create the Routes table to store information about flight routes
Create Table [Routes] (
    [RouteID] int, -- Unique identifier for the route
    [Distance] decimal(5, 2),
    [Origin] varchar(100), -- Starting point of the route
    [Destination] varchar(200),
    [Classification] varchar(100),
    CONSTRAINT [PK_Route] PRIMARY KEY (RouteID)  -- Primary key for the table
)
GO

-- Create the AircraftsRouts table to establish a relationship between aircraft and routes
Create Table [AircraftsRouts] (
    [AircraftID] int, -- Foreign key referencing the Aircrafts table
    [RouteID] int, -- Foreign key referencing the Routes table
    [ArrDateTime] dateTime, -- Scheduled arrival date and time
    [DeptDateTime] dateTime, -- Scheduled departure date and time
    [PricePass] money, -- Price per passenger for the route
    [Pass] int, -- Number of passengers on the route
    CONSTRAINT [PK_Aircraft_Rout] PRIMARY KEY
    (AircraftID, RouteID, ArrDateTime, DeptDateTime),  -- Composite primary key
    CONSTRAINT [FK_Aircraft] FOREIGN KEY (AircraftID) REFERENCES Aircrafts(AircraftID), -- Foreign key constraint
    CONSTRAINT [FK_Route] FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)  -- Foreign key constraint
)