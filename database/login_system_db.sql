-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 08:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pub_year` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `image_path` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `description`, `author`, `isbn`, `pub_year`, `genre`, `availability`, `image_path`) VALUES
(17, 'Harry Potter and the Sorcerer\'s stone', 'The story follows a young wizard, Harry Potter, who discovers his magical heritage on his eleventh birthday.', 'J.K. Rowling', '978-0590353427', 1997, 'Fantasy', 'Not Available', 0x75706c6f6164732f48617272795f506f747465725f616e645f7468655f5068696c6f736f7068657227735f53746f6e655f426f6f6b5f436f7665722e6a7067),
(18, 'To Kill a Mockingbird', 'It follows the story of Scout Finch, a young girl, and her brother Jem, as they witness their father, lawyer Atticus Finch, defending a black man wrongly accused of a crime.', 'Harper Lee', '978-0061120084', 1960, 'Fiction, Classic', 'Not Available', 0x75706c6f6164732f3132303070782d546f5f4b696c6c5f615f4d6f636b696e67626972645f2866697273745f65646974696f6e5f636f766572292e6a7067),
(19, 'The Great Gatsby', 'Set in the Roaring Twenties, the story unfolds through the eyes of Nick Carraway, who becomes entangled in the lives of his enigmatic neighbor Jay Gatsby and his cousin Daisy Buchanan', 'F. Scott Fitzgerald', '978-0743273565', 1925, 'Fiction, Classic', 'Not Available', 0x75706c6f6164732f5468655f47726561745f4761747362795f436f7665725f313932355f5265746f75636865642e6a7067),
(20, '1984', 'The story is set in a totalitarian society governed by the Party and its leader, Big Brother.', 'George Orwell', '978-0451524935', 1949, 'Fiction, Dystopian', 'Not Available', 0x75706c6f6164732f313938342e6a7067),
(21, 'The Catcher in the Rye', 'the story is narrated by Holden Caulfield, a disenchanted and rebellious teenager who has been expelled from an elite boarding school.', 'J.D. Salinger', '978-0316769488', 1978, 'Fiction, Coming-of-Age', 'Not Available', 0x75706c6f6164732f636174636865722d696e2d7468652d7279652d636f7665722d696d6167652d36383278313032342e6a706567),
(22, 'The Lord of the Rings', 'The epic tale unfolds in the fictional world of Middle-earth, where various races, including hobbits, elves, dwarves, men, and wizards, become embroiled in the quest to destroy the One Ring, a powerful and malevolent artifact created by the dark lord Sauron', 'J.R.R. Tolkien', '978-0544003415', 1954, 'Fantasy', 'Not Available', 0x75706c6f6164732f7468652d6c6f72642d6f662d7468652d72696e67732d626f6f6b2d636f7665722e6a7067),
(23, 'Pride and Prejudice', 'The story is set in early 19th-century England and revolves around the life of Elizabeth Bennet, one of five sisters from the respectable Bennet family. The novel explores themes of love, class, and societal expectations.', 'Jane Austen', '978-0141439518', 1813, 'Fiction, Classic, Romance', 'Not Available', 0x75706c6f6164732f70726964652d616e642d7072656a75646963652d37312e6a7067),
(24, 'The Hobbit', 'is a captivating fantasy adventure that follows Bilbo Baggins, a reluctant hobbit hero, on a quest to reclaim a dwarf kingdom. Filled with magical creatures, epic battles, and the discovery of inner courage, it\'s a timeless tale of bravery and friendship in the enchanting world of Middle-earth.', 'J.R.R. Tolkien', '978-0547928227', 1937, 'Fantasy', 'Available', 0x75706c6f6164732f74686520686f626269742e6a7067),
(25, 'The Hunger Games', 'Set in a future society, the story follows Katniss Everdeen as she navigates a televised fight to the death, representing her district in a brutal annual event called the Hunger Games. The narrative explores themes of survival, rebellion, and the consequences of a power-hungry government.', 'Suzanne Collins', '978-0439023481', 2008, 'Young Adult, Dystopian', 'Available', 0x75706c6f6164732f7468652068756e6765722067616d65732e6a7067),
(26, 'The Da Vinci Code', 'The story revolves around Harvard symbologist Robert Langdon as he investigates a murder at the Louvre Museum in Paris. Filled with hidden codes, symbols, and historical secrets, the novel takes readers on a thrilling journey through art, history, and religious intrigue.', 'Dan Brown', '978-0307474278', 2003, 'Mystery, Thriller', 'Available', 0x75706c6f6164732f7468652d64612d76696e63692d636f64652e6a7067),
(28, 'The Alchemist', 'It follows the journey of Santiago, a young shepherd, as he embarks on a quest to discover his personal legend and fulfill his dreams. Filled with philosophical insights and allegorical elements, the book explores themes of destiny, self-discovery, and the pursuit of one\'s dreams.', 'Paulo Coelho', '978-0062315007', 1988, 'Fiction, Inspirational', 'Available', 0x75706c6f6164732f74686520616c6368656d6973742e6a7067),
(29, 'The Girl with the Dragon Tattoo', 'The story revolves around journalist Mikael Blomkvist and hacker Lisbeth Salander as they investigate a wealthy family\'s dark secrets. Filled with suspense, intrigue, and complex characters, the book explores themes of corruption, violence, and the enduring impact of trauma.', 'Stieg Larsson', '978-396509843', 2005, 'Mystery, Thriller', 'Available', 0x75706c6f6164732f647261676f6e20746174746f6f2e6a7067),
(33, 'A Game of Thrones', 'The story unfolds in the fictional continents of Westeros and Essos, where noble families vie for control of the Iron Throne and the Seven Kingdoms. Filled with political intrigue, power struggles, and unexpected twists, the book introduces readers to a vast and immersive world with memorable characters and a gripping narrative.', 'George R.R. Martin', '978-895152732', 1996, 'Fantasy', 'Available', 0x75706c6f6164732f676f742e6a7067),
(34, 'The Chronicles of Narnia', 'The series follows the adventures of children who are magically transported to the world of Narnia, where they encounter talking animals, mythical creatures, and epic battles between good and evil.', 'C.S. Lewis', '978-566884303', 1950, 'Fantasy, Children\'s', 'Available', 0x75706c6f6164732f6e61726e69612e6a7067),
(35, 'Noli Me Tangere', 'The title translates to \"Touch Me Not\" in English. This classic work explores the injustices and societal issues prevalent during the Spanish colonial period in the Philippines, exposing corruption, abuse of power, and the struggle for national identity.', 'Jose Rizal', '978-533703972', 1887, 'Fiction, Classic', 'Available', 0x75706c6f6164732f6e6f6c69206d652074616e676572652e6a7067),
(36, 'El Filibusterismo', 'The title translates to \"The Subversive\" or \"The Filibustering\" in English. This novel delves deeper into the issues of social injustice, corruption, and abuse of power during the Spanish colonial era in the Philippines.', 'Jose Rizal', '978-985906966', 1891, 'Fiction, Classic', 'Available', 0x75706c6f6164732f656c2066696c692e6a7067),
(37, 'ABNKKBSNPLAko?! (Mga Kwentong Chalk ni Bob Ong)', 'The title is an acronym that stands for \"Aba, Nakakabasa Na Pala Ako?!\" which translates to \"Wow, I Can Read Now?!\" in English. The book reflects on the author\'s experiences and memories', 'Bob Ong', '978-287710978', 2001, 'Humor, Memoir', 'Available', 0x75706c6f6164732f41424e4b4b42534e504c416b6f212e6a7067),
(38, 'Alamat ng Gubat', 'The title translates to \"Legend of the Forest\" in English. The story is an allegory that uses animals to represent different societal types and satirizes certain aspects of Filipino culture and politics.', 'Bob Ong', '978-770787012', 2003, 'Fiction, Satire', 'Available', 0x75706c6f6164732f416c616d61745f6e675f47756261742e6a7067),
(39, 'Naruto Volume 1: Uzumaki Naruto', 'The story follows Naruto Uzumaki, a young ninja with dreams of becoming the strongest ninja and earning the title of Hokage, the leader of his village.', 'Masashi Kishimoto', '978-865252755', 2003, 'Shonen, Action, Adventure', 'Available', 0x75706c6f6164732f6e617275746f2d766f6c2d312e6a7067),
(40, 'One Piece Volume 1: Romance Dawn', 'marks the beginning of an epic adventure created by Eiichiro Oda. The story follows Monkey D. Luffy, a young and ambitious pirate with the dream of finding the legendary treasure known as One Piece and becoming the Pirate King.', 'Eiichiro Oda', '978-750763248', 2003, 'Shonen, Action, Adventure', 'Available', 0x75706c6f6164732f6f702d726f6d616e63652d6461776e2e6a7067),
(41, 'Attack on Titan Volume 1: The Fall of Shiganshina', 'In a world besieged by giant humanoid creatures known as Titans, humanity seeks refuge within enormous walled cities. Eren Yeager, the protagonist, witnesses the sudden breach of the outer wall, leading to catastrophic consequences.', 'Hajime Isayama', '978-781830480', 2012, 'Shonen, Dark Fantasy, Action', 'Available', 0x75706c6f6164732f5368696e67656b695f6e6f5f4b796f6a696e5f6d616e67615f766f6c756d655f312e6a7067),
(42, 'Death Note Volume 1: Boredom', 'introduces readers to the enthralling world of Light Yagami, a highly intelligent high school student who discovers a mysterious notebook with deadly powers.', 'Tsugumi Ohba', '978-327638769', 2005, 'Shonen, Psychological Thriller, Mystery', 'Available', 0x75706c6f6164732f64656174686e6f74652e6a7067),
(43, 'Fullmetal Alchemist Volume 1: The Land of Sand', 'After a failed alchemical experiment to bring their deceased mother back to life, Edward loses his left leg, and Alphonse loses his entire body. In a desperate attempt to save his brother, Edward sacrifices his right arm to bind Alphonse\'s soul to a suit of armor.', 'Hiromu Arakawa', '978-692597068', 2005, 'Shonen, Adventure, Fantasy', 'Available', 0x75706c6f6164732f666d612e6a7067),
(44, 'Dragon Ball Volume 1', 'The story follows Goku, a young and naive boy with a monkey\'s tail, as he sets out on a journey to find the Dragon Balls, powerful orbs that can grant any wish.', 'Akira Toriyama', '978-977272956', 2003, 'Shonen, Action, Adventure', 'Available', 0x75706c6f6164732f647261676f6e2d62616c6c2d766f6c2d312d736a2d65646974696f6e2e6a7067),
(45, 'My Hero Academia Volume 1: Izuku Midoriya: Origin', 'The story unfolds in a world where individuals possess superpowers known as \"Quirks,\" and it follows the journey of Izuku Midoriya, a Quirkless boy with aspirations of becoming a hero.', 'Kohei Horikoshi', '978-424553775', 2015, 'Shonen, Superhero, Action', 'Available', 0x75706c6f6164732f6d68612076312e6a7067),
(46, 'Demon Slayer: Kimetsu no Yaiba Volume 1: Cruelty', 'The story follows Tanjiro Kamado, a young boy whose life takes a tragic turn when his family is slaughtered by demons, and his sister Nezuko is turned into one.', 'Koyoharu Gotouge', '978-653106549', 2018, 'Shonen, Action, Dark Fantasy', 'Not Available', 0x75706c6f6164732f64656d6f6e2d736c617965722d6b696d657473752d6e6f2d79616962612d766f6c2d312e6a7067),
(48, 'Haikyu!! Volume 1: Hinata and Kageyama', 'The story revolves around Shoyo Hinata, a determined and vertically challenged athlete inspired by a legendary player known as the \"Little Giant.\" Despite facing challenges due to his height, Hinata joins the Karasuno High School volleyball team with unwavering enthusiasm.', 'Haruichi Furudate', '978-4088806948', 2012, 'Shonen, Sports, Volleyball', 'Not Available', 0x75706c6f6164732f6861696b79752e6a7067),
(49, 'Black Clover Volume 1: The Boy\'s Vow', 'The story takes an exciting turn when Asta receives a unique grimoire that grants him an anti-magic sword. Alongside his childhood friend Yuno, who is exceptionally talented in magic, Asta embarks on a journey to fulfill his dream.', 'Yūki Tabata', '978-574544535', 2015, 'Shonen, Fantasy, Magic', 'Available', 0x75706c6f6164732f626c61636b636c6f7665722e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `borrow_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`borrow_id`, `user_id`, `book_id`, `borrow_date`, `return_date`) VALUES
(8, 19, 17, '2024-03-04', '2024-03-23'),
(9, 19, 18, '2024-03-04', '2024-03-30'),
(10, 19, 19, '2024-03-04', '2024-03-30'),
(11, 19, 20, '2024-03-04', '2024-03-29'),
(12, 20, 21, '2024-03-04', '2024-05-16'),
(13, 19, 24, '2024-03-04', '2024-03-30'),
(14, 19, 26, '2024-03-04', '2024-03-23'),
(15, 21, 46, '2024-03-04', '2024-04-30'),
(16, 21, 43, '2024-03-04', '2024-04-18'),
(17, 19, 29, '2024-03-04', '2024-03-15'),
(18, 20, 45, '2024-03-05', '2024-03-31'),
(19, 21, 44, '2024-03-05', '2024-03-23'),
(20, 21, 44, '2024-03-05', '2024-03-30'),
(21, 21, 23, '2024-03-05', '2024-03-16'),
(22, 21, 22, '2024-03-05', '2024-03-30'),
(23, 20, 25, '2024-03-05', '2024-03-30'),
(24, 20, 28, '2024-03-05', '2024-03-30'),
(25, 22, 33, '2024-03-05', '2024-05-25'),
(26, 22, 34, '2024-03-05', '2024-03-30'),
(27, 22, 35, '2024-03-05', '2024-03-30'),
(28, 19, 18, '2024-03-05', '2024-03-23'),
(29, 19, 17, '2024-03-05', '2024-03-30'),
(30, 21, 19, '2024-03-05', '2024-03-23'),
(31, 21, 20, '2024-03-05', '2024-03-30'),
(32, 21, 46, '2024-03-05', '2027-03-31'),
(33, 19, 20, '2024-03-05', '2024-03-31'),
(34, 19, 21, '2024-03-05', '2024-03-31'),
(35, 19, 49, '2024-03-05', '2024-03-31'),
(36, 22, 17, '2024-03-05', '2024-03-31'),
(37, 22, 48, '2024-03-05', '2024-03-30'),
(38, 22, 43, '2024-03-05', '2024-04-27'),
(39, 23, 24, '2024-03-05', '2024-03-30'),
(40, 23, 26, '2024-03-05', '2024-03-30'),
(41, 23, 40, '2024-03-05', '2024-03-30'),
(42, 20, 29, '2024-03-05', '2024-03-30'),
(43, 20, 36, '2024-03-05', '2024-03-30'),
(44, 21, 42, '2024-03-05', '2024-03-23'),
(45, 21, 41, '2024-03-05', '2024-03-30'),
(46, 21, 37, '2024-03-05', '2024-03-28'),
(47, 22, 39, '2024-03-05', '2024-03-30'),
(48, 23, 38, '2024-03-05', '2024-03-16'),
(49, 19, 18, '2024-03-06', '2024-03-29'),
(50, 19, 20, '2024-03-06', '2024-03-16'),
(51, 22, 33, '2024-03-06', '2024-03-22'),
(52, 22, 17, '2024-03-06', '2024-03-22'),
(53, 22, 24, '2024-03-06', '2024-03-26'),
(54, 22, 21, '2024-03-06', '2024-03-30'),
(55, 22, 17, '2024-03-06', '2024-03-11'),
(56, 22, 20, '2024-03-06', '2024-03-29'),
(57, 22, 21, '2024-03-06', '2024-03-21'),
(58, 22, 24, '2024-03-06', '2024-03-30'),
(59, 22, 26, '2024-03-06', '2024-03-30'),
(60, 22, 34, '2024-03-06', '2024-03-30'),
(61, 22, 33, '2024-03-06', '2024-03-30'),
(62, 22, 35, '2024-03-06', '2024-03-30'),
(63, 22, 24, '2024-03-06', '2024-03-21'),
(64, 22, 26, '2024-03-06', '2024-03-30'),
(65, 22, 17, '2024-03-06', '2024-03-08'),
(66, 22, 35, '2024-03-06', '2024-03-30'),
(67, 22, 49, '2024-03-06', '2024-03-30'),
(68, 22, 17, '2024-03-06', '2024-03-22'),
(69, 19, 17, '2024-03-07', '2024-03-23'),
(70, 19, 18, '2024-03-07', '2024-05-31'),
(71, 21, 19, '2024-03-07', '2024-03-30'),
(72, 21, 49, '2024-03-07', '2024-03-30'),
(73, 21, 40, '2024-03-07', '2024-03-30'),
(74, 21, 45, '2024-03-07', '2024-03-30'),
(75, 21, 46, '2024-03-07', '2024-03-29'),
(76, 22, 20, '2024-03-07', '2024-03-23'),
(77, 20, 21, '2024-03-07', '2024-03-23'),
(78, 20, 22, '2024-03-07', '2024-03-30'),
(79, 20, 48, '2024-03-07', '2024-03-30'),
(80, 22, 41, '2024-03-07', '2024-03-30'),
(81, 22, 42, '2024-03-07', '2024-03-30'),
(82, 20, 34, '2024-03-07', '2024-03-27'),
(83, 19, 23, '2024-03-07', '2024-03-30'),
(84, 19, 43, '2024-03-07', '2025-08-22'),
(85, 19, 44, '2024-03-07', '2026-04-16'),
(86, 23, 17, '2024-03-07', '2026-02-28'),
(87, 23, 24, '2024-03-07', '2024-03-30'),
(88, 23, 25, '2024-03-07', '2024-03-30'),
(89, 20, 26, '2024-03-07', '2024-03-30'),
(90, 21, 17, '2024-03-08', '2024-03-30'),
(91, 21, 18, '2024-03-08', '2024-06-28'),
(92, 19, 46, '2024-03-08', '2024-03-30'),
(93, 21, 19, '2024-03-08', '2024-03-31'),
(94, 20, 20, '2024-03-08', '2024-03-30'),
(95, 20, 21, '2024-03-08', '2024-03-30'),
(96, 20, 22, '2024-03-08', '2024-03-30'),
(97, 20, 48, '2024-03-08', '2024-03-30'),
(98, 20, 20, '2024-03-08', '2024-07-26'),
(99, 22, 23, '2024-03-08', '2027-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

CREATE TABLE `return_history` (
  `return_id` int(11) NOT NULL,
  `borrow_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `returned_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_history`
--

INSERT INTO `return_history` (`return_id`, `borrow_id`, `user_id`, `book_id`, `returned_date_time`, `status`) VALUES
(1, 15, 21, 46, '2024-03-05 09:52:28', 'returned'),
(2, 19, 21, 44, '2024-03-05 10:00:04', 'returned'),
(3, 16, 21, 43, '2024-03-05 10:05:41', 'returned'),
(4, 12, 20, 21, '2024-03-05 11:56:25', 'returned'),
(5, 11, 19, 20, '2024-03-05 12:00:45', 'returned'),
(6, 8, 19, 17, '2024-03-05 12:00:52', 'returned'),
(7, 9, 19, 18, '2024-03-05 12:01:00', 'returned'),
(8, 10, 19, 19, '2024-03-05 12:01:04', 'returned'),
(9, 13, 19, 24, '2024-03-05 12:01:06', 'returned'),
(10, 14, 19, 26, '2024-03-05 12:01:08', 'returned'),
(11, 17, 19, 29, '2024-03-05 12:01:10', 'returned'),
(12, 29, 19, 17, '2024-03-05 14:14:44', 'returned'),
(13, 31, 21, 20, '2024-03-05 16:33:26', 'returned'),
(14, 39, 23, 24, '2024-03-05 17:37:37', 'returned'),
(15, 40, 23, 26, '2024-03-05 17:37:40', 'returned'),
(16, 41, 23, 40, '2024-03-05 17:37:41', 'returned'),
(17, 48, 23, 38, '2024-03-05 17:37:43', 'returned'),
(18, 28, 19, 18, '2024-03-06 05:57:05', 'returned'),
(19, 33, 19, 20, '2024-03-06 05:57:08', 'returned'),
(20, 34, 19, 21, '2024-03-06 05:57:11', 'returned'),
(21, 35, 19, 49, '2024-03-06 05:57:12', 'returned'),
(22, 47, 22, 39, '2024-03-06 08:22:09', 'returned'),
(23, 38, 22, 43, '2024-03-06 08:22:28', 'returned'),
(24, 37, 22, 48, '2024-03-06 08:22:48', 'returned'),
(25, 36, 22, 17, '2024-03-06 08:22:53', 'returned'),
(26, 27, 22, 35, '2024-03-06 08:22:56', 'returned'),
(27, 26, 22, 34, '2024-03-06 08:22:58', 'returned'),
(28, 25, 22, 33, '2024-03-06 08:23:00', 'returned'),
(29, 54, 22, 21, '2024-03-06 08:24:28', 'returned'),
(30, 53, 22, 24, '2024-03-06 08:29:13', 'returned'),
(31, 50, 19, 20, '2024-03-06 08:30:46', 'returned'),
(32, 52, 22, 17, '2024-03-06 08:31:23', 'returned'),
(33, 51, 22, 33, '2024-03-06 08:31:27', 'returned'),
(34, 62, 22, 35, '2024-03-06 08:32:56', 'returned'),
(35, 61, 22, 33, '2024-03-06 08:34:40', 'returned'),
(36, 60, 22, 34, '2024-03-06 08:35:47', 'returned'),
(37, 59, 22, 26, '2024-03-06 08:39:46', 'returned'),
(38, 58, 22, 24, '2024-03-06 08:40:31', 'returned'),
(39, 55, 22, 17, '2024-03-06 08:52:08', 'returned'),
(40, 67, 22, 49, '2024-03-06 09:03:40', 'returned'),
(41, 64, 22, 26, '2024-03-06 09:53:43', 'returned'),
(42, 20, 21, 44, '2024-03-06 10:01:56', 'returned'),
(43, 21, 21, 23, '2024-03-06 10:01:58', 'returned'),
(44, 22, 21, 22, '2024-03-06 10:02:00', 'returned'),
(45, 30, 21, 19, '2024-03-06 10:02:02', 'returned'),
(46, 32, 21, 46, '2024-03-06 10:02:04', 'returned'),
(47, 44, 21, 42, '2024-03-06 10:02:07', 'returned'),
(48, 45, 21, 41, '2024-03-06 10:02:09', 'returned'),
(49, 46, 21, 37, '2024-03-06 10:02:11', 'returned'),
(50, 18, 20, 45, '2024-03-06 10:02:41', 'returned'),
(51, 23, 20, 25, '2024-03-06 10:02:43', 'returned'),
(52, 24, 20, 28, '2024-03-06 10:02:44', 'returned'),
(53, 42, 20, 29, '2024-03-06 10:02:46', 'returned'),
(54, 43, 20, 36, '2024-03-06 10:02:48', 'returned'),
(55, 56, 22, 20, '2024-03-06 10:03:00', 'returned'),
(56, 57, 22, 21, '2024-03-06 10:03:02', 'returned'),
(57, 63, 22, 24, '2024-03-06 10:03:04', 'returned'),
(58, 65, 22, 17, '2024-03-06 10:03:06', 'returned'),
(59, 66, 22, 35, '2024-03-06 10:03:08', 'returned'),
(60, 49, 19, 18, '2024-03-06 10:03:38', 'returned'),
(61, 68, 22, 17, '2024-03-07 05:13:55', 'returned'),
(62, 82, 20, 34, '2024-03-07 11:30:00', 'returned'),
(63, 69, 19, 17, '2024-03-07 11:36:35', 'returned'),
(64, 78, 20, 22, '2024-03-07 11:51:47', 'returned'),
(65, 79, 20, 48, '2024-03-08 02:06:05', 'returned'),
(66, 77, 20, 21, '2024-03-08 05:44:57', 'returned'),
(67, 89, 20, 26, '2024-03-08 05:45:00', 'returned'),
(68, 76, 22, 20, '2024-03-08 05:45:12', 'returned'),
(69, 80, 22, 41, '2024-03-08 05:45:14', 'returned'),
(70, 81, 22, 42, '2024-03-08 05:45:15', 'returned'),
(71, 70, 19, 18, '2024-03-08 05:45:28', 'returned'),
(72, 83, 19, 23, '2024-03-08 05:45:29', 'returned'),
(73, 84, 19, 43, '2024-03-08 05:45:31', 'returned'),
(74, 85, 19, 44, '2024-03-08 05:45:32', 'returned'),
(75, 71, 21, 19, '2024-03-08 05:45:44', 'returned'),
(76, 72, 21, 49, '2024-03-08 05:45:46', 'returned'),
(77, 73, 21, 40, '2024-03-08 05:45:48', 'returned'),
(78, 74, 21, 45, '2024-03-08 05:45:49', 'returned'),
(79, 75, 21, 46, '2024-03-08 05:45:51', 'returned'),
(80, 86, 23, 17, '2024-03-08 05:46:38', 'returned'),
(81, 87, 23, 24, '2024-03-08 05:46:40', 'returned'),
(82, 88, 23, 25, '2024-03-08 05:46:41', 'returned'),
(83, 94, 20, 20, '2024-03-08 06:53:55', 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `user_type`) VALUES
(14, 'admin', '$2y$10$hx7IQKH9AedGbB9t7NASMeAEEdwUM3auxfpFUm5w5l1epjKmH5pqa', '2024-02-19 00:01:30', 'admin'),
(19, 'user01', '$2y$10$ZcIJAaijt7fsOM94WOQ7VO9iuOlngdHeeSmbdt7zPbiLIjlopukOS', '2024-02-29 17:32:35', 'user'),
(20, 'arjec', '$2y$10$UaJqQA3MwCIwPAVoET82iuT4L/bXTvpO20GqnlqjYodqh3LlQzc96', '2024-03-04 23:12:13', 'user'),
(21, 'alim', '$2y$10$hJTfIblmbU9nWO4wWhkiS.TW.oJtns.Y5M.imeF7BlSmDamIqsfgG', '2024-03-05 03:36:45', 'user'),
(22, 'luffy', '$2y$10$Lo71Gy6hdn5vmXgzhqzXo.v4vLfVS6PsKV/BVGA.MSlNmx1Jv2PV2', '2024-03-05 03:55:05', 'user'),
(23, 'johndoe69', '$2y$10$FWOVzitIKMYjAgTiN9kqZO.rdFLddWFPYRHNUxj8UvjGUxGl/JHha', '2024-03-06 00:43:33', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `return_history`
--
ALTER TABLE `return_history`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `borrow_id` (`borrow_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `return_history`
--
ALTER TABLE `return_history`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD CONSTRAINT `borrowed_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `return_history`
--
ALTER TABLE `return_history`
  ADD CONSTRAINT `return_history_ibfk_1` FOREIGN KEY (`borrow_id`) REFERENCES `borrowed_books` (`borrow_id`),
  ADD CONSTRAINT `return_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `return_history_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
