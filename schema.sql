-- SEMG database schema (MBIS623 assignment, May 2026)
PRAGMA foreign_keys = ON;

CREATE TABLE Client (
client_id INTEGER PRIMARY KEY AUTOINCREMENT,
company_name TEXT NOT NULL,
contact_name TEXT,
email TEXT UNIQUE,
phone TEXT
);
CREATE TABLE Venue (
venue_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
address TEXT,
capacity INTEGER,
standard_fee REAL
);
CREATE TABLE Staff (
staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
role TEXT,
mobile TEXT
);
CREATE TABLE Service (
service_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
description TEXT,
daily_cost REAL
);
CREATE TABLE Attendee (
attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
email TEXT
);
CREATE TABLE Speaker (
speaker_id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
biography TEXT
);
CREATE TABLE Expertise (
expertise_id INTEGER PRIMARY KEY AUTOINCREMENT,
expertise_name TEXT,
expertise_area TEXT
);
CREATE TABLE Event (
event_id INTEGER PRIMARY KEY AUTOINCREMENT,
venue_id INTEGER,
client_id INTEGER,
title TEXT,
start_time DATETIME,
end_time DATETIME,
status TEXT,
FOREIGN KEY (venue_id) REFERENCES Venue(venue_id),
 FOREIGN KEY (client_id) REFERENCES Client(client_id)
);
CREATE TABLE Workshop (
workshop_id INTEGER PRIMARY KEY AUTOINCREMENT,
event_id INTEGER,
title TEXT,
scheduled_time DATETIME,
duration_minutes INTEGER,
FOREIGN KEY (event_id) REFERENCES Event(event_id)
);
CREATE TABLE Invoice (
invoice_number INTEGER PRIMARY KEY AUTOINCREMENT,
event_id INTEGER,
issue_date DATE,
due_date DATE,
total_amount REAL,
FOREIGN KEY (event_id) REFERENCES Event(event_id)
);
CREATE TABLE Payment (
payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
invoice_number INTEGER,
payment_timestamp DATETIME,
amount_paid REAL,
payment_method TEXT,
FOREIGN KEY (invoice_number) REFERENCES Invoice(invoice_number)
);
CREATE TABLE Ticket (
ticket_number INTEGER PRIMARY KEY AUTOINCREMENT,
event_id INTEGER,
attendee_id INTEGER,
ticket_type TEXT,
purchase_price REAL,
FOREIGN KEY (event_id) REFERENCES Event(event_id),
FOREIGN KEY (attendee_id) REFERENCES Attendee(attendee_id)
);
CREATE TABLE Staff_Assignment (
staff_id INTEGER,
event_id INTEGER,
assignment_date DATE,
shift_hours INTEGER,
PRIMARY KEY (staff_id, event_id, assignment_date),
FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
FOREIGN KEY (event_id) REFERENCES Event(event_id)
);
CREATE TABLE Event_Service (
event_id INTEGER,
service_id INTEGER,
quantity INTEGER,
quoted_cost REAL,
PRIMARY KEY (event_id, service_id),
FOREIGN KEY (event_id) REFERENCES Event(event_id),
FOREIGN KEY (service_id) REFERENCES Service(service_id)
);
CREATE TABLE Workshop_Speaker (
workshop_id INTEGER,
speaker_id INTEGER,
PRIMARY KEY (workshop_id, speaker_id),
FOREIGN KEY (workshop_id) REFERENCES Workshop(workshop_id),
FOREIGN KEY (speaker_id) REFERENCES Speaker(speaker_id)
);
CREATE TABLE Speaker_Expertise (
speaker_id INTEGER,
expertise_id INTEGER,
PRIMARY KEY (speaker_id, expertise_id),
FOREIGN KEY (speaker_id) REFERENCES Speaker(speaker_id),
FOREIGN KEY (expertise_id) REFERENCES Expertise(expertise_id)
);
CREATE TABLE Sponsor (
sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
company_name TEXT NOT NULL,
contact_person TEXT,
email TEXT UNIQUE,
phone TEXT,
sponsorship_level TEXT
);
CREATE TABLE Event_Sponsor (
event_id INTEGER,
sponsor_id INTEGER,
sponsorship_amount REAL,
sponsorship_type TEXT,
PRIMARY KEY (event_id, sponsor_id),
FOREIGN KEY (event_id) REFERENCES Event(event_id),
FOREIGN KEY (sponsor_id) REFERENCES Sponsor(sponsor_id)
);
CREATE TABLE Feedback_Form (
feedback_form_id INTEGER PRIMARY KEY AUTOINCREMENT,
event_id INTEGER,
form_title TEXT,
created_date DATE,
FOREIGN KEY (event_id) REFERENCES Event(event_id)
);
CREATE TABLE Feedback_Response (
response_id INTEGER PRIMARY KEY AUTOINCREMENT,
feedback_form_id INTEGER,
attendee_id INTEGER,
rating INTEGER CHECK (rating BETWEEN 1 AND 5),
comments TEXT,
submitted_at DATETIME,
FOREIGN KEY (feedback_form_id) REFERENCES Feedback_Form(feedback_form_id),
FOREIGN KEY (attendee_id) REFERENCES Attendee(attendee_id)
);
