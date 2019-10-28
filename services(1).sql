/* STORY 1*/

CREATE TABLE `services` (
  `id_s` int(10) UNSIGNED NOT NULL,
  `id_u` int(10) UNSIGNED NOT NULL,
  `name_s` varchar(50) NOT NULL,
  `desc_s` text NOT NULL,
  `adress_s` varchar(100) NOT NULL,
  `postalcode_s` varchar(5) NOT NULL,
  `city_s` varchar(50) NOT NULL,
  `country_s` varchar(50) NOT NULL,
  `date_s` datetime NOT NULL,
  `info_s` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `services`
  ADD PRIMARY KEY (`id_s`),
  ADD KEY `id_u` (`id_u`);

  /* STORY 2 */

  INSERT INTO `services` (`id_s`, `id_u`, `name_s`, `desc_s`, `adress_s`, `postalcode_s`, `city_s`, `country_s`, `date_s`, `info_s`) VALUES
(1, 1, 'demenagement', 'monter des meubles', '', '', '', '', '2019-10-28 10:00:00', NULL),
(2, 1, 'jardinage', 'tailler des haies', '', '', '', '', '2019-10-28 10:30:00', NULL),
(3, 1, 'promenade', 'promener les chiens', '', '', '', '', '2019-10-28 11:00:00', NULL),
(4, 1, 'cours', 'cours a domicile', '', '', '', '', '2019-10-28 11:30:00', NULL),
(5, 1, 'coiffeur', 'coiffeur a domicile', '', '', '', '', '2019-10-28 12:00:00', NULL),
(6, 1, 'styliste', 'styliste a domicile', '', '', '', '', '2019-10-28 12:30:00', NULL),
(7, 1, 'menage', 'faire le menage', '', '', '', '', '2019-10-28 13:00:00', NULL),
(8, 1, 'babysitter', 'garde d''enfants', '', '', '', '', '2019-10-28 13:30:00', NULL),

/* STORY 3 */
//

/* STORY 4 */




