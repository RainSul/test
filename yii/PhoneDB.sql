-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.22-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5958
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица yii.phone_item
DROP TABLE IF EXISTS `phone_item`;
CREATE TABLE IF NOT EXISTS `phone_item` (
  `user_id` int(11) NOT NULL,
  `number` bigint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы yii.phone_item: ~3 rows (приблизительно)
DELETE FROM `phone_item`;
/*!40000 ALTER TABLE `phone_item` DISABLE KEYS */;
INSERT INTO `phone_item` (`user_id`, `number`) VALUES
	(1, 89991234567),
	(2, 89997654321),
	(1, 89991357924);
/*!40000 ALTER TABLE `phone_item` ENABLE KEYS */;

-- Дамп структуры для таблица yii.phone_user
DROP TABLE IF EXISTS `phone_user`;
CREATE TABLE IF NOT EXISTS `phone_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `midname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы yii.phone_user: ~3 rows (приблизительно)
DELETE FROM `phone_user`;
/*!40000 ALTER TABLE `phone_user` DISABLE KEYS */;
INSERT INTO `phone_user` (`id`, `name`, `surname`, `midname`, `edit_date`) VALUES
	(1, 'Егор', 'Деревянко', 'Петрович', '2021-09-02 01:56:31'),
	(2, 'Пётр', 'Симонов', 'Андреевич', '2021-09-02 22:23:07'),
	(3, 'Алексей', 'Киренец', 'Викторович', '2021-09-02 22:23:33');
/*!40000 ALTER TABLE `phone_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
