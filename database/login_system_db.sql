-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 04:49 AM
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
(17, 'Harry Potter and the Sorcerer\'s stone', 'The story follows a young wizard, Harry Potter, who discovers his magical heritage on his eleventh birthday.', 'J.K. Rowling', '978-0590353427', 1997, 'Fantasy', 'Available', 0x75706c6f6164732f6861727279706f747465722e6a7067),
(21, 'The Catcher in the rye', 'The story is narrated by Holden Caulfield, a disenchanted and rebellious teenager who has been expelled from an elite boarding school.', 'J.D. Salinger', '978-0316769488', 1978, 'Fiction, Coming-of-Age', 'Not Available', 0x75706c6f6164732f636174636865722d696e2d7468652d7279652d636f7665722d696d6167652d36383278313032342e6a706567),
(22, 'The Lord of the Rings', 'The epic tale unfolds in the fictional world of Middle-earth, where various races, including hobbits, elves, dwarves, men, and wizards, become embroiled in the quest to destroy the One Ring, a powerful and malevolent artifact created by the dark lord Sauron', 'J.R.R. Tolkien', '978-0544003415', 1954, 'Fantasy', 'Not Available', 0x75706c6f6164732f7468652d6c6f72642d6f662d7468652d72696e67732d626f6f6b2d636f7665722e6a7067),
(23, 'Pride and Prejudice', 'The story is set in early 19th-century England and revolves around the life of Elizabeth Bennet, one of five sisters from the respectable Bennet family. The novel explores themes of love, class, and societal expectations.', 'Jane Austen', '978-0141439518', 1813, 'Fiction, Classic, Romance', 'Not Available', 0x75706c6f6164732f70726964652d616e642d7072656a75646963652d37312e6a7067),
(24, 'The Hobbit', 'is a captivating fantasy adventure that follows Bilbo Baggins, a reluctant hobbit hero, on a quest to reclaim a dwarf kingdom. Filled with magical creatures, epic battles, and the discovery of inner courage, it\'s a timeless tale of bravery and friendship in the enchanting world of Middle-earth.', 'J.R.R. Tolkien', '978-0547928227', 1937, 'Fantasy', 'Available', 0x75706c6f6164732f74686520686f626269742e6a7067),
(25, 'The Hunger Games', 'Set in a future society, the story follows Katniss Everdeen as she navigates a televised fight to the death, representing her district in a brutal annual event called the Hunger Games. The narrative explores themes of survival, rebellion, and the consequences of a power-hungry government.', 'Suzanne Collins', '978-0439023481', 2008, 'Young Adult, Dystopian', 'Available', 0x75706c6f6164732f7468652068756e6765722067616d65732e6a7067),
(26, 'The Da Vinci Code', 'The story revolves around Harvard symbologist Robert Langdon as he investigates a murder at the Louvre Museum in Paris. Filled with hidden codes, symbols, and historical secrets, the novel takes readers on a thrilling journey through art, history, and religious intrigue.', 'Dan Brown', '978-0307474278', 2003, 'Mystery, Thriller', 'Available', 0x75706c6f6164732f7468652d64612d76696e63692d636f64652e6a7067),
(33, 'A Game of Thrones', 'The story unfolds in the fictional continents of Westeros and Essos, where noble families vie for control of the Iron Throne and the Seven Kingdoms. Filled with political intrigue, power struggles, and unexpected twists, the book introduces readers to a vast and immersive world with memorable characters and a gripping narrative.', 'George R.R. Martin', '978-895152732', 1996, 'Fantasy', 'Not Available', 0x75706c6f6164732f676f742e6a7067),
(34, 'The Chronicles of Narnia', 'The series follows the adventures of children who are magically transported to the world of Narnia, where they encounter talking animals, mythical creatures, and epic battles between good and evil.', 'C.S. Lewis', '978-566884303', 1950, 'Fantasy, Children\'s', 'Not Available', 0x75706c6f6164732f6e61726e69612e6a7067),
(35, 'Noli Me Tangere', 'The title translates to \"Touch Me Not\" in English. This classic work explores the injustices and societal issues prevalent during the Spanish colonial period in the Philippines, exposing corruption, abuse of power, and the struggle for national identity.', 'Jose Rizal', '978-533703972', 1887, 'Fiction, Classic', 'Not Available', 0x75706c6f6164732f6e6f6c69206d652074616e676572652e6a7067),
(36, 'El Filibusterismo', 'The title translates to \"The Subversive\" or \"The Filibustering\" in English. This novel delves deeper into the issues of social injustice, corruption, and abuse of power during the Spanish colonial era in the Philippines.', 'Jose Rizal', '978-985906966', 1891, 'Fiction, Classic', 'Not Available', 0x75706c6f6164732f656c2066696c692e6a7067),
(39, 'Naruto Volume 1: Uzumaki Naruto', 'The story follows Naruto Uzumaki, a young ninja with dreams of becoming the strongest ninja and earning the title of Hokage, the leader of his village.', 'Masashi Kishimoto', '978-865252755', 2003, 'Shonen, Action, Adventure', 'Not Available', 0x75706c6f6164732f6e617275746f2d766f6c2d312e6a7067),
(40, 'One Piece Volume 1: Romance Dawn', 'marks the beginning of an epic adventure created by Eiichiro Oda. The story follows Monkey D. Luffy, a young and ambitious pirate with the dream of finding the legendary treasure known as One Piece and becoming the Pirate King.', 'Eiichiro Oda', '978-750763248', 2003, 'Shonen, Action, Adventure', 'Not Available', 0x75706c6f6164732f6f702d726f6d616e63652d6461776e2e6a7067),
(41, 'Attack on Titan Volume 1: The Fall of Shiganshina', 'In a world besieged by giant humanoid creatures known as Titans, humanity seeks refuge within enormous walled cities. Eren Yeager, the protagonist, witnesses the sudden breach of the outer wall, leading to catastrophic consequences.', 'Hajime Isayama', '978-781830480', 2012, 'Shonen, Dark Fantasy, Action', 'Not Available', 0x75706c6f6164732f5368696e67656b695f6e6f5f4b796f6a696e5f6d616e67615f766f6c756d655f312e6a7067),
(42, 'Death Note Volume 1: Boredom', 'introduces readers to the enthralling world of Light Yagami, a highly intelligent high school student who discovers a mysterious notebook with deadly powers.', 'Tsugumi Ohba', '978-327638769', 2005, 'Shonen, Psychological Thriller, Mystery', 'Available', 0x75706c6f6164732f64656174686e6f74652e6a7067),
(43, 'Fullmetal Alchemist Volume 1: The Land of Sand', 'After a failed alchemical experiment to bring their deceased mother back to life, Edward loses his left leg, and Alphonse loses his entire body. In a desperate attempt to save his brother, Edward sacrifices his right arm to bind Alphonse\'s soul to a suit of armor.', 'Hiromu Arakawa', '978-692597068', 2005, 'Shonen, Adventure, Fantasy', 'Available', 0x75706c6f6164732f666d612e6a7067),
(44, 'Dragon Ball Volume 1', 'The story follows Goku, a young and naive boy with a monkey\'s tail, as he sets out on a journey to find the Dragon Balls, powerful orbs that can grant any wish.', 'Akira Toriyama', '978-977272956', 2003, 'Shonen, Action, Adventure', 'Available', 0x75706c6f6164732f647261676f6e2d62616c6c2d766f6c2d312d736a2d65646974696f6e2e6a7067),
(45, 'My Hero Academia Volume 1: Izuku Midoriya: Origin', 'The story unfolds in a world where individuals possess superpowers known as \"Quirks,\" and it follows the journey of Izuku Midoriya, a Quirkless boy with aspirations of becoming a hero.', 'Kohei Horikoshi', '978-424553775', 2015, 'Shonen, Superhero, Action', 'Not Available', 0x75706c6f6164732f6d68612076312e6a7067),
(46, 'Demon Slayer: Kimetsu no Yaiba Volume 1: Cruelty', 'The story follows Tanjiro Kamado, a young boy whose life takes a tragic turn when his family is slaughtered by demons, and his sister Nezuko is turned into one.', 'Koyoharu Gotouge', '978-653106549', 2018, 'Shonen, Action, Dark Fantasy', 'Available', 0x75706c6f6164732f64656d6f6e2d736c617965722d6b696d657473752d6e6f2d79616962612d766f6c2d312e6a7067),
(48, 'Haikyu!! Volume 1: Hinata and Kageyama', 'The story revolves around Shoyo Hinata, a determined and vertically challenged athlete inspired by a legendary player known as the \"Little Giant.\" Despite facing challenges due to his height, Hinata joins the Karasuno High School volleyball team with unwavering enthusiasm.', 'Haruichi Furudate', '978-4088806948', 2012, 'Shonen, Sports, Volleyball', 'Available', 0x75706c6f6164732f6861696b79752e6a7067),
(49, 'Black Clover Volume 1: The Boy\'s Vow', 'The story takes an exciting turn when Asta receives a unique grimoire that grants him an anti-magic sword. Alongside his childhood friend Yuno, who is exceptionally talented in magic, Asta embarks on a journey to fulfill his dream.', 'Yūki Tabata', '978-574544535', 2015, 'Shonen, Fantasy, Magic', 'Not Available', 0x75706c6f6164732f626c61636b636c6f7665722e6a7067),
(76, 'It', 'A terrifying entity preys on the children of Derry, Maine, resurfacing every 27 years.', 'Stephen King', '978-134703224', 1986, 'Supernatural Horror', 'Available', 0x75706c6f6164732f49745f2831393836295f66726f6e745f636f7665722c5f66697273745f65646974696f6e2e6a7067),
(79, 'The Shining', 'A psychological horror novel about a writer who takes his family to an isolated hotel for the winter, where supernatural forces begin to take hold.', 'Stephen King', '978-845126051', 1978, 'Horror Psychological Thriller', 'Available', 0x75706c6f6164732f746865207368696e696e672e6a7067),
(80, 'Batman: The Killing Joke', '\"The Killing Joke\" explores the complex relationship between Batman and his arch-nemesis, the Joker. The story delves into the Joker\'s origin, presenting him as a failed comedian who turns to crime after a series of tragic events.', 'Alan Moore', '978-751350093', 1988, 'Superhero, Psychological thriller', 'Available', 0x75706c6f6164732f6261746d616e2e6a7067),
(81, 'The Great Gatsby', '\"The Great Gatsby\" is a novel set in the 1920s, depicting the Jazz Age and the Roaring Twenties in America. It follows the story of Jay Gatsby, a wealthy and mysterious man, and his pursuit of the American Dream. The book explores themes of love, wealth, decadence, and the emptiness of the pursuit of material success.', 'F. Scott Fitzgeraldd', '978-598445512', 1926, 'Fiction, Classic Literature', 'Available', 0x75706c6f6164732f5468655f47726561745f4761747362795f436f7665725f313932355f5265746f75636865642e6a7067),
(87, 'Stupid is Forever', 'A compilation of witty and humorous essays, anecdotes, and speeches by the renowned Philippine senator.', 'Miriam Defensor Santiago', '978-406826823', 2014, 'Humor/Politics', 'Available', 0x75706c6f6164732f73747570696420697320666f72657665722e6a7067),
(88, 'The Lion, the Witch and the Wardrobe', 'The first book in The Chronicles of Narnia series, it follows the adventures of four siblings who discover the magical land of Narnia and join the fight against the White Witch.', 'C.S. Lewis', '978-948777154', 1950, 'Fantasy, Children\'s Literature', 'Available', 0x75706c6f6164732f7468652d6c696f6e2d7468652d77697463682d616e642d7468652d77617264726f62652d312e6a7067),
(89, '1984', 'A dystopian novel set in a totalitarian society where individuality and independent thought are suppressed by the ruling Party led by Big Brother.', 'George Orwell', '978-583411954', 1949, 'Dystopian Fiction, Political Satire', 'Available', 0x75706c6f6164732f313938342e6a7067),
(90, 'The Help', 'Set in 1960s Mississippi, the novel tells the story of African American maids who work for white families and the unlikely friendships that form amidst racial tensions and social injustices.', 'Kathryn Stockett', '978-821590241', 2009, 'Historical Fiction, Drama', 'Available', 0x75706c6f6164732f7468652068656c702e6a7067),
(91, 'Watchmen', 'Set in an alternate history where superheroes are real, \"Watchmen\" explores complex themes of power, morality, and human nature.', 'Alan Moore', '978-407028204', 1986, 'Superhero, Mystery, Drama', 'Available', 0x75706c6f6164732f57617463686d656e2c5f69737375655f312e6a7067),
(92, 'X-Men: Days of Future Past', 'In a dystopian future, mutants are hunted to near-extinction, prompting the X-Men to send Wolverine back in time to prevent the catastrophic events that led to this timeline.', 'Chris Claremont', '978-196028760', 1981, 'Superhero, Science Fiction, Time Travel', 'Available', 0x75706c6f6164732f786d656e2e6a7067),
(93, 'The Structure of Scientific Revolutions', 'This seminal work explores the process of scientific revolutions and paradigm shifts.', 'Thomas S. Kuhn', '978-733645177', 1962, 'Philosophy of Science', 'Available', 0x75706c6f6164732f746865207374727563747572652e6a7067),
(94, 'Capital in the Twenty-First Century', 'Piketty examines the dynamics of wealth and income inequality in capitalist economies.', 'Thomas Piketty', '978-234847473', 2013, 'Economics', 'Available', 0x75706c6f6164732f6361706974616c2d696e2d7468652d7477656e74792d66697273742d63656e747572792d332e6a7067),
(95, 'Guns, Germs, and Steel: The Fates of Human Societies', 'Diamond explores the factors that have shaped human history, including geography, agriculture, and technology.', 'Jared Diamond', '978-537225273', 1997, 'Anthropology/History', 'Available', 0x75706c6f6164732f67756e732d6765726d732d616e642d737465656c2d7468652d66617465732d6f662d68756d616e2d736f636965746965732d323074682d616e6e69766572736172792d65646974696f6e2e6a7067),
(97, 'The Impact of Climate Change on Agricultural Practices', 'This thesis explores the effects of climate change on modern agricultural practices, analyzing data from various regions and proposing sustainable solutions.', 'John Smith', '978-924130200', 2021, 'Environmental Science', 'Available', 0x75706c6f6164732f696d6167657320283130292e6a706567),
(98, 'Thinking, Fast and Slow', 'Kahneman explores the two systems of thinking that drive human decision-making.', 'Daniel Kahneman', '978-722323128', 2011, 'Psychology/Behavioral Economics', 'Not Available', 0x75706c6f6164732f7468696e6b696e672d666173742d616e642d736c6f772e6a7067),
(107, 'The Selfish Gene', 'Explores the gene-centered view of evolution and its implications for understanding human behavior.', 'Richard Dawkins', '978-564461809', 1976, 'Biology, Evolutionary Psychology', 'Not Available', 0x75706c6f6164732f5468655f53656c666973685f47656e65332e6a7067),
(108, 'Silent Spring', 'Examines the detrimental effects of pesticides on the environment and ecosystems.', 'Rachel Carson', '978-243076488', 1962, 'Environmental Science', 'Not Available', 0x75706c6f6164732f53696c656e74537072696e672e6a7067),
(109, 'Longitude: The True Story of a Lone Genius Who Solved the Greatest Scientific Problem of His Time', 'Chronicles the quest to develop a reliable method for determining longitude at sea.', 'Dava Sobel', '978-119027842', 1995, 'History of Science, Maritime History', 'Not Available', 0x75706c6f6164732f6c6f6e6769747564652e6a7067),
(110, 'The Big Picture: On the Origins of Life, Meaning, and the Universe Itself', 'Explores fundamental questions about existence, drawing on physics and philosophy.', 'Sean Carroll', '978-639853449', 2016, 'Philosophy of Science, Cosmology', 'Not Available', 0x75706c6f6164732f7468652062696720706963747572652e6a7067),
(111, 'The Feynman Lectures on Physics', 'Based on a series of lectures by Nobel laureate Richard Feynman, this three-volume set covers the fundamentals of physics in a captivating and accessible manner, making it a favorite among students and enthusiasts alike.', 'Richard P. Feynman', '978-838819237', 1964, 'Non-fiction, Science, Physics', 'Not Available', 0x75706c6f6164732f6665796d616e2e6a7067),
(112, 'Sapiens: A Brief History of Humankind', 'This book explores the history of Homo sapiens from the emergence of archaic human species in Africa to the present day, encompassing the Cognitive Revolution, the Agricultural Revolution, and the Scientific Revolution.', 'Yuval Noah Harari', '978-317623797', 2011, 'History/Anthropology', 'Not Available', 0x75706c6f6164732f73617069656e732e6a7067),
(113, 'The Teacher Wars: A History of America\'s Most Embattled Profession', 'Traces the history of teaching in America and explores the various political, cultural, and social forces that have shaped the profession.', 'Dana Goldstein', '978-485828075', 2014, 'Education/History', 'Available', 0x75706c6f6164732f746561636865722e6a7067),
(114, 'Mindset: The New Psychology of Success', 'Explores the concept of mindset and how adopting a growth mindset can lead to greater success and fulfillment.', 'Carol S. Dweck', '978-981312413', 2006, 'Psychology/Self-Help', 'Not Available', 0x75706c6f6164732f6d696e647365742e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `borrow_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`borrow_id`, `user_id`, `book_id`, `borrow_date`, `return_date`) VALUES
(8, 19, 17, '2024-03-03 16:00:00', '2024-03-22 16:00:00'),
(12, 20, 21, '2024-03-03 16:00:00', '2024-05-15 16:00:00'),
(13, 19, 24, '2024-03-03 16:00:00', '2024-03-29 16:00:00'),
(14, 19, 26, '2024-03-03 16:00:00', '2024-03-22 16:00:00'),
(15, 21, 46, '2024-03-03 16:00:00', '2024-04-29 16:00:00'),
(16, 21, 43, '2024-03-03 16:00:00', '2024-04-17 16:00:00'),
(18, 20, 45, '2024-03-04 16:00:00', '2024-03-30 16:00:00'),
(19, 21, 44, '2024-03-04 16:00:00', '2024-03-22 16:00:00'),
(20, 21, 44, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(21, 21, 23, '2024-03-04 16:00:00', '2024-03-15 16:00:00'),
(22, 21, 22, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(23, 20, 25, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(25, 22, 33, '2024-03-04 16:00:00', '2024-05-24 16:00:00'),
(26, 22, 34, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(27, 22, 35, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(29, 19, 17, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(32, 21, 46, '2024-03-04 16:00:00', '2027-03-30 16:00:00'),
(34, 19, 21, '2024-03-04 16:00:00', '2024-03-30 16:00:00'),
(35, 19, 49, '2024-03-04 16:00:00', '2024-03-30 16:00:00'),
(36, 22, 17, '2024-03-04 16:00:00', '2024-03-30 16:00:00'),
(37, 22, 48, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(38, 22, 43, '2024-03-04 16:00:00', '2024-04-26 16:00:00'),
(39, 23, 24, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(40, 23, 26, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(41, 23, 40, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(43, 20, 36, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(44, 21, 42, '2024-03-04 16:00:00', '2024-03-22 16:00:00'),
(45, 21, 41, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(47, 22, 39, '2024-03-04 16:00:00', '2024-03-29 16:00:00'),
(51, 22, 33, '2024-03-05 16:00:00', '2024-03-21 16:00:00'),
(52, 22, 17, '2024-03-05 16:00:00', '2024-03-21 16:00:00'),
(53, 22, 24, '2024-03-05 16:00:00', '2024-03-25 16:00:00'),
(54, 22, 21, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(55, 22, 17, '2024-03-05 16:00:00', '2024-03-10 16:00:00'),
(57, 22, 21, '2024-03-05 16:00:00', '2024-03-20 16:00:00'),
(58, 22, 24, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(59, 22, 26, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(60, 22, 34, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(61, 22, 33, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(62, 22, 35, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(63, 22, 24, '2024-03-05 16:00:00', '2024-03-20 16:00:00'),
(64, 22, 26, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(65, 22, 17, '2024-03-05 16:00:00', '2024-03-07 16:00:00'),
(66, 22, 35, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(67, 22, 49, '2024-03-05 16:00:00', '2024-03-29 16:00:00'),
(68, 22, 17, '2024-03-05 16:00:00', '2024-03-21 16:00:00'),
(69, 19, 17, '2024-03-06 16:00:00', '2024-03-22 16:00:00'),
(72, 21, 49, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(73, 21, 40, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(74, 21, 45, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(75, 21, 46, '2024-03-06 16:00:00', '2024-03-28 16:00:00'),
(77, 20, 21, '2024-03-06 16:00:00', '2024-03-22 16:00:00'),
(78, 20, 22, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(79, 20, 48, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(80, 22, 41, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(81, 22, 42, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(82, 20, 34, '2024-03-06 16:00:00', '2024-03-26 16:00:00'),
(83, 19, 23, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(84, 19, 43, '2024-03-06 16:00:00', '2025-08-21 16:00:00'),
(85, 19, 44, '2024-03-06 16:00:00', '2026-04-15 16:00:00'),
(86, 23, 17, '2024-03-06 16:00:00', '2026-02-27 16:00:00'),
(87, 23, 24, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(88, 23, 25, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(89, 20, 26, '2024-03-06 16:00:00', '2024-03-29 16:00:00'),
(90, 21, 17, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(92, 19, 46, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(95, 20, 21, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(96, 20, 22, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(97, 20, 48, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(99, 22, 23, '2024-03-07 16:00:00', '2027-07-30 16:00:00'),
(101, 19, 24, '2024-03-07 16:00:00', '2024-10-25 16:00:00'),
(102, 19, 42, '2024-03-07 16:00:00', '2024-03-29 16:00:00'),
(103, 21, 33, '2024-03-07 16:00:00', '2024-10-30 16:00:00'),
(106, 21, 17, '2024-03-09 16:00:00', '2024-07-18 16:00:00'),
(109, 21, 48, '2024-03-09 16:00:00', '2024-03-29 16:00:00'),
(110, 21, 45, '2024-03-09 16:00:00', '2024-03-22 16:00:00'),
(111, 21, 48, '2024-03-09 16:00:00', '2024-03-29 16:00:00'),
(112, 21, 39, '2024-03-09 16:00:00', '2024-03-29 16:00:00'),
(114, 20, 17, '2024-03-09 16:00:00', '2024-03-29 16:00:00'),
(115, 20, 41, '2024-03-09 16:00:00', '2024-03-28 16:00:00'),
(116, 20, 23, '2024-03-09 16:00:00', '2024-03-28 16:00:00'),
(117, 22, 24, '2024-03-10 16:00:00', '2024-03-29 16:00:00'),
(118, 22, 43, '2024-03-10 16:00:00', '2024-03-29 16:00:00'),
(121, 22, 17, '2024-03-14 16:00:00', '2024-03-30 16:00:00'),
(122, 22, 76, '2024-03-14 16:00:00', '2024-03-29 16:00:00'),
(123, 20, 21, '2024-03-14 16:00:00', '2024-03-29 16:00:00'),
(124, 19, 22, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(125, 22, 49, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(126, 22, 79, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(127, 22, 23, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(128, 21, 23, '2024-03-15 16:00:00', '2024-04-29 16:00:00'),
(129, 21, 41, '2024-03-15 16:00:00', '2024-07-17 16:00:00'),
(130, 23, 25, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(131, 20, 26, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(132, 20, 33, '2024-03-15 16:00:00', '2024-07-19 16:00:00'),
(133, 20, 35, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(134, 19, 45, '2024-03-15 16:00:00', '2024-03-29 16:00:00'),
(135, 19, 24, '2024-03-16 16:00:00', '2024-11-29 16:00:00'),
(136, 19, 48, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(137, 21, 39, '2024-03-16 16:00:00', '2025-02-27 16:00:00'),
(138, 19, 17, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(139, 19, 21, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(140, 20, 80, '2024-03-16 16:00:00', '2024-05-16 16:00:00'),
(141, 19, 79, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(142, 19, 76, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(143, 20, 23, '2024-03-16 16:00:00', '2027-02-16 16:00:00'),
(144, 19, 76, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(145, 19, 79, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(146, 19, 81, '2024-03-16 16:00:00', '2024-03-28 16:00:00'),
(147, 19, 79, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(148, 19, 81, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(149, 19, 81, '2024-03-16 16:00:00', '2024-03-27 16:00:00'),
(150, 19, 76, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(151, 19, 79, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(152, 19, 81, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(153, 19, 79, '2024-03-16 16:00:00', '2024-10-25 16:00:00'),
(154, 21, 49, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(155, 21, 17, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(156, 19, 81, '2024-03-16 16:00:00', '2024-07-26 16:00:00'),
(157, 23, 80, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(158, 23, 81, '2024-03-16 16:00:00', '2024-04-29 16:00:00'),
(159, 23, 17, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(160, 23, 21, '2024-03-16 16:00:00', '2024-03-18 16:00:00'),
(161, 19, 79, '2024-03-16 16:00:00', '2024-03-29 16:00:00'),
(162, 20, 49, '2024-03-16 16:00:00', '2033-03-30 16:00:00'),
(163, 19, 79, '2024-03-16 16:00:00', '2024-04-03 16:00:00'),
(164, 20, 76, '2024-03-17 16:00:00', '2024-03-18 16:00:00'),
(165, 20, 76, '2024-03-17 16:00:00', '2024-03-29 16:00:00'),
(166, 20, 23, '2024-03-17 16:00:00', '2024-03-29 16:00:00'),
(167, 20, 49, '2024-03-17 16:00:00', '2024-03-29 16:00:00'),
(168, 21, 49, '2024-03-17 16:00:00', '2024-12-20 16:00:00'),
(169, 20, 22, '2024-03-17 16:00:00', '2024-03-30 16:00:00'),
(171, 20, 87, '2024-03-17 16:00:00', '2024-03-29 16:00:00'),
(172, 20, 91, '2024-03-17 16:00:00', '2024-03-22 16:00:00'),
(173, 20, 92, '2024-03-18 16:00:00', '2024-04-05 16:00:00'),
(174, 21, 91, '2024-03-18 16:00:00', '2024-03-29 16:00:00'),
(176, 19, 41, '2024-03-18 16:00:00', '2024-04-18 16:00:00'),
(177, 19, 24, '2024-03-18 16:00:00', '2024-04-26 16:00:00'),
(178, 19, 95, '2024-03-18 16:00:00', '2024-03-21 16:00:00'),
(179, 26, 94, '2024-03-18 16:00:00', '2024-06-21 16:00:00'),
(180, 26, 17, '2024-03-18 16:00:00', '2024-05-24 16:00:00'),
(181, 26, 22, '2024-03-18 16:00:00', '2024-04-29 16:00:00'),
(182, 26, 36, '2024-03-18 16:00:00', '2024-06-28 16:00:00'),
(183, 20, 97, '2024-03-18 16:00:00', '2024-03-26 16:00:00'),
(185, 20, 35, '2024-03-18 16:00:00', '2024-03-29 16:00:00'),
(186, 23, 76, '2024-03-18 16:00:00', '2024-03-29 16:00:00'),
(187, 23, 23, '2024-03-18 16:00:00', '2024-03-28 16:00:00'),
(188, 23, 21, '2024-03-18 16:00:00', '2024-03-22 16:00:00'),
(190, 23, 24, '2024-03-18 16:00:00', '2024-03-29 16:00:00'),
(191, 20, 98, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(192, 20, 21, '2024-03-19 16:00:00', '2024-05-01 16:00:00'),
(193, 19, 89, '2024-03-19 16:00:00', '2024-06-26 16:00:00'),
(194, 19, 95, '2024-03-19 16:00:00', '2024-11-01 16:00:00'),
(195, 19, 97, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(196, 21, 90, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(197, 20, 21, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(198, 20, 93, '2024-03-19 16:00:00', '2024-07-26 16:00:00'),
(199, 20, 95, '2024-03-19 16:00:00', '2024-03-27 16:00:00'),
(200, 20, 91, '2024-03-19 16:00:00', '2024-06-14 16:00:00'),
(201, 20, 42, '2024-03-19 16:00:00', '2024-06-28 16:00:00'),
(202, 21, 39, '2024-03-19 16:00:00', '2024-07-26 16:00:00'),
(203, 21, 44, '2024-03-19 16:00:00', '2024-06-14 16:00:00'),
(204, 21, 79, '2024-03-19 16:00:00', '2024-06-28 16:00:00'),
(205, 23, 33, '2024-03-19 16:00:00', '2024-09-27 16:00:00'),
(206, 23, 24, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(207, 23, 41, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(208, 19, 98, '2024-03-19 16:00:00', '2024-06-28 16:00:00'),
(209, 19, 76, '2024-03-19 16:00:00', '2024-05-24 16:00:00'),
(210, 19, 34, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(211, 26, 35, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(212, 26, 81, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(213, 26, 23, '2024-03-19 16:00:00', '2024-03-22 16:00:00'),
(214, 26, 36, '2024-03-19 16:00:00', '2024-08-30 16:00:00'),
(215, 19, 49, '2024-03-19 16:00:00', '2024-06-21 16:00:00'),
(216, 22, 26, '2024-03-19 16:00:00', '2024-05-31 16:00:00'),
(217, 22, 46, '2024-03-19 16:00:00', '2024-03-29 16:00:00'),
(218, 22, 17, '2024-03-19 16:00:00', '2024-05-24 16:00:00'),
(219, 22, 89, '2024-03-19 16:00:00', '2024-04-26 16:00:00'),
(220, 22, 48, '2024-03-19 16:00:00', '2024-05-30 16:00:00'),
(221, 19, 97, '2024-03-20 16:00:00', '2024-03-29 16:00:00'),
(222, 19, 92, '2024-03-21 16:00:00', '2024-05-24 16:00:00'),
(223, 20, 94, '2024-03-21 16:00:00', '2024-03-22 16:00:00'),
(224, 28, 22, '2024-03-21 16:00:00', '2024-04-03 16:00:00'),
(225, 28, 90, '2024-03-21 16:00:00', '2024-04-03 16:00:00'),
(226, 28, 88, '2024-03-21 16:00:00', '2024-04-03 16:00:00'),
(227, 28, 45, '2024-03-21 16:00:00', '2024-04-03 16:00:00'),
(228, 21, 98, '2024-03-21 16:00:00', '2024-03-22 16:00:00'),
(229, 19, 97, '2024-03-21 16:00:00', '2024-03-24 16:00:00'),
(230, 20, 110, '2024-03-22 16:00:00', '2024-03-24 16:00:00'),
(231, 20, 89, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(232, 20, 95, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(233, 21, 80, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(234, 21, 108, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(235, 21, 97, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(236, 19, 91, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(237, 20, 92, '2024-03-22 16:00:00', '2024-06-05 16:00:00'),
(238, 20, 97, '2024-03-22 16:00:00', '2024-03-24 16:00:00'),
(239, 21, 42, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(240, 21, 48, '2024-03-22 16:00:00', '2024-03-30 16:00:00'),
(241, 21, 107, '2024-03-22 16:00:00', '2024-03-25 16:00:00'),
(242, 21, 87, '2017-11-18 16:00:00', '2024-03-29 16:00:00'),
(243, 21, 109, '0000-00-00 00:00:00', '2024-03-29 16:00:00'),
(244, 21, 88, '0000-00-00 00:00:00', '2024-03-29 16:00:00'),
(245, 21, 109, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(246, 21, 22, '2024-03-22 16:00:00', '2024-03-24 16:00:00'),
(247, 20, 87, '2024-03-22 16:00:00', '2024-03-29 16:00:00'),
(248, 20, 92, '2024-03-22 16:00:00', '2024-03-24 16:00:00'),
(249, 20, 110, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(250, 20, 94, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(251, 20, 36, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(252, 20, 21, '2024-03-22 16:00:00', '2024-03-23 16:00:00'),
(253, 20, 41, '2024-03-23 16:00:00', '2024-03-24 16:00:00'),
(254, 20, 23, '2024-03-23 16:00:00', '2024-03-24 16:00:00'),
(255, 20, 22, '2024-03-23 16:00:00', '2024-03-25 16:00:00'),
(256, 19, 79, '2024-03-23 16:00:00', '2024-04-08 16:00:00'),
(257, 19, 111, '2024-03-23 16:00:00', '2024-03-24 16:00:00'),
(258, 21, 17, '2024-03-23 16:00:00', '2024-03-29 16:00:00'),
(259, 23, 24, '2024-03-23 16:00:00', '2024-03-26 16:00:00'),
(260, 20, 39, '2024-03-23 16:00:00', '2024-03-27 16:00:00'),
(261, 20, 17, '2024-03-23 16:00:00', '2024-03-29 16:00:00'),
(262, 20, 110, '2024-03-24 11:46:40', '2024-03-25 16:00:00'),
(263, 22, 110, '2024-03-24 11:58:44', '2024-03-29 16:00:00'),
(264, 22, 109, '2024-03-24 12:01:08', '2024-03-29 16:00:00'),
(265, 20, 97, '2024-03-24 12:05:08', '2024-03-30 16:00:00'),
(266, 19, 107, '2024-03-24 21:07:19', '2024-03-31 16:00:00'),
(267, 19, 21, '2024-03-24 21:08:19', '2024-03-31 16:00:00'),
(268, 19, 22, '2024-03-24 21:08:29', '2024-03-31 16:00:00'),
(269, 19, 24, '2024-03-24 21:09:04', '2024-03-31 16:00:00'),
(270, 20, 23, '2024-03-24 22:41:08', '2024-03-31 16:00:00'),
(271, 20, 43, '2024-03-24 22:41:24', '2024-03-31 16:00:00'),
(272, 28, 44, '2024-03-24 23:24:14', '2024-03-31 16:00:00'),
(273, 28, 111, '2024-03-24 23:25:16', '2024-03-25 16:00:00'),
(274, 28, 110, '2024-03-25 06:19:16', '2024-03-25 16:00:00'),
(275, 28, 42, '2024-03-25 06:19:41', '2024-03-25 16:00:00'),
(276, 26, 33, '2024-03-25 06:20:49', '2024-03-25 16:00:00'),
(277, 28, 92, '2024-03-25 08:28:39', '2024-03-26 16:00:00'),
(278, 28, 48, '2024-03-25 10:53:58', '2024-03-25 16:00:00'),
(279, 28, 34, '2024-03-25 10:54:24', '2024-03-31 16:00:00'),
(280, 21, 80, '2024-03-25 11:38:35', '2024-03-25 16:00:00'),
(281, 28, 110, '2024-03-27 07:04:42', '2024-03-27 16:00:00'),
(282, 20, 108, '2024-03-27 10:41:46', '2024-04-03 16:00:00'),
(283, 20, 98, '2024-03-27 11:08:10', '2024-04-03 16:00:00'),
(284, 21, 112, '2024-03-27 11:15:26', '2024-03-29 16:00:00'),
(285, 21, 94, '2024-03-27 11:15:54', '2024-03-29 16:00:00'),
(286, 28, 41, '2024-03-29 06:37:09', '2024-04-04 16:00:00'),
(287, 20, 25, '2024-03-30 05:04:35', '2024-05-10 16:00:00'),
(288, 20, 35, '2024-03-30 05:10:45', '2024-03-30 16:00:00'),
(289, 19, 90, '2024-03-30 23:51:45', '2024-04-18 16:00:00'),
(290, 19, 93, '0000-00-00 00:00:00', '2024-04-26 13:00:00'),
(291, 19, 93, '2024-03-31 00:09:17', '2024-04-11 16:00:00'),
(292, 19, 93, '0000-00-00 00:00:00', '2024-04-29 16:00:00'),
(293, 19, 39, '0000-00-00 00:00:00', '2024-04-05 16:00:00'),
(294, 19, 89, '0000-00-00 00:00:00', '2024-05-03 16:00:00'),
(295, 19, 107, '0000-00-00 00:00:00', '2024-04-05 16:00:00'),
(296, 19, 21, '2024-03-31 00:28:08', '2024-04-05 16:00:00'),
(297, 19, 107, '2024-03-31 00:38:15', '2024-04-05 16:00:00'),
(298, 19, 93, '2024-03-31 01:01:09', '2024-04-05 16:00:00'),
(299, 19, 93, '2024-03-31 01:13:20', '2024-04-05 16:00:00'),
(300, 20, 112, '2024-03-31 07:21:54', '2024-04-05 16:00:00'),
(301, 20, 111, '2024-03-31 07:27:42', '2024-04-06 07:00:00'),
(302, 20, 112, '2024-03-31 07:40:07', '2024-05-04 10:30:00'),
(303, 20, 111, '2024-03-31 08:11:46', '2024-04-07 08:00:00'),
(304, 20, 111, '2024-03-31 08:42:18', '2024-04-07 02:30:00'),
(305, 20, 107, '2024-03-31 08:46:28', '2024-03-31 02:00:00'),
(306, 20, 109, '2024-03-31 08:46:50', '2024-04-06 09:00:00'),
(307, 20, 110, '2024-03-31 08:48:53', '2024-04-14 09:00:00'),
(308, 20, 111, '2024-03-31 08:49:25', '2024-03-31 08:49:00'),
(309, 20, 111, '2024-03-31 08:55:11', '2024-04-01 04:00:00'),
(310, 20, 40, '2024-03-31 08:55:37', '2024-04-01 04:00:00'),
(311, 20, 22, '2024-03-31 08:59:38', '2024-05-04 21:00:00'),
(312, 20, 112, '2024-03-31 09:00:11', '2024-03-31 13:04:00'),
(313, 20, 108, '2024-03-31 09:08:43', '2024-03-31 10:00:00'),
(314, 20, 108, '2024-03-31 09:11:49', '2024-03-31 09:12:00'),
(315, 19, 39, '2024-03-31 09:17:55', '2024-04-07 04:00:00'),
(316, 19, 21, '2024-03-31 09:18:40', '2024-03-31 22:30:00'),
(317, 19, 98, '2024-03-31 09:19:56', '2024-03-31 16:00:00'),
(318, 19, 25, '2024-03-31 09:20:41', '2024-03-31 15:59:00'),
(319, 21, 35, '2024-03-31 09:21:52', '2024-03-31 15:59:00'),
(320, 21, 41, '2024-03-31 09:22:18', '2024-04-01 03:00:00'),
(321, 21, 34, '2024-03-31 09:22:53', '2024-04-01 03:00:00'),
(322, 22, 36, '2024-03-31 09:24:34', '2024-03-31 23:30:00'),
(323, 22, 23, '2024-03-31 09:26:02', '2024-04-03 15:25:00'),
(324, 22, 45, '2024-03-31 09:26:34', '2024-04-02 01:30:00'),
(325, 21, 26, '2024-03-31 09:28:40', '2024-04-02 03:20:00'),
(326, 20, 108, '2024-03-31 16:36:36', '2024-04-03 05:00:00'),
(327, 19, 107, '2024-03-31 17:53:01', '2024-04-02 08:00:00'),
(328, 19, 25, '2024-03-31 18:06:33', '2024-03-31 19:00:00'),
(329, 21, 26, '2024-03-31 20:50:08', '2024-04-02 00:50:00'),
(330, 20, 114, '2024-03-31 21:02:27', '2024-04-20 09:00:00'),
(331, 23, 49, '2024-04-01 15:23:53', '2024-04-02 06:01:00'),
(332, 23, 33, '2024-04-01 15:25:12', '2024-04-03 04:30:00');

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
(6, 8, 19, 17, '2024-03-05 12:00:52', 'returned'),
(9, 13, 19, 24, '2024-03-05 12:01:06', 'returned'),
(10, 14, 19, 26, '2024-03-05 12:01:08', 'returned'),
(12, 29, 19, 17, '2024-03-05 14:14:44', 'returned'),
(14, 39, 23, 24, '2024-03-05 17:37:37', 'returned'),
(15, 40, 23, 26, '2024-03-05 17:37:40', 'returned'),
(16, 41, 23, 40, '2024-03-05 17:37:41', 'returned'),
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
(46, 32, 21, 46, '2024-03-06 10:02:04', 'returned'),
(47, 44, 21, 42, '2024-03-06 10:02:07', 'returned'),
(48, 45, 21, 41, '2024-03-06 10:02:09', 'returned'),
(50, 18, 20, 45, '2024-03-06 10:02:41', 'returned'),
(51, 23, 20, 25, '2024-03-06 10:02:43', 'returned'),
(54, 43, 20, 36, '2024-03-06 10:02:48', 'returned'),
(56, 57, 22, 21, '2024-03-06 10:03:02', 'returned'),
(57, 63, 22, 24, '2024-03-06 10:03:04', 'returned'),
(58, 65, 22, 17, '2024-03-06 10:03:06', 'returned'),
(59, 66, 22, 35, '2024-03-06 10:03:08', 'returned'),
(61, 68, 22, 17, '2024-03-07 05:13:55', 'returned'),
(62, 82, 20, 34, '2024-03-07 11:30:00', 'returned'),
(63, 69, 19, 17, '2024-03-07 11:36:35', 'returned'),
(64, 78, 20, 22, '2024-03-07 11:51:47', 'returned'),
(65, 79, 20, 48, '2024-03-08 02:06:05', 'returned'),
(66, 77, 20, 21, '2024-03-08 05:44:57', 'returned'),
(67, 89, 20, 26, '2024-03-08 05:45:00', 'returned'),
(69, 80, 22, 41, '2024-03-08 05:45:14', 'returned'),
(70, 81, 22, 42, '2024-03-08 05:45:15', 'returned'),
(72, 83, 19, 23, '2024-03-08 05:45:29', 'returned'),
(73, 84, 19, 43, '2024-03-08 05:45:31', 'returned'),
(74, 85, 19, 44, '2024-03-08 05:45:32', 'returned'),
(76, 72, 21, 49, '2024-03-08 05:45:46', 'returned'),
(77, 73, 21, 40, '2024-03-08 05:45:48', 'returned'),
(78, 74, 21, 45, '2024-03-08 05:45:49', 'returned'),
(79, 75, 21, 46, '2024-03-08 05:45:51', 'returned'),
(80, 86, 23, 17, '2024-03-08 05:46:38', 'returned'),
(81, 87, 23, 24, '2024-03-08 05:46:40', 'returned'),
(82, 88, 23, 25, '2024-03-08 05:46:41', 'returned'),
(87, 99, 22, 23, '2024-03-10 12:30:37', 'returned'),
(89, 103, 21, 33, '2024-03-10 12:37:18', 'returned'),
(91, 90, 21, 17, '2024-03-10 12:37:36', 'returned'),
(92, 97, 20, 48, '2024-03-10 12:44:40', 'returned'),
(93, 101, 19, 24, '2024-03-10 13:06:22', 'returned'),
(94, 109, 21, 48, '2024-03-10 13:09:09', 'returned'),
(95, 106, 21, 17, '2024-03-10 13:09:11', 'returned'),
(100, 118, 22, 43, '2024-03-15 05:54:32', 'returned'),
(101, 117, 22, 24, '2024-03-15 05:54:35', 'returned'),
(102, 102, 19, 42, '2024-03-15 05:55:01', 'returned'),
(103, 92, 19, 46, '2024-03-15 05:55:03', 'returned'),
(104, 116, 20, 23, '2024-03-15 05:55:17', 'returned'),
(105, 115, 20, 41, '2024-03-15 05:55:19', 'returned'),
(106, 114, 20, 17, '2024-03-15 05:55:20', 'returned'),
(107, 96, 20, 22, '2024-03-15 05:55:22', 'returned'),
(108, 95, 20, 21, '2024-03-15 05:55:24', 'returned'),
(109, 112, 21, 39, '2024-03-15 05:55:42', 'returned'),
(110, 111, 21, 48, '2024-03-15 05:55:44', 'returned'),
(111, 110, 21, 45, '2024-03-15 05:55:46', 'returned'),
(114, 127, 22, 23, '2024-03-16 16:01:29', 'returned'),
(115, 135, 19, 24, '2024-03-17 02:57:12', 'returned'),
(116, 124, 19, 22, '2024-03-17 03:02:04', 'returned'),
(117, 137, 21, 39, '2024-03-17 03:05:04', 'returned'),
(118, 129, 21, 41, '2024-03-17 03:05:07', 'returned'),
(119, 128, 21, 23, '2024-03-17 03:05:09', 'returned'),
(120, 133, 20, 35, '2024-03-17 03:05:40', 'returned'),
(121, 132, 20, 33, '2024-03-17 03:05:41', 'returned'),
(122, 131, 20, 26, '2024-03-17 03:05:43', 'returned'),
(123, 123, 20, 21, '2024-03-17 03:05:45', 'returned'),
(124, 130, 23, 25, '2024-03-17 03:06:05', 'returned'),
(125, 126, 22, 79, '2024-03-17 03:06:21', 'returned'),
(126, 125, 22, 49, '2024-03-17 03:06:27', 'returned'),
(127, 122, 22, 76, '2024-03-17 03:06:29', 'returned'),
(128, 121, 22, 17, '2024-03-17 03:06:30', 'returned'),
(129, 136, 19, 48, '2024-03-17 03:06:54', 'returned'),
(130, 134, 19, 45, '2024-03-17 03:06:56', 'returned'),
(131, 142, 19, 76, '2024-03-17 11:17:48', 'returned'),
(132, 139, 19, 21, '2024-03-17 11:19:14', 'returned'),
(133, 141, 19, 79, '2024-03-17 11:23:28', 'returned'),
(134, 145, 19, 79, '2024-03-17 11:26:10', 'returned'),
(135, 144, 19, 76, '2024-03-17 11:26:29', 'returned'),
(136, 146, 19, 81, '2024-03-17 11:27:37', 'returned'),
(137, 138, 19, 17, '2024-03-17 11:27:58', 'returned'),
(138, 147, 19, 79, '2024-03-17 11:30:24', 'returned'),
(139, 148, 19, 81, '2024-03-17 11:32:01', 'returned'),
(140, 149, 19, 81, '2024-03-17 11:32:42', 'returned'),
(141, 150, 19, 76, '2024-03-17 11:34:11', 'returned'),
(142, 151, 19, 79, '2024-03-17 11:36:15', 'returned'),
(143, 153, 19, 79, '2024-03-17 11:41:08', 'returned'),
(144, 155, 21, 17, '2024-03-17 11:58:24', 'returned'),
(145, 154, 21, 49, '2024-03-17 11:59:24', 'returned'),
(146, 143, 20, 23, '2024-03-17 11:59:40', 'returned'),
(147, 140, 20, 80, '2024-03-17 11:59:46', 'returned'),
(148, 152, 19, 81, '2024-03-17 12:00:13', 'returned'),
(149, 156, 19, 81, '2024-03-17 14:38:34', 'returned'),
(150, 161, 19, 79, '2024-03-17 15:42:32', 'returned'),
(151, 162, 20, 49, '2024-03-17 16:59:38', 'returned'),
(152, 164, 20, 76, '2024-03-18 01:34:43', 'returned'),
(153, 167, 20, 49, '2024-03-18 06:31:41', 'returned'),
(154, 163, 19, 79, '2024-03-18 07:58:38', 'returned'),
(155, 169, 20, 22, '2024-03-18 07:58:57', 'returned'),
(156, 166, 20, 23, '2024-03-18 07:59:03', 'returned'),
(157, 165, 20, 76, '2024-03-18 07:59:07', 'returned'),
(158, 168, 21, 49, '2024-03-18 07:59:24', 'returned'),
(159, 160, 23, 21, '2024-03-18 07:59:41', 'returned'),
(160, 159, 23, 17, '2024-03-18 07:59:46', 'returned'),
(161, 158, 23, 81, '2024-03-18 07:59:50', 'returned'),
(162, 157, 23, 80, '2024-03-18 07:59:57', 'returned'),
(164, 172, 20, 91, '2024-03-19 04:15:35', 'returned'),
(165, 179, 26, 94, '2024-03-19 07:31:28', 'returned'),
(166, 186, 23, 76, '2024-03-19 17:39:45', 'returned'),
(167, 187, 23, 23, '2024-03-19 17:39:52', 'returned'),
(168, 185, 20, 35, '2024-03-19 17:52:50', 'returned'),
(169, 183, 20, 97, '2024-03-19 17:53:02', 'returned'),
(170, 171, 20, 87, '2024-03-19 17:53:10', 'returned'),
(171, 173, 20, 92, '2024-03-19 17:53:27', 'returned'),
(174, 174, 21, 91, '2024-03-19 17:56:33', 'returned'),
(176, 178, 19, 95, '2024-03-19 17:59:04', 'returned'),
(177, 177, 19, 24, '2024-03-19 17:59:10', 'returned'),
(178, 176, 19, 41, '2024-03-19 17:59:16', 'returned'),
(179, 188, 23, 21, '2024-03-19 17:59:52', 'returned'),
(181, 196, 21, 90, '2024-03-20 14:46:20', 'returned'),
(182, 195, 19, 97, '2024-03-20 14:47:38', 'returned'),
(183, 194, 19, 95, '2024-03-20 14:47:45', 'returned'),
(184, 193, 19, 89, '2024-03-20 14:47:53', 'returned'),
(185, 182, 26, 36, '2024-03-20 14:48:17', 'returned'),
(186, 181, 26, 22, '2024-03-20 14:48:23', 'returned'),
(187, 180, 26, 17, '2024-03-20 14:48:29', 'returned'),
(188, 192, 20, 21, '2024-03-20 14:48:58', 'returned'),
(189, 191, 20, 98, '2024-03-20 14:49:06', 'returned'),
(190, 190, 23, 24, '2024-03-20 14:49:26', 'returned'),
(191, 222, 19, 92, '2024-03-22 09:06:39', 'returned'),
(192, 221, 19, 97, '2024-03-22 09:06:45', 'returned'),
(193, 215, 19, 49, '2024-03-22 09:07:49', 'returned'),
(194, 210, 19, 34, '2024-03-22 09:07:55', 'returned'),
(195, 209, 19, 76, '2024-03-22 09:08:00', 'returned'),
(196, 208, 19, 98, '2024-03-22 09:08:06', 'returned'),
(197, 227, 28, 45, '2024-03-22 09:08:27', 'returned'),
(198, 226, 28, 88, '2024-03-22 09:08:34', 'returned'),
(199, 225, 28, 90, '2024-03-22 09:08:38', 'returned'),
(200, 224, 28, 22, '2024-03-22 09:08:43', 'returned'),
(201, 207, 23, 41, '2024-03-22 09:10:15', 'returned'),
(202, 206, 23, 24, '2024-03-22 09:10:19', 'returned'),
(203, 205, 23, 33, '2024-03-22 09:10:24', 'returned'),
(204, 204, 21, 79, '2024-03-22 09:10:45', 'returned'),
(205, 202, 21, 39, '2024-03-22 09:10:53', 'returned'),
(206, 203, 21, 44, '2024-03-22 09:10:58', 'returned'),
(207, 223, 20, 94, '2024-03-22 15:57:46', 'returned'),
(208, 199, 20, 95, '2024-03-22 15:57:52', 'returned'),
(209, 200, 20, 91, '2024-03-22 15:57:57', 'returned'),
(210, 198, 20, 93, '2024-03-22 15:58:01', 'returned'),
(211, 201, 20, 42, '2024-03-22 15:58:05', 'returned'),
(212, 197, 20, 21, '2024-03-22 15:58:09', 'returned'),
(213, 228, 21, 98, '2024-03-22 15:58:34', 'returned'),
(214, 214, 26, 36, '2024-03-22 15:58:48', 'returned'),
(215, 212, 26, 81, '2024-03-22 15:58:54', 'returned'),
(216, 211, 26, 35, '2024-03-22 15:58:58', 'returned'),
(217, 213, 26, 23, '2024-03-22 15:59:08', 'returned'),
(218, 218, 22, 17, '2024-03-22 15:59:48', 'returned'),
(219, 219, 22, 89, '2024-03-22 15:59:53', 'returned'),
(220, 217, 22, 46, '2024-03-22 16:00:04', 'returned'),
(221, 220, 22, 48, '2024-03-22 16:00:20', 'returned'),
(222, 216, 22, 26, '2024-03-22 16:00:24', 'returned'),
(223, 229, 19, 97, '2024-03-22 16:00:56', 'returned'),
(224, 235, 21, 97, '2024-03-23 08:12:29', 'returned'),
(225, 242, 21, 87, '2024-03-23 11:10:20', 'returned'),
(226, 244, 21, 88, '2024-03-23 11:10:30', 'returned'),
(227, 243, 21, 109, '2024-03-23 11:10:39', 'returned'),
(228, 246, 21, 22, '2024-03-23 12:12:23', 'returned'),
(229, 237, 20, 92, '2024-03-23 15:58:15', 'returned'),
(230, 238, 20, 97, '2024-03-23 16:21:59', 'returned'),
(231, 230, 20, 110, '2024-03-23 16:22:15', 'returned'),
(232, 231, 20, 89, '2024-03-24 13:43:56', 'returned'),
(233, 257, 19, 111, '2024-03-24 17:34:53', 'returned'),
(234, 256, 19, 79, '2024-03-24 17:34:58', 'returned'),
(235, 236, 19, 91, '2024-03-24 17:35:03', 'returned'),
(236, 255, 20, 22, '2024-03-24 17:35:30', 'returned'),
(237, 254, 20, 23, '2024-03-24 17:35:35', 'returned'),
(238, 253, 20, 41, '2024-03-24 17:35:39', 'returned'),
(239, 252, 20, 21, '2024-03-24 17:35:44', 'returned'),
(240, 251, 20, 36, '2024-03-24 17:35:48', 'returned'),
(241, 250, 20, 94, '2024-03-24 17:35:52', 'returned'),
(242, 249, 20, 110, '2024-03-24 17:35:56', 'returned'),
(243, 248, 20, 92, '2024-03-24 17:36:01', 'returned'),
(244, 247, 20, 87, '2024-03-24 17:36:05', 'returned'),
(245, 232, 20, 95, '2024-03-24 17:36:10', 'returned'),
(246, 258, 21, 17, '2024-03-24 17:36:40', 'returned'),
(247, 245, 21, 109, '2024-03-24 17:36:45', 'returned'),
(248, 241, 21, 107, '2024-03-24 17:36:50', 'returned'),
(249, 240, 21, 48, '2024-03-24 17:36:54', 'returned'),
(250, 239, 21, 42, '2024-03-24 17:37:05', 'returned'),
(251, 234, 21, 108, '2024-03-24 17:37:09', 'returned'),
(252, 233, 21, 80, '2024-03-24 17:37:14', 'returned'),
(253, 259, 23, 24, '2024-03-24 17:37:27', 'returned'),
(254, 262, 20, 110, '2024-03-24 18:49:41', 'returned'),
(255, 263, 22, 110, '2024-03-24 18:58:55', 'returned'),
(256, 260, 20, 39, '2024-03-27 12:38:30', 'returned'),
(257, 278, 28, 48, '2024-03-27 12:38:53', 'returned'),
(258, 275, 28, 42, '2024-03-27 12:39:08', 'returned'),
(259, 274, 28, 110, '2024-03-27 12:39:19', 'returned'),
(260, 280, 21, 80, '2024-03-30 12:32:17', 'returned'),
(261, 290, 19, 93, '2024-03-31 06:06:59', 'returned'),
(262, 291, 19, 93, '2024-03-31 06:10:51', 'returned'),
(263, 266, 19, 107, '2024-03-31 06:24:51', 'returned'),
(264, 294, 19, 89, '2024-03-31 06:24:56', 'returned'),
(265, 293, 19, 39, '2024-03-31 06:25:00', 'returned'),
(266, 292, 19, 93, '2024-03-31 06:25:04', 'returned'),
(267, 289, 19, 90, '2024-03-31 06:25:09', 'returned'),
(268, 269, 19, 24, '2024-03-31 06:25:13', 'returned'),
(269, 268, 19, 22, '2024-03-31 06:25:19', 'returned'),
(270, 267, 19, 21, '2024-03-31 06:25:24', 'returned'),
(271, 295, 19, 107, '2024-03-31 06:27:42', 'returned'),
(272, 296, 19, 21, '2024-03-31 07:09:52', 'returned'),
(273, 298, 19, 93, '2024-03-31 07:09:57', 'returned'),
(274, 297, 19, 107, '2024-03-31 07:10:04', 'returned'),
(275, 299, 19, 93, '2024-03-31 07:14:30', 'returned'),
(276, 285, 21, 94, '2024-03-31 07:16:14', 'returned'),
(277, 284, 21, 112, '2024-03-31 07:16:21', 'returned'),
(278, 288, 20, 35, '2024-03-31 07:16:35', 'returned'),
(279, 287, 20, 25, '2024-03-31 07:16:40', 'returned'),
(280, 283, 20, 98, '2024-03-31 07:16:44', 'returned'),
(281, 282, 20, 108, '2024-03-31 07:16:51', 'returned'),
(282, 271, 20, 43, '2024-03-31 07:16:55', 'returned'),
(283, 270, 20, 23, '2024-03-31 07:17:00', 'returned'),
(284, 265, 20, 97, '2024-03-31 07:17:18', 'returned'),
(285, 261, 20, 17, '2024-03-31 07:17:23', 'returned'),
(286, 286, 28, 41, '2024-03-31 07:24:02', 'returned'),
(287, 281, 28, 110, '2024-03-31 07:24:07', 'returned'),
(288, 279, 28, 34, '2024-03-31 07:24:11', 'returned'),
(289, 277, 28, 92, '2024-03-31 07:24:14', 'returned'),
(290, 273, 28, 111, '2024-03-31 07:24:18', 'returned'),
(291, 272, 28, 44, '2024-03-31 07:24:21', 'returned'),
(292, 276, 26, 33, '2024-03-31 07:30:03', 'returned'),
(293, 264, 22, 109, '2024-03-31 07:30:21', 'returned'),
(294, 301, 20, 111, '2024-03-31 07:32:22', 'returned'),
(295, 300, 20, 112, '2024-03-31 07:32:33', 'returned'),
(296, 303, 20, 111, '2024-03-31 08:22:43', 'returned'),
(297, 302, 20, 112, '2024-03-31 08:25:37', 'returned'),
(298, 304, 20, 111, '2024-03-31 08:43:51', 'returned'),
(299, 308, 20, 111, '2024-03-31 08:53:15', 'returned'),
(300, 305, 20, 107, '2024-03-31 08:53:23', 'returned'),
(301, 313, 20, 108, '2024-03-31 09:08:54', 'returned'),
(302, 314, 20, 108, '2024-03-31 09:14:56', 'returned'),
(303, 318, 19, 25, '2024-03-31 17:58:31', 'returned'),
(304, 325, 21, 26, '2024-03-31 20:48:16', 'returned'),
(305, 329, 21, 26, '2024-03-31 20:50:39', 'returned'),
(306, 328, 19, 25, '2024-04-01 17:09:03', 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_type` varchar(255) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `full_name`, `occupation`, `contact_num`, `address`, `password`, `created_at`, `user_type`, `image`) VALUES
(14, 'admin', '', '', '', '', '', '$2y$10$IHH0QCWMC1iypBgmoLqjRuqRxTKSzblOHOiqjYGI4i8abhI5u0wC.', '2024-02-19 00:01:30', 'admin', 0x496d616765732f61646d696e312e6a7067),
(19, 'user01', '', '', '', '', '', '$2y$10$Je.I4bOwtctWCLfo92JQMODBZPl7imnmPjiNVUbZ/4I6evGTvnNN2', '2024-02-29 17:32:35', 'user', 0x496d616765732f7573657220696d6167652e6a7067),
(20, 'arjec', 'arjecdizon99@gmail.com', 'Arjec Jose Dizon', 'Student', '+639158423449', 'Guiwan, Zamboanga city', '$2y$10$jOVRK5y.nR3/juf.RMjjYuyJ35Xk6WQcP56wospRnv3MNMe3qX5qa', '2024-03-04 23:12:13', 'user', 0x496d616765732f7363686f6f6c2d73747564656e742d69636f6e2d31382e706e67),
(21, 'alim', '', '', '', '', '', '$2y$10$kze.NSyaawXbrn4Yh1RHl.0Lhy4o4tawUBgxUjPPEMWc.dkx62CTq', '2024-03-05 03:36:45', 'user', 0x496d616765732f73747564656e742069636f6e20322e706e67),
(22, 'luffy', '', '', '', '', '', '$2y$10$Lo71Gy6hdn5vmXgzhqzXo.v4vLfVS6PsKV/BVGA.MSlNmx1Jv2PV2', '2024-03-05 03:55:05', 'user', 0x496d616765732f6c7566667920696d6167652e6a7067),
(23, 'johndoe69', '', '', '', '', '', '$2y$10$FWOVzitIKMYjAgTiN9kqZO.rdFLddWFPYRHNUxj8UvjGUxGl/JHha', '2024-03-06 00:43:33', 'user', 0x496d616765732f42617369635f55695f5f32383138365f32392e6a7067),
(26, 'user02', '', '', '', '', '', '$2y$10$bSwzGRlOUB.9LHBVhRlSDOP9hubnK8mlOnjgK3odwzWIeGO2QyYby', '2024-03-19 13:08:31', 'user', 0x496d616765732f757365722069636f6e20332e706e67),
(28, 'user03', '', '', '', '', '', '$2y$10$tTuib0Oiz6Hn4Jsr.nBEC.WEVaSEsqkYXoj4WCBY6O84rW0wc/cGm', '2024-03-22 16:28:42', 'user', ''),
(1004, 'user09', '', '', '', '', '', '$2y$10$W2QQuIS/BScBESbs/CNiT.IUcOxnV26mQqpkw1cZPPZE5rKQRn63K', '2024-03-25 15:31:17', 'user', '');

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `return_history`
--
ALTER TABLE `return_history`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

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
