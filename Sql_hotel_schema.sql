Use hotel;
CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    mail_id VARCHAR(100),
    billing_address TEXT
);

CREATE TABLE bookings (
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);

CREATE TABLE booking_commercials (
    id VARCHAR(50) PRIMARY KEY,
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity DECIMAL(10,2)
);

CREATE TABLE items (
    item_id VARCHAR(50) PRIMARY KEY,
    item_name VARCHAR(100),
    item_rate DECIMAL(10,2)
);

INSERT INTO users (user_id, name, phone_number, mail_id, billing_address) VALUES
('21wrcxuy-67erfa', 'Johny Khabri', '8442341234', 'johny@gmail.com', '1 Andheri, Mumbai'),
('21wrcxuy-67erfb', 'Ravi Yadav', '9876543210', 'ravi@gmail.com', '2 Andheri, Mumbai'),
('21wrcxuy-67erfc', 'Neha Sharma', '8899776655', 'neha@gmail.com', '3 Bandra, Mumbai'),
('21wrcxuy-67erfd', 'Amit Singh', '7788996655', 'amit@gmail.com', '4 Bandra, Mumbai'),
('21wrcxuy-67erfe', 'Pooja Mehta', '9988776655', 'pooja@gmail.com', '5 Juhu, Mumbai'),
('21wrcxuy-67erff', 'Karan Verma', '9090909090', 'karan@gmail.com', '6 Juhu, Mumbai'),
('21wrcxuy-67erfg', 'Sana Khan', '9123456789', 'sana@gmail.com', '7 Borivali, Mumbai'),
('21wrcxuy-67erfh', 'Rohan Gupta', '8787878787', 'rohan@gmail.com', '8 Borivali, Mumbai'),
('21wrcxuy-67erfi', 'Mehul Patel', '9911223344', 'mehul@gmail.com', '9 Malad, Mumbai'),
('21wrcxuy-67erfj', 'Aisha Siddiqui', '9812345678', 'aisha@gmail.com', '10 Malad, Mumbai'),
('21wrcxuy-67erk1', 'Vikas Thakur', '9000011111', 'vikas@gmail.com', '11 Goregaon, Mumbai'),
('21wrcxuy-67erk2', 'Simran Kaur', '9555512121', 'simran@gmail.com', '12 Goregaon, Mumbai'),
('21wrcxuy-67erk3', 'Aditya Nair', '9666622222', 'aditya@gmail.com', '13 Powai, Mumbai'),
('21wrcxuy-67erk4', 'Ritika Desai', '9777733333', 'ritika@gmail.com', '14 Powai, Mumbai');


INSERT INTO bookings (booking_id, booking_date, room_no, user_id) VALUES
('bk-09f3e-95hj', '2021-09-23 07:36:48', 'rm-bhf9-aerjn', '21wrcxuy-67erfa'),
('bk-09f3e-95hk', '2021-09-24 09:10:22', 'rm-bhf9-aerjo', '21wrcxuy-67erfb'),
('bk-09f3e-95hl', '2021-09-25 11:45:30', 'rm-bhf9-aerjp', '21wrcxuy-67erfc'),
('bk-09f3e-95hm', '2021-10-01 14:15:55', 'rm-bhf9-aerjq', '21wrcxuy-67erfd'),
('bk-09f3e-95hn', '2021-10-03 16:20:10', 'rm-bhf9-aerjr', '21wrcxuy-67erfe'),
('bk-09f3e-95ho', '2021-10-05 18:05:44', 'rm-bhf9-aerjs', '21wrcxuy-67erff'),
('bk-09f3e-95hp', '2021-10-08 20:25:11', 'rm-bhf9-aerjt', '21wrcxuy-67erfg'),
('bk-09f3e-95hq', '2021-10-10 12:50:37', 'rm-bhf9-aerju', '21wrcxuy-67erfh'),
('bk-09f3e-95hr', '2021-10-12 09:30:28', 'rm-bhf9-aerjv', '21wrcxuy-67erfi'),
('bk-09f3e-95hs', '2021-10-15 17:15:49', 'rm-bhf9-aerjw', '21wrcxuy-67erfj'),
('bk-09f3e-95ht', '2021-10-18 10:00:01', 'rm-bhf9-aerjx', '21wrcxuy-67erk1'),
('bk-09f3e-95hu', '2021-10-20 13:40:18', 'rm-bhf9-aerjy', '21wrcxuy-67erk2'),
('bk-09f3e-95hv', '2021-10-22 15:55:27', 'rm-bhf9-aerjz', '21wrcxuy-67erk3'),
('bk-09f3e-95hw', '2021-10-25 19:25:56', 'rm-bhf9-aerja', '21wrcxuy-67erk4');


INSERT INTO items (item_id, item_name, item_rate) VALUES
('itm-a9e8-q8fu', 'Tawa Paratha', 18.00),
('itm-a07vh-aer8', 'Mix Veg', 89.00),
('itm-b734j-q92k', 'Paneer Butter Masala', 150.00),
('itm-c93kd-23jf', 'Veg Biryani', 120.00),
('itm-d82kf-99sl', 'Chicken Curry', 180.00),
('itm-e72jf-55kd', 'Dal Tadka', 90.00),
('itm-f83ks-11ld', 'Chapati', 10.00),
('itm-g92kd-88sk', 'Jeera Rice', 70.00),
('itm-h23kd-77dj', 'Cold Coffee', 60.00),
('itm-i82kd-33ld', 'Masala Dosa', 110.00),
('itm-j92kd-21sj', 'Idli Sambar', 50.00),
('itm-k72jf-91ls', 'Veg Sandwich', 45.00),
('itm-l83kd-66af', 'French Fries', 65.00),
('itm-m72kd-34js', 'Chowmein', 95.00);


INSERT INTO booking_commercials 
(id, booking_id, bill_id, bill_date, item_id, item_quantity) VALUES
('q34r-3q4o8-q34u', 'bk-09f3e-95hj', 'bl-0a87y-q340', '2021-09-23 12:03:22', 'itm-a9e8-q8fu', 3),
('q3o4-ahf32-o2u4', 'bk-09f3e-95hj', 'bl-0a87y-q340', '2021-09-23 12:03:22', 'itm-a07vh-aer8', 1),
('cmr-001', 'bk-09f3e-95hk', 'bl-0a87y-q341', '2021-09-24 12:10:00', 'itm-b734j-q92k', 2),
('cmr-002', 'bk-09f3e-95hl', 'bl-0a87y-q342', '2021-09-25 14:20:30', 'itm-c93kd-23jf', 1),
('cmr-003', 'bk-09f3e-95hm', 'bl-0a87y-q343', '2021-10-01 16:45:11', 'itm-d82kf-99sl', 4),
('cmr-004', 'bk-09f3e-95hn', 'bl-0a87y-q344', '2021-10-03 11:25:05', 'itm-e72jf-55kd', 2),
('cmr-005', 'bk-09f3e-95ho', 'bl-0a87y-q345', '2021-10-05 17:55:20', 'itm-f83ks-11ld', 3),
('cmr-006', 'bk-09f3e-95hp', 'bl-0a87y-q346', '2021-10-08 19:40:15', 'itm-g92kd-88sk', 1),
('cmr-007', 'bk-09f3e-95hq', 'bl-0a87y-q347', '2021-10-10 10:15:22', 'itm-h23kd-77dj', 2),
('cmr-008', 'bk-09f3e-95hr', 'bl-0a87y-q348', '2021-10-12 09:30:28', 'itm-i82kd-33ld', 1),
('cmr-009', 'bk-09f3e-95hs', 'bl-0a87y-q349', '2021-10-15 17:15:49', 'itm-j92kd-21sj', 5),
('cmr-010', 'bk-09f3e-95ht', 'bl-0a87y-q350', '2021-10-18 10:00:01', 'itm-k72jf-91ls', 1),
('cmr-011', 'bk-09f3e-95hu', 'bl-0a87y-q351', '2021-10-20 13:40:18', 'itm-l83kd-66af', 2),
('cmr-012', 'bk-09f3e-95hv', 'bl-0a87y-q352', '2021-10-22 15:55:27', 'itm-m72kd-34js', 1);




