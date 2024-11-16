Create Database AirlineCompany
GO
 
Use AirlineCompany
Go

Create Table [Airlines] (
    [AirlineID] int,
    [Name] varchar(50),
    [Address] varchar(100),
    [ContactPerson] varchar(100),
    CONSTRAINT [PK_Airline] PRIMARY KEY (AirlineID)
)
GO

Create Table [AirlinePhones] (
    [AirlineID] int,
    [Phone] int,
    CONSTRAINT [PK_Airline_Phones] PRIMARY KEY (AirlineID, Phone),
    CONSTRAINT [FK_Airline] FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
)
GO

Create Table [Employees] (
    [EmployeeID] int,
    [Name] varchar(50),
    [Day]  date,
    [Month] date,
    [Year]  date,
    [Position] varchar(50),
    [Gender]   varchar(1),
    [AirlineID] int,
    CONSTRAINT [PK_Employee] PRIMARY KEY (EmployeeID),
    CONSTRAINT [FK_Work_Airline] FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
)
GO

Create Table [EmpQualifications] (
    [EmployeeID] int,
    [Qualification] varchar(100),
    CONSTRAINT [PK_Qualifications] PRIMARY KEY (EmployeeID, Qualification),
    CONSTRAINT [FK_Employee_ID] FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
)
GO

Create Table [Transaction] (
    [TransactionID] int,
    [DESCRIPTION] varchar(250),
    [Date] date,
    [Amount] money,
    [RecordsID] int,
    CONSTRAINT [PK_Transaction] PRIMARY KEY (TransactionID),
    CONSTRAINT [FK_Records_Transaction] FOREIGN KEY (RecordsID) REFERENCES Airlines(AirlineID)
)
GO

Create Table [Aircrafts] (
    [AircraftID] int,
    [Capacity] int, 
    [Model] varchar (50),
    [CrewID] int NOT NULL,
    [AssistantPilot] varchar(25),
    [MajorPilot] varchar(25),
    [Hostess1] varchar(25),
    [Hostess2] varchar(25),
    [OwnerID] int,
    CONSTRAINT [PK_Aircraft] PRIMARY KEY (AircraftID),
    CONSTRAINT [FK_Aircraft_Owner] FOREIGN KEY (OwnerID) REFERENCES Airlines(AirlineID)
)
GO

Create Table [Routes] (
    [RouteID] int,
    [Distance] decimal(5, 2),
    [Origin] varchar(100),
    [Destination] varchar(200),
    [Classification] varchar(100),
    CONSTRAINT [PK_Route] PRIMARY KEY (RouteID)
)

Create Table [AircraftsRouts] (
    [AircraftID] int,
    [RouteID] int,
    [ArrDateTime] dateTime,
    [DeptDateTime] dateTime,
    [PricePass] money,
    [Pass] int,
    CONSTRAINT [PK_Aircraft_Rout] PRIMARY KEY
    (AircraftID, RouteID, ArrDateTime, DeptDateTime),
    CONSTRAINT [FK_Aircraft] FOREIGN KEY (AircraftID) REFERENCES Aircrafts(AircraftID),
    CONSTRAINT [FK_Route] FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
)