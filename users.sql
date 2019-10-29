/* STORY 1 */

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `home_phone` varchar(10) DEFAULT NULL,
  `mobile_phone` varchar(10) DEFAULT NULL,
  `register_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

/* STORY 2 */

INSERT INTO `users` (`id`, `email`, `username`, `pwd`, `address`, `postal_code`, `city`, `country`, `home_phone`, `mobile_phone`, `register_date`) VALUES
(1, 'user1@gmail.com', 'user1', 'user1', '', '', '', '', NULL, '', '2019-10-28'),
(2, 'user2@gmail.com', 'user2', 'user2', '', '', '', '', NULL, '', '2019-10-28'),
(3, 'user3@gmail.com', 'user3', 'user3', '', '', '', '', NULL, '', '2019-10-28'),
(4, 'user4@gmail.com', 'user4', 'user4', '', '', '', '', NULL, '', '2019-10-28'),
(5, 'user5@gmail.com', 'user5', 'user5', '', '', '', '', NULL, '', '2019-10-28');

/* STORY 3 */


INSERT INTO users (`id`, `email`, `username`, `pwd`, `address`, `postal_code`, `city`, `country`, `home_phone`, `mobile_phone`, `register_date`) VALUES
(6, 'user6@gmail.com', 'user6', 'user6', '', '', '', '', NULL, '', ''),)

/* STORY 4 */

UPDATE users 
    SET address= '1 rue de la coding', postal_code= '95001', city = 'Cergy', country='France' , mobile_phone='0102030405', register_date = '2019-10-28' WHERE id=1
    SET address= '2 rue de la coding', postal_code= '95002', city = 'Cergy', country='France' , mobile_phone='0202030405', register_date = '2019-10-28' WHERE id=2
    SET address= '3 rue de la coding', postal_code= '95003', city = 'Cergy', country='France' , mobile_phone='0302030405', register_date = '2019-10-28' WHERE id=3
    SET address= '4 rue de la coding', postal_code= '95004', city = 'Cergy', country='France' , mobile_phone='0402030405', register_date = '2019-10-28' WHERE id=4
    SET address= '5 rue de la coding', postal_code= '95005', city = 'Cergy', country='France' , mobile_phone='0502030405', register_date = '2019-10-28' WHERE id=5

/* STORY 14 */

DELETE FROM users
WHERE id = 4