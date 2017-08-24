-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 24 Août 2017 à 07:15
-- Version du serveur :  10.0.23-MariaDB-0+deb8u1
-- Version de PHP :  5.6.20-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `portal`
--
CREATE DATABASE IF NOT EXISTS `portal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `portal`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_group`
--

TRUNCATE TABLE `auth_group`;
-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_group_permissions`
--

TRUNCATE TABLE `auth_group_permissions`;
-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_permission`
--

TRUNCATE TABLE `auth_permission`;
--
-- Contenu de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can add group', 3, 'add_group'),
(9, 'Can change group', 3, 'change_group'),
(10, 'Can delete group', 3, 'delete_group'),
(11, 'Can add user', 4, 'add_user'),
(12, 'Can change user', 4, 'change_user'),
(13, 'Can delete user', 4, 'delete_user'),
(14, 'Can view group', 3, 'view_group'),
(15, 'Can view permission', 2, 'view_permission'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Bookmark', 7, 'add_bookmark'),
(26, 'Can change Bookmark', 7, 'change_bookmark'),
(27, 'Can delete Bookmark', 7, 'delete_bookmark'),
(28, 'Can add User Setting', 8, 'add_usersettings'),
(29, 'Can change User Setting', 8, 'change_usersettings'),
(30, 'Can delete User Setting', 8, 'delete_usersettings'),
(31, 'Can add User Widget', 9, 'add_userwidget'),
(32, 'Can change User Widget', 9, 'change_userwidget'),
(33, 'Can delete User Widget', 9, 'delete_userwidget'),
(34, 'Can view Bookmark', 7, 'view_bookmark'),
(35, 'Can view User Setting', 8, 'view_usersettings'),
(36, 'Can view User Widget', 9, 'view_userwidget'),
(37, 'Can add porteur', 10, 'add_porteur'),
(38, 'Can change porteur', 10, 'change_porteur'),
(39, 'Can delete porteur', 10, 'delete_porteur'),
(40, 'Can add carte', 11, 'add_carte'),
(41, 'Can change carte', 11, 'change_carte'),
(42, 'Can delete carte', 11, 'delete_carte'),
(43, 'Can add service', 12, 'add_service'),
(44, 'Can change service', 12, 'change_service'),
(45, 'Can delete service', 12, 'delete_service'),
(46, 'Can add bornes', 13, 'add_bornes'),
(47, 'Can change bornes', 13, 'change_bornes'),
(48, 'Can delete bornes', 13, 'delete_bornes'),
(49, 'Can add souscription svc', 14, 'add_souscriptionsvc'),
(50, 'Can change souscription svc', 14, 'change_souscriptionsvc'),
(51, 'Can delete souscription svc', 14, 'delete_souscriptionsvc'),
(52, 'Can view bornes', 13, 'view_bornes'),
(53, 'Can view carte', 11, 'view_carte'),
(54, 'Can view porteur', 10, 'view_porteur'),
(55, 'Can view service', 12, 'view_service'),
(56, 'Can view souscription svc', 14, 'view_souscriptionsvc');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_user`
--

TRUNCATE TABLE `auth_user`;
--
-- Contenu de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$24000$E76npNegnZGa$RyAu+jAYkPwppAafSiYI2ZlCif8hBxAxslY0VAgSGCw=', '2017-08-24 04:46:44', 1, 'django', '', '', '', 1, 1, '2017-08-23 19:14:46');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_user_groups`
--

TRUNCATE TABLE `auth_user_groups`;
-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `auth_user_user_permissions`
--

TRUNCATE TABLE `auth_user_user_permissions`;
-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `django_admin_log`
--

TRUNCATE TABLE `django_admin_log`;
-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `django_content_type`
--

TRUNCATE TABLE `django_content_type`;
--
-- Contenu de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'gestion', 'bornes'),
(11, 'gestion', 'carte'),
(10, 'gestion', 'porteur'),
(12, 'gestion', 'service'),
(14, 'gestion', 'souscriptionsvc'),
(6, 'sessions', 'session'),
(7, 'xadmin', 'bookmark'),
(8, 'xadmin', 'usersettings'),
(9, 'xadmin', 'userwidget');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `django_migrations`
--

TRUNCATE TABLE `django_migrations`;
--
-- Contenu de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-08-23 19:13:42'),
(2, 'auth', '0001_initial', '2017-08-23 19:13:44'),
(3, 'admin', '0001_initial', '2017-08-23 19:13:45'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-08-23 19:13:45'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-08-23 19:13:45'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-08-23 19:13:45'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-08-23 19:13:46'),
(8, 'auth', '0004_alter_user_username_opts', '2017-08-23 19:13:46'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-08-23 19:13:46'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-08-23 19:13:46'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-08-23 19:13:46'),
(12, 'gestion', '0001_initial', '2017-08-23 19:13:46'),
(13, 'gestion', '0002_auto_20170517_0939', '2017-08-23 19:13:47'),
(14, 'gestion', '0003_auto_20170517_1015', '2017-08-23 19:13:47'),
(15, 'gestion', '0004_service_souscriptionsvc', '2017-08-23 19:13:47'),
(16, 'gestion', '0005_auto_20170805_1531', '2017-08-23 19:13:48'),
(17, 'gestion', '0006_auto_20170823_1043', '2017-08-23 19:13:48'),
(18, 'gestion', '0007_bornes_adresse_mac', '2017-08-23 19:13:48'),
(19, 'sessions', '0001_initial', '2017-08-23 19:13:49'),
(20, 'xadmin', '0001_initial', '2017-08-23 19:13:50');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `django_session`
--

TRUNCATE TABLE `django_session`;
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `export`
--
DROP VIEW IF EXISTS `export`;
CREATE TABLE IF NOT EXISTS `export` (
`adresse_ip` char(39)
,`code` varchar(100)
,`statut` int(11)
);
-- --------------------------------------------------------

--
-- Structure de la table `gestion_bornes`
--

DROP TABLE IF EXISTS `gestion_bornes`;
CREATE TABLE IF NOT EXISTS `gestion_bornes` (
`id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `etat` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `adresse_ip` char(39) NOT NULL,
  `adresse_mac` varchar(50)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `gestion_bornes`
--

TRUNCATE TABLE `gestion_bornes`;
--
-- Contenu de la table `gestion_bornes`
--

INSERT INTO `gestion_bornes` (`id`, `nom`, `lieu`, `etat`, `service_id`, `adresse_ip`, `adresse_mac`) VALUES
(1, 'borne_piscine', 'rue de la natation', 1, 1, '192.168.2.10', 'B8:27:EB:40:7E:2C'),
(2, 'borne_tennis', 'stade municipal', 1, 2, '192.168.2.11', '');

-- --------------------------------------------------------

--
-- Structure de la table `gestion_carte`
--

DROP TABLE IF EXISTS `gestion_carte`;
CREATE TABLE IF NOT EXISTS `gestion_carte` (
`id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date_delivrance` date DEFAULT NULL,
  `date_mise_opposition` date DEFAULT NULL,
  `statut` int(11) NOT NULL,
  `porteur_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `gestion_carte`
--

TRUNCATE TABLE `gestion_carte`;
--
-- Contenu de la table `gestion_carte`
--

INSERT INTO `gestion_carte` (`id`, `code`, `date_delivrance`, `date_mise_opposition`, `statut`, `porteur_id`) VALUES
(1, '224452727205', NULL, NULL, 1, 2),
(2, '150811851242', NULL, NULL, 1, 1),
(3, '102169174187218', NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `gestion_porteur`
--

DROP TABLE IF EXISTS `gestion_porteur`;
CREATE TABLE IF NOT EXISTS `gestion_porteur` (
`id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `statut` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `gestion_porteur`
--

TRUNCATE TABLE `gestion_porteur`;
--
-- Contenu de la table `gestion_porteur`
--

INSERT INTO `gestion_porteur` (`id`, `nom`, `prenom`, `date_de_naissance`, `statut`) VALUES
(1, 'DELAPLACE', 'Laurent', '1979-08-10', 1),
(2, 'SELIMBAYE', 'Yo', '1972-04-10', 1),
(3, 'TODESCO', 'Olivier', '1971-04-10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gestion_service`
--

DROP TABLE IF EXISTS `gestion_service`;
CREATE TABLE IF NOT EXISTS `gestion_service` (
`id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `gestion_service`
--

TRUNCATE TABLE `gestion_service`;
--
-- Contenu de la table `gestion_service`
--

INSERT INTO `gestion_service` (`id`, `nom`, `description`) VALUES
(1, 'Piscine', 'Permet l''accès à la piscine municipale'),
(2, 'Tennis', 'Permet un accès aux cours de tennis de la communauté de communes.t');

-- --------------------------------------------------------

--
-- Structure de la table `gestion_souscriptionsvc`
--

DROP TABLE IF EXISTS `gestion_souscriptionsvc`;
CREATE TABLE IF NOT EXISTS `gestion_souscriptionsvc` (
`id` int(11) NOT NULL,
  `date_fin` date DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `usager_id` int(11) NOT NULL,
  `date_debut` date
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `gestion_souscriptionsvc`
--

TRUNCATE TABLE `gestion_souscriptionsvc`;
--
-- Contenu de la table `gestion_souscriptionsvc`
--

INSERT INTO `gestion_souscriptionsvc` (`id`, `date_fin`, `service_id`, `usager_id`, `date_debut`) VALUES
(1, '2017-08-23', 1, 1, '2017-08-25'),
(2, '2017-08-23', 2, 1, '2017-08-23'),
(3, '2017-08-23', 1, 2, '2017-08-25'),
(4, '2017-08-23', 2, 2, '2017-08-23'),
(5, '2017-08-23', 1, 3, '2017-08-23'),
(6, '2017-12-31', 2, 3, '2017-08-23');

-- --------------------------------------------------------

--
-- Structure de la table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE IF NOT EXISTS `xadmin_bookmark` (
`id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `xadmin_bookmark`
--

TRUNCATE TABLE `xadmin_bookmark`;
-- --------------------------------------------------------

--
-- Structure de la table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE IF NOT EXISTS `xadmin_usersettings` (
`id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `xadmin_usersettings`
--

TRUNCATE TABLE `xadmin_usersettings`;
--
-- Contenu de la table `xadmin_usersettings`
--

INSERT INTO `xadmin_usersettings` (`id`, `key`, `value`, `user_id`) VALUES
(1, 'dashboard:home:pos', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE IF NOT EXISTS `xadmin_userwidget` (
`id` int(11) NOT NULL,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `xadmin_userwidget`
--

TRUNCATE TABLE `xadmin_userwidget`;
-- --------------------------------------------------------

--
-- Structure de la vue `export`
--
DROP TABLE IF EXISTS `export`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `export` AS select `a`.`adresse_ip` AS `adresse_ip`,`c`.`code` AS `code`,`c`.`statut` AS `statut` from (((`gestion_bornes` `a` join `gestion_souscriptionsvc` `b`) join `gestion_carte` `c`) join `gestion_porteur` `d`) where ((`a`.`service_id` = `b`.`service_id`) and (`b`.`date_fin` > curdate()) and (`b`.`date_debut` < curdate()) and (`b`.`usager_id` = `c`.`porteur_id`) and (`d`.`statut` = 1) and (`c`.`porteur_id` = `d`.`id`));

--
-- Index pour les tables exportées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Index pour la table `gestion_bornes`
--
ALTER TABLE `gestion_bornes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `gestion_bornes_etat_a5f103be_uniq` (`etat`,`service_id`), ADD KEY `gestion_bornes_service_id_63099dab_fk_gestion_service_id` (`service_id`);

--
-- Index pour la table `gestion_carte`
--
ALTER TABLE `gestion_carte`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `gestion_carte_statut_952613bd_uniq` (`statut`,`porteur_id`), ADD KEY `gestion_carte_13642cff` (`porteur_id`);

--
-- Index pour la table `gestion_porteur`
--
ALTER TABLE `gestion_porteur`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gestion_service`
--
ALTER TABLE `gestion_service`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gestion_souscriptionsvc`
--
ALTER TABLE `gestion_souscriptionsvc`
 ADD PRIMARY KEY (`id`), ADD KEY `gestion_souscriptionsv_service_id_fe7edcf7_fk_gestion_service_id` (`service_id`), ADD KEY `gestion_souscriptionsvc_usager_id_1f0f063c_fk_gestion_porteur_id` (`usager_id`);

--
-- Index pour la table `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
 ADD PRIMARY KEY (`id`), ADD KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`), ADD KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
 ADD PRIMARY KEY (`id`), ADD KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
 ADD PRIMARY KEY (`id`), ADD KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `gestion_bornes`
--
ALTER TABLE `gestion_bornes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `gestion_carte`
--
ALTER TABLE `gestion_carte`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `gestion_porteur`
--
ALTER TABLE `gestion_porteur`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `gestion_service`
--
ALTER TABLE `gestion_service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `gestion_souscriptionsvc`
--
ALTER TABLE `gestion_souscriptionsvc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `gestion_bornes`
--
ALTER TABLE `gestion_bornes`
ADD CONSTRAINT `gestion_bornes_service_id_63099dab_fk_gestion_service_id` FOREIGN KEY (`service_id`) REFERENCES `gestion_service` (`id`);

--
-- Contraintes pour la table `gestion_carte`
--
ALTER TABLE `gestion_carte`
ADD CONSTRAINT `gestion_carte_porteur_id_91ca4a42_fk_gestion_porteur_id` FOREIGN KEY (`porteur_id`) REFERENCES `gestion_porteur` (`id`);

--
-- Contraintes pour la table `gestion_souscriptionsvc`
--
ALTER TABLE `gestion_souscriptionsvc`
ADD CONSTRAINT `gestion_souscriptionsv_service_id_fe7edcf7_fk_gestion_service_id` FOREIGN KEY (`service_id`) REFERENCES `gestion_service` (`id`),
ADD CONSTRAINT `gestion_souscriptionsvc_usager_id_1f0f063c_fk_gestion_porteur_id` FOREIGN KEY (`usager_id`) REFERENCES `gestion_porteur` (`id`);

--
-- Contraintes pour la table `xadmin_bookmark`
--
ALTER TABLE `xadmin_bookmark`
ADD CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `xadmin_usersettings`
--
ALTER TABLE `xadmin_usersettings`
ADD CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `xadmin_userwidget`
--
ALTER TABLE `xadmin_userwidget`
ADD CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
