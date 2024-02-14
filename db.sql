-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.36 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para dashboard_django
CREATE DATABASE IF NOT EXISTS `dashboard_django` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dashboard_django`;

-- Volcando estructura para tabla dashboard_django.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla dashboard_django.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla dashboard_django.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_permission: ~44 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add contact', 1, 'add_contact'),
	(2, 'Can change contact', 1, 'change_contact'),
	(3, 'Can delete contact', 1, 'delete_contact'),
	(4, 'Can view contact', 1, 'view_contact'),
	(5, 'Can add room', 2, 'add_room'),
	(6, 'Can change room', 2, 'change_room'),
	(7, 'Can delete room', 2, 'delete_room'),
	(8, 'Can view room', 2, 'view_room'),
	(9, 'Can add bookings', 3, 'add_bookings'),
	(10, 'Can change bookings', 3, 'change_bookings'),
	(11, 'Can delete bookings', 3, 'delete_bookings'),
	(12, 'Can view bookings', 3, 'view_bookings'),
	(13, 'Can add log entry', 4, 'add_logentry'),
	(14, 'Can change log entry', 4, 'change_logentry'),
	(15, 'Can delete log entry', 4, 'delete_logentry'),
	(16, 'Can view log entry', 4, 'view_logentry'),
	(17, 'Can add permission', 5, 'add_permission'),
	(18, 'Can change permission', 5, 'change_permission'),
	(19, 'Can delete permission', 5, 'delete_permission'),
	(20, 'Can view permission', 5, 'view_permission'),
	(21, 'Can add group', 6, 'add_group'),
	(22, 'Can change group', 6, 'change_group'),
	(23, 'Can delete group', 6, 'delete_group'),
	(24, 'Can view group', 6, 'view_group'),
	(25, 'Can add user', 7, 'add_user'),
	(26, 'Can change user', 7, 'change_user'),
	(27, 'Can delete user', 7, 'delete_user'),
	(28, 'Can view user', 7, 'view_user'),
	(29, 'Can add content type', 8, 'add_contenttype'),
	(30, 'Can change content type', 8, 'change_contenttype'),
	(31, 'Can delete content type', 8, 'delete_contenttype'),
	(32, 'Can view content type', 8, 'view_contenttype'),
	(33, 'Can add session', 9, 'add_session'),
	(34, 'Can change session', 9, 'change_session'),
	(35, 'Can delete session', 9, 'delete_session'),
	(36, 'Can view session', 9, 'view_session'),
	(37, 'Can add order', 11, 'add_order'),
	(38, 'Can change order', 11, 'change_order'),
	(39, 'Can delete order', 11, 'delete_order'),
	(40, 'Can view order', 11, 'view_order'),
	(41, 'Can add booking', 10, 'add_booking'),
	(42, 'Can change booking', 10, 'change_booking'),
	(43, 'Can delete booking', 10, 'delete_booking'),
	(44, 'Can view booking', 10, 'view_booking');

-- Volcando estructura para tabla dashboard_django.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_user: ~2 rows (aproximadamente)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$720000$ZipX6AqZ7OTQsfI9X8jh9y$m6JHJIOFipRfJ9CyZWH3xzwKUMFz3HE7JzcqUbTaSak=', '2024-02-05 18:24:43.000000', 1, 'root', '', '', 'omar.perez.dev@gmail.com', 1, 1, '2024-02-05 18:22:35.000000'),
	(5, 'pbkdf2_sha256$720000$vdkh6ePOTmEgjTFYA6OwJp$PEGWdqrxrvCjYniHjRwGo5yGsOgMZFUSetXKCYaz/4w=', '2024-02-13 09:08:55.989642', 0, 'omar', 'Omar', 'Perez', 'test@test.com', 0, 1, '2024-02-13 09:08:40.293707');

-- Volcando estructura para tabla dashboard_django.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla dashboard_django.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla dashboard_django.dashboard_booking
CREATE TABLE IF NOT EXISTS `dashboard_booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `orderDate` varchar(15) NOT NULL,
  `orderTime` time(6) NOT NULL,
  `checkin` varchar(25) NOT NULL,
  `checkinTime` time(6) NOT NULL,
  `checkout` varchar(25) NOT NULL,
  `checkoutTime` time(6) NOT NULL,
  `notes` longtext NOT NULL,
  `status` varchar(25) NOT NULL,
  `idRoom_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_booking_idRoom_id_f0695a77_fk_dashboard_room_id` (`idRoom_id`),
  CONSTRAINT `dashboard_booking_idRoom_id_f0695a77_fk_dashboard_room_id` FOREIGN KEY (`idRoom_id`) REFERENCES `dashboard_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.dashboard_booking: ~1 rows (aproximadamente)
INSERT INTO `dashboard_booking` (`id`, `name`, `orderDate`, `orderTime`, `checkin`, `checkinTime`, `checkout`, `checkoutTime`, `notes`, `status`, `idRoom_id`) VALUES
	(1, 'Roswell guilic', '2024-02-13', '12:53:24.000000', '2024-02-15', '09:00:00.000000', '2024-02-09', '12:00:00.000000', 'prueba', 'booked', 2);

-- Volcando estructura para tabla dashboard_django.dashboard_contact
CREATE TABLE IF NOT EXISTS `dashboard_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `date` varchar(25) NOT NULL,
  `hour` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `telephone` varchar(35) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `review` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.dashboard_contact: ~12 rows (aproximadamente)
INSERT INTO `dashboard_contact` (`id`, `photo`, `date`, `hour`, `name`, `last_name`, `email`, `telephone`, `archived`, `review`) VALUES
	(1, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/857.jpg', '2023-12-16', '19:02:07.000000', 'Janice', 'Hauck', 'Nickolas_Cremin44@hotmail.com', '994.779.7242 x2699', 1, 'Sopor tepesco apparatus ipsam cena comminor decimus tendo.'),
	(2, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/778.jpg', '2023-11-03', '11:16:54.000000', 'Alaina', 'Gusikowski', 'Madelyn_Hand61@hotmail.com', '951-803-1898 x9632', 0, 'Aurum thesis adeo corrumpo fugit saepe vapulus succurro timor.'),
	(3, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/636.jpg', '2023-12-16', '12:55:58.000000', 'Rafael', 'Gerlach', 'Jaydon.Morar0@hotmail.com', '375-364-9240 x98275', 1, 'Quisquam appello ducimus quod quibusdam auctor alii.'),
	(4, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1045.jpg', '2023-02-04', '21:27:24.000000', 'Minerva', 'Thiel', 'Hubert31@gmail.com', '(789) 656-8247 x3298', 1, 'Verbera hic desidero cavus adipiscor.'),
	(5, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1123.jpg', '2023-07-17', '06:19:21.000000', 'Boris', 'Bode', 'Camden.OKeefe@gmail.com', '354.917.5871 x1928', 0, 'Tempora armarium dicta corporis talio commodi celebrer complectus iure.'),
	(6, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/625.jpg', '2023-06-20', '14:48:57.000000', 'Gennaro', 'Kessler', 'Earlene.Wisozk@gmail.com', '403-652-5402 x4044', 0, 'Aegrotatio aeger conor explicabo appositus aegre paens stips patruus stipes.'),
	(7, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/398.jpg', '2023-08-12', '19:36:06.000000', 'Jimmy', 'Schulist', 'Telly.Cronin65@hotmail.com', '(988) 887-3747 x331', 0, 'Candidus qui tergiversatio vereor volup cognatus provident timor possimus usque.'),
	(8, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1033.jpg', '2023-05-30', '02:49:56.000000', 'Austen', 'Prohaska', 'Junior.Schneider@yahoo.com', '(339) 905-8171 x6845', 1, 'Conspergo bibo coniecto amplexus.'),
	(9, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/924.jpg', '2023-08-15', '02:56:34.000000', 'Mack', 'Kihn', 'Samanta_Rodriguez96@yahoo.com', '1-708-674-7797 x2241', 0, 'Corpus cribro creber magnam colligo.'),
	(10, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/36.jpg', '2023-12-14', '01:58:26.000000', 'Kayli', 'Aufderhar', 'Lesley.Casper@yahoo.com', '(225) 672-9398 x956', 0, 'Spoliatio vestrum arguo tempore attonbitus.'),
	(11, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/104.jpg', '2023-06-21', '14:05:01.000000', 'Reva', 'Carroll', 'Lera.Franecki75@gmail.com', '877.649.4209 x49157', 1, 'Vulgo dolores altus tui talis timidus ex avarus.'),
	(12, 'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/334.jpg', '2023-10-28', '17:39:46.000000', 'Alexa', 'Kohler', 'Margarete33@yahoo.com', '1-671-464-5704', 1, 'Comedo coaegresco coaegresco quisquam caelum summa turbo universe.');

-- Volcando estructura para tabla dashboard_django.dashboard_order
CREATE TABLE IF NOT EXISTS `dashboard_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `type` varchar(2) NOT NULL,
  `description` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_order_user_id_64525daa_fk_auth_user_id` (`user_id`),
  KEY `dashboard_order_room_id_id_d707eba3` (`room_id`),
  CONSTRAINT `dashboard_order_room_id_fa84aabe_fk_dashboard_room_id` FOREIGN KEY (`room_id`) REFERENCES `dashboard_room` (`id`),
  CONSTRAINT `dashboard_order_user_id_64525daa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.dashboard_order: ~2 rows (aproximadamente)
INSERT INTO `dashboard_order` (`id`, `room_id`, `type`, `description`, `timestamp`, `user_id`) VALUES
	(2, 5, 'CL', 'Necesito limpiar la habitacion', '2024-02-13 17:00:16.704106', 5),
	(4, 3, 'FO', 'quiero comer hamburguesa', '2024-02-14 10:37:54.670163', 5);

-- Volcando estructura para tabla dashboard_django.dashboard_room
CREATE TABLE IF NOT EXISTS `dashboard_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `room` varchar(20) NOT NULL,
  `bed` varchar(5) NOT NULL,
  `facilities` json NOT NULL,
  `description` longtext NOT NULL,
  `price` int unsigned NOT NULL,
  `discount` int unsigned NOT NULL,
  `cancel` longtext NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `dashboard_room_chk_1` CHECK ((`price` >= 0)),
  CONSTRAINT `dashboard_room_chk_2` CHECK ((`discount` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.dashboard_room: ~13 rows (aproximadamente)
INSERT INTO `dashboard_room` (`id`, `photo`, `room`, `bed`, `facilities`, `description`, `price`, `discount`, `cancel`, `status`) VALUES
	(1, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-13', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 15, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'available'),
	(2, 'https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&w=600', 'Single Bed', 'D-49', '["Smart Security", "High speed WiFi", "Shower", "Expert Team", "Single bed"]', 'Con una decoración encantadora y comodidades modernas, esta habitación es perfecta para viajeros que buscan privacidad y confort. Relájate en la cama individual después de un día de exploración y recarga energías para nuevas aventuras en la hermosa isla de Bali.', 150, 20, 'Cancelación gratuita hasta 1 día antes de la llegada, se cobrará el total si se cancela dentro del día previo o en caso de no presentarse; no se requiere depósito pero se solicitará tarjeta de crédito válida.', 'available'),
	(3, 'https://nuevosdestinosbymara.com/wp-content/uploads/2020/11/10-habitacion-bayan-tree-ungasan.jpg', 'Suite', 'A-29', '["Breakfast", "Shower", "High speed WiFi", "Air conditioner", "24/7 Online Support", "Smart Security"]', 'Disfruta de amplios espacios, una decoración exquisita inspirada en la cultura balinesa y vistas impresionantes desde tu balcón privado. Con una cama king-size, zona de estar y un baño de mármol con bañera de hidromasaje, esta suite es el refugio perfecto para parejas que buscan un escape romántico.', 388, 5, 'Cancelación gratuita hasta 7 días antes de la llegada, se cobrará el total si se cancela dentro de los 7 días previos o en caso de no presentarse; requiere depósito del 20% reembolsable si se cancela dentro del período gratuito.', 'booked'),
	(4, 'https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&w=600', 'Single Bed', 'D-14', '["Smart Security", "High speed WiFi", "Shower", "Expert Team", "Single bed"]', 'Con una decoración encantadora y comodidades modernas, esta habitación es perfecta para viajeros que buscan privacidad y confort. Relájate en la cama individual después de un día de exploración y recarga energías para nuevas aventuras en la hermosa isla de Bali.', 150, 0, 'Cancelación gratuita hasta 1 día antes de la llegada, se cobrará el total si se cancela dentro del día previo o en caso de no presentarse; no se requiere depósito pero se solicitará tarjeta de crédito válida.', 'booked'),
	(5, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-31', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 15, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'available'),
	(6, 'https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&w=600', 'Single Bed', 'D-31', '["Smart Security", "High speed WiFi", "Shower", "Expert Team", "Single bed"]', 'Con una decoración encantadora y comodidades modernas, esta habitación es perfecta para viajeros que buscan privacidad y confort. Relájate en la cama individual después de un día de exploración y recarga energías para nuevas aventuras en la hermosa isla de Bali.', 150, 15, 'Cancelación gratuita hasta 1 día antes de la llegada, se cobrará el total si se cancela dentro del día previo o en caso de no presentarse; no se requiere depósito pero se solicitará tarjeta de crédito válida.', 'booked'),
	(7, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/508023442.jpg?k=1a0a4c91f310376e66fc24e1943879d5cae1f78b74c558cc82edd7cedfc20904&o=&hp=1', 'Double Bed', 'C-40', '["Shop near", "Smart Security", "Kitchen", "Grocery", "High speed WiFi", "Shower"]', 'Diseñada para ofrecerte una estancia relajante y rejuvenecedora. Con una decoración elegante y detalles auténticos balineses, esta habitación es ideal para parejas o amigos que buscan una escapada tranquila. Disfruta de una noche de descanso reparador en nuestras cómodas camas dobles y despierta cada mañana con energía renovada para explorar los encantos de Bali.', 190, 0, 'Cancelación gratuita hasta 5 días antes de la llegada, se cobrará el total si se cancela dentro de los 5 días previos o en caso de no presentarse; no se requiere depósito pero se solicitará tarjeta de crédito válida', 'available'),
	(8, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-36', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 25, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'available'),
	(9, 'https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&w=600', 'Single Bed', 'D-3', '["Smart Security", "High speed WiFi", "Shower", "Expert Team", "Single bed"]', 'Con una decoración encantadora y comodidades modernas, esta habitación es perfecta para viajeros que buscan privacidad y confort. Relájate en la cama individual después de un día de exploración y recarga energías para nuevas aventuras en la hermosa isla de Bali.', 150, 15, 'Cancelación gratuita hasta 1 día antes de la llegada, se cobrará el total si se cancela dentro del día previo o en caso de no presentarse; no se requiere depósito pero se solicitará tarjeta de crédito válida.', 'available'),
	(10, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-38', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 30, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'booked'),
	(11, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-44', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 0, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'booked'),
	(12, 'https://nuevosdestinosbymara.com/wp-content/uploads/2020/11/10-habitacion-bayan-tree-ungasan.jpg', 'Suite', 'A-16', '["Breakfast", "Shower", "High speed WiFi", "Air conditioner", "24/7 Online Support", "Smart Security"]', 'Disfruta de amplios espacios, una decoración exquisita inspirada en la cultura balinesa y vistas impresionantes desde tu balcón privado. Con una cama king-size, zona de estar y un baño de mármol con bañera de hidromasaje, esta suite es el refugio perfecto para parejas que buscan un escape romántico.', 388, 5, 'Cancelación gratuita hasta 7 días antes de la llegada, se cobrará el total si se cancela dentro de los 7 días previos o en caso de no presentarse; requiere depósito del 20% reembolsable si se cancela dentro del período gratuito.', 'available'),
	(13, 'https://pan-pacific-nirwana-bali-resort-tabanan.hotelmix.es/data/Photos/OriginalPhoto/4003/400340/400340307/Pan-Pacific-Nirwana-Bali-Resort-BALI-Room.JPEG', 'Double Superior', 'B-48', '["Breakfast", "Smart Security", "High speed WiFi", "Shower", "Expert Team", "Air conditioner"]', 'Con una decoración elegante y elementos tradicionales balineses, esta habitación ofrece una experiencia de alojamiento excepcional. Descansa plácidamente en nuestras cómodas camas dobles, relájate en el balcón privado con vistas al exuberante jardín tropical y revive tus sentidos en el baño de estilo spa con ducha de lluvia.', 250, 30, 'Cancelación gratuita hasta 3 días antes de la llegada, se cobrará el total si se cancela dentro de los 3 días previos o en caso de no presentarse; requiere depósito del 10% reembolsable si se cancela dentro del período gratuito.', 'booked');

-- Volcando estructura para tabla dashboard_django.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.django_admin_log: ~1 rows (aproximadamente)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-02-05 18:25:37.335318', '1', 'root', 2, '[]', 7, 1);

-- Volcando estructura para tabla dashboard_django.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.django_content_type: ~11 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(4, 'admin', 'logentry'),
	(6, 'auth', 'group'),
	(5, 'auth', 'permission'),
	(7, 'auth', 'user'),
	(8, 'contenttypes', 'contenttype'),
	(10, 'dashboard', 'booking'),
	(3, 'dashboard', 'bookings'),
	(1, 'dashboard', 'contact'),
	(11, 'dashboard', 'order'),
	(2, 'dashboard', 'room'),
	(9, 'sessions', 'session');

-- Volcando estructura para tabla dashboard_django.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.django_migrations: ~33 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-02-05 15:22:44.848322'),
	(2, 'auth', '0001_initial', '2024-02-05 15:22:45.715991'),
	(3, 'admin', '0001_initial', '2024-02-05 15:22:45.978041'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-05 15:22:45.985175'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-05 15:22:45.993391'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-05 15:22:46.096311'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-05 15:22:46.117123'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-02-05 15:22:46.143400'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-02-05 15:22:46.151007'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-02-05 15:22:46.224127'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-02-05 15:22:46.229276'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-05 15:22:46.237733'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-02-05 15:22:46.265031'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-05 15:22:46.290966'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-02-05 15:22:46.309010'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-02-05 15:22:46.317543'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-05 15:22:46.337389'),
	(18, 'dashboard', '0001_initial', '2024-02-05 15:22:46.510242'),
	(19, 'dashboard', '0002_rename_checkin_time_bookings_checkintime_and_more', '2024-02-05 15:22:46.648150'),
	(20, 'dashboard', '0003_rename_room_bookings_idroom_and_more', '2024-02-05 15:22:46.791423'),
	(21, 'dashboard', '0004_rename_checkintime_bookings_checkin_time_and_more', '2024-02-05 15:22:47.098193'),
	(22, 'dashboard', '0005_rename_room_id_bookings_room', '2024-02-05 15:22:47.231746'),
	(23, 'dashboard', '0006_rename_checkin_time_bookings_checkintime_and_more', '2024-02-05 15:22:47.518349'),
	(24, 'sessions', '0001_initial', '2024-02-05 15:22:47.579455'),
	(25, 'dashboard', '0007_alter_contact_telephone', '2024-02-05 15:26:11.641937'),
	(26, 'dashboard', '0008_alter_contact_telephone', '2024-02-05 15:28:01.947466'),
	(27, 'dashboard', '0009_dashboard_bookings_delete_bookings', '2024-02-05 15:47:16.353697'),
	(28, 'dashboard', '0010_rename_dashboard_bookings_bookings', '2024-02-05 15:47:16.389675'),
	(29, 'dashboard', '0011_alter_bookings_status', '2024-02-05 15:47:16.406805'),
	(30, 'dashboard', '0012_alter_contact_hour_booking_order_delete_bookings', '2024-02-13 11:45:51.246404'),
	(31, 'dashboard', '0013_booking', '2024-02-13 11:52:43.292819'),
	(32, 'dashboard', '0014_alter_order_room_id', '2024-02-13 17:10:20.738916'),
	(33, 'dashboard', '0015_alter_order_room_id', '2024-02-13 17:13:07.498996');

-- Volcando estructura para tabla dashboard_django.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dashboard_django.django_session: ~2 rows (aproximadamente)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('klna5lx1tlallrfdmx8mtuqsu0wve54d', '.eJxVjMEOwiAQBf-FsyEFKSw9evcbCCyLRQ00pU00xn_XJj3o9c28eTHn12V0a6PZ5cgGJtjhdwseb1Q2EK--XCrHWpY5B74pfKeNn2uk-2l3_wKjb-P3nUIHIKQnQI3hKC1Gi0LpJA30mMB0IK0gUkYLHbteJ6sEGPIQUCmpt2ij1nItjh5Tnp9s6N8ffM0-oQ:1rYTQB:QLBlaC3vaMataugoJUHXKPyOcqNNmAafAyDPf39vOJ8', '2024-02-09 16:08:16.600724'),
	('up0xkue7yapb55q99j784icohrn1gomk', '.eJxVjEEOwiAQRe_C2pACQyku3XsGMgODVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWVpx-N8L44LqDdMd6azK2ui4zyV2RB-3y2hI_L4f7d1Cwl29NGTMgwcAZyMSojFdeZ2LySis1YfZOs-EByDo2HrxN05g5ooXRKSveHwpSODs:1rZomd:QUO40uIBIshl4RNtunQsyWWr5GKSZheTaA7njUuf1Gc', '2024-02-27 09:08:55.997685');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
