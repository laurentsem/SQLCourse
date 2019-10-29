/* STORY 1 */

CREATE TABLE `message` (
  `id_m` int(10) UNSIGNED NOT NULL,
  `id_exp` int(10) UNSIGNED NOT NULL,
  `id_rec` int(10) UNSIGNED NOT NULL,
  `message_text` text NOT NULL,
  `date_m` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `message`
  ADD PRIMARY KEY (`id_m`),
  ADD KEY `id_exp` (`id_exp`),
  ADD KEY `id_rec` (`id_rec`);

  ALTER TABLE `message` DROP FOREIGN KEY `message_ibfk_1`; ALTER TABLE `message` ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id_exp`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
  ALTER TABLE `message` DROP FOREIGN KEY `message_ibfk_2`; ALTER TABLE `message` ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`id_rec`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

  /* STORY 2 */

  INSERT INTO `message` (`id_m`, `id_exp`, `id_rec`, `message_text`, `date_m`) VALUES
(1, 2, 1, 'Bonjour, êtes vous disponible pour garder mes enfants ?', '2019-10-30 08:00:00'),
(2, 3, 1, 'Bonjour, êtes vous disponible pour couper mes cheveux?', '2019-10-30 08:15:00'),
(3, 4, 1, 'Bonjour, êtes vous disponible pour donner des cours de maths à mes enfants ?', '2019-10-30 08:30:00'),
(4, 5, 1, 'Bonjour, êtes vous disponible pour m''aider dans un démenagement ?', '2019-10-30 08:50:00'),
(5, 2, 1, 'Bonjour, êtes vous disponible pour venir couper mes haies ?', '2019-10-30 09:10:00'),
(6, 1, 2, 'Bonjour, je suis disponible le 6 novembre.', '2019-10-30 09:20:00'),
(7, 1, 2, 'Bonjour, oui je suis disponible le 2 novembre.', '2019-10-30 08:10:00'),
(8, 1, 3, 'Bonjour, oui je suis disponible le 3 novembre.', '2019-10-30 08:20:00'),
(9, 1, 4, 'Bonjour, oui je suis disponible le 4 novembre.', '2019-10-30 08:40:00'),
(10, 1, 5, 'Bonjour, oui je suis disponible le 5 novembre.', '2019-10-30 09:00:00');

/* STORY 7 */
  INSERT INTO `message` (`id_exp`, `id_rec`, `message_text`, `date_m`) VALUES
  (6, 1, 'Bonjour, je suis interessé par votre service.'', '2019-10-30' 15:00:00');
  

/* STORY 8 */

SELECT *, (id_exp + id_rec) as conversation
FROM message
WHERE (message.id_exp = 2 OR message.id_rec = 2)
GROUP BY conversation


/* STORY 9 */
SELECT * FROM message
WHERE ( message.id_exp = 1 OR message.id_exp = 2)
	AND ( message.id_rec = 1 OR message.id_rec = 2)
ORDER BY message.date_m DESC

/* STORY 15 */

DELETE FROM message
WHERE id_m = 6