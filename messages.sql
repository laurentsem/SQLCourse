/* STORY 1 */

CREATE TABLE `message` (
  `id_m` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_exp` int(10) UNSIGNED NOT NULL,
  `id_rec` int(10) UNSIGNED NOT NULL,
  `message_text` text NOT NULL,
  `date_m` datetime NOT NULL
  PRIMARY KEY (`id_m`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `message`
  ADD FOREIGN KEY (`id_exp`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
  ADD FOREIGN KEY (`id_rec`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

  /* STORY 2 */

INSERT INTO `message` (`id_m`, `id_exp`, `id_rec`, `message_text`, `date_m`) VALUES
(1, 5, 1, 'Bonjour, êtes vous disponible pour un demenagement ?', '2019-10-30 08:00:00'),
(2, 1, 5, 'Oui je suis disponible pour le déménagement le 1er novembre', '2019-10-30 08:15:00'),
(3, 6, 2, 'Bonjour, êtes vous disponible pour jardiner dans mon jardin le 2 novembre?', '2019-10-30 08:30:00'),
(4, 2, 6, 'Non, je ne suis pas disponible le 2 novembre mais le 3 oui.', '2019-10-30 08:50:00'),
(5, 5, 4, 'Bonjour, êtes vous disponible pour promener mes chiens ce soir ?', '2019-10-31 09:10:00'),
(6, 4, 5, 'Oui je suis disponible a partir de 19h', '2019-10-31 10:00:00'),
(7, 4, 3, 'Bonjour, êtes-vous disponible pour donner des cours de maths ce week end ?', '2019-10-31 15:00:00'),
(8, 3, 4, 'Bonjour, oui je suis disponible ce week end ', '2019-10-31 16:00:00'),
(9, 3, 6, 'Bonjour, êtes-vous disponible pour venir coiffer mon mari le 5 novembre ?', '2019-11-01 11:45:00'),
(10, 6, 3, 'Bonjour, oui je suis disponible le 5 novembre à partir de 15h', '2019-11-01 12:00:00'),
(11, 1, 5, 'Bonjour, êtes-vous disponible le 10 novembre pour me faire une tenue de soirée ?', '2019-11-04 13:00:00'),
(12, 5, 1, 'Bonjour, oui, je suis disponible à partir de 13h', '2019-11-04 18:30:00'),
(13, 4, 2, 'Bonjour, êtes vous disponible pour garder mes jumeaux le week end du 16 novembre ?', '2019-11-08 06:00:00'),
(14, 2, 4, 'Bonjour, oui je serai ravi de garder vos jumeaux le week end du 16', '2019-11-08 12:00:00');

/* STORY 7 */
  INSERT INTO `message` (`id_exp`, `id_rec`, `message_text`, `date_m`) VALUES
  (6, 1, 'Bonjour, je suis interessé par votre service.'', '2019-10-30' 15:00:00');
  

/* STORY 8 */

-- SELECT *, (id_exp + id_rec) as conversation
-- FROM message
-- WHERE (message.id_exp = 2 OR message.id_rec = 2)
-- GROUP BY conversation
-------
SELECT M.*, U.*
FROM
    (
        SELECT
            IF( M.id_exp = 2, M.id_rec, M.id_exp ) AS interlocuteur,
            MAX( M.id_m ) AS max_id
        FROM message as M
        WHERE
            M.id_exp = 2
            OR M.id_rec = 2
        GROUP BY IF( M.id_exp = 2 , M.id_rec, M.id_exp )
    ) AS DM
        INNER JOIN message as M
            ON DM.max_id = M.id_m
        INNER JOIN users U
            ON DM.interlocuteur = U.id_u


/* STORY 9 */
SELECT * FROM message
WHERE ( message.id_exp = 1 OR message.id_exp = 2)
	AND ( message.id_rec = 1 OR message.id_rec = 2)
ORDER BY message.date_m DESC

/* STORY 15 */

DELETE FROM message
WHERE id_m = 6