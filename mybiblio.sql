-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 30 jan. 2020 à 16:00
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mybiblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `empreteurs`
--

CREATE TABLE `empreteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num_em` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_em` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naiss` date NOT NULL,
  `Adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `empreteurs`
--

INSERT INTO `empreteurs` (`id`, `num_em`, `email`, `nom_em`, `slug`, `date_naiss`, `Adresse`, `created_at`, `updated_at`) VALUES
(1, '466', 'bandjeyvesroland@gmail.com', 'Bandje Yves Roland', 'Bandje-yves-Roland', '2019-08-01', 'Abidjan Cocody Angré', NULL, NULL),
(2, '175', 'ayefouney@gmail.com', 'Ayefouney Yves Roland', 'Ayefouney-yves-Roland', '2019-08-01', 'Abidjan Cocody Mahou', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `empreteur_livres`
--

CREATE TABLE `empreteur_livres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empreteurs_id` int(10) UNSIGNED NOT NULL,
  `livres_id` int(10) UNSIGNED NOT NULL,
  `date_emprunt` datetime NOT NULL,
  `date_depot` datetime NOT NULL,
  `date_depot_effectifs` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `empreteur_livres`
--

INSERT INTO `empreteur_livres` (`id`, `empreteurs_id`, `livres_id`, `date_emprunt`, `date_depot`, `date_depot_effectifs`, `created_at`, `updated_at`) VALUES
(1, 1, 13, '2019-11-04 14:22:49', '2019-11-04 14:22:49', '2019-11-04 14:22:49', NULL, NULL),
(2, 2, 4, '2019-11-04 14:22:49', '2019-11-04 14:22:49', '2019-11-04 14:22:49', NULL, NULL),
(3, 2, 6, '2019-11-04 14:22:49', '2019-11-04 14:22:49', '2019-11-04 14:22:49', NULL, NULL),
(4, 2, 16, '2019-08-01 14:29:39', '2019-08-15 14:29:39', NULL, '2019-08-01 12:29:39', '2019-08-01 12:29:39'),
(5, 2, 16, '2019-08-01 14:32:02', '2019-08-15 14:32:02', NULL, '2019-08-01 12:32:02', '2019-08-01 12:32:02'),
(6, 2, 16, '2019-08-01 14:33:33', '2019-08-15 14:33:33', NULL, '2019-08-01 12:33:33', '2019-08-01 12:33:33');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num_liv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_liv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nbr_exmplaire` int(11) NOT NULL,
  `nbr_fois_emprunter` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `num_liv`, `titre_liv`, `slug`, `auteur`, `editeur`, `image`, `nbr_exmplaire`, `nbr_fois_emprunter`, `description`, `created_at`, `updated_at`) VALUES
(1, '461', 'Cultures scientifiques', 'cultures-scientifiques', 'Koffi Guy', 'Eco Sciences', 'culture_science.jpg', 23, 7, 'Itaque nam vel porro cum aspernatur nemo illum. Officia incidunt non reiciendis eum ut. Est et necessitatibus voluptatibus id consequatur consequatur quod. Quis dolores enim repudiandae ad veniam a.\n\nEt corporis facilis perspiciatis mollitia quod sed enim laudantium. Minima ullam ut officiis vitae assumenda ex omnis. Ut quasi enim nihil deserunt. Nisi atque dolor et necessitatibus ea maiores natus.\n\nItaque eligendi veniam ratione aliquam doloribus magni. Repellendus occaecati et aut dolorum odit. Velit adipisci ea rerum.\n\nTempore eius iure tenetur eos omnis ullam odio. Error enim sed explicabo aut repellendus aut aut fugiat. Iste soluta pariatur atque.\n\nOfficiis porro enim accusantium omnis aperiam enim officia. Voluptatibus molestiae nihil maiores veniam delectus et. Odio tenetur quos tenetur repellendus.\n\nAliquam pariatur delectus odio. Quis non suscipit eos aut cupiditate quo accusantium ipsa.\n\nQui delectus et aut voluptatem. Commodi culpa rerum qui totam. Fugit eligendi iure voluptatum rem. Blanditiis nemo itaque assumenda.\n\nNulla sed ad ut quia. Necessitatibus dolores a qui vero sint. Corrupti necessitatibus deleniti accusantium et velit harum. In voluptatem incidunt repellat eveniet.\n\nPlaceat suscipit dolores voluptatum voluptatem et eveniet. Saepe nulla voluptas tempora vel alias et. Voluptas exercitationem consequatur quos expedita libero eos.\n\nTenetur omnis consequatur veniam. Nihil vero aperiam ipsum repellat aut modi aliquid ipsa. Repellat molestias eius possimus tempora dolor reiciendis doloribus.\n\nVoluptates aspernatur sunt veniam exercitationem dolor itaque. Soluta odit architecto consequatur earum est nam. Deleniti ad est et sint consequatur non. Dolorem qui dolorem recusandae ratione totam ea excepturi.\n\nEt vel eaque labore quibusdam eos similique. Sed minima doloribus consequatur aut. Dolorem repellendus ea non ut. Consequatur hic fugit eveniet nostrum quis accusantium eius veritatis. Facere temporibus minima cumque.\n\nQuis temporibus molestiae delectus aperiam nobis minus necessitatibus. Eius ab molestiae repellat rerum adipisci aut. Nam quis esse asperiores asperiores.\n\nIusto ratione et a neque alias itaque ut repudiandae. Sit qui sequi deserunt. Praesentium et voluptatem facere nostrum deserunt est.\n\nA mollitia voluptatem quidem aut. Modi vero maxime animi minus autem ut. Dolor placeat repellat soluta repudiandae.', NULL, NULL),
(2, '208', 'Mais qui a attrapé le bison de Higgs', 'mais-qui-a-attrape-le-bison-de-higgs', 'Koffi Guy', 'Flammarion', 'higgs.png', 12, 2, 'Qui aut sit nihil pariatur minus. Perferendis totam recusandae quo et commodi iusto perferendis. Ut praesentium unde dicta aspernatur harum nobis odio labore. Natus deserunt harum vero eveniet natus fugiat.\n\nSuscipit eligendi distinctio sint minus eaque. Fugit quod dolor corporis labore voluptatem molestiae eum. Perspiciatis ex consequatur esse expedita quisquam. Sint placeat ducimus libero unde. Consectetur neque praesentium nisi.\n\nEsse perferendis quasi quidem dolores quia consequatur et mollitia. Et qui magni libero vero facilis officiis. Nihil eveniet sunt ab velit aut esse. Ratione deserunt nulla laborum quia ut et.\n\nSit esse qui dolorum et earum. Perferendis praesentium quia qui et facere. Delectus veniam dignissimos voluptas laboriosam voluptate.\n\nAperiam et earum dolor delectus ratione. Sed exercitationem est facere et veniam necessitatibus dolore. Qui quis ab mollitia ut nihil facilis consectetur quia.\n\nLibero et totam et. Et inventore in maiores delectus quis iure et. In sequi at id perspiciatis et vitae. Sequi possimus similique vitae velit dolorum et ut saepe.\n\nIure quia cumque perspiciatis adipisci minima debitis aut. Aut dignissimos quisquam quam debitis sunt cum. Sequi possimus ad vitae aut. Harum ipsam consequuntur iste totam sequi.\n\nConsequuntur aut ut praesentium nisi. Corporis mollitia facilis pariatur. Exercitationem est minus exercitationem amet quisquam rem illum. Nam asperiores at aut voluptatem eveniet voluptas nihil.\n\nEt facere assumenda et a. Neque possimus suscipit quas modi voluptate doloremque possimus. Voluptas est voluptates non voluptatem.\n\nAtque et repellat facilis fuga eligendi. Quo ea sit dolorum sit sit praesentium sint. Illum eaque ipsam laudantium numquam nisi.', NULL, NULL),
(3, '428', 'Python, les fondamentaux du langages', 'python-les-fondamentaux-du-langages', 'Bandje Rves Roland', 'Windows Xp', 'higgs.png', 17, 6, 'Ipsa et error et. Eos perspiciatis dolorem tempora enim facilis. A architecto nobis et dignissimos labore.\n\nCorrupti repellendus eum id aut hic sed et. Quo vitae ipsam facilis. Quo id sequi distinctio tempora.\n\nAperiam ipsum aut est. Accusantium autem quo aut voluptatem quasi. Fuga vitae ut consectetur id nihil. Perspiciatis nulla quos quis quos minus.\n\nReiciendis molestiae eos ipsam placeat repellat. Cum fuga doloremque corporis explicabo perferendis aut. Ut excepturi ullam delectus nulla aperiam.\n\nAnimi porro a alias fugit blanditiis exercitationem. Ut id fugiat doloremque quo enim ducimus. Reiciendis quis adipisci id aut numquam maiores quia.\n\nEst nihil reprehenderit hic impedit maxime mollitia illo. Distinctio illum iure earum eos repudiandae delectus qui sequi. Autem tempore nisi ut libero corrupti dignissimos. Ullam similique voluptatum ex consequatur saepe.\n\nBeatae quo quia magnam qui et impedit esse. Aliquam enim inventore nihil esse et repudiandae. Et porro possimus dolore ut est deleniti aut.\n\nQuia tempore quisquam provident est doloribus. Voluptatibus aut architecto illo repudiandae in praesentium velit. Cumque vel repellendus itaque.\n\nExpedita cupiditate in sequi eveniet delectus enim fugit. Quaerat velit cum temporibus in quas qui quisquam expedita. Quia vel consequatur non asperiores eum tempora porro dignissimos.\n\nPlaceat repellendus explicabo quo modi temporibus dicta. Ad vitae ut et iusto quis ut animi voluptatem.\n\nRerum alias velit temporibus et consequatur libero. Deleniti laboriosam est occaecati eligendi in necessitatibus. Sed earum tempora ad ipsum.', NULL, NULL),
(4, '418', 'Réseaux informatiques', 'python-les-fondamentaux-du-langages', 'Batoua Jean-Fernand', 'Ressources informatiques', 'resaux_info.jpg', 19, 6, 'Laudantium commodi illo dolore. Eum sapiente et ratione quas.\n\nAutem quis molestias magni similique. Aliquid nisi non deserunt tempora dignissimos expedita corporis. Est nam quia autem natus. Et nesciunt consequatur itaque rem voluptatem.\n\nDolores sunt sed officia ad eligendi est. Ea ratione commodi quis. Voluptas earum hic totam ut. Voluptatem cupiditate a commodi quae exercitationem qui ut.\n\nSapiente iusto dolores voluptatibus laudantium. Repudiandae omnis cupiditate sit tenetur voluptatem. Mollitia aut omnis est iusto corrupti et. Ut eaque odit dolor ut.\n\nImpedit alias maxime in saepe voluptates ut autem. Nisi voluptate consequatur sequi voluptatibus iste. Et qui sed autem voluptatibus optio et dolorem.\n\nSed tempore quas cum vero debitis. Ad enim exercitationem enim ut eos.\n\nVoluptate et sit earum sed rerum et. Nostrum deleniti voluptatem suscipit sed minus et omnis. Est corrupti aliquam quae error enim laudantium. Odio nulla consequuntur modi ut. Ipsum nihil quam quia culpa qui ratione.\n\nEst maiores dolorem dicta quod. Porro laborum dolore tenetur cupiditate quos et commodi id. Sint id ducimus assumenda tempora odit. Veniam dignissimos similique molestias ea sed laudantium.\n\nVoluptas voluptate iste suscipit sunt maxime harum rerum. Optio amet blanditiis blanditiis rerum ducimus in suscipit. Qui quas fugit velit quis.\n\nAssumenda quasi ipsum quia doloremque. Dolor qui aspernatur saepe laborum. Eos porro et vitae enim et tempore. Quo dolorem sit et sequi maxime mollitia dolor.\n\nIpsum aut pariatur qui atque et dolorem tempore. In eveniet quod dolores nobis. Nihil laboriosam repellendus impedit explicabo quo minima. Nihil nihil esse sint corrupti sit nobis occaecati.\n\nNulla molestias nobis corrupti eum enim aut est. Ea debitis natus dolor. Et aliquam veritatis alias aperiam quia. Et illo quia reprehenderit dicta ullam.\n\nIn culpa pariatur voluptas ab rerum. Dignissimos necessitatibus saepe necessitatibus distinctio ipsa sint sit.\n\nOmnis sunt voluptatem dicta minima. Perspiciatis laboriosam sequi ut sit qui quia ullam repellendus. Quaerat explicabo aut ut illo voluptatem optio. Placeat non harum et quia tenetur quis nihil.', NULL, NULL),
(5, '256', 'Oracle 11g', 'oracle-11g', 'Zombra Ibrahim', 'Ressources informatiques', 'oracle11.jpg', 20, 7, 'Dolorem nesciunt dolores a suscipit cupiditate. Rerum odit nihil quia. Et omnis id repellat fugit sed autem a. Dolorem voluptate est numquam ut nemo eligendi.\n\nDolores ipsa molestiae iure asperiores est consequuntur laudantium. Reiciendis et deserunt ipsa id recusandae dignissimos. Ab perspiciatis deleniti fugiat consequatur quis quia.\n\nAtque suscipit veritatis omnis maiores. Est facere recusandae necessitatibus blanditiis eaque eveniet. Aut laborum dolores quia id itaque commodi odit. Consequuntur repellat odio rerum voluptas error omnis neque.\n\nEum aut quo porro possimus officiis eum adipisci distinctio. Totam harum quia quo. Et accusamus tempore libero.\n\nAt est sed molestias corrupti voluptatum sequi architecto. Officiis illum ullam aut facere commodi quam et. Itaque id aliquid atque fuga sint ut nam. Repellendus expedita similique non explicabo sit reprehenderit ut.\n\nEaque ullam ipsa iure possimus facere dicta. Explicabo dolore incidunt quo nesciunt. Eos enim nostrum sit.\n\nPerferendis sint exercitationem natus sint. Itaque placeat alias ducimus repellat laborum voluptates exercitationem voluptatum. Nisi nam voluptas est et. Dolorum cumque nisi velit est qui excepturi.\n\nReiciendis odit dolor amet neque ea. Aut quis dicta placeat velit nam molestiae beatae. Eos mollitia repudiandae natus quae.\n\nConsequatur sit qui voluptas ea dicta. Nostrum suscipit voluptates quas aperiam ullam. Quisquam dicta quibusdam rerum qui.\n\nConsequatur hic ullam consectetur assumenda id velit. Iure dolorem debitis repellat aut consectetur. Eaque ea assumenda similique dolore iste minima fugit. Sint voluptas possimus incidunt minima ut et.\n\nIn accusamus ex porro doloribus eos. Asperiores reprehenderit quisquam consequuntur dolores non aspernatur. Suscipit ab et saepe. Consequatur soluta nam doloremque sed vitae.', NULL, NULL),
(6, '261', 'Cultures scientifiques', 'cultures-scientifiques', 'Koffi Guy', 'Eco Sciences', 'culture_science.jpg', 12, 4, 'Sed modi tempora porro. Molestiae pariatur eos tempore sunt impedit sit distinctio vero. Perspiciatis quibusdam officiis perferendis sit sunt et.\n\nNon ut excepturi sint aut vero et ut. Deleniti omnis nulla suscipit quo. Neque inventore aut nihil nostrum.\n\nNobis dolores molestias ut aliquid illum maxime nobis ut. Consequuntur accusantium quis inventore vel maiores sint et. Consequatur nulla repudiandae repellat consequuntur maxime qui dolore accusantium. Blanditiis quo pariatur molestiae non occaecati cum fugit.\n\nCorrupti quos perferendis qui quis dicta quia modi alias. Non et et expedita. Quas dolorem aut voluptatem enim itaque. Doloribus maiores quis dolor officia ab harum sapiente.\n\nQui exercitationem ducimus ducimus expedita minus et doloremque ducimus. Eius libero et vel natus debitis. Voluptate quia ut sunt occaecati omnis. Qui sequi accusantium iste dolor quos.\n\nUt sit ratione enim id adipisci quia molestias. Quam magnam optio tempora eius aliquam.\n\nOccaecati ducimus sed est quia eos. Laudantium hic quia laudantium at quidem natus soluta. Inventore incidunt in qui id et quia sed.\n\nSunt quae soluta officiis nostrum. Fuga quo natus repellendus incidunt sit voluptates mollitia. Vel fuga nemo eos laborum earum ut nostrum.\n\nEaque perferendis veritatis beatae minus. Vel similique praesentium est eius et voluptas sint. Est molestiae voluptatum ipsam omnis incidunt. Et illo reprehenderit et odio. Est repudiandae rerum aliquid sed.\n\nSuscipit dolorem consequatur aut nihil debitis laborum. Qui deleniti in et quis. Beatae libero est sapiente quidem.\n\nOmnis error vel cupiditate distinctio voluptatem ut vitae. Est et laborum qui repudiandae fugit quia. Quisquam ducimus nisi sunt aut ea dolorem. Aliquid adipisci et enim adipisci iusto distinctio quas.\n\nVoluptas voluptatem deserunt totam qui. Qui odio ut voluptatibus debitis odit. Ut autem animi dolorem eum laboriosam.\n\nNulla numquam neque saepe quasi et animi. Consequatur sunt earum est qui pariatur. Consequatur enim ex reprehenderit laudantium. Nam non voluptate ex porro voluptatibus.\n\nIncidunt excepturi voluptatem molestiae molestiae quae consequatur repudiandae. Officia rerum veniam qui nihil perferendis velit. Eos in optio quam iste non excepturi dolore.', NULL, NULL),
(7, '333', 'Mais qui a attrapé le bison de Higgs', 'mais-qui-a-attrape-le-bison-de-higgs', 'Koffi Guy', 'Flammarion', 'higgs.png', 7, 4, 'Modi et possimus ea doloribus. Libero voluptas recusandae corporis et nemo soluta. Est soluta alias ad.\n\nEt aspernatur aliquid laudantium quia. Quia nihil non consequatur. Dignissimos numquam vitae veritatis architecto quidem repudiandae aut fugiat.\n\nQuia quis labore eos asperiores dicta. Tenetur rerum sed ratione. Eaque est non cumque molestias blanditiis.\n\nQuis est repellendus odit non. Sapiente et distinctio eos et. Autem quibusdam nihil ut et.\n\nEveniet itaque temporibus animi qui dolor. Ab quidem exercitationem eius qui sit laborum. Rerum explicabo illum laborum temporibus ut itaque autem.\n\nEt voluptatem debitis dolorem incidunt perferendis. Nisi dignissimos numquam at veniam facilis odio deleniti rerum. Quisquam ad recusandae voluptatem fugit.\n\nUnde illum et consequatur eos et et quaerat. Aperiam nam dolores fugiat dignissimos sit.\n\nOfficia exercitationem amet aut non qui quasi. Cumque molestiae voluptate fugit ratione vitae. Et esse eligendi quas rerum. Et aut quod totam voluptas et ipsa occaecati.\n\nNemo ratione eveniet dolores consequatur non velit. Aliquam voluptatem eos est ut fuga quidem. Numquam veniam fuga omnis dolorem adipisci. Distinctio nihil veniam dolor.\n\nEos consequuntur enim minus quo fuga soluta. Reprehenderit nulla quod sequi iure. Est itaque ut facere nihil.\n\nFacilis ex libero dolorem et consectetur. Est officia quos aut odio vitae. Itaque assumenda numquam totam fuga ea distinctio qui. Esse velit ea sed eos quis nam.\n\nVeritatis enim nobis iusto aut vel quo. Rerum voluptatem accusantium rerum dolorem.\n\nOdit blanditiis ad error nesciunt fugiat aut ut. Earum debitis culpa et vel sit consectetur blanditiis velit. Voluptates incidunt fugit consectetur suscipit at excepturi et. Sint sit assumenda eveniet quasi magnam culpa omnis.\n\nQui recusandae repellat autem veritatis corporis nihil voluptas. Ab sunt repellendus laboriosam quia esse. Sequi magnam molestiae saepe dolor modi tenetur perspiciatis. Tempore et suscipit exercitationem.\n\nEa illum soluta qui suscipit aliquam et. Non et atque praesentium eius. Nesciunt qui rem facilis et. Pariatur ut quae aliquid ipsam explicabo sed.', NULL, NULL),
(8, '311', 'Python, les fondamentaux du langages', 'python-les-fondamentaux-du-langages', 'Bandje Rves Roland', 'Windows Xp', 'higgs.png', 23, 3, 'Sapiente modi velit consectetur maiores. Quis ea sed qui recusandae. Voluptatibus quaerat possimus laudantium.\n\nDolores mollitia quia odio dolor tempore voluptas dolor. Quos quo cumque natus occaecati odit. Aut nobis labore quia. Quis ipsam repudiandae corrupti ipsam optio laboriosam tempora.\n\nDoloribus quaerat illo ut. Esse voluptatibus praesentium quod exercitationem ut provident. Corporis sapiente natus error aut quam et.\n\nNihil id consectetur provident sed sunt et sapiente dolore. Iure itaque nulla quisquam officia optio praesentium. Eius consectetur id repellendus aut necessitatibus voluptatem suscipit dolorum. Ea odit ipsum et vero.\n\nSed dolorum quia sed ex. Unde autem molestiae cupiditate repellendus et. Perferendis et corporis excepturi id voluptatum assumenda vel. Et tempora voluptates inventore quaerat laudantium voluptatem repellat.\n\nEum labore praesentium est quod quo. Harum illum deserunt voluptatum id rerum. Nihil non vitae aut velit ex.\n\nEx non iure et tempora amet. Aut perspiciatis ullam sed. Optio accusantium libero voluptatum est ut quia voluptate quo. Nulla natus iste sed voluptatem.\n\nDolores est sunt et aut. In qui explicabo sequi labore. Ut voluptatem aut sed est nesciunt ut enim at. Voluptas sequi fugiat corrupti odit ipsam.\n\nEarum eligendi assumenda id voluptas quas. Mollitia dignissimos vero voluptatem sit dolor aut fugiat. Est fugit nulla omnis voluptas iste qui soluta mollitia.\n\nBlanditiis accusantium voluptatum velit neque autem et sunt. Qui et cumque repellat omnis autem suscipit et. Ex omnis nobis error quos sapiente.\n\nVeniam sed omnis recusandae quaerat voluptas tempora magni. Repudiandae accusantium ut iure at fugit expedita sit.', NULL, NULL),
(9, '296', 'Réseaux informatiques', 'python-les-fondamentaux-du-langages', 'Batoua Jean-Fernand', 'Ressources informatiques', 'resaux_info.jpg', 11, 4, 'Ut consequuntur velit aliquid perspiciatis et. Harum omnis omnis dolore voluptates nostrum tenetur voluptate. Facilis velit fuga fuga tempora aut quis ipsum.\n\nSapiente non assumenda natus dicta sapiente explicabo. Illum non aliquid sed et labore. Similique consequatur corporis quo vel fuga. Eum sequi id nihil temporibus ea earum.\n\nMollitia nesciunt cupiditate necessitatibus aut nihil similique officia. Aut reiciendis ratione et qui harum neque et. Est ut quaerat architecto quis illo blanditiis. Et quia voluptatem rem beatae.\n\nQuos omnis sint cumque sapiente. Sit odit harum enim. Omnis molestias dolores perspiciatis eum aliquid. Eveniet fugiat ratione quibusdam aliquam voluptates. Ipsum quia repellendus sapiente voluptatem amet.\n\nSed laborum ut minus rerum. Eos ut a suscipit placeat consequatur. Sint sit soluta architecto velit voluptatibus.\n\nLaudantium voluptates dolorem aut ut voluptas. Eveniet pariatur accusantium consequatur aut ex tenetur est. Animi et corporis eum laudantium ut. Modi reprehenderit ut minus voluptates expedita. Necessitatibus sint vitae eligendi mollitia.\n\nConsequatur aut omnis unde aperiam alias deserunt exercitationem. Dolor inventore est omnis. Veritatis consequuntur excepturi libero.\n\nAccusantium et numquam rem et quisquam inventore. Explicabo voluptatem et tempora voluptate atque est. Beatae incidunt corrupti qui voluptatibus ex. Et non omnis ut ipsum vitae sint cumque.\n\nOccaecati at at odit corrupti est. Dolores in delectus nostrum. Et velit accusamus voluptas animi. Omnis voluptas similique quae suscipit cumque. Natus esse quia temporibus in iusto.\n\nEt iste quia est architecto reiciendis voluptas. Ut corporis nulla doloribus sint dolor. In nesciunt eveniet excepturi et eum voluptatem fugiat. Iure cum aut id labore rerum quis non culpa.\n\nTotam id aut qui est nulla est. Iste fugit perferendis est reiciendis. Doloremque illum expedita minima inventore et.\n\nIllo omnis doloremque cupiditate. Et facilis ex sit aut reiciendis porro. In accusamus sit enim distinctio aut.\n\nVoluptatem illo repudiandae maxime sed placeat optio consequuntur. Consequatur ab inventore sapiente iure. Maiores autem corporis error minima debitis perferendis.\n\nEt consectetur voluptates aperiam aut corrupti. Aspernatur sequi sed autem laboriosam quam. Laboriosam ut sapiente consectetur aut est delectus. Vel velit eius rerum adipisci itaque assumenda.', NULL, NULL),
(10, '247', 'Oracle 11g', 'oracle-11g', 'Zombra Ibrahim', 'Ressources informatiques', 'oracle11.jpg', 17, 5, 'Maxime fugiat id iste iste ea. Beatae quia velit cum ut aspernatur. Id ex voluptatem voluptates tenetur dignissimos. Nesciunt ipsum consequatur ut maxime nobis culpa.\n\nInventore velit ut magnam ut ex et. Adipisci ea laborum id esse quae assumenda. Iste ex quidem alias sint ipsum delectus eligendi.\n\nMolestias qui consectetur asperiores velit. Voluptatem sed nemo tempora dolores. Sit nisi tempore nihil esse iure placeat impedit. Exercitationem consequatur consequatur id minus fuga sit.\n\nVel et qui et inventore culpa corporis illo autem. Voluptate deleniti eius officiis eum exercitationem minus assumenda. Enim modi et voluptatibus dolorem numquam aut tempore. Corporis expedita et autem eius asperiores et.\n\nPorro labore maiores aspernatur modi quia vero. Cupiditate sint perspiciatis facere veritatis mollitia eum tempora. Quis qui sunt maiores ea qui in at.\n\nSaepe sit est tempora saepe enim doloremque consequuntur. Facilis enim quaerat minima quibusdam. Cum quidem et occaecati omnis aut.\n\nNulla veniam nesciunt eaque incidunt quis repellat sint enim. Autem tempore qui aut provident. Exercitationem temporibus repellendus qui. Itaque et voluptatem ab et dignissimos eveniet.\n\nError sunt ad velit aspernatur et occaecati veniam ea. Sit ipsa quod libero voluptatem sapiente et maiores sint. Suscipit voluptatum sit tempora ut qui. Necessitatibus ullam minus sapiente aperiam sint fugit aut.\n\nSapiente voluptatem et voluptas quis nihil impedit. Numquam aliquam quos vitae in officia maiores recusandae tenetur. Qui inventore voluptas dolores dicta laudantium vitae. Officiis iure maxime odio dolorum amet qui doloribus. Voluptates eius dolores autem voluptatibus.\n\nPlaceat nam mollitia aspernatur minima voluptas cum autem eum. Nisi sunt impedit ea et cum autem. Laudantium fuga deleniti doloribus tempora ut in corporis. Provident autem sit quibusdam esse facere.', NULL, NULL),
(11, '158', 'Cultures scientifiques', 'cultures-scientifiques', 'Koffi Guy', 'Eco Sciences', 'culture_science.jpg', 10, 7, 'Id voluptas eveniet officia in expedita et quo. Ea fuga veritatis quis distinctio quod enim sed. Veritatis dolore quam at quidem quia nostrum tenetur. Sapiente itaque impedit eum suscipit molestiae.\n\nQuasi est eum vero quam illo mollitia. Commodi provident tempora omnis enim vitae. Voluptatem natus porro velit consequuntur enim est sint et. Vero aut quia velit tempore fugit dolores.\n\nPorro corporis eos sunt nam perferendis. Laboriosam et facilis et nostrum debitis. Eveniet dolorem deleniti molestiae praesentium architecto itaque. Aperiam consequuntur libero delectus incidunt dolor officiis.\n\nMollitia voluptatem ratione odit ducimus. Ut est necessitatibus tenetur. Incidunt et distinctio sit quae eveniet tempora. Quo distinctio minus consequuntur distinctio veritatis ea. Animi minima corporis non eligendi facere quidem esse.\n\nHarum aut cumque iste sint ut iusto nam itaque. Deserunt quas minima nesciunt non et laudantium et.\n\nNulla est aut ea. Nemo consequatur quibusdam porro quasi ab fugiat. Ut commodi ea quasi provident. At doloribus sapiente non officia in.\n\nUt earum vero consequuntur assumenda impedit. Aspernatur adipisci fugiat occaecati eum. Quia consectetur autem esse deleniti ut ut aliquid. Dolores ut aut rerum animi aut accusantium.\n\nVeniam quasi ea error optio pariatur repellat. Eveniet non ipsa dolorem unde dicta consectetur et. Sit id totam odit eum commodi.\n\nExplicabo culpa asperiores alias repellat consequatur. Repudiandae aut voluptatem aut. Magni suscipit debitis quo ab culpa et animi. Quibusdam illum et tempore tenetur.\n\nPariatur id consequatur sed deleniti dicta temporibus. Rerum vero aliquam quia voluptatem facere velit hic. Voluptatibus consectetur molestiae inventore occaecati tempora sed aut.\n\nModi non laborum placeat perspiciatis. Cumque praesentium dolorem consectetur enim et commodi quos.\n\nEaque ab molestiae assumenda odio earum. Est sequi non laudantium eveniet voluptatem soluta voluptate. Aliquam aliquam laudantium ut expedita voluptatem velit dolores rerum.\n\nExercitationem et quae necessitatibus quam dolor saepe consequuntur deserunt. Dignissimos iste explicabo aperiam laboriosam laborum. Exercitationem corporis labore quia consequatur fugiat tempora et quia.\n\nOmnis voluptas exercitationem voluptatem quo non eum aut. Sed et et similique. Id quam nemo vitae dicta occaecati doloremque aut.\n\nDolores qui sit est neque. Dolor aperiam quia voluptatem accusamus porro voluptate reprehenderit. Totam incidunt atque error quia iure itaque illum at.', NULL, NULL),
(12, '470', 'Mais qui a attrapé le bison de Higgs', 'mais-qui-a-attrape-le-bison-de-higgs', 'Koffi Guy', 'Flammarion', 'higgs.png', 7, 2, 'Quia doloremque ex voluptatem iure. Labore dignissimos odit sit libero porro harum.\n\nRatione enim nesciunt accusantium odit eos ratione sunt. Qui vel consectetur voluptatibus delectus voluptatem. Eligendi soluta aut sapiente expedita eveniet occaecati iste.\n\nMaxime vitae illum quae nostrum rerum blanditiis. Et consequatur molestiae quos non labore eveniet veritatis eius. Vitae eius ex et odit incidunt necessitatibus.\n\nNostrum magni quisquam quia. Quas molestiae et voluptatem est occaecati officiis molestiae. In officia excepturi qui assumenda incidunt molestiae dolorem. Et deserunt vitae quo.\n\nAut impedit qui dolores eum quibusdam aliquam. Earum consequatur consectetur illum amet est. Cupiditate iusto molestiae consequuntur rerum quo omnis.\n\nQuia hic quidem totam inventore et perferendis exercitationem. Esse necessitatibus qui illum sint. Accusamus molestias perferendis velit ex ut at excepturi. Nihil consectetur quo quibusdam repellat.\n\nVoluptatem fugiat inventore iusto reprehenderit et mollitia quia molestiae. Qui culpa voluptas ipsam fugit saepe ullam animi. Corporis omnis autem in aut occaecati soluta.\n\nRerum reiciendis aspernatur dicta qui. Perferendis molestiae suscipit saepe cumque magni at rerum. Et eos iste quae excepturi et ex doloremque.\n\nDolore mollitia totam aut aut non facere magnam ducimus. Ut tenetur cupiditate quibusdam sunt aliquam perspiciatis sed delectus.\n\nPerspiciatis harum suscipit explicabo voluptatibus aut consequatur qui. Unde nesciunt nobis iusto sed voluptatem laborum. Nesciunt eligendi rerum nam vero. Et rem minima quo libero veritatis et.\n\nSint dolorem necessitatibus aliquid ut sint. Sit impedit in aut eos. Voluptate adipisci dolor impedit dolor quasi. Velit excepturi iusto ex est eos beatae saepe.\n\nNostrum sit ea ullam nostrum. Perspiciatis et repellat necessitatibus. Ex et laudantium rerum aspernatur sint ipsum voluptatem quos. Est mollitia repellendus provident laboriosam ex ut nisi.\n\nIn corrupti quis et dolorem. Provident quibusdam aliquid sed dolorum. Et dignissimos nam qui consequatur in. Nobis nam magni molestiae illum voluptatibus blanditiis.', NULL, NULL),
(13, '520', 'Python, les fondamentaux du langages', 'python-les-fondamentaux-du-langages', 'Bandje Rves Roland', 'Windows Xp', 'higgs.png', 3, 3, 'Voluptatem debitis dolorem nam enim. Ipsa doloribus ut nihil eius aspernatur. Error deserunt ad eos. Dolor sunt velit libero ipsum totam et.\n\nSequi eos aliquid vel magnam modi aut dolorem omnis. Fugiat et qui beatae inventore. Est at minus placeat vitae eos.\n\nEt est nam repudiandae consequuntur odit autem et dolor. Voluptatibus enim quidem sit. Omnis velit ut sint. Est qui id non exercitationem.\n\nOmnis vel dolorum deleniti necessitatibus enim alias ea. Asperiores tenetur dolores ratione voluptate cum ut. Est alias soluta aliquam quasi.\n\nAliquid autem et beatae dolor. Earum id laudantium non corporis. Dolor soluta eos maxime vero dignissimos repellendus.\n\nDignissimos atque voluptas labore. Deleniti architecto blanditiis ut deserunt quasi maiores tempora. Rerum in molestiae sit reprehenderit minima modi qui.\n\nVoluptas vel qui necessitatibus quisquam explicabo consequatur cumque. Fugit autem similique asperiores et quasi. Dolor odit iure et nulla ratione dicta. Itaque eos accusantium maiores aut dolores est. Vitae molestiae consectetur laudantium modi fugiat voluptatem.\n\nArchitecto vel ut debitis quibusdam sed similique. Dignissimos qui deleniti tempore rerum deserunt doloremque exercitationem.\n\nNemo ut quia sed. Iure vel omnis delectus veniam illum similique. Id vel illum voluptatem sunt.\n\nOptio illum consectetur quas asperiores adipisci. Eaque asperiores perferendis qui voluptate incidunt velit. Illum laudantium doloremque repudiandae qui.\n\nCupiditate sequi delectus rerum unde voluptatem ex deleniti. Repellendus voluptatum fugiat modi voluptatum. Quo facere est aperiam ea atque esse dolores. Ab quis iste laboriosam.\n\nMagnam et qui exercitationem ducimus molestiae quidem consequatur quia. Quaerat quia qui quia. Vel sed ut atque.\n\nNesciunt exercitationem inventore dolor molestias enim. Maiores ipsam iure facilis. Nulla voluptatem nobis esse aliquam corrupti et illum. Consequatur dignissimos alias soluta non ut.\n\nVoluptas dolores nam animi. Aut deleniti error officia alias tempora autem est. Sunt et iste reiciendis illum aut porro. Non culpa illum sapiente optio exercitationem nihil.', NULL, NULL),
(14, '256', 'Réseaux informatiques', 'python-les-fondamentaux-du-langages', 'Batoua Jean-Fernand', 'Ressources informatiques', 'resaux_info.jpg', 10, 2, 'Nemo et qui est fugit enim magni. Dignissimos nesciunt maxime est est iure. Voluptate sequi et deserunt aut provident earum explicabo. Fuga voluptatem laborum doloribus eius earum ullam saepe.\n\nItaque earum consequatur et commodi. Vitae culpa fugit laudantium. Quasi et ratione iste dicta.\n\nVoluptatem velit ut tempora dolor non impedit. Quo aut laborum quia eos magnam ducimus velit et. Neque repellendus ipsam consequatur provident.\n\nDelectus omnis quisquam dolore et a nisi corporis totam. Eum aut quia minima quia. Voluptatem qui vero eos doloremque fugiat cupiditate quam.\n\nSapiente ipsum voluptas qui sint minima aliquid inventore itaque. Voluptatem voluptas dolorem vel reprehenderit. Sit quidem corrupti aperiam qui tempora dignissimos molestiae.\n\nDolores eum fugit earum fuga esse delectus impedit maxime. Et nulla quam officia et. Accusamus saepe et nihil dolore sint voluptas amet.\n\nItaque iure ut expedita repudiandae sequi. Ad deserunt eum dignissimos omnis. Eveniet ut voluptates molestiae perferendis aut. Et et dolore quae officia aut minus accusantium.\n\nMolestias eveniet repellendus iusto ratione. Amet corrupti quidem rerum. Ex ipsam doloremque dolorem voluptatibus autem. Rerum dolores laudantium numquam nam.\n\nDolorem architecto distinctio sit quasi aut enim dolorem. Culpa ut est incidunt modi. Nam mollitia qui ratione explicabo modi sit nihil.\n\nSaepe accusantium in aut consequuntur fuga optio ratione. Sapiente voluptatem modi iure rem assumenda sit placeat excepturi. Nesciunt voluptatibus provident ut consectetur illum. Aliquid sapiente quam et ducimus.', NULL, NULL),
(15, '166', 'Oracle 11g', 'oracle-11g', 'Zombra Ibrahim', 'Ressources informatiques', 'oracle11.jpg', 18, 7, 'In ea neque praesentium aut. Labore sunt sed et qui quia. Et occaecati ipsa ab est vel.\n\nEveniet neque aut velit laboriosam explicabo possimus aliquid. Autem sed exercitationem consequuntur nesciunt optio laboriosam est. Voluptate vel amet nihil in dolor tempora doloribus. Architecto architecto dolor ut magni qui a.\n\nNihil quo voluptas cumque assumenda perferendis aliquam. Qui qui omnis non officia atque in qui. Dicta illo nobis libero a in et aut similique. Ea ut voluptas velit maiores.\n\nEt aliquam id aspernatur porro sapiente minima. Nemo nihil et perferendis omnis similique sit sunt. Aspernatur totam animi iure iste ipsum. Veritatis non doloremque sunt ab ut.\n\nNobis eaque doloribus numquam quis porro. Animi ab voluptas aut dolores nam. Itaque aspernatur odit voluptates autem. Distinctio optio doloribus porro qui.\n\nIncidunt suscipit quam ullam dicta quis veritatis labore. Et sequi in ducimus reiciendis aut velit voluptatem nihil. Molestias veniam vitae fuga. Ut illo et itaque eos.\n\nVoluptatem non rerum consequuntur qui veritatis iste. Labore accusamus in odio aut.\n\nEt debitis tempora et. Occaecati excepturi neque voluptas accusantium explicabo. Nostrum laboriosam eos voluptatem temporibus ut rem. Cum voluptas qui eaque blanditiis ex provident.\n\nRerum nisi quisquam enim ipsam. Ducimus rem odit repudiandae ea eveniet cum sunt vel. Impedit quasi modi voluptatum reprehenderit placeat modi sed.\n\nNatus in omnis temporibus dolore architecto est. Velit perspiciatis odit possimus tempore similique eaque. Odit accusamus deleniti omnis accusantium quas veniam.\n\nSoluta ut ut magnam unde doloremque ut quis. Rerum saepe eos ut odio odit unde quod. Veniam dolorem possimus sit aut voluptates non neque.\n\nVelit a ad consequatur voluptatem est culpa natus labore. Qui placeat repellendus ut. Qui iste quaerat laboriosam saepe. Libero excepturi voluptatem nihil accusamus.\n\nIpsum maxime repellat autem assumenda dolor recusandae non. Id ipsa voluptatem tenetur fuga aut inventore rerum. Ipsa possimus doloremque ipsum placeat. Omnis mollitia nemo animi impedit quis.\n\nQuis et occaecati sit fuga. Vel est quibusdam et aliquam magnam autem aliquid. Et nobis ut eveniet ullam consequatur.', NULL, NULL),
(16, '462', 'Kanji Kakitai', 'kanji-kakitai', 'Leonel Selemblender', 'ellipses', '1564669693.jpg', 9, 2, 'Ce document un ouvrage ,dont le but est de vous permettre de mieux comprendre et d\'apprendre le japonais.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_22_103441_create_empreteurs_table', 1),
(4, '2019_07_22_114543_create_livres_table', 1),
(5, '2019_07_24_224502_create_empreteur_livres_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yves Batyr', 'bandjeyvesroland@gmail.com', NULL, '$2y$10$JwTDQwYIukJrZ3m4AWZV2Obh9Xh4LW.IrvnaG7Vvrud60tifcufX6', NULL, '2019-08-01 12:24:53', '2019-08-01 12:24:53'),
(2, 'tape', 'tape1@gmail.com', NULL, '$2y$10$EUoGpdIVqkvk4iO9BfjYNuEKarts9Y/u58n5.VYHdvqcv0Do4FyJC', NULL, '2019-10-16 07:49:05', '2019-10-16 07:49:05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `empreteurs`
--
ALTER TABLE `empreteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `empreteur_livres`
--
ALTER TABLE `empreteur_livres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `empreteurs`
--
ALTER TABLE `empreteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `empreteur_livres`
--
ALTER TABLE `empreteur_livres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
