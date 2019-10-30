/* STORY 1*/

CREATE TABLE `services` (
  `id_s` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_u` int(10) UNSIGNED NOT NULL,
  `name_s` varchar(50) NOT NULL,
  `desc_s` text NOT NULL,
  `adress_s` varchar(100) NOT NULL,
  `postalcode_s` varchar(5) NOT NULL,
  `city_s` varchar(50) NOT NULL,
  `country_s` varchar(50) NOT NULL,
  `date_s` datetime NOT NULL,
  `info_s` text DEFAULT NULL,
  PRIMARY KEY ('id_s')

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `services`
  ADD FOREIGN KEY (`id_u`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

  /* STORY 2 */

  INSERT INTO `services` (`id_s`, `id_u`, `name_s`, `desc_s`, `adress_s`, `postalcode_s`, `city_s`, `country_s`, `date_s`, `info_s`) VALUES
(1, 1, 'demenagement', 'monter des meubles', '', '', '', '', '2019-10-28 10:00:00', NULL),
(2, 1, 'jardinage', 'tailler des haies', '', '', '', '', '2019-10-28 10:30:00', NULL),
(3, 1, 'promenade', 'promener les chiens', '', '', '', '', '2019-10-28 11:00:00', NULL),
(4, 1, 'cours', 'cours a domicile', '', '', '', '', '2019-10-28 11:30:00', NULL),
(5, 1, 'coiffeur', 'coiffeur a domicile', '', '', '', '', '2019-10-28 12:00:00', NULL),
(6, 1, 'styliste', 'styliste a domicile', '', '', '', '', '2019-10-28 12:30:00', NULL),
(7, 1, 'menage', 'faire le menage', '', '', '', '', '2019-10-28 13:00:00', NULL),
(8, 1, 'babysitter', 'garde d''enfants', '', '', '', '', '2019-10-28 13:30:00', NULL)

/* STORY 3 */
//

/* STORY 5 */
INSERT INTO `services` ( `id_u`, `name_s`, `desc_s`, `adress_s`, `postalcode_s`, `city_s`, `country_s`, `date_s`, `info_s`) VALUES
( 5, 'reparation', 'reparer des choses', '', '', '', '', '2019-11-01 16:00:00', NULL)

/* STORY 10 */
SELECT S.id_s ,S.name_s, S.date_s, S.city_s, S.country_s, S.postalcode_s
FROM services AS S

LEFT JOIN services_users AS SU
ON SU.id_s = S.id_s

WHERE (date_s > CURRENT_TIMESTAMP AND  SU.id_u <=> NULL )
ORDER BY date_s DESC,city_s ASC

/* STORY 12 */

DELETE FROM services
WHERE id_s = 6

/* STORY 11 */

SELECT S.*, U1.username, U1.mobile_phone, U2.username AS users_inscrit_name
FROM users AS U1

LEFT JOIN services as S
ON U1.id_u = S.id_u 

LEFT JOIN services_users as SU
ON S.id_s = SU.id_s

LEFT JOIN users AS U2
ON U2.id_u = SU.id_u 

WHERE S.id_s = 3

/* STORY 16 */
SELECT S.name_s as nom_service , S.desc_s as description_service, S.adress_s as adress_service, S.postalcode_s as code_postal_service, S.city_s as city_service, 
S.country_s as country_service, S.date_s as date_service, U2.username as user_service, U1.username AS users_inscrit, U1.email as user_inscrit_mail, U1.address as user_inscrit_adress, U1.postal_code as user_inscrit_postalcode, U1.city as user_inscrit_city, U1.country as user_inscrit_country, U1.mobile_phone as user_inscrit_mobile


FROM services_users as SU

LEFT JOIN users as U1
ON SU.id_u = U1.id 

LEFT JOIN services as S
ON SU.id_s = S.id_s

LEFT JOIN users AS U2
ON U2.id = S.id_u

WHERE U1.id = 3



