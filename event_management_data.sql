
-- Table: Organizer
CREATE TABLE Organizer (
    OrganizerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
);

-- Table: Attendee
CREATE TABLE Attendee (
    AttendeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
);

-- Table: Event
CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Location VARCHAR(100),
    Date DATE,
    OrganizerID INT,
    FOREIGN KEY (OrganizerID) REFERENCES Organizer(OrganizerID)
);

-- Table: Ticket
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    EventID INT,
    Price DECIMAL(10,2),
    SeatNum VARCHAR(10),
    AttendeeID INT,
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (AttendeeID) REFERENCES Attendee(AttendeeID)
);

-- Data for Organizer
INSERT INTO Organizer (OrganizerID, Name, Email, Password) VALUES
(1, 'Alaa Mahmoud', 'alaa@gmail.com', 'alaa123'),
(2, 'Nada Sameh', 'nada@gmail.com', 'nada456'),
(3, 'Mostafa Amin', 'mostafa@gmail.com', 'mostafa789'),
(4, 'Lina Tarek', 'lina@gmail.com', 'lina321'),
(5, 'Khaled Hassan', 'khaled@gmail.com', 'khaled007'),
(6, 'Yasmine Fathy', 'yasmine@gmail.com', 'yas444'),
(7, 'Omar Nabil', 'omar@gmail.com', 'omar555'),
(8, 'Marwa Adel', 'marwa@gmail.com', 'marwa888'),
(9, 'Tamer Magdy', 'tamer@gmail.com', 'tamer666'),
(10, 'Heba Sherif', 'heba@gmail.com', 'heba111');

-- Data for Attendee
INSERT INTO Attendee (AttendeeID, Name, Email, Password) VALUES
(1, 'Mohamed Ali', 'mo@gmail.com', 'mo123'),
(2, 'Sara Ehab', 'sara@gmail.com', 'sara123'),
(3, 'Rami Fathy', 'rami@gmail.com', 'rami456'),
(4, 'Dina Adel', 'dina@gmail.com', 'dina789'),
(5, 'Tarek Hany', 'tarek@gmail.com', 'tarek321'),
(6, 'Mariam Nasser', 'mariam@gmail.com', 'mari654'),
(7, 'Hassan Yousry', 'hassan@gmail.com', 'hassan007'),
(8, 'Laila Tamer', 'laila@gmail.com', 'laila111'),
(9, 'Youssef Omar', 'youssef@gmail.com', 'you999'),
(10, 'Noor Sameh', 'noor@gmail.com', 'noor888');

-- Data for Event
INSERT INTO Event (EventID, Name, Description, Location, Date, OrganizerID) VALUES
(1, 'Tech Summit', 'Technology and innovation', 'Cairo', '2025-06-20', 1),
(2, 'Art Gallery', 'Art exhibition', 'Giza', '2025-07-05', 2),
(3, 'Music Night', 'Live music event', 'Alexandria', '2025-07-15', 3),
(4, 'Startup Pitch', 'Pitch your idea', 'Cairo', '2025-08-01', 4),
(5, 'Career Day', 'Job fair event', 'Mansoura', '2025-06-25', 5),
(6, 'Health Expo', 'Healthcare and wellness', 'Aswan', '2025-09-01', 6),
(7, 'Book Fair', 'Book exhibition and sales', 'Fayoum', '2025-07-22', 7),
(8, 'Film Festival', 'Short films competition', 'Hurghada', '2025-08-10', 8),
(9, 'Science Fair', 'Students projects', 'Ismailia', '2025-08-20', 9),
(10, 'Charity Event', 'Fundraising activities', 'Tanta', '2025-09-05', 10);

-- Data for Ticket
INSERT INTO Ticket (TicketID, EventID, Price, SeatNum, AttendeeID) VALUES
(1, 1, 150.00, 'A1', 1),
(2, 1, 150.00, 'A2', 2),
(3, 2, 100.00, 'B1', 3),
(4, 3, 200.00, 'C1', 4),
(5, 4, 250.00, 'D2', 5),
(6, 5, 0.00, 'E5', 6),
(7, 6, 120.00, 'F3', 7),
(8, 7, 90.00, 'G4', 8),
(9, 8, 130.00, 'H6', 9),
(10, 9, 110.00, 'I9', 10);
