--DATABASE CREATION 
USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'EventEaseDB')
DROP DATABASE EventEaseDB
CREATE DATABASE EventEaseDB
USE EventEaseDB

--TABLE CREATION 
CREATE TABLE Venue (
VenueID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueName VARCHAR (50) NOT NULL,
[Location] VARCHAR (50) NOT NULL,
Capacity VARCHAR (100) NOT NULL,
ImageUrl VARCHAR (MAX) NOT NULL
);

CREATE TABLE [Event] (
EventID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueID INT FOREIGN KEY REFERENCES Venue(VenueID) ,
EventName VARCHAR (100) NOT NULL,
EventDate VARCHAR (100) NOT NULL,
[Description] VARCHAR (100) NOT NULL
);

CREATE TABLE Booking (
BookingID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueID INT FOREIGN KEY REFERENCES Venue(VenueID) ,
EventID INT FOREIGN KEY REFERENCES Event(EventID) ,
BookingDate VARCHAR (50)  NOT NULL
);

--TABLE INSERTION 
INSERT INTO Venue ( VenueName,[Location], Capacity, ImageUrl)
VALUES('Waterfall', 'Midrand', 1, 'https://static.vecteezy.com/system/resources/previews/025/500/606/non_2x/wooden-pier-on-a-lake-in-the-forest-beautiful-summer-landscape-beautiful-lake-view-on-a-shiny-summer-day-ai-generated-free-photo.jpg'),
('Samrand', 'Centurion', 3, 'https://th.bing.com/th/id/OIP.XYpCusPK7lBcpY0Gk3VLPAHaEo?rs=1&pid=ImgDetMain')

INSERT INTO [Event] (VenueID, EventName, EventDate, [Description])
VALUES(1,'Vhavenda', '2025-08-13', 'Pap'),
(2,'Bapedi', '2025-08-14', 'Bomma')

INSERT INTO Booking (VenueID, EventID, BookingDate)
VALUES(1,1,'2025-04-04'),
(2,1,'2025-04-13')

--TABLE MANIPULATION 
SELECT *FROM Venue
SELECT *FROM [Event]
SELECT *FROM Booking