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

/* STORY 4 */