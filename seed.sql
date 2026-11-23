-- Sample data for the SEMG database.
-- Added in November 2026 to demonstrate the schema and queries.
-- All names, companies, emails and phone numbers are fictional.
PRAGMA foreign_keys = ON;

INSERT INTO Client (company_name, contact_name, email, phone) VALUES
('Southern Alps Tech', 'Mia Thompson', 'mia@southernalpstech.co.nz', '03 555 0101'),
('Harbour Finance Group', 'Liam Walker', 'liam@harbourfinance.co.nz', '09 555 0102'),
('Kowhai Health', 'Aroha Ngata', 'aroha@kowhaihealth.co.nz', '04 555 0103'),
('Riverstone Builders', 'Jack Wilson', 'jack@riverstone.co.nz', '03 555 0104'),
('Pacific Retail Co', 'Sophie Chen', 'sophie@pacificretail.co.nz', '09 555 0105'),
('GreenLeaf Energy', 'Noah Patel', 'noah@greenleafenergy.co.nz', '07 555 0106'),
('Tasman Legal', 'Olivia Brown', 'olivia@tasmanlegal.co.nz', '03 555 0107'),
('Canterbury Ag Network', 'Ethan Clarke', 'ethan@canag.co.nz', '03 555 0108'),
('BlueWave Media', 'Isla Martin', 'isla@bluewavemedia.co.nz', '09 555 0109'),
('Summit Education Trust', 'Hemi Parata', 'hemi@summitedu.org.nz', '04 555 0110');

INSERT INTO Venue (name, address, capacity, standard_fee) VALUES
('Te Pae Convention Centre', '85 Oxford Terrace, Christchurch', 2000, 12000.00),
('Aotea Centre', '50 Mayoral Drive, Auckland', 2200, 15000.00),
('Te Papa Conference Rooms', '55 Cable Street, Wellington', 600, 6500.00),
('Riverside Hall', '12 Riverside Lane, Christchurch', 250, 2200.00),
('Harbourview Hotel Ballroom', '1 Quay Street, Auckland', 400, 5200.00),
('Lakeside Lodge', '30 Lakefront Road, Queenstown', 150, 3800.00),
('Hagley Pavilion', 'Hagley Park, Christchurch', 300, 2800.00),
('Waikato Expo Hall', '20 Expo Drive, Hamilton', 1200, 7000.00),
('Old Library Venue', '8 Cathedral Square, Christchurch', 120, 1500.00),
('Seaside Function Centre', '44 Marine Parade, Napier', 350, 3000.00);

INSERT INTO Staff (first_name, last_name, role, mobile) VALUES
('Priya', 'Nair', 'Event Manager', '021 555 201'),
('Tom', 'Harris', 'Event Coordinator', '021 555 202'),
('Mere', 'Tane', 'Logistics Lead', '021 555 203'),
('Daniel', 'Lee', 'AV Technician', '021 555 204'),
('Grace', 'Kim', 'Registration Officer', '021 555 205'),
('Sam', 'Wright', 'Catering Liaison', '021 555 206'),
('Ana', 'Lopez', 'Event Coordinator', '021 555 207'),
('Ben', 'Foster', 'Security Supervisor', '021 555 208'),
('Ruby', 'Singh', 'Marketing Officer', '021 555 209'),
('Josh', 'Baker', 'AV Technician', '021 555 210');

INSERT INTO Service (name, description, daily_cost) VALUES
('Catering - Standard', 'Morning tea, lunch and afternoon tea per 100 guests', 3500.00),
('Catering - Premium', 'Plated three-course meal per 100 guests', 7500.00),
('AV Package', 'Projectors, microphones, speakers and a technician', 1800.00),
('Livestreaming', 'Multi-camera livestream with recording', 2500.00),
('Security', 'Licensed security staff per shift', 900.00),
('Photography', 'Professional event photographer', 1200.00),
('Registration Desk', 'Staffed check-in with badge printing', 700.00),
('Stage and Lighting', 'Stage build and lighting rig', 3200.00),
('Transport Shuttle', 'Shuttle bus between hotels and venue', 1100.00),
('Translation Services', 'Live interpretation, two languages', 2000.00);

INSERT INTO Attendee (name, email) VALUES
('Hannah Scott', 'hannah.scott@example.com'),
('Raj Mehta', 'raj.mehta@example.com'),
('Chloe Evans', 'chloe.evans@example.com'),
('Tama Rewi', 'tama.rewi@example.com'),
('Emily Zhang', 'emily.zhang@example.com'),
('Lucas Silva', 'lucas.silva@example.com'),
('Zara Ali', 'zara.ali@example.com'),
('Oliver King', 'oliver.king@example.com'),
('Ngaio Smith', 'ngaio.smith@example.com'),
('Ava Robinson', 'ava.robinson@example.com'),
('Kenji Sato', 'kenji.sato@example.com'),
('Maya Gupta', 'maya.gupta@example.com');

INSERT INTO Speaker (name, biography) VALUES
('Dr Sarah Mitchell', 'AI researcher and university lecturer in machine learning.'),
('James Te Whare', 'Founder of a sustainable energy start-up.'),
('Lena Fischer', 'Chief Financial Officer with 20 years in banking.'),
('Dr Arjun Rao', 'Public health specialist and hospital director.'),
('Kate O''Neill', 'Digital marketing strategist and author.'),
('Wiremu Kingi', 'Agricultural innovation advisor.'),
('Dr Mei Lin', 'Cybersecurity consultant for government agencies.'),
('Tom Barrett', 'Construction project manager and safety advocate.'),
('Hana Yoshida', 'Retail experience designer.'),
('Peter Grant', 'Employment law partner.');

INSERT INTO Expertise (expertise_name, expertise_area) VALUES
('Artificial Intelligence', 'Technology'),
('Renewable Energy', 'Sustainability'),
('Corporate Finance', 'Business'),
('Public Health', 'Healthcare'),
('Digital Marketing', 'Marketing'),
('AgriTech', 'Agriculture'),
('Cybersecurity', 'Technology'),
('Construction Safety', 'Engineering'),
('Customer Experience', 'Retail'),
('Employment Law', 'Legal');

INSERT INTO Event (venue_id, client_id, title, start_time, end_time, status) VALUES
(1, 1, 'NZ Tech Summit 2026', '2026-03-10 09:00', '2026-03-11 17:00', 'Completed'),
(2, 2, 'Harbour Finance Leaders Forum', '2026-04-15 09:00', '2026-04-15 17:00', 'Completed'),
(3, 3, 'Kowhai Health Conference', '2026-05-20 08:30', '2026-05-21 16:30', 'Completed'),
(4, 4, 'Riverstone Safety Day', '2026-06-05 09:00', '2026-06-05 15:00', 'Completed'),
(5, 5, 'Pacific Retail Awards Night', '2026-07-18 18:00', '2026-07-18 23:00', 'Completed'),
(8, 6, 'GreenLeaf Energy Expo', '2026-08-22 09:00', '2026-08-23 17:00', 'Completed'),
(9, 7, 'Tasman Legal Client Breakfast', '2026-09-09 07:30', '2026-09-09 10:00', 'Completed'),
(7, 8, 'Canterbury AgriTech Showcase', '2026-10-14 09:00', '2026-10-14 17:00', 'Completed'),
(6, 9, 'BlueWave Media Retreat', '2026-12-03 09:00', '2026-12-04 17:00', 'Confirmed'),
(10, 10, 'Summit Education Symposium', '2027-02-17 09:00', '2027-02-17 16:00', 'Planned');

INSERT INTO Workshop (event_id, title, scheduled_time, duration_minutes) VALUES
(1, 'Practical AI for Small Business', '2026-03-10 10:00', 90),
(1, 'Securing Your Cloud', '2026-03-10 14:00', 60),
(2, 'Funding Growth in 2026', '2026-04-15 11:00', 60),
(3, 'Digital Health Records', '2026-05-20 10:00', 90),
(4, 'Site Safety Leadership', '2026-06-05 10:00', 120),
(5, 'Designing Store Experiences', '2026-07-18 18:30', 45),
(6, 'Solar for Business', '2026-08-22 13:00', 60),
(7, 'Employment Law Update', '2026-09-09 08:00', 60),
(8, 'Drones and Precision Farming', '2026-10-14 11:00', 90),
(9, 'Content Strategy That Converts', '2026-12-03 10:00', 90);

INSERT INTO Invoice (event_id, issue_date, due_date, total_amount) VALUES
(1, '2026-02-10', '2026-03-10', 42000.00),
(2, '2026-03-15', '2026-04-15', 28500.00),
(3, '2026-04-20', '2026-05-20', 36000.00),
(4, '2026-05-05', '2026-06-05', 9800.00),
(5, '2026-06-18', '2026-07-18', 24500.00),
(6, '2026-07-22', '2026-08-22', 31000.00),
(7, '2026-08-09', '2026-09-09', 4600.00),
(8, '2026-09-14', '2026-10-14', 12400.00),
(9, '2026-11-03', '2026-12-03', 15800.00),
(10, '2027-01-17', '2027-02-17', 10200.00);

INSERT INTO Payment (invoice_number, payment_timestamp, amount_paid, payment_method) VALUES
(1, '2026-03-01 10:15', 42000.00, 'Bank Transfer'),
(2, '2026-04-10 14:20', 28500.00, 'Bank Transfer'),
(3, '2026-05-01 09:05', 18000.00, 'Credit Card'),
(3, '2026-05-18 16:40', 18000.00, 'Bank Transfer'),
(4, '2026-06-01 11:00', 9800.00, 'Credit Card'),
(5, '2026-07-15 13:30', 24500.00, 'Bank Transfer'),
(6, '2026-08-20 10:45', 31000.00, 'Bank Transfer'),
(7, '2026-09-05 08:50', 4600.00, 'Credit Card'),
(8, '2026-10-10 15:10', 12400.00, 'Bank Transfer'),
(9, '2026-11-20 12:00', 7900.00, 'Bank Transfer');

INSERT INTO Ticket (event_id, attendee_id, ticket_type, purchase_price) VALUES
(1, 1, 'Early Bird', 299.00),
(1, 2, 'Standard', 399.00),
(1, 11, 'VIP', 699.00),
(2, 3, 'Standard', 250.00),
(3, 4, 'Standard', 320.00),
(3, 12, 'Student', 120.00),
(4, 5, 'Standard', 80.00),
(5, 6, 'VIP', 450.00),
(6, 7, 'Early Bird', 150.00),
(6, 2, 'Standard', 199.00),
(7, 8, 'Standard', 60.00),
(8, 9, 'Standard', 95.00),
(8, 10, 'Student', 40.00);

INSERT INTO Staff_Assignment (staff_id, event_id, assignment_date, shift_hours) VALUES
(1, 1, '2026-03-10', 10),
(4, 1, '2026-03-10', 9),
(5, 1, '2026-03-11', 8),
(2, 2, '2026-04-15', 9),
(3, 3, '2026-05-20', 10),
(8, 4, '2026-06-05', 7),
(6, 5, '2026-07-18', 6),
(7, 6, '2026-08-22', 9),
(10, 6, '2026-08-23', 8),
(9, 8, '2026-10-14', 8);

INSERT INTO Event_Service (event_id, service_id, quantity, quoted_cost) VALUES
(1, 1, 2, 7000.00),
(1, 3, 2, 3600.00),
(1, 4, 2, 5000.00),
(2, 2, 1, 7500.00),
(3, 1, 2, 7000.00),
(4, 5, 1, 900.00),
(5, 8, 1, 3200.00),
(5, 6, 1, 1200.00),
(6, 7, 2, 1400.00),
(8, 9, 1, 1100.00);

INSERT INTO Workshop_Speaker (workshop_id, speaker_id) VALUES
(1, 1),
(2, 7),
(3, 3),
(4, 4),
(5, 8),
(6, 9),
(7, 2),
(8, 10),
(9, 6),
(10, 5),
(1, 7);

INSERT INTO Speaker_Expertise (speaker_id, expertise_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 7),
(9, 5);

-- Extension: sponsorship management
INSERT INTO Sponsor (company_name, contact_person, email, phone, sponsorship_level) VALUES
('Kiwi Cloud Services', 'Rachel Moore', 'rachel@kiwicloud.co.nz', '09 555 0301', 'Platinum'),
('Mainland Bank', 'Andrew Young', 'andrew@mainlandbank.co.nz', '03 555 0302', 'Gold'),
('Fernleaf Pharmacy', 'Leah Turner', 'leah@fernleafpharmacy.co.nz', '04 555 0303', 'Silver'),
('Alpine Insurance', 'Chris Hall', 'chris@alpineinsurance.co.nz', '03 555 0304', 'Gold'),
('Coastline Telecom', 'Nina Brooks', 'nina@coastlinetelecom.co.nz', '09 555 0305', 'Platinum'),
('SunPeak Solar', 'Matiu Rangi', 'matiu@sunpeaksolar.co.nz', '07 555 0306', 'Silver'),
('Orchard Foods', 'Ella Ward', 'ella@orchardfoods.co.nz', '06 555 0307', 'Bronze'),
('FarmLink Machinery', 'George Bell', 'george@farmlink.co.nz', '03 555 0308', 'Gold'),
('Pixel Print Studio', 'Amy Ross', 'amy@pixelprint.co.nz', '03 555 0309', 'Bronze'),
('LearnNZ', 'David Moana', 'david@learnnz.org.nz', '04 555 0310', 'Silver');

INSERT INTO Event_Sponsor (event_id, sponsor_id, sponsorship_amount, sponsorship_type) VALUES
(1, 1, 25000.00, 'Cash'),
(1, 5, 15000.00, 'Cash'),
(2, 2, 12000.00, 'Cash'),
(2, 4, 8000.00, 'Cash'),
(3, 3, 6000.00, 'In-kind'),
(5, 7, 3000.00, 'In-kind'),
(6, 6, 9000.00, 'Cash'),
(8, 8, 10000.00, 'Cash'),
(8, 9, 1500.00, 'In-kind'),
(10, 10, 5000.00, 'Cash');

INSERT INTO Feedback_Form (event_id, form_title, created_date) VALUES
(1, 'NZ Tech Summit Feedback', '2026-03-11'),
(2, 'Finance Forum Feedback', '2026-04-15'),
(3, 'Health Conference Feedback', '2026-05-21'),
(4, 'Safety Day Feedback', '2026-06-05'),
(5, 'Awards Night Feedback', '2026-07-18'),
(6, 'Energy Expo Feedback', '2026-08-23'),
(7, 'Client Breakfast Feedback', '2026-09-09'),
(8, 'AgriTech Showcase Feedback', '2026-10-14'),
(9, 'Media Retreat Feedback', '2026-12-04'),
(10, 'Education Symposium Feedback', '2027-02-17');

INSERT INTO Feedback_Response (feedback_form_id, attendee_id, rating, comments, submitted_at) VALUES
(1, 1, 5, 'Excellent speakers and very well organised.', '2026-03-12 09:00'),
(1, 2, 4, 'Great content, lunch queue was long.', '2026-03-12 10:30'),
(1, 11, 5, 'VIP sessions were worth it.', '2026-03-12 11:15'),
(2, 3, 4, 'Useful networking.', '2026-04-16 08:45'),
(3, 4, 3, 'Some sessions ran over time.', '2026-05-22 13:00'),
(3, 12, 4, 'Good value for students.', '2026-05-22 14:20'),
(4, 5, 5, 'Very practical safety training.', '2026-06-06 09:10'),
(5, 6, 4, 'Fun night, sound was a bit loud.', '2026-07-19 11:00'),
(6, 7, 3, 'Venue was hard to find.', '2026-08-24 15:30'),
(6, 2, 4, 'Interesting exhibitors.', '2026-08-24 16:00'),
(7, 8, 5, 'Short, sharp and useful.', '2026-09-10 08:00'),
(8, 9, 4, 'Loved the drone demo.', '2026-10-15 10:00'),
(8, 10, 5, 'Great for students.', '2026-10-15 12:30');
