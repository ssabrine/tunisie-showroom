-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 09 Juin 2013 à 12:14
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `application`
--

-- --------------------------------------------------------

--
-- Structure de la table `boutique`
--

CREATE TABLE IF NOT EXISTS `boutique` (
  `id_boutique` int(30) NOT NULL AUTO_INCREMENT,
  `nom_boutique` varchar(300) NOT NULL,
  `adresse_boutique` varchar(300) NOT NULL,
  `tel_boutique` varchar(100) NOT NULL,
  `attitude_boutique` varchar(5000) NOT NULL,
  `longitude_boutique` varchar(5000) NOT NULL,
  `zoom_boutique` int(30) NOT NULL,
  `visite_virtuelle` varchar(5000) NOT NULL,
  `image` varchar(30) NOT NULL,
  `txt` varchar(500) NOT NULL,
  `nom_categorie` varchar(100) NOT NULL,
  `nom2` varchar(200) NOT NULL,
  `nom_ville` varchar(100) NOT NULL,
  `id_categorie` int(100) NOT NULL,
  `id_ville` int(100) NOT NULL,
  PRIMARY KEY (`id_boutique`),
  KEY `fk_categorie` (`nom_categorie`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `boutique`
--

INSERT INTO `boutique` (`id_boutique`, `nom_boutique`, `adresse_boutique`, `tel_boutique`, `attitude_boutique`, `longitude_boutique`, `zoom_boutique`, `visite_virtuelle`, `image`, `txt`, `nom_categorie`, `nom2`, `nom_ville`, `id_categorie`, `id_ville`) VALUES
(1, 'Univers Cuisine', 'Avenue Abou Dhabi Hammamet &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;le tour bleu Hammamet 8050', '+ 216 72 222 827 / +216 22 638', '10.609446', '36.406967   ', 20, '', 'cuisc', 'Univers Cuisne est une soci&eacute;te sp&eacute;cialis&eacute;e dans la fabrication de Meuble de cuisine, Dressing et Meuble de salle de bain.', 'Cuisines & dressings', 'Tarek Hassouna', 'Nabeul', 1, 1),
(2, 'Carre Cuisine', '  15 Avenue Monji Slim &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Laouina" 2045 Tunis', '	 + 216 71 176 791 / + 216 26 ', '10.258416', '36.851246', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/carecuisine/', 'cuisine', 'Carre Cuisine   vous invitent a d&eacute;couvrir ses meubles modernes et d&eacute;corations de  cuisines .', 'Cuisines & dressings', '	Kais Khalfallah', 'Tunis', 8, 2),
(3, 'Smart', 'Avenue Abou Dhabi Hammamet', '+ 216 72 260 005  ', '10.630925', '36.405482', 17, 'http://www.webinnov.net/VisiteVirtuelle/smart/', 'cuis2', 'SMART vous invite au vernissage de sa nouvelle collection de cuisines et dressing,', 'Cuisines & dressings', 'Smart Cuisine & Dressing', 'Nabeul', 1, 1),
(4, 'Beauty house', 'Avenue  Abou  Dhabi  Hammamet', '+ 216 25 59 98 09 --- 216 21 67 43 99', '10.603352', '36.403038', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/flower/', 'decoc', 'Beauty house vous invitent a d&eacute;couvrir ses articles de d&eacute;corations', 'decorations & designs', '	Mde Wafa Habbasi Directrice / M. Montasser Bougarnine Responsable Commercial', 'Nabeul', 7, 1),
(5, 'Pano Boutique Tunis', 'Rue des Lacs Mazurie les berges &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;de Lac -1053 Tunis', '+ 216 71 965 968 / + 216 71 963 030', '10.244976', '36.838656', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/pano-boutique/', 'decod', 'Pano Boutique est le premier r&eacute;seau europ&eacute;en de centres de communication visuelle. Pr&eacute;sent en France avec plus que 100 agences et &agrave; l''International avec plus que 20 agences dans les pays suivants : Alg&eacute;rie, Antilles - Guyanne, Belgique, Espagne, La r&eacute;union, Luxembourg, Maroc, Noum&eacute;a, Suisse et la Tunisie.', 'Decorations & designs', 'Cahkib Elili', 'Tunis', 2, 2),
(6, 'Store & Decore', 'Avenue Abou Dhabi Hammamet', '+ 216 72 263 807  /  + 216 22 902 602', '10.609360', ' 36.428465', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/storedecor/', 'decoa', 'Vous dAttaya Deco est une soci&eacute;t&eacute; artisanale,ses produits se basent sur les mati&eacute;res premi&eacute;res suivantes : - Le bois flott&eacute; - Le bois de raisin - Les l&eacute;gumes - Les fruits destin&eacute;s &agrave; la d&eacute;coration Dans l&acute;atelier, on compose, on cloue, on ajuste, on lie et on &eacute;quilibre.couvrez chez Store & decore plusieurs modAttaya Deco est une soci&eacute;t&eacute; artisanale,ses produits se basent sur les mati&eacute;res premi&eacute;re', 'Decorations & designs', 'Zied Zouari', 'Nabeul', 7, 1),
(7, 'Attaya Deco', 'Av Hedi Chaker  Cit&eacute; Les &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jasmins 8000 Nabeu', '+ 216 72 220 790 /  + 216 72 010 081', '10.71623', '36.44111', 18, 'http://www.tunisie-showroom.com/visite-virtuelle/attaya-deco/', 'decoe', 'Attaya Deco est une soci&eacute;t&eacute; artisanale,ses produits se basent sur les mati&eacute;res premi&eacute;res suivantes : - Le bois flott&eacute; - Le bois de raisin - Les l&eacute;gumes - Les fruits destin&eacute;s &agrave; la d&eacute;coration Dans l&acute;atelier, on compose, on cloue, on ajuste, on lie et on &eacute;quilibre.', 'Decorations & designs', 'Attaya Cyrine', 'Nabeul', 7, 1),
(8, ' Foo Designers', '26 Rue Ennasr Grombalia 8030', '+ 216 72 211 551+ <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + 216 25 848 689 /+216 25 848 690', '10.499754', '36.600628', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/fdesigne/', 'decob', 'Vous cherchez tout &eacute;l&eacute;ment d&acute;int&eacute;rieur &agrave; votre gout, n&acute;h&eacute;sitez pas &agrave; nous contacter,      m&ecirc;me si vous n&acute;aviez pas le bon choix, nos designers sp&eacute;cialiss dans le secteur de mobilier et de d&eacute;coration vous aideront &agrave; trouver ce que sorte mieux pour plus d&acute;information veuillez contacter le : 25 848 689 , 25 848 690', 'Decorations & designs', 'Slim Zaghbani', 'Nabeul', 7, 1),
(9, 'K-D&eacute;co (coup de coeur)', 'Avenue Abou Dhabi Hammamet', '+ 216 31 196 959  /  + 216 23 822 049', '10.637040', '36.407398', 18, 'http://www.tunisie-showroom.com/visite-virtuelle/kdeco/" style="border: medium none;', 'decof', 'K-Deco vous invites a d&eacute;couvrire ses importations des article de d&eacute;co, des fleurs artificielles et des compositions artificielles et naturelles de fleurs     Veuillez contacter : Mde Hamemi Sawsen', 'Decorations & designs', 'Sawsen Hamemi', 'Nabeul', 7, 1),
(10, 'D&eacute;co pi&egrave;rre', 'Road of Tunis km 4 8070 Korba -Tunisia-', '+ 216 72 386 909', '10.499754', ' 36.600628', 19, '', 'decog', 'D&eacute;co pierre vous invite &agrave; d&eacute;couvrir sont larges choix de produits de d&eacute;coration avec un style innovant et des commandes sur mesure et couleur pr&eacute;f&eacute;r&eacute;e     pour plus d&acute;information veuillez contacter Ms Montasser Bettaieb', 'Decorations & designs', 'Deco pierre "Ms Bettaieb Montasar"', 'Nabeul', 7, 1),
(11, 'Arous carthage', '	R&eacute;sidence Malek , Rue de Lac Maracaibo', '+ 216 23 290 231 ', '10.246950 ', '36.837050', 18, 'http://www.tunisie-showroom.com/visite-virtuelle/arouscarthage/', 'mar', 'La Boutique Arous Carthage vous invite &agrave; d&eacute;couvrir ses nouvelles robes de grand cr&eacute;ateurs, avec un large choix de style du plus simple au plus &eacute;labor&eacute;   Arous Carthage est  le repr&eacute;sentant exclusif  de Pronovias et San Patrick en Tunisie.  Vous trouverez en exclusvit&eacute; des &#339;uvres d''Elie Saab, que Arous Carthage vous importe sur commande.', 'Mariage et beaute', 'Arous carthage', 'Tunis', 3, 2),
(12, 'Tissus Nouveaut&eacute;s "tissu anglais"', '	Galaxie 2000 Rue Palastine M.S.11', '+ 216 71 79 19 37 / 216 24 28 10 56', '10.179895 ', '36.814756', 19, 'http://www.tunisie-showroom.com/visite-virtuelle/tisuu/', 'shop', 'A boutique "Tissus Nouveaut&eacute;s" vous invite a d&eacute;couvrir son large choix de tissu anglais , vous trouverez chez Mr Halim Hajeri de la pure laine super (120 -150 -160 et 180 %) made in england , de la laine et cachemire( 130s , 150s, 160s et 180s) , et du Cachemire 100s , fait en Angleterre     pour plus d''informations veuillez contacter Mr Halim au 24.281.058', 'Shopping', '	Halim Hejri', 'Tunis', 6, 2),
(13, 'Comptoir Jilali', 'Avenue Mrezka hammamet', '', '10.649388 ', '36.415889', 28, 'http://www.tunisie-showroom.com/visite-virtuelle/jelali/" style="border: medium none;', 'san', 'Comptoir Jilali vous invitent a d&eacute;couvrire ses produits c&eacute;ramiques et sanitaire     Vous &ecirc;tes les bienvenue chez nous :', 'sanitaire', ' Jilali ', 'Nabeul', 5, 1),
(14, 'A&M Deco', '	Avenue Taib Mhiri', '	+ 216 72 222 827 /  216 22 638 000', '10.743706', '36.446254', 18, 'http://www.tunisie-showroom.com/visite-virtuelle/am-deco/', 'meublea', 'Vente de Meuble et Article de D&eacute;coration ', 'Meubles designs', 'Mouhamed Chaouachi', 'Nabeul', 4, 1),
(15, 'Ramses Meuble & Deco', '	73 Avenue Hedi Nouira Nabeul', '+ 216 22 66 87 85 / 216 22 55 85 55', '10.718392', '36.446707', 18, 'http://www.tunisie-showroom.com/visite-virtuelle/ramses/', 'meubleb', 'Pour tous ceux qui aiment la d&eacute;coration de luxe et les meubles rares de haute gamme.   Pour un foyer majestueusement d&eacute;cor&eacute; avec un go&ucirc;t tr&egrave;s raffin&eacute;. Soyez les bienvenus dans nos espaces de vente.  Veuillez contacter Ms Walid Mabrouk', 'Meubles designs', '	Ramses Deco & Meuble', 'Nabeul', 4, 1),
(16, 'Oscar Design', '	Avenue Abou Dhabi Hammamet', '	+ 216 25 59 98 09  /  216 21 67 43 99', '10.649903', '36.413744', 14, 'http://www.tunisie-showroom.com/visite-virtuelle/oscardesign/', 'meuble', 'Oscar Design Vous invite &agrave; d&eacute;couvrir sont large choix de meubles.   Des d&eacute;corations moderne avec un style innovant, commandez vos meubles et vos couleurs sur mesure .', 'Meubles designs', 'Mde Wafa Habbasi Directrice / Mr Montasser Bougarnine Responsable Commercial', 'Nabeul', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `nom_categorie` varchar(100) NOT NULL DEFAULT '',
  `id_ville` int(100) NOT NULL,
  `id_categorie` int(100) NOT NULL,
  PRIMARY KEY (`nom_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`nom_categorie`, `id_ville`, `id_categorie`) VALUES
('Cuisines & dressings', 1, 1),
('Decorations & designs	', 1, 7),
('Decorations & designs', 2, 2),
('Mariage et beaute', 2, 3),
('Meubles designs', 1, 4),
('Sanitaire', 1, 5),
('Shopping', 2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `id_ville` int(100) NOT NULL AUTO_INCREMENT,
  `nom_ville` varchar(200) NOT NULL,
  PRIMARY KEY (`id_ville`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`id_ville`, `nom_ville`) VALUES
(1, 'Nabeul'),
(2, 'Tunis');
