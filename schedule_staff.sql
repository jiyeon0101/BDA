-- Table structure for table 'Schedule_staff'
--

CREATE TABLE `Schedule_staff` (
  `username` varchar(50) NOT NULL,
  `store_ID` int(11) NOT NULL,
  `profilename` varchar(20) NOT NULL,
  `work_day` varchar(20) NOT NULL,
  `work_time_start` time NOT NULL,
  `work_time_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `Schedule_staff` (`username`, `store_ID`, `profilename`, `work_day`, `work_time_start`, `work_time_end`) VALUES
('jihye@example.com', 58118, 'Jihye Park', 'monday', '09:00', '15:00'),
('jihye@example.com', 58118, 'Jihye Park', 'tuesday', '09:00', '15:00'),
('jiyeon@example.com', 58118, 'Jiyeon Kim', 'monday', '15:00', '21:00'),
('jiyeon@example.com', 58118, 'Jiyeon Kim', 'tuesday', '15:00', '21:00'),
('kai@example.com', 58118, 'Kai Zhang', 'wednesday', '09:00', '15:00'),
('kai@example.com', 58118, 'Kai Zhang', 'thursday', '09:00', '15:00'),
('nafisa@example.com', 58118, 'Nafisa Otakhanova', 'wednesday', '15:00', '21:00'),
('nafisa@example.com', 58118, 'Nafisa Otakhanova', 'thursday', '15:00', '21:00'),
('staff123', 58118, 'Staff', 'friday', '09:00', '15:00'),
('staff123', 58118, 'Staff', 'saturday', '09:00', '15:00'),
('test_user', 276746, 'Test-Manager', 'friday', '15:00', '21:00'),
('test_user', 276746, 'Test-Manager', 'saturday', '15:00', '21:00'),
('thien.kim@example.com', 486166, 'Hong Thien Kim Ngo', 'sunday', '09:00', '15:00'),
('kim', 486166, 'kim', 'sunday', '15:00', '21:00');
