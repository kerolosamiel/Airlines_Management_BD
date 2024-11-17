# Airline Company Database Project

This project involves the creation of a comprehensive database system for an airline company, with tables designed to manage various aspects of the business such as airlines, employees, aircraft, routes, and financial transactions.

## Database Schema

The schema consists of the following tables:

1. **Airlines**: Stores information about the airlines.
   - `AirlineID` (PK)
   - `Name`
   - `Address`
   - `ContactPerson`

2. **AirlinePhones**: Stores multiple phone numbers for each airline.
   - `AirlineID` (PK,FK)
   - `Phone` (PK)

3. **Employees**: Stores information about employees of the airline.
   - `EmployeeID` (PK)
   - `Name`
   - `Day`, `Month`, `Year` (Date of birth)
   - `Position`
   - `Gender`
   - `AirlineID` (FK)

4. **EmpQualifications**: Stores qualifications of employees.
   - `EmployeeID` (PK,FK)
   - `Qualification` (PK)

5. **Transaction**: Stores financial transaction details.
   - `TransactionID` (PK)
   - `DESCRIPTION`
   - `Date`
   - `Amount`
   - `RecordsID` (FK)

6. **Aircrafts**: Stores information about the aircrafts.
   - `AircraftID` (PK)
   - `Capacity`
   - `Model`
   - `CrewID`
   - `AssistantPilot`, `MajorPilot`, `Hostess1`, `Hostess2`
   - `OwnerID` (FK)

7. **Routes**: Stores flight route details.
   - `RouteID` (PK)
   - `Distance`
   - `Origin`
   - `Destination`
   - `Classification`

8. **AircraftsRouts**: Establishes relationships between aircrafts and routes.
   - `AircraftID` (PK,FK)
   - `RouteID` (PK,FK)
   - `ArrDateTime`, `DeptDateTime` (Scheduled times)(PK)
   - `PricePass`
   - `Pass` (Number of passengers)

## Relationships

- **Airlines to AirlinePhones**: One-to-many relationship (one airline can have multiple phone numbers).
- **Airlines to Employees**: One-to-many relationship (one airline can employ many people).
- **Employees to EmpQualifications**: One-to-many relationship (one employee can have multiple qualifications).
- **Airlines to Transaction**: One-to-many relationship (one airline can have multiple financial transactions).
- **Airlines to Aircrafts**: One-to-many relationship (one airline can own multiple aircrafts).
- **Routes to AircraftsRouts**: One-to-many relationship (one route can be served by multiple aircrafts).
- **Aircrafts to AircraftsRouts**: One-to-many relationship (one aircraft can fly multiple routes).

## ERD (Entity-Relationship Diagram)

The ERD (Entity-Relationship Diagram) for the database is provided below to illustrate the relationships between the tables.

## Setup and Usage

1. Clone the repository to your local machine.
2. Open your SQL server management tool (e.g., SQL Server Management Studio, Azure Data Studio).
3. Execute the provided SQL scripts to create the database and tables.
4. Insert sample data into the tables as required.
