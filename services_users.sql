/* STORY 1 */

CREATE TABLE `services_users` (
  `id_s_u` int(10) UNSIGNED NOT NULL,
  `id_u` int(10) UNSIGNED NOT NULL,
  `id_s` int(10) UNSIGNED NOT NULL,
  `inscription_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `services_users`
  ADD PRIMARY KEY (`id_s_u`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `id_s` (`id_s`);

  ALTER TABLE `services_users` DROP FOREIGN KEY `services_users_ibfk_1`;
  ALTER TABLE `services_users` ADD CONSTRAINT `services_users_ibfk_1` FOREIGN KEY (`id_u`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
  ALTER TABLE `services_users` DROP FOREIGN KEY `services_users_ibfk_2`; ALTER TABLE `services_users` ADD CONSTRAINT `services_users_ibfk_2` FOREIGN KEY (`id_s`) REFERENCES `services`(`id_s`) ON DELETE CASCADE ON UPDATE CASCADE;


/* STORY 2 */

INSERT INTO `services_users` (`id_s_u`, `id_u`, `id_s`, `inscription_date`) VALUES
(1, 2, 8, '2019-10-29 09:00:00'),
(2, 3, 5, '2019-10-29 09:30:00'),
(3, 4, 4, '2019-10-29 10:00:00'),
(4, 5, 1, '2019-10-29 10:30:00'),
(5, 2, 2, '2019-10-29 11:00:00'),
(6, 5, 3, '2019-10-29 11:30:00');

/* STORY 3 */
//

/* STORY 5 */

INSERT INTO `services_users` ( `id_u`, `id_s`, `inscription_date`) VALUES
( 5, 9, '2019-11-01 17:30:00'),

/* STORY 6 */

INSERT INTO services_users (id_s,id_u,date_us)
VALUES (5,4,"2019-10-29 12:00:00")

/* STORY 17 */

SELECT services.name_s, services.desc_s, services.adress_s, services.postalcode_s, services.city_s, services.country_s, services.date_s, U1.username, U1.mobile_phone, U2.username AS users_inscrit_name, U2.email, U2.address, U2.postal_code, U2.city, U2.country, services_users.inscription_date
FROM users AS U1

LEFT JOIN services 
ON U1.id = services.id_u

LEFT JOIN services_users 
ON services.id_s = services_users.id_s

LEFT JOIN users AS U2
ON U2.id = services_users.id_u

WHERE U2.id = 2

ORDER BY services_users.inscription_date ASC
LIMIT 1