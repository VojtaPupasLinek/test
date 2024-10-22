-- Adminer 4.8.1 MySQL 5.7.36 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `perex` varchar(1000) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `user_label` varchar(1000) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_czech_ci,
  `images_id` int(11) DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `images_id` (`images_id`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `articles` (`id`, `title`, `perex`, `user_label`, `content`, `images_id`, `lang`, `created`, `changed`) VALUES
(1,	'Článek ve struktuře',	'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra nulla ut sem congue ullamcorper. Praesent dapibus commodo arcu non rutrum. Fusce a nunc quis nunc tristique pharetra sit amet non arcu. Curabitur consequat consequat nulla eget dignissim. Vestibulum lobortis, eros sit amet dictum volutpat, est lectus mattis ante, et sollicitudin dolor erat sit amet mi.</p>',	NULL,	'<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra nulla ut sem congue ullamcorper. Praesent dapibus commodo arcu non rutrum. Fusce a nunc quis nunc tristique pharetra sit amet non arcu. Curabitur consequat consequat nulla eget dignissim. Vestibulum lobortis, eros sit amet dictum volutpat, est lectus mattis ante, et sollicitudin dolor erat sit amet mi. Pellentesque ultrices tristique cursus. Suspendisse pulvinar, ex eu aliquam interdum, urna odio aliquam lacus, ac molestie nisi enim at enim. Donec fringilla elementum magna, in viverra sapien sollicitudin nec. Nullam ac libero ipsum. Quisque a mauris dictum, aliquet tortor ultrices, vehicula orci. Donec vestibulum rutrum ex, et viverra ipsum facilisis eu. Vestibulum ultricies mi ut dui fringilla hendrerit. Cras suscipit sapien at magna pellentesque, non bibendum arcu aliquet. Morbi scelerisque sed eros sed tristique. Morbi consequat aliquam quam eu vulputate.</p>\n<p>Quisque euismod pretium varius. Nulla sollicitudin laoreet elit at scelerisque. Suspendisse sit amet venenatis enim, sollicitudin egestas nisl. Mauris quis iaculis urna. Fusce purus purus, blandit vel porttitor eu, auctor ac nibh. Sed fringilla nunc augue, non tristique urna tempor in. Ut blandit hendrerit elementum. Praesent cursus, neque at lobortis tincidunt, quam eros efficitur diam, sodales efficitur massa ipsum et dolor.</p>\n<p>Vivamus sodales molestie nisi. Donec lectus nunc, vestibulum vel maximus sed, lacinia accumsan neque. Quisque magna tellus, auctor sed nulla sit amet, facilisis maximus arcu. Vestibulum vitae mi mi. In hac habitasse platea dictumst. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sit amet lorem pellentesque, porttitor erat eget, mollis orci. Vivamus vel bibendum arcu. Curabitur accumsan, orci at pellentesque accumsan, nisl felis feugiat orci, in convallis felis dui in sapien. Vestibulum sollicitudin congue viverra. Maecenas sit amet fringilla eros, a pellentesque nunc.</p>\n<p>Sed condimentum interdum tortor id semper. Vivamus sapien erat, porta at nibh eget, facilisis interdum risus. Nulla posuere nibh eros, interdum aliquam neque porttitor vestibulum. Aenean molestie quam ex, eu fringilla lacus mollis ut. Morbi quis faucibus ligula. Proin lectus neque, commodo at dui vitae, maximus facilisis odio. Morbi id egestas diam. Curabitur finibus laoreet sem, nec suscipit neque eleifend ac. Integer at vulputate lorem. Phasellus urna augue, scelerisque iaculis tristique vehicula, sagittis ut eros. Duis at lectus id tortor faucibus feugiat.</p>\n<p>Etiam faucibus, nisi eget porttitor egestas, quam odio blandit orci, non porttitor sapien odio nec nisl. Pellentesque in hendrerit ipsum. Vestibulum ac nisi mauris. Nullam ac cursus sem. Pellentesque vitae nisi vitae purus tempor tempor. Pellentesque tempor odio vitae nibh auctor, vitae porta diam sodales. In nec malesuada mauris. Quisque pharetra, massa semper egestas malesuada, dolor arcu sodales est, at pharetra purus nisl vitae nibh. Suspendisse vel sodales ex. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis iaculis rhoncus risus, a sagittis dui dapibus at. Mauris iaculis in magna vel rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque imperdiet, justo non ultricies tempus, libero libero tincidunt ex, at vulputate eros ligula at lacus. Nam varius faucibus lectus iaculis congue.</p>\n</div>',	NULL,	'cz',	'2015-05-05 11:12:53',	'2022-03-18 09:17:42'),
(2,	'Článek',	'<p>perex</p>',	NULL,	'<div id=\"lipsum\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultrices lobortis ligula sit amet congue. Curabitur sed pretium lectus, eu lacinia augue. Nam iaculis rutrum elit ut vestibulum. Suspendisse commodo ultrices lacinia. In scelerisque purus malesuada nulla iaculis tempor. Suspendisse et vehicula tortor. Donec pellentesque lacus vel ultrices finibus. Vivamus a iaculis lectus, facilisis auctor nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut ac ante lacinia, consectetur massa eget, fermentum orci. Phasellus magna ante, rutrum et commodo nec, mattis a lacus. Integer tristique aliquam felis. Nulla facilisi. Duis volutpat ipsum velit, non vulputate nibh pellentesque eget.</p>\n<p>Duis finibus ligula nec felis sagittis, quis rutrum ante varius. Mauris magna tortor, sodales nec placerat eleifend, tempus a est. Vestibulum vel lectus velit. Aenean mollis dapibus nibh at lacinia. Integer ipsum eros, fringilla a cursus et, ultrices vitae diam. Sed quis consequat ligula. In vel sollicitudin ex. Quisque aliquam est sed lacus consequat pretium. Sed ultrices velit vel arcu dapibus vehicula. Vivamus faucibus efficitur augue, ornare ullamcorper est fringilla ut. Sed bibendum nunc ex, nec pulvinar enim euismod in. Curabitur turpis ligula, commodo eu scelerisque ut, elementum quis ante. Fusce id mi eu sem vehicula sollicitudin in eget felis. Quisque sagittis interdum tincidunt. Vivamus sed consequat lectus. Quisque eu ex sed massa semper interdum in sit amet massa.</p>\n<p>Maecenas sed felis auctor, condimentum sem et, tempus neque. Phasellus eu gravida lorem, eget viverra risus. Etiam tincidunt aliquet nulla, sagittis eleifend dui elementum eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur accumsan egestas aliquet. Integer nec quam quis libero fermentum lobortis. Pellentesque ultrices mollis nisl, a dictum lectus rhoncus eu. Duis placerat leo consequat dictum dignissim. Vivamus ultricies dolor eget mi posuere maximus. Mauris et aliquam lectus. Phasellus semper, mauris eget aliquet convallis, lacus lacus euismod odio, vitae lobortis leo sapien vitae velit. Aliquam sit amet nisl libero. Ut eget neque rutrum, dapibus ante vel, ullamcorper dolor. Sed euismod, erat quis commodo vestibulum, mauris nisl lacinia mi, in pellentesque turpis quam vel nulla.</p>\n<p>Fusce nisl est, ullamcorper ac libero a, mattis vehicula erat. Nullam malesuada elit vitae tortor luctus, vitae vestibulum purus semper. Sed in metus mauris. Pellentesque a semper nisl, et viverra sapien. In hac habitasse platea dictumst. Morbi metus massa, commodo nec ipsum quis, ornare maximus orci. In ut euismod quam, id auctor urna. Integer posuere arcu ut tincidunt interdum. Aliquam feugiat nulla a nisi iaculis vestibulum. Proin malesuada est at ante mollis, quis condimentum nunc blandit. Sed tristique, neque ac imperdiet tincidunt, eros arcu molestie mi, vitae gravida massa leo quis velit. Curabitur lobortis viverra varius. Aliquam scelerisque sapien sit amet leo accumsan consequat. Sed ultricies ut libero sed malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<p>Nam malesuada leo tempus, facilisis nulla ac, tincidunt sem. Etiam placerat eros odio, eu sodales urna aliquet in. Quisque varius dui ac ipsum dignissim lobortis. Duis sit amet metus leo. Cras eu urna nec ipsum volutpat rutrum. Integer id blandit felis. Sed et nisi vitae odio rhoncus eleifend. Integer commodo efficitur odio sed suscipit. Mauris eu elit eu orci malesuada laoreet. Maecenas posuere egestas neque, ac vulputate mi posuere sit amet. Quisque volutpat risus ac orci imperdiet rhoncus.</p>\n</div>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>',	2,	NULL,	'2016-02-09 17:41:28',	'2024-06-17 10:56:16'),
(3,	'Druhý článek',	NULL,	'22',	NULL,	NULL,	'cz',	'2022-03-17 19:11:27',	'2022-03-17 18:19:57'),
(4,	'O nás',	'Základní myšlenky a principy',	NULL,	'<p>Nacházíme se v centru Prahy, kde poskytujeme diagnostiku a služby na harmonizačních zařízeních. Jsme zastoupení firmy Alfa-med. Pracujeme s přístroji na bázi biorezonance a biofotonové holografie.</p>\n<p>Naší prací je:<br />Diagnostika fyzického a psychického stavu certifikovanými analytickými zařízeními.<br />Podpora a harmonizační služby.<br />Kosmetické služby.</p>\n<p>Provádíme školení na následující zařízeních:<br /><span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\">Sensitiv Imago Aureola</span></span></span><br /><span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\">My Streamer</span></span></span><br /><span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\">Frekvenční kapsle</span></span></span></p>\n<p>&nbsp;</p>\n<p><span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\">Najdete nás na adrese: Centrum Bioar o.p.s., Týnská 21<br /></span></span></span> <span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\"><a href=\"mailto:info@centrumbioar.cz\">info@centrumbioar.cz</a>, +420725144892</span></span></span></p>\n<p>&nbsp;</p>\n<p><span class=\"d-block d-lg-inline\"><span class=\"color-gold\"><span class=\"d-block d-lg-inline color-gold\"><img src=\"/images/thumbs/okonew4.jpeg\" alt=\"okonew4.jpeg\" width=\"31\" height=\"35\" /> testovací obrázek</span></span></span></p>',	10,	'cz',	NULL,	'2024-10-18 13:22:21'),
(6,	'Služby',	'nabídka služeb',	NULL,	'<p>Pracujeme s certifikovanými přístroji, fungující na základě biorezonance a biofotonové holografie, kde nerovnosti v těle mohou být objeveny před projevením na fyzické úrovni. Následující přístroje umožňují diagnosticku a harmonizaci energetického stavu těla a jednotlivých orgánů.</p>\n<p><a href=\"https://www.youtube.com/channel/UCsLMvQpCgxYW_g6P4bY89SQ\">video</a></p>\n<h5 style=\"line-height: 1.5;\"><span>Diagnostika</span></h5>\n<p style=\"line-height: 1.5;\">SENSITIV IMAGO AUREOLA 500 | metoda biofotonové holografie, GDV&nbsp;&nbsp;&nbsp; <a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a><br />SENSITIV IMAGO | biorezonanční skenování&nbsp;&nbsp;&nbsp; <a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a><br />SCIO &nbsp;&nbsp;&nbsp; <a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a></p>\n<h5 style=\"line-height: 1.5;\">&nbsp;</h5>\n<h5 style=\"line-height: 1.5;\"><span>Harmonizace</span> <span><small>je prováděna na přístrojích</small></span></h5>\n<p style=\"line-height: 1.5;\">SENSITIV IMAGO&nbsp;&nbsp;&nbsp;<a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a><br />SCIO&nbsp;&nbsp;&nbsp;<a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a><br />NEO ANGEL&nbsp;&nbsp;&nbsp;<a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a><br />FREKVENČNÍ KAPSLE&nbsp;&nbsp;&nbsp;<a class=\"btn btn-outline-success\" href=\"#\">více o přístroji</a></p>',	NULL,	'cz',	NULL,	'2024-10-22 06:50:55'),
(7,	'Aureola',	'aureola',	NULL,	'<h2>Aureola</h2>\n<p>Umožňuje najít souvislosti mezi základními úrovněmi lidského těla a povahou psycho-emocionální a fyziologické aktivity, zkoumá energetická centra a biopole, hodnotí vlivy stresu a psychických faktorů na organismus. Zařízení je vhodné pro analýzu v oblastech psychologie, sport, wellness a monitorování účinnosti ozdravných metod.</p>\n<p><strong>[Tlač</strong><strong>í</strong><strong>tko v</strong><strong>í</strong><strong>ce]</strong></p>',	6,	'cz',	NULL,	'2024-10-09 16:10:10'),
(8,	'Sensitiv Imago',	'Imago',	NULL,	'<h2>Sensitiv Imago</h2>\n<p>Sensitiv imago detekuje dysfunkci orgánů již ve stádiu, kdy doposud nejsou viditelné příznaky . Toho je dosaženo hlubokou analýzou lidského elektromagnetického záření. Každé onemocnění je předcházeno změnami v elektromagnetických výměnách energií, které je měřitelné. Tím, že tyto změny zaznamenáme včas, naše diagnostika pomáhá odhalit problémy dříve, než se naplno projeví.</p>\n<p><strong>[Tlač</strong><strong>í</strong><strong>tko</strong><strong> v</strong><strong>í</strong><strong>ce]</strong></p>',	7,	'cz',	NULL,	'2024-10-09 15:44:10'),
(10,	'Homepage',	NULL,	NULL,	'<div style=\"background-color: #2b2b2b; color: #a9b7c6;\">\n<pre style=\"font-family: \'JetBrains Mono\',monospace; font-size: 9,8pt;\"><span>&lt;div </span><span>class</span><span>=\"row p-5\"</span><span>&gt;<br /></span><span>    &lt;div </span><span>class</span><span>=\"col-12\"</span><span>&gt;<br /></span><span>        &lt;img </span><span>src</span><span>=\"</span>{<span>$basePath</span>}<span>/images/heart-tree.jpg\" </span><span>alt</span><span>=\"Tree\" </span><span>class</span><span>=\"img-fluid\"</span><span>&gt;<br /></span><span>    &lt;/div&gt;<br /></span><span>&lt;/div&gt;</span></pre>\n</div>',	NULL,	NULL,	NULL,	'2024-10-14 15:05:50'),
(11,	'Homepage',	NULL,	NULL,	NULL,	8,	'cz',	NULL,	'2024-10-15 04:22:13'),
(12,	'Péče a krása',	NULL,	NULL,	'<p>Stránky se připravují.</p>',	15,	NULL,	NULL,	'2024-10-17 13:10:24'),
(13,	'Kontakty',	NULL,	NULL,	'<p>Centrum Bioar o.p.s. , Týnská 21<br />info@centrumbioar.cz + 420725144892</p>',	13,	'cz',	NULL,	'2024-10-17 11:33:24'),
(14,	'Test',	NULL,	NULL,	'<p>testovací obsah</p>',	8,	NULL,	NULL,	'2024-10-22 06:48:58'),
(15,	'Výživové doplňky',	NULL,	NULL,	'<p>Stránky a činnost se připravují.</p>',	NULL,	'cz',	NULL,	'2024-10-22 06:48:10'),
(16,	'Ceník',	'ceník',	NULL,	'<p class=\"text-primary\">Prosíme klienty, aby se nejprve důkladně seznámili s našimi metodami a teprve potom nás kontaktovali. Všechny informace jsou podrobně vysvětleny na našich stránkách.</p>\n<p><br />Vstupní měření na Senstiv Imago &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2500 KČ<br />Kontrolní měření na Senstiv Imago &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 2500 KČ<br />Měření na biofotovném přístroji Aureola&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 1200 KČ<br />Iris Diagnostika &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 1600 KČ<br />Analýza kapky krve v Dark Field mikroskopu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 1600 KČ<br />Měření na přístroji Heart Vision &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 600 KČ</p>\n<p>&nbsp;</p>\n<h4 class=\"text-primary\">VÝHODNÉ BALÍČKY</h4>\n<p>Vstupní měření na Sensitiv Imago 530<br />Měření energetického pole na přístroji Aureola<br />/celková sleva 500 Kč/ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 3200 Kč<br />Vstupní měření na Sensitiv Imago 530<br />Měření energetického pole na přístroji Aureola<br />Iris Diagnostika<br />/celková sleva 1100 Kč/ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 4200 Kč<br />Vstupní měření na Sensitiv Imago 530<br />Měření energetického pole na přístroji Aureola<br />Analýza kapky krve v Dark Field mikroskopu<br />/celková sleva 1100 Kč/ &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4200 Kč &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br /><br /><br /><br /><br /></p>\n<h4>Harmonizace</h4>\n<p>Frekvenční harmonizace 50 minut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 1500 Kč</p>',	NULL,	NULL,	NULL,	'2024-10-22 07:00:00'),
(17,	'pkayground',	NULL,	NULL,	'<p>obsah hřiště</p>',	NULL,	'cz',	NULL,	'2024-10-18 14:00:56'),
(18,	'Sensitive Imago',	NULL,	NULL,	'<p>SENSITIVE IMAGO<br />Sensitiv imago detekuje dysfunkci orgánů již ve stádiu, kdy doposud nejsou viditelné příznaky . Toho je dosaženo hlubokou analýzou lidského elektromagnetického záření. Každé onemocnění je předcházeno změnami v elektromagnetických výměnách energií, které je měřitelné. Tím, že tyto změny zaznamenáme včas, naše diagnostika pomáhá odhalit problémy dříve, než se naplno projeví.</p>',	7,	'cz',	NULL,	'2024-10-22 03:43:33'),
(19,	'Aureola',	NULL,	NULL,	'<p>AUREOLA <br />Umožňuje najít souvislosti mezi základními úrovněmi lidského těla a povahou psycho-emocionální a fyziologické aktivity, zkoumá energetická centra a biopole, hodnotí vlivy stresu a psychických faktorů na organismus. Zařízení je vhodné pro analýzu v oblastech psychologie, sport, wellness a monitorování účinnosti ozdravných metod.</p>',	6,	'cz',	NULL,	'2024-10-22 03:42:54'),
(20,	'Přístroje',	'nadpis',	NULL,	NULL,	NULL,	'cz',	NULL,	'2024-10-22 03:31:48'),
(21,	'Digi Healer',	NULL,	NULL,	'<p>DIGI HEALER frekvenční streamer <br />Moduly Digi Healer jsou schopny korigovat patofyziologické a psychoemoční parametry lidského stavu, a to i pro preventivní účely.</p>',	18,	'cz',	NULL,	'2024-10-22 03:48:43'),
(22,	'Frekvenční kapsle',	NULL,	NULL,	'<p>FREKVENČNÍ KAPSLE | je ve vývoji<br />Moderní energetické harmonizující zařízení. Efektivní terapeutický nástroj, který ve spolupráci s diagnostickými zařízeními jako Sensitiv Imago a Aureola umožňuje sestavení protokolu na danou anamnézu využitím našeho systému pro tvorbu harmonizačních terapií.</p>',	7,	'cz',	NULL,	'2024-10-22 03:53:47');

DROP TABLE IF EXISTS `articles2authors`;
CREATE TABLE `articles2authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `articles2authors_ibfk_3` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articles2authors_ibfk_4` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `articles2documents`;
CREATE TABLE `articles2documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `documents_id` int(11) NOT NULL,
  `title_override` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `subtitle_override` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `documents_id` (`documents_id`),
  CONSTRAINT `articles2documents_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles2documents_ibfk_2` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `articles2documents` (`id`, `articles_id`, `documents_id`, `title_override`, `subtitle_override`, `order`) VALUES
(1,	2,	1,	NULL,	NULL,	0);

DROP TABLE IF EXISTS `articles2images`;
CREATE TABLE `articles2images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `images_id` int(11) NOT NULL,
  `title_override` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `subtitle_override` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `images_id` (`images_id`),
  CONSTRAINT `articles2images_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles2images_ibfk_2` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `articles2images` (`id`, `articles_id`, `images_id`, `title_override`, `subtitle_override`, `order`) VALUES
(1,	3,	2,	NULL,	NULL,	1),
(2,	3,	1,	NULL,	NULL,	0),
(3,	2,	2,	NULL,	NULL,	0);

DROP TABLE IF EXISTS `articles2tags`;
CREATE TABLE `articles2tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `tags_id` (`tags_id`),
  CONSTRAINT `articles2tags_ibfk_3` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articles2tags_ibfk_4` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `articles2tags` (`id`, `articles_id`, `tags_id`, `order`) VALUES
(1,	3,	1,	0),
(2,	2,	1,	0),
(3,	2,	2,	0);

DROP TABLE IF EXISTS `articles2users`;
CREATE TABLE `articles2users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `articles2users_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `articles2users_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `articles2videos`;
CREATE TABLE `articles2videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `videos_id` int(11) NOT NULL,
  `title_override` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  KEY `videos_id` (`videos_id`),
  CONSTRAINT `articles2videos_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `articles2videos_ibfk_2` FOREIGN KEY (`videos_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `articles2videos` (`id`, `articles_id`, `videos_id`, `title_override`, `order`) VALUES
(1,	2,	1,	NULL,	0);

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `seo` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_czech_ci,
  `highlight` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `images_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_id` (`images_id`),
  CONSTRAINT `article_category_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `article_category` (`id`, `title`, `seo`, `lang`, `class`, `description`, `highlight`, `active`, `order`, `images_id`) VALUES
(1,	'Rubrika',	'rubrika',	'cz',	'',	'',	0,	1,	0,	NULL),
(2,	'Kategorie 2',	'kategorie-nahled',	NULL,	NULL,	NULL,	0,	1,	0,	NULL);

DROP TABLE IF EXISTS `article_category2articles`;
CREATE TABLE `article_category2articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_category_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `article_category_id` (`article_category_id`),
  KEY `articles_id` (`articles_id`),
  CONSTRAINT `article_category2articles_ibfk_1` FOREIGN KEY (`article_category_id`) REFERENCES `article_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_category2articles_ibfk_2` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `article_category2articles` (`id`, `article_category_id`, `articles_id`, `publish_date`, `active`) VALUES
(1,	1,	2,	'2023-01-18 23:38:00',	1),
(2,	1,	3,	'2022-03-18 00:00:00',	0),
(3,	1,	1,	'2022-03-19 00:00:00',	1);

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb4_czech_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `tld` varchar(5) COLLATE utf8mb4_czech_ci NOT NULL,
  `eu` int(1) NOT NULL DEFAULT '0',
  `remark` varchar(300) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `country` (`id`, `code`, `name`, `tld`, `eu`, `remark`, `order`) VALUES
(1,	'CZ',	'Czech Republic',	'.cz',	1,	'',	0),
(2,	'SK',	'Slovakia',	'.sk',	1,	'SK previously represented Sikkim',	0),
(3,	'AD',	'Andorra',	'.ad',	0,	'',	0),
(4,	'AE',	'United Arab Emirates',	'.ae',	0,	'',	0),
(5,	'AF',	'Afghanistan',	'.af',	0,	'',	0),
(6,	'AG',	'Antigua and Barbuda',	'.ag',	0,	'',	0),
(7,	'AI',	'Anguilla',	'.ai',	0,	'AI previously represented French Afar and Issas',	0),
(8,	'AL',	'Albania',	'.al',	0,	'',	0),
(9,	'AM',	'Armenia',	'.am',	0,	'',	0),
(10,	'AO',	'Angola',	'.ao',	0,	'',	0),
(11,	'AQ',	'Antarctica',	'.aq',	0,	'Covers the territories south of 60° south latitude\nCode taken from name in French: Antarctique',	0),
(12,	'AR',	'Argentina',	'.ar',	0,	'',	0),
(13,	'AS',	'American Samoa',	'.as',	0,	'',	0),
(14,	'AT',	'Austria',	'.at',	1,	'',	0),
(15,	'AU',	'Australia',	'.au',	0,	'Includes the Ashmore and Cartier Islands and the Coral Sea Islands',	0),
(16,	'AW',	'Aruba',	'.aw',	0,	'',	0),
(17,	'AX',	'Åland Islands',	'.ax',	0,	'An autonomous province of Finland',	0),
(18,	'AZ',	'Azerbaijan',	'.az',	0,	'',	0),
(19,	'BA',	'Bosnia and Herzegovina',	'.ba',	0,	'',	0),
(20,	'BB',	'Barbados',	'.bb',	0,	'',	0),
(21,	'BD',	'Bangladesh',	'.bd',	0,	'',	0),
(22,	'BE',	'Belgium',	'.be',	1,	'',	0),
(23,	'BF',	'Burkina Faso',	'.bf',	0,	'Name changed from Upper Volta (HV)',	0),
(24,	'BG',	'Bulgaria',	'.bg',	1,	'',	0),
(25,	'BH',	'Bahrain',	'.bh',	0,	'',	0),
(26,	'BI',	'Burundi',	'.bi',	0,	'',	0),
(27,	'BJ',	'Benin',	'.bj',	0,	'Name changed from Dahomey (DY)',	0),
(28,	'BL',	'Saint Barthélemy',	'.bl',	0,	'',	0),
(29,	'BM',	'Bermuda',	'.bm',	0,	'',	0),
(30,	'BN',	'Brunei Darussalam',	'.bn',	0,	'ISO country name follows UN designation (common name: Brunei)',	0),
(31,	'BO',	'Bolivia, Plurinational State of',	'.bo',	0,	'ISO country name follows UN designation (common name and previous ISO country name: Bolivia)',	0),
(32,	'BQ',	'Bonaire, Sint Eustatius and Saba',	'.bq',	0,	'Consists of three Caribbean \"special municipalities\", which are part of the Netherlands proper: Bonaire, Sint Eustatius, and Saba (the BES Islands)\nPrevious ISO country name: Bonaire, Saint Eustatius and Saba\nBQ previously represented British Antarctic Territory',	0),
(33,	'BR',	'Brazil',	'.br',	0,	'',	0),
(34,	'BS',	'Bahamas',	'.bs',	0,	'',	0),
(35,	'BT',	'Bhutan',	'.bt',	0,	'',	0),
(36,	'BV',	'Bouvet Island',	'.bv',	0,	'Belongs to Norway',	0),
(37,	'BW',	'Botswana',	'.bw',	0,	'',	0),
(38,	'BY',	'Belarus',	'.by',	0,	'Code taken from previous ISO country name: Byelorussian SSR (now assigned ISO 3166-3 code BYAA)\nCode assigned as the country was already a UN member since 1945[16]',	0),
(39,	'BZ',	'Belize',	'.bz',	0,	'',	0),
(40,	'CA',	'Canada',	'.ca',	0,	'',	0),
(41,	'CC',	'Cocos (Keeling) Islands',	'.cc',	0,	'',	0),
(42,	'CD',	'Congo, the Democratic Republic of the',	'.cd',	0,	'Name changed from Zaire (ZR)',	0),
(43,	'CF',	'Central African Republic',	'.cf',	0,	'',	0),
(44,	'CG',	'Congo',	'.cg',	0,	'',	0),
(45,	'CH',	'Switzerland',	'.ch',	0,	'Code taken from name in Latin: Confoederatio Helvetica',	0),
(46,	'CI',	'Côte d\'Ivoire',	'.ci',	0,	'',	0),
(47,	'CK',	'Cook Islands',	'.ck',	0,	'',	0),
(48,	'CL',	'Chile',	'.cl',	0,	'',	0),
(49,	'CM',	'Cameroon',	'.cm',	0,	'',	0),
(50,	'CN',	'China',	'.cn',	0,	'',	0),
(51,	'CO',	'Colombia',	'.co',	0,	'',	0),
(52,	'CR',	'Costa Rica',	'.cr',	0,	'',	0),
(53,	'CU',	'Cuba',	'.cu',	0,	'',	0),
(54,	'CV',	'Cabo Verde',	'.cv',	0,	'',	0),
(55,	'CW',	'Curaçao',	'.cw',	0,	'',	0),
(56,	'CX',	'Christmas Island',	'.cx',	0,	'',	0),
(57,	'CY',	'Cyprus',	'.cy',	1,	'',	0),
(58,	'DE',	'Germany',	'.de',	1,	'Code taken from name in German: Deutschland\nCode used for West Germany before 1990 (previous ISO country name: Germany, Federal Republic of)',	0),
(59,	'DJ',	'Djibouti',	'.dj',	0,	'Name changed from French Afar and Issas (AI)',	0),
(60,	'DK',	'Denmark',	'.dk',	1,	'',	0),
(61,	'DM',	'Dominica',	'.dm',	0,	'',	0),
(62,	'DO',	'Dominican Republic',	'.do',	0,	'',	0),
(63,	'DZ',	'Algeria',	'.dz',	0,	'Code taken from name in Kabyle: Dzayer',	0),
(64,	'EC',	'Ecuador',	'.ec',	0,	'',	0),
(65,	'EE',	'Estonia',	'.ee',	1,	'Code taken from name in Estonian: Eesti',	0),
(66,	'EG',	'Egypt',	'.eg',	0,	'',	0),
(67,	'EH',	'Western Sahara',	'.eh',	0,	'Previous ISO country name: Spanish Sahara (code taken from name in Spanish: Sahara español)',	0),
(68,	'ER',	'Eritrea',	'.er',	0,	'',	0),
(69,	'ES',	'Spain',	'.es',	1,	'Code taken from name in Spanish: España',	0),
(70,	'ET',	'Ethiopia',	'.et',	0,	'',	0),
(71,	'FI',	'Finland',	'.fi',	1,	'',	0),
(72,	'FJ',	'Fiji',	'.fj',	0,	'',	0),
(73,	'FK',	'Falkland Islands (Malvinas)',	'.fk',	0,	'',	0),
(74,	'FM',	'Micronesia, Federated States of',	'.fm',	0,	'Previous ISO country name: Micronesia',	0),
(75,	'FO',	'Faroe Islands',	'.fo',	0,	'',	0),
(76,	'FR',	'France',	'.fr',	1,	'Includes Clipperton Island',	0),
(77,	'GA',	'Gabon',	'.ga',	0,	'',	0),
(78,	'GB',	'United Kingdom of Great Britain and Northern Ireland',	'.gb\n(',	1,	'Code taken from Great Britain (from official name: United Kingdom of Great Britain and Northern Ireland)[17]\n.uk is the primary ccTLD of the United Kingdom instead of .gb (see code UK, which is exceptionally reserved)',	0),
(79,	'GD',	'Grenada',	'.gd',	0,	'',	0),
(80,	'GE',	'Georgia',	'.ge',	0,	'GE previously represented Gilbert and Ellice Islands',	0),
(81,	'GF',	'French Guiana',	'.gf',	0,	'Code taken from name in French: Guyane française',	0),
(82,	'GG',	'Guernsey',	'.gg',	0,	'a British Crown dependency',	0),
(83,	'GH',	'Ghana',	'.gh',	0,	'',	0),
(84,	'GI',	'Gibraltar',	'.gi',	0,	'',	0),
(85,	'GL',	'Greenland',	'.gl',	0,	'',	0),
(86,	'GM',	'Gambia',	'.gm',	0,	'',	0),
(87,	'GN',	'Guinea',	'.gn',	0,	'',	0),
(88,	'GP',	'Guadeloupe',	'.gp',	0,	'',	0),
(89,	'GQ',	'Equatorial Guinea',	'.gq',	0,	'Code taken from name in French: Guinée équatoriale',	0),
(90,	'GR',	'Greece',	'.gr',	1,	'',	0),
(91,	'GS',	'South Georgia and the South Sandwich Islands',	'.gs',	0,	'',	0),
(92,	'GT',	'Guatemala',	'.gt',	0,	'',	0),
(93,	'GU',	'Guam',	'.gu',	0,	'',	0),
(94,	'GW',	'Guinea-Bissau',	'.gw',	0,	'',	0),
(95,	'GY',	'Guyana',	'.gy',	0,	'',	0),
(96,	'HK',	'Hong Kong',	'.hk',	0,	'',	0),
(97,	'HM',	'Heard Island and McDonald Islands',	'.hm',	0,	'',	0),
(98,	'HN',	'Honduras',	'.hn',	0,	'',	0),
(99,	'HR',	'Croatia',	'.hr',	1,	'Code taken from name in Croatian: Hrvatska',	0),
(100,	'HT',	'Haiti',	'.ht',	0,	'',	0),
(101,	'HU',	'Hungary',	'.hu',	1,	'',	0),
(102,	'ID',	'Indonesia',	'.id',	0,	'',	0),
(103,	'IE',	'Ireland',	'.ie',	1,	'',	0),
(104,	'IL',	'Israel',	'.il',	0,	'',	0),
(105,	'IM',	'Isle of Man',	'.im',	0,	'a British Crown dependency',	0),
(106,	'IN',	'India',	'.in',	0,	'',	0),
(107,	'IO',	'British Indian Ocean Territory',	'.io',	0,	'',	0),
(108,	'IQ',	'Iraq',	'.iq',	0,	'',	0),
(109,	'IR',	'Iran, Islamic Republic of',	'.ir',	0,	'ISO country name follows UN designation (common name: Iran)',	0),
(110,	'IS',	'Iceland',	'.is',	0,	'Code taken from name in Icelandic: Ísland',	0),
(111,	'IT',	'Italy',	'.it',	1,	'',	0),
(112,	'JE',	'Jersey',	'.je',	0,	'a British Crown dependency',	0),
(113,	'JM',	'Jamaica',	'.jm',	0,	'',	0),
(114,	'JO',	'Jordan',	'.jo',	0,	'',	0),
(115,	'JP',	'Japan',	'.jp',	0,	'',	0),
(116,	'KE',	'Kenya',	'.ke',	0,	'',	0),
(117,	'KG',	'Kyrgyzstan',	'.kg',	0,	'',	0),
(118,	'KH',	'Cambodia',	'.kh',	0,	'Code taken from former name: Khmer Republic\nPrevious ISO country name: Kampuchea',	0),
(119,	'KI',	'Kiribati',	'.ki',	0,	'',	0),
(120,	'KM',	'Comoros',	'.km',	0,	'Code taken from name in Comorian: Komori',	0),
(121,	'KN',	'Saint Kitts and Nevis',	'.kn',	0,	'Previous ISO country name: Saint Kitts-Nevis-Anguilla',	0),
(122,	'KP',	'Korea, Democratic People\'s Republic of',	'.kp',	0,	'ISO country name follows UN designation (common name: North Korea)',	0),
(123,	'KR',	'Korea, Republic of',	'.kr',	0,	'ISO country name follows UN designation (common name: South Korea)',	0),
(124,	'KW',	'Kuwait',	'.kw',	0,	'',	0),
(125,	'KY',	'Cayman Islands',	'.ky',	0,	'',	0),
(126,	'KZ',	'Kazakhstan',	'.kz',	0,	'Previous ISO country name: Kazakstan',	0),
(127,	'LA',	'Lao People\'s Democratic Republic',	'.la',	0,	'ISO country name follows UN designation (common name: Laos)',	0),
(128,	'LB',	'Lebanon',	'.lb',	0,	'',	0),
(129,	'LC',	'Saint Lucia',	'.lc',	0,	'',	0),
(130,	'LI',	'Liechtenstein',	'.li',	0,	'',	0),
(131,	'LK',	'Sri Lanka',	'.lk',	0,	'',	0),
(132,	'LR',	'Liberia',	'.lr',	0,	'',	0),
(133,	'LS',	'Lesotho',	'.ls',	0,	'',	0),
(134,	'LT',	'Lithuania',	'.lt',	1,	'',	0),
(135,	'LU',	'Luxembourg',	'.lu',	1,	'',	0),
(136,	'LV',	'Latvia',	'.lv',	1,	'',	0),
(137,	'LY',	'Libya',	'.ly',	0,	'Previous ISO country name: Libyan Arab Jamahiriya',	0),
(138,	'MA',	'Morocco',	'.ma',	0,	'Code taken from name in French: Maroc',	0),
(139,	'MC',	'Monaco',	'.mc',	0,	'',	0),
(140,	'MD',	'Moldova, Republic of',	'.md',	0,	'ISO country name follows UN designation (common name and previous ISO country name: Moldova)',	0),
(141,	'ME',	'Montenegro',	'.me',	0,	'',	0),
(142,	'MF',	'Saint Martin (French part)',	'.mf',	0,	'The Dutch part of Saint Martin island is assigned code SX',	0),
(143,	'MG',	'Madagascar',	'.mg',	0,	'',	0),
(144,	'MH',	'Marshall Islands',	'.mh',	0,	'',	0),
(145,	'MK',	'Macedonia, the former Yugoslav Republic of',	'.mk',	0,	'ISO country name follows UN designation (due to Macedonia naming dispute; official name used by country itself: Republic of Macedonia)\nCode taken from name in Macedonian: Makedonija',	0),
(146,	'ML',	'Mali',	'.ml',	0,	'',	0),
(147,	'MM',	'Myanmar',	'.mm',	0,	'Name changed from Burma (BU)',	0),
(148,	'MN',	'Mongolia',	'.mn',	0,	'',	0),
(149,	'MO',	'Macao',	'.mo',	0,	'Previous ISO country name: Macau',	0),
(150,	'MP',	'Northern Mariana Islands',	'.mp',	0,	'',	0),
(151,	'MQ',	'Martinique',	'.mq',	0,	'',	0),
(152,	'MR',	'Mauritania',	'.mr',	0,	'',	0),
(153,	'MS',	'Montserrat',	'.ms',	0,	'',	0),
(154,	'MT',	'Malta',	'.mt',	1,	'',	0),
(155,	'MU',	'Mauritius',	'.mu',	0,	'',	0),
(156,	'MV',	'Maldives',	'.mv',	0,	'',	0),
(157,	'MW',	'Malawi',	'.mw',	0,	'',	0),
(158,	'MX',	'Mexico',	'.mx',	0,	'',	0),
(159,	'MY',	'Malaysia',	'.my',	0,	'',	0),
(160,	'MZ',	'Mozambique',	'.mz',	0,	'',	0),
(161,	'NA',	'Namibia',	'.na',	0,	'',	0),
(162,	'NC',	'New Caledonia',	'.nc',	0,	'',	0),
(163,	'NE',	'Niger',	'.ne',	0,	'',	0),
(164,	'NF',	'Norfolk Island',	'.nf',	0,	'',	0),
(165,	'NG',	'Nigeria',	'.ng',	0,	'',	0),
(166,	'NI',	'Nicaragua',	'.ni',	0,	'',	0),
(167,	'NL',	'Netherlands',	'.nl',	1,	'',	0),
(168,	'NO',	'Norway',	'.no',	0,	'',	0),
(169,	'NP',	'Nepal',	'.np',	0,	'',	0),
(170,	'NR',	'Nauru',	'.nr',	0,	'',	0),
(171,	'NU',	'Niue',	'.nu',	0,	'',	0),
(172,	'NZ',	'New Zealand',	'.nz',	0,	'',	0),
(173,	'OM',	'Oman',	'.om',	0,	'',	0),
(174,	'PA',	'Panama',	'.pa',	0,	'',	0),
(175,	'PE',	'Peru',	'.pe',	0,	'',	0),
(176,	'PF',	'French Polynesia',	'.pf',	0,	'Code taken from name in French: Polynésie française',	0),
(177,	'PG',	'Papua New Guinea',	'.pg',	0,	'',	0),
(178,	'PH',	'Philippines',	'.ph',	0,	'',	0),
(179,	'PK',	'Pakistan',	'.pk',	0,	'',	0),
(180,	'PL',	'Poland',	'.pl',	1,	'',	0),
(181,	'PM',	'Saint Pierre and Miquelon',	'.pm',	0,	'',	0),
(182,	'PN',	'Pitcairn',	'.pn',	0,	'',	0),
(183,	'PR',	'Puerto Rico',	'.pr',	0,	'',	0),
(184,	'PS',	'Palestine, State of',	'.ps',	0,	'Previous ISO country name: Palestinian Territory, Occupied\nConsists of the West Bank and the Gaza Strip',	0),
(185,	'PT',	'Portugal',	'.pt',	1,	'',	0),
(186,	'PW',	'Palau',	'.pw',	0,	'',	0),
(187,	'PY',	'Paraguay',	'.py',	0,	'',	0),
(188,	'QA',	'Qatar',	'.qa',	0,	'',	0),
(189,	'RE',	'Réunion',	'.re',	0,	'',	0),
(190,	'RO',	'Romania',	'.ro',	1,	'',	0),
(191,	'RS',	'Serbia',	'.rs',	0,	'Code taken from official name: Republic of Serbia (see Serbian country codes)',	0),
(192,	'RU',	'Russian Federation',	'.ru',	0,	'ISO country name follows UN designation (common name: Russia)',	0),
(193,	'RW',	'Rwanda',	'.rw',	0,	'',	0),
(194,	'SA',	'Saudi Arabia',	'.sa',	0,	'',	0),
(195,	'SB',	'Solomon Islands',	'.sb',	0,	'Code taken from former name: British Solomon Islands',	0),
(196,	'SC',	'Seychelles',	'.sc',	0,	'',	0),
(197,	'SD',	'Sudan',	'.sd',	0,	'',	0),
(198,	'SE',	'Sweden',	'.se',	1,	'',	0),
(199,	'SG',	'Singapore',	'.sg',	0,	'',	0),
(200,	'SH',	'Saint Helena, Ascension and Tristan da Cunha',	'.sh',	0,	'Previous ISO country name: Saint Helena',	0),
(201,	'SI',	'Slovenia',	'.si',	1,	'',	0),
(202,	'SJ',	'Svalbard and Jan Mayen',	'.sj',	0,	'Consists of two arctic territories of Norway: Svalbard and Jan Mayen',	0),
(203,	'SL',	'Sierra Leone',	'.sl',	0,	'',	0),
(204,	'SM',	'San Marino',	'.sm',	0,	'',	0),
(205,	'SN',	'Senegal',	'.sn',	0,	'',	0),
(206,	'SO',	'Somalia',	'.so',	0,	'',	0),
(207,	'SR',	'Suriname',	'.sr',	0,	'',	0),
(208,	'SS',	'South Sudan',	'.ss',	0,	'',	0),
(209,	'ST',	'Sao Tome and Principe',	'.st',	0,	'',	0),
(210,	'SV',	'El Salvador',	'.sv',	0,	'',	0),
(211,	'SX',	'Sint Maarten (Dutch part)',	'.sx',	0,	'The French part of Saint Martin island is assigned code MF',	0),
(212,	'SY',	'Syrian Arab Republic',	'.sy',	0,	'ISO country name follows UN designation (common name: Syria)',	0),
(213,	'SZ',	'Swaziland',	'.sz',	0,	'',	0),
(214,	'TC',	'Turks and Caicos Islands',	'.tc',	0,	'',	0),
(215,	'TD',	'Chad',	'.td',	0,	'Code taken from name in French: Tchad',	0),
(216,	'TF',	'French Southern Territories',	'.tf',	0,	'Covers the French Southern and Antarctic Lands except Adélie Land\nCode taken from name in French: Terres australes françaises',	0),
(217,	'TG',	'Togo',	'.tg',	0,	'',	0),
(218,	'TH',	'Thailand',	'.th',	0,	'',	0),
(219,	'TJ',	'Tajikistan',	'.tj',	0,	'',	0),
(220,	'TK',	'Tokelau',	'.tk',	0,	'',	0),
(221,	'TL',	'Timor-Leste',	'.tl',	0,	'Name changed from East Timor (TP)',	0),
(222,	'TM',	'Turkmenistan',	'.tm',	0,	'',	0),
(223,	'TN',	'Tunisia',	'.tn',	0,	'',	0),
(224,	'TO',	'Tonga',	'.to',	0,	'',	0),
(225,	'TR',	'Turkey',	'.tr',	0,	'',	0),
(226,	'TT',	'Trinidad and Tobago',	'.tt',	0,	'',	0),
(227,	'TV',	'Tuvalu',	'.tv',	0,	'',	0),
(228,	'TW',	'Taiwan, Province of China',	'.tw',	0,	'Covers the current jurisdiction of the Republic of China except Kinmen and Lienchiang\nISO country name follows UN designation (due to political status of Taiwan within the UN)[17]',	0),
(229,	'TZ',	'Tanzania, United Republic of',	'.tz',	0,	'ISO country name follows UN designation (common name: Tanzania)',	0),
(230,	'UA',	'Ukraine',	'.ua',	0,	'Previous ISO country name: Ukrainian SSR\nCode assigned as the country was already a UN member since 1945[16]',	0),
(231,	'UG',	'Uganda',	'.ug',	0,	'',	0),
(232,	'UM',	'United States Minor Outlying Islands',	'.um',	0,	'Consists of nine minor insular areas of the United States: Baker Island, Howland Island, Jarvis Island, Johnston Atoll, Kingman Reef, Midway Islands, Navassa Island, Palmyra Atoll, and Wake Island',	0),
(233,	'US',	'United States of America',	'.us',	0,	'',	0),
(234,	'UY',	'Uruguay',	'.uy',	0,	'',	0),
(235,	'UZ',	'Uzbekistan',	'.uz',	0,	'',	0),
(236,	'VA',	'Holy See',	'.va',	0,	'Covers Vatican City, territory of the Holy See\nPrevious ISO country name: Vatican City State (Holy See)',	0),
(237,	'VC',	'Saint Vincent and the Grenadines',	'.vc',	0,	'',	0),
(238,	'VE',	'Venezuela, Bolivarian Republic of',	'.ve',	0,	'ISO country name follows UN designation (common name and previous ISO country name: Venezuela)',	0),
(239,	'VG',	'Virgin Islands, British',	'.vg',	0,	'',	0),
(240,	'VI',	'Virgin Islands, U.S.',	'.vi',	0,	'',	0),
(241,	'VN',	'Viet Nam',	'.vn',	0,	'ISO country name follows UN designation (common name: Vietnam)',	0),
(242,	'VU',	'Vanuatu',	'.vu',	0,	'Name changed from New Hebrides (NH)',	0),
(243,	'WF',	'Wallis and Futuna',	'.wf',	0,	'',	0),
(244,	'WS',	'Samoa',	'.ws',	0,	'Code taken from former name: Western Samoa',	0),
(245,	'YE',	'Yemen',	'.ye',	0,	'Previous ISO country name: Yemen, Republic of\nCode used for North Yemen before 1990',	0),
(246,	'YT',	'Mayotte',	'.yt',	0,	'',	0),
(247,	'ZA',	'South Africa',	'.za',	0,	'Code taken from name in Dutch: Zuid-Afrika',	0),
(248,	'ZM',	'Zambia',	'.zm',	0,	'',	0),
(249,	'ZW',	'Zimbabwe',	'.zw',	0,	'Name changed from Southern Rhodesia (RH)',	0);

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `documents` (`id`, `users_id`, `file`, `title`, `subtitle`, `created`, `changed`) VALUES
(1,	2,	'Soubor-ke-stazeni.xlsx',	'podtitul',	NULL,	'2024-06-17 12:54:15',	'2024-06-17 10:54:15');

DROP TABLE IF EXISTS `documents2tags`;
CREATE TABLE `documents2tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documents_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `documents_id` (`documents_id`),
  KEY `tags_id` (`tags_id`),
  CONSTRAINT `documents2tags_ibfk_1` FOREIGN KEY (`documents_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `documents2tags_ibfk_2` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `crop` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `images` (`id`, `users_id`, `file`, `title`, `subtitle`, `crop`, `created`, `changed`) VALUES
(1,	1,	'OXIT-logo.png',	'OXIT',	NULL,	0,	'2022-03-16 16:01:57',	'2022-04-22 10:33:30'),
(2,	2,	'Snimek-obrazovky.png',	'Snimek-obrazovky.png',	NULL,	0,	'2023-11-10 17:02:12',	'2023-11-10 16:02:12'),
(3,	1,	'heart.svg',	'heart.svg',	NULL,	0,	'2024-10-09 13:19:30',	'2024-10-09 11:19:30'),
(4,	1,	'heart.png',	'heart.png',	NULL,	0,	'2024-10-09 13:31:59',	'2024-10-09 11:31:59'),
(5,	1,	'heart-tree.jpeg',	'heart-tree.jpeg',	NULL,	0,	'2024-10-09 17:19:12',	'2024-10-09 15:19:52'),
(6,	1,	'Aureola.jpeg',	'Aureola.jpeg',	NULL,	0,	'2024-10-09 17:39:03',	'2024-10-09 15:39:05'),
(7,	1,	'Imago.png',	'Imago.png',	NULL,	0,	'2024-10-09 17:42:59',	'2024-10-09 15:43:01'),
(8,	1,	'heart-tree-2.jpeg',	'heart-tree-2.jpeg',	NULL,	0,	'2024-10-15 06:21:11',	'2024-10-15 04:21:11'),
(9,	1,	'heart.png',	'heart.png',	NULL,	0,	'2024-10-15 17:22:02',	'2024-10-15 15:22:06'),
(10,	1,	'heart-2.png',	'heart-2.png',	'true',	0,	'2024-10-15 17:22:41',	'2024-10-15 15:23:16'),
(11,	1,	'okonew2.jpeg',	'okonew2.jpeg',	NULL,	0,	'2024-10-17 07:01:02',	'2024-10-17 05:01:02'),
(12,	1,	'seminko.jpeg',	'seminko.jpeg',	NULL,	0,	'2024-10-17 13:31:04',	'2024-10-17 11:31:04'),
(13,	1,	'seminko2.jpeg',	'seminko2.jpeg',	NULL,	0,	'2024-10-17 13:33:17',	'2024-10-17 11:33:17'),
(14,	1,	'okonew3.jpeg',	'okonew3.jpeg',	NULL,	0,	'2024-10-17 15:04:47',	'2024-10-17 13:04:47'),
(15,	1,	'okonew4.jpeg',	'okonew4.jpeg',	NULL,	0,	'2024-10-17 15:10:14',	'2024-10-17 13:10:14'),
(16,	1,	'digi.jpeg',	'digi.jpeg',	NULL,	0,	'2024-10-22 05:41:23',	'2024-10-22 03:41:30'),
(17,	1,	'digi2.jpeg',	'digi2.jpeg',	NULL,	0,	'2024-10-22 05:47:13',	'2024-10-22 03:47:18'),
(18,	1,	'digi3.jpeg',	'digi3.jpeg',	NULL,	0,	'2024-10-22 05:48:35',	'2024-10-22 03:48:35');

DROP TABLE IF EXISTS `images2tags`;
CREATE TABLE `images2tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `images_id` (`images_id`),
  KEY `tags_id` (`tags_id`),
  CONSTRAINT `images2tags_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `images2tags_ibfk_2` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `log_article_display`;
CREATE TABLE `log_article_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articles_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `display_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `year` (`date`),
  KEY `articles_id` (`articles_id`),
  CONSTRAINT `log_article_display_ibfk_3` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `log_exports`;
CREATE TABLE `log_exports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataMethod` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `dumpMethod` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `log_exports_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `log_sent_email`;
CREATE TABLE `log_sent_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `recipients` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `log_sent_email_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `log_users_login`;
CREATE TABLE `log_users_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `remote_ip` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `remote_host` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `log_users_login_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `log_users_login` (`id`, `users_id`, `remote_ip`, `remote_host`, `timestamp`) VALUES
(1,	1,	'::1',	'',	'2024-10-08 18:58:18'),
(2,	1,	'::1',	'',	'2024-10-09 15:09:13'),
(3,	1,	'::1',	'',	'2024-10-14 13:26:42'),
(4,	1,	'::1',	'',	'2024-10-14 15:00:46'),
(5,	1,	'::1',	'',	'2024-10-18 12:10:57'),
(6,	1,	'::1',	'',	'2024-10-18 13:16:14'),
(7,	1,	'::1',	'',	'2024-10-19 13:49:48');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `file` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `checksum` char(32) COLLATE utf8_czech_ci NOT NULL,
  `executed` datetime NOT NULL,
  `ready` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_file` (`group`,`file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `migrations` (`id`, `group`, `file`, `checksum`, `executed`, `ready`) VALUES
(1,	'vendor',	'2022-11-01-114138-init.sql',	'7bb1d2c0905cd7b4c0ad073b6dc32b53',	'2024-10-08 18:55:58',	1),
(2,	'app',	'2022-11-01-114138-init.sql',	'd17ebb5e762b1b97821d211f7033380d',	'2024-10-08 18:55:59',	1),
(3,	'vendor',	'2022-2023-01-17-170000-article_category2articles.sql',	'7e4c15c9ee83fcdfd018446db61ee878',	'2024-10-08 18:55:59',	1),
(4,	'vendor',	'2023-03-20-140913-structure-anchor.sql',	'df0a36574c2d6220d3f35b91ae20ffce',	'2024-10-08 18:55:59',	1),
(5,	'vendor',	'2023-03-27-124927-structure-anchor.sql',	'13eb393446dda5cdb5c174fd8d0a06fb',	'2024-10-08 18:55:59',	1),
(6,	'vendor',	'2023-04-04-235959-mirror-structure.sql',	'87f50cd333a3d2882ab8d21758d60419',	'2024-10-08 18:55:59',	1),
(7,	'vendor',	'2023-11-09-112730-article-category.sql',	'a33e531e6901712fcdf34276d473658c',	'2024-10-08 18:56:00',	1),
(8,	'vendor',	'2024-04-30-154427-slideshow-code.sql',	'aea6da43c7229435cdabc9d69ff5caca',	'2024-10-08 18:56:00',	1),
(9,	'app',	'2024-09-11-165607-demo-data.sql',	'5471a524c1da96290db18e916114e29c',	'2024-10-08 18:56:00',	1),
(10,	'vendor',	'2024-09-17-111047-search-index.sql',	'3d245c4b40336f3c0e1af22f0ad2c626',	'2024-10-08 18:56:00',	1);

DROP TABLE IF EXISTS `mirror_structure_group`;
CREATE TABLE `mirror_structure_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


DROP TABLE IF EXISTS `mirror_structure_item`;
CREATE TABLE `mirror_structure_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mirror_structure_group_id` int(11) NOT NULL,
  `lang` varchar(2) COLLATE utf8_czech_ci NOT NULL,
  `structure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_structure_id` (`lang`,`structure_id`),
  UNIQUE KEY `mirror_structure_group_id_lang` (`mirror_structure_group_id`,`lang`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `mirror_structure_item_ibfk_1` FOREIGN KEY (`mirror_structure_group_id`) REFERENCES `mirror_structure_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mirror_structure_item_ibfk_2` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `articles_id` int(11) DEFAULT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_czech_ci,
  `images_id` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `images_id` (`images_id`),
  CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `partners` (`id`, `name`, `description`, `images_id`, `link`, `lang`, `active`, `order`, `created`, `changed`) VALUES
(1,	'OXIT s.r.o.',	NULL,	1,	NULL,	'cz',	1,	0,	'2022-04-22 12:33:03',	'2022-04-22 10:33:03');

DROP TABLE IF EXISTS `partner_category`;
CREATE TABLE `partner_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `partner_category` (`id`, `title`, `lang`, `active`, `order`) VALUES
(1,	'IT',	'cz',	1,	0);

DROP TABLE IF EXISTS `partner_category2partners`;
CREATE TABLE `partner_category2partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_category_id` int(11) NOT NULL,
  `partners_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `partner_category_id` (`partner_category_id`),
  KEY `partners_id` (`partners_id`),
  CONSTRAINT `partner_category2partners_ibfk_1` FOREIGN KEY (`partner_category_id`) REFERENCES `partner_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `partner_category2partners_ibfk_2` FOREIGN KEY (`partners_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `inherits_from` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`),
  KEY `id_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `roles` (`id`, `role`, `description`, `inherits_from`, `order`) VALUES
(1,	'guest',	'',	NULL,	1),
(2,	'registered',	'',	'guest',	5),
(3,	'editor',	'',	'registered',	10),
(4,	'admin',	'',	'editor',	15),
(5,	'superadmin',	'',	'admin',	100);

DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE `role_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
  `resource` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
  `privilege` varchar(50) COLLATE utf8mb4_czech_ci NOT NULL,
  `deny` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `privilege` (`privilege`),
  KEY `role` (`role`),
  CONSTRAINT `role_privileges_ibfk_5` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `search_index`;
CREATE TABLE `search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_czech_ci,
  `html_content` text COLLATE utf8mb4_czech_ci,
  `lang` varchar(10) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `update` int(11) NOT NULL DEFAULT '0',
  `priority` decimal(1,1) NOT NULL DEFAULT '0.0',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `slideshows`;
CREATE TABLE `slideshows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `interval` int(11) DEFAULT NULL,
  `pause` tinyint(4) DEFAULT NULL,
  `indicators` tinyint(4) DEFAULT NULL,
  `navigation` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `slideshows` (`id`, `lang`, `title`, `code`, `interval`, `pause`, `indicators`, `navigation`) VALUES
(3,	NULL,	'Domů',	'slideshow-3',	0,	0,	0,	0),
(4,	NULL,	NULL,	'slideshow-4',	NULL,	NULL,	NULL,	NULL),
(5,	NULL,	NULL,	'',	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `slideshows_slides`;
CREATE TABLE `slideshows_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshows_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `images_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `images_id` (`images_id`),
  KEY `slideshows_id` (`slideshows_id`),
  CONSTRAINT `slideshows_slides_ibfk_1` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE SET NULL,
  CONSTRAINT `slideshows_slides_ibfk_2` FOREIGN KEY (`slideshows_id`) REFERENCES `slideshows` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `slideshows_slides` (`id`, `slideshows_id`, `title`, `subtitle`, `link`, `images_id`, `order`, `created`, `changed`) VALUES
(1,	5,	NULL,	NULL,	NULL,	5,	0,	'2024-10-09 17:22:02',	'2024-10-09 15:22:08');

DROP TABLE IF EXISTS `structure`;
CREATE TABLE `structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `images_id` int(11) DEFAULT NULL,
  `link_type` varchar(20) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `link_append` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `presenter` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_czech_ci,
  `redirect` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `show_submenu` int(1) NOT NULL DEFAULT '0',
  `show_subordinate` int(1) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `branch` (`branch`),
  KEY `images_id` (`images_id`),
  CONSTRAINT `structure_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `structure_branches` (`id`),
  CONSTRAINT `structure_ibfk_2` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `structure` (`id`, `branch`, `parent`, `name`, `images_id`, `link_type`, `link`, `link_append`, `presenter`, `action`, `params`, `redirect`, `content`, `show_submenu`, `show_subordinate`, `seo_title`, `seo_description`, `seo_keywords`, `active`, `order`, `created`, `changed`) VALUES
(2,	1,	0,	'O nás',	NULL,	'local_link',	'/o-nas.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	0,	'2024-10-02 14:39:09',	'2024-10-02 10:40:10'),
(3,	1,	0,	'Služby',	NULL,	'local_link',	'/sluzby.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	2,	'2024-10-02 14:41:58',	'2024-10-14 13:29:19'),
(4,	1,	0,	'Přístroje',	NULL,	'local_link',	'/pristroje.html',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	NULL,	1,	1,	'2024-10-02 14:42:25',	'2024-10-14 13:28:14'),
(5,	1,	0,	'Péče a krása',	NULL,	'local_link',	'/pece-a-krasa.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	4,	'2024-10-02 14:44:05',	'2024-10-14 13:30:06'),
(6,	1,	0,	'Výživové doplňky',	NULL,	'local_link',	'/vyzivove-doplnky.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	3,	'2024-10-02 14:44:26',	'2024-10-14 13:29:31'),
(7,	1,	0,	'Kontakty',	NULL,	'local_link',	'/kontakty.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	6,	'2024-10-02 14:45:05',	'2024-10-14 13:30:18'),
(19,	2,	0,	'Homepage',	NULL,	'presenter',	'',	'',	'Homepage',	'default',	'',	'',	'',	0,	0,	'',	'',	'',	1,	0,	'2024-10-08 21:16:19',	'2024-10-08 19:16:19'),
(20,	1,	0,	'Ceník',	NULL,	'local_link',	'/cenik.html',	'',	NULL,	NULL,	'',	'',	'',	0,	0,	'',	'',	'',	1,	5,	'2024-10-10 08:59:30',	'2024-10-14 13:30:18');

DROP TABLE IF EXISTS `structure2structure`;
CREATE TABLE `structure2structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structure_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `structure_id` (`structure_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `structure2structure_ibfk_1` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `structure2structure_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `structure` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `structure_branches`;
CREATE TABLE `structure_branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `shortcut` varchar(30) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci NOT NULL,
  `public` int(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `structure_branches` (`id`, `name`, `shortcut`, `lang`, `public`, `order`, `active`) VALUES
(1,	'Hlavní menu',	'main-menu',	'cz',	1,	0,	1),
(2,	'Nezařazené',	'misc',	'cz',	1,	0,	1),
(3,	'Main menu EN',	'main-menu',	'en',	1,	0,	1),
(4,	'Misc',	'misc',	'en',	1,	0,	1);

DROP TABLE IF EXISTS `structure_components`;
CREATE TABLE `structure_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structure_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `create_parameters` text COLLATE utf8mb4_czech_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `structure_components_ibfk_2` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `structure_components` (`id`, `structure_id`, `name`, `title`, `create_parameters`, `active`, `order`, `created`, `changed`) VALUES
(12,	2,	'article',	'O nás',	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:4;}',	1,	0,	'2024-10-09 13:10:52',	'2024-10-09 11:11:21'),
(16,	3,	'article',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:6;}',	1,	0,	'2024-10-09 17:26:36',	'2024-10-09 15:26:36'),
(21,	19,	'articleImageRight',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:11;}',	1,	0,	'2024-10-15 06:01:58',	'2024-10-15 04:01:58'),
(22,	5,	'article',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:12;}',	1,	0,	'2024-10-17 06:59:03',	'2024-10-17 04:59:03'),
(23,	7,	'article',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:13;}',	1,	0,	'2024-10-17 09:17:42',	'2024-10-17 07:17:42'),
(25,	6,	'article',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:15;}',	1,	0,	'2024-10-17 15:17:22',	'2024-10-17 13:17:22'),
(26,	20,	'article',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:16;}',	1,	0,	'2024-10-17 15:54:49',	'2024-10-17 13:54:49'),
(27,	6,	'articlePlayground',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:17;}',	1,	0,	'2024-10-18 15:59:53',	'2024-10-18 13:59:53'),
(28,	4,	'articleSortiment',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:18;}',	1,	1,	'2024-10-19 18:10:51',	'2024-10-22 03:32:18'),
(29,	4,	'articleSortiment',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:19;}',	1,	2,	'2024-10-22 05:24:06',	'2024-10-22 03:32:18'),
(30,	4,	'article',	'nadpis',	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:20;}',	1,	0,	'2024-10-22 05:31:20',	'2024-10-22 03:46:49'),
(31,	4,	'articleSortiment',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:21;}',	1,	3,	'2024-10-22 05:39:23',	'2024-10-22 03:42:40'),
(32,	4,	'articleSortiment',	NULL,	'a:2:{s:4:\"lang\";s:2:\"cz\";s:10:\"articlesId\";i:22;}',	1,	4,	'2024-10-22 05:49:47',	'2024-10-22 03:51:00');

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `tags` (`id`, `tag`, `lang`) VALUES
(1,	'štítek1',	NULL),
(2,	'štítek2',	NULL);

DROP TABLE IF EXISTS `text_snippets`;
CREATE TABLE `text_snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_czech_ci NOT NULL,
  `lang` char(2) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_czech_ci,
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_lang` (`code`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `text_snippets` (`id`, `code`, `lang`, `content`, `created`, `changed`) VALUES
(1,	'contactAddress',	'cz',	'',	'2017-10-30 17:01:49',	'2020-08-18 15:51:25'),
(2,	'siteDescription',	'cz',	'',	'2018-03-16 11:52:36',	'2018-03-16 10:52:36'),
(3,	'siteKeywords',	'cz',	'',	'2018-03-16 11:52:36',	'2018-03-16 10:52:36'),
(4,	'siteTitle',	'cz',	'Demo web OXIT',	'2018-03-16 11:52:36',	'2018-10-04 08:57:56'),
(5,	'webTitle',	'cz',	'Demo web OXIT',	'2018-10-04 10:58:57',	'2018-10-04 08:59:07'),
(6,	'siteDescription',	'en',	'',	'2018-10-04 11:01:02',	'2018-10-04 09:01:02'),
(7,	'siteKeywords',	'en',	'',	'2018-10-04 11:01:02',	'2018-10-04 09:01:02'),
(8,	'siteTitle',	'en',	'',	'2018-10-04 11:01:02',	'2018-10-04 09:01:02'),
(9,	'webTitle',	'en',	'',	'2018-10-04 11:01:02',	'2018-10-04 09:01:02'),
(10,	'contactAddress',	'en',	'',	'2018-10-04 11:01:02',	'2018-10-04 09:01:02'),
(15,	'siteDescription',	'de',	NULL,	'2023-03-21 11:01:34',	'2023-03-21 10:01:34'),
(16,	'siteKeywords',	'de',	NULL,	'2023-03-21 11:01:34',	'2023-03-21 10:01:34'),
(17,	'siteTitle',	'de',	NULL,	'2023-03-21 11:01:34',	'2023-03-21 10:01:34'),
(22,	'webTitle',	'de',	NULL,	'2023-03-21 11:01:34',	'2023-03-21 10:01:34'),
(23,	'cookieMainText',	'cz',	'<h4>Vážíme si vašeho soukromí</h4>\n<p>My a naši digitální partneři používáme na této webové stránce soubory cookies. Některé z nich jsou k fungování stránky nezbytné, ale o těch následujících můžete rozhodnout sami.</p>',	NULL,	'2023-06-06 09:22:34'),
(24,	'analyticsCookiesText',	'cz',	'Tyto cookies se používají k měření a analýze návštěvnosti našich webových stránek (množství návštěvníků, zobrazené stránky, průměrná doba prohlížení atd.). Souhlasem nám umožníte získat data o tom, jak naše stránky užíváte.',	NULL,	'2023-06-06 09:22:34'),
(25,	'necessaryCookiesText',	'cz',	'Jedná se o nezbytné cookies, bez kterých by nebylo možné stránky reálně provozovat. Zahrnují  např. cookies pro ukládání zvolených nastavení či zapamatování přihlášení.',	NULL,	'2023-06-06 09:22:34'),
(26,	'advertisementCookiesText',	'cz',	'Používají se pro účely reklam zobrazovaných na webových stránkách třetích stran, včetně sociálních sítí a kontextové reklamy. Jsou přizpůsobeny vašim preferencím a pomáhají nám měřit účinnost našich reklamních kampaní. Pokud je deaktivujete, bude se vám při procházení internetu i nadále zobrazovat reklama, ale nebude vám přizpůsobená na míru a bude pro vás méně relevantní.',	NULL,	'2023-06-06 09:22:34'),
(27,	'cookieMainText',	'en',	'<h4>We value your privacy</h4>\n<p>We and our digital partners use cookies on this website. Some of them are necessary for the&nbsp;functionality&nbsp;of the website, but you can decide on the following cookies yourself.</p>',	NULL,	'2023-06-06 09:22:34'),
(28,	'necessaryCookiesText',	'en',	'It would not be possible to operate the website without these cookies. They include, for example, cookies for storing selected settings or remembering logins.',	NULL,	'2023-06-06 09:22:34'),
(29,	'analyticsCookiesText',	'en',	'These cookies are used to measure and analyze traffic to our website (number of visitors, pages viewed, average browsing time, etc.). By consent, you will allow us to obtain data on how you use our site.',	NULL,	'2023-06-06 09:22:34'),
(30,	'advertisementCookiesText',	'en',	'They are used for the purposes of advertisements displayed on third-party websites, including social networks and contextual advertising. They are tailored to your preferences and help us measure the effectiveness of our advertising campaigns. If you disable them, your ad will continue to show as you browse, but it will not be tailored to you and will be less relevant to you.',	NULL,	'2023-06-06 09:22:34'),
(31,	'cookieMainText',	'de',	'<h4>Verwendung von Cookies</h4><br><p>Wir und unsere digitalen Partner verwenden Cookies auf dieser Website. Einige von ihnen sind für die Funktionalität der Website notwendig, aber Sie können selbst über die folgenden Cookies entscheiden.</p>',	NULL,	'2023-06-06 09:22:34'),
(32,	'necessaryCookiesText',	'de',	'Ohne diese Cookies wäre der Betrieb der Website nicht möglich. Dazu gehören z. B. Cookies zum Speichern ausgewählter Einstellungen oder zum Merken von Logins.',	NULL,	'2023-06-06 09:22:34'),
(33,	'analyticsCookiesText',	'de',	'Diese Cookies werden verwendet, um den Verkehr auf unserer Website zu messen und zu analysieren (Anzahl der Besucher, betrachtete Seiten, durchschnittliche Verweildauer usw.). Mit Ihrer Zustimmung erlauben Sie uns, Daten darüber zu erhalten, wie Sie unsere Website nutzen.',	NULL,	'2023-06-06 09:22:34'),
(34,	'advertisementCookiesText',	'de',	'Sie werden für die Zwecke der Werbung auf Websites Dritter, einschließlich sozialer Netzwerke und kontextbezogener Werbung, verwendet. Sie sind auf Ihre Präferenzen zugeschnitten und helfen uns, die Wirksamkeit unserer Werbekampagnen zu messen. Wenn Sie sie deaktivieren, wird Ihre Werbung weiterhin angezeigt, wenn Sie surfen, aber sie ist nicht auf Sie zugeschnitten und weniger relevant für Sie.',	NULL,	'2023-06-06 09:22:34'),
(35,	'footerContact',	'cz',	NULL,	'2024-10-08 19:07:07',	'2024-10-08 17:07:07');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `initials` varchar(4) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `activation_hash` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `activation_timestamp` datetime DEFAULT NULL,
  `reset_password_hash` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `reset_password_timestamp` datetime DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `users` (`id`, `username`, `password`, `name`, `surname`, `initials`, `active`, `activation_hash`, `activation_timestamp`, `reset_password_hash`, `reset_password_timestamp`, `registration_date`) VALUES
(1,	'admin@oxit.cz',	'$2y$10$cSzS0a2MhPbjxFuslXWFp.e7wXpPXCGX09YRiZrS8/3u6/ECyrmCe',	'Admin',	'OXIT',	'',	1,	'',	NULL,	'',	'2015-08-07 15:32:32',	NULL),
(2,	'libor.neumann@oxit.cz',	'$2y$10$7mHEgIggl3jf4qZRG/GlnOzjH18GPJZYgu7vRkHvPqWihsCG5H5d6',	'Libor',	'Neumann',	'',	1,	'',	NULL,	'',	'2017-01-24 17:02:59',	NULL);

DROP TABLE IF EXISTS `users_data`;
CREATE TABLE `users_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `author` int(1) NOT NULL DEFAULT '0',
  `title_before` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `title_after` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `cellphone` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `building_identification_number` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `company_registration` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `mailing_consent` int(1) NOT NULL DEFAULT '0',
  `default_page_admin` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `users_data_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_data_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;


DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `users_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`users_id`,`roles_id`),
  KEY `IDX_2DE8C6A3A76ED395` (`users_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`roles_id`),
  CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `users_roles` (`users_id`, `roles_id`) VALUES
(1,	5),
(2,	5);

DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `embed` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `ratio` varchar(100) COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

INSERT INTO `videos` (`id`, `users_id`, `title`, `file`, `embed`, `ratio`, `created`, `changed`) VALUES
(1,	2,	'Stream',	NULL,	'https://vimeo.com/event/4011004/embed',	'16:9',	'2024-01-15 17:28:46',	'2024-01-15 16:28:46');

-- 2024-10-22 07:02:01
