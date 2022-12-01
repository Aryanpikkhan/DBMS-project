-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_id` int(100) NOT NULL,
  `Cat_name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_id`, `Cat_name`) VALUES
(1, 'Wildlife Sancturary'),
(2, 'National Parks'),
(3, 'Bioreserves\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phno` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Enquiryid` int(50) NOT NULL,
  `Packageid` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobileno` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NoofDays` int(50) NOT NULL,
  `Child` int(50) NOT NULL,
  `Adults` int(50) NOT NULL,
  `Message` varchar(900) NOT NULL,
  `Statusfield` varchar(200) NOT NULL,
  `Schedule Trip` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Enquiryid`, `Packageid`, `Name`, `Gender`, `Mobileno`, `Email`, `NoofDays`, `Child`, `Adults`, `Message`, `Statusfield`, `Schedule Trip`) VALUES
(13, 6, 'ARYAN PIKKHAN', 'Male', '7896859589', 'aryanpikkhan@gmail.com', 7, 99, 2, 'i want to getway with my family. My wife is not letting me have peace in the house.', 'Confirm', '2022-11-11'),
(14, 6, 'Gayatri bharkade', 'Female', '9856753475', 'gayatribharkade@gmail.com', 9, 3, 88, 'hey there if i will come up with extra luggage does it will add in my package cost.', 'Confirm', '2022-11-11'),
(15, 6, 'Pallavi thosar', 'Female', '7577498548', 'pallavirthosar10@gmail.com', 99, 22, 33, 'i am from a simple family still  i have to pay full package cost. can i eat the deer from the national parks', 'Pending', '2022-11-11'),
(16, 6, 'Pallavi thosar', 'Female', '7577498548', 'pallavirthosar10@gmail.com', 99, 22, 33, 'i am from a simple family still  i have to pay full package cost. can i eat the deer from the national parks', 'Pending', '2022-11-11'),
(17, 2, 'Akansha', 'Female', '9682367235', 'akansha@gmail.com', 23, 2, 23, 'we want to visit this national park and please tell us about the compensation', 'Pending', '2022-11-12'),
(18, 16, 'Pratiksha', 'Female', '2334357898', 'prt@gamil.com', 8, 7, 9, 'fghjghfgvbnnm', 'Pending', '2022-11-23'),
(19, 16, 'abhi', 'Male', '2334357898', 'abhi@gmail.com', 5, 9, 9, 'fgbbyj', 'Pending', '2022-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Packid` int(200) NOT NULL,
  `Packname` varchar(1000) NOT NULL,
  `Category` int(200) NOT NULL,
  `Subcategory` int(200) NOT NULL,
  `Packprice` int(200) NOT NULL,
  `Pic1` varchar(8000) NOT NULL,
  `Pic2` varchar(8000) NOT NULL,
  `Pic3` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Packid`, `Packname`, `Category`, `Subcategory`, `Packprice`, `Pic1`, `Pic2`, `Pic3`, `Detail`) VALUES
(1, 'Dachigam national park     ', 2, 6, 20000, 'dach1.jpg', 'dach2.jpg', 'dach3.jpg', 'Dachigam National Park is a national park located, 22 kilometres (14 mi) from Srinagar city in Srinagar district of Jammu and Kashmir, India on the east side of Dal Lake. It covers an area of 161|62.16(updated recently) by hgtian student SIJ. The name of the park literally stands for \"ten villages\" which is in the memory of the ten villages that were relocated for its formation. These ten villages were living in this region before the World War I in the beginning of 20th century. The main gate entrance is very close to the New Theed general bus stand on the either side of Darul Uloom Kousaria.The mountain sides below the tree line are wooded. Most of this coniferous forest consists of broad leaf species. Interspersed between these are alpine pastures, meadows, waterfalls and scrub vegetation with deep gullies, locally known as Nars, running down the mountain face. Most of the grasslands and meadows, except in the harsh winters, are covered with coloured flowers.The main animal species that Dachigam is known for is the hangul, or the Kashmir stag. Other species include:\n\nMusk deer (roose kat)\nSnow Leopard\nHimalayan serow[2]\nKashmir grey langur\nKashmir stag (hangul)\nLeopard cat (nt)'),
(2, 'jim corbett national park', 2, 6, 10000, '30.jpg', '31.jpg', '4.jpg', 'A fun-filled holiday with your family is the best time to strengthen bonds and rejuvenate the love between dear ones. And, what could be a better place to have a good time with your family members than Agra? The pleasant weather, beautiful sceneries and delightful food is sure to put you in your best mood to revel the best time with your family. For a stress-free vacation, you can explore your options for Agra family holidays packages with us on Yatra.com. From hotel bookings to travel tickets, we offer various services to help you enjoy your Agra family tour packages. Visit the numerous attractions of this beautiful place in the company of your loved ones with our Agra family vacation and tour packages away from the routine tasks of life. '),
(3, 'Rajaji national parks', 2, 6, 20000, '38.jpg', '39.jpg', '37.jpg', 'Enjoy golden beaches, sparkling seas, beautiful countryside, exciting cities and great cuisine on family holidays in Italy. Whether you are looking for an activity based holiday or one full of cultural pursuits, let our experience and insider knowledge help you tailor the ideal Italy family holiday.'),
(4, 'Bandipur National park', 2, 9, 40000, '42.jpg', '41.jpg', '40.jpg', 'Fascinating cultures, a nation that adores children, beautiful beaches in world famous resorts and a well-trodden tourist trail all combine to make Thailand family holidays popular with those looking for a combination of relaxation and adventure. Children can enjoy an invaluable experience discovering new cultures, customs and religions whilst visiting temples alongside having a huge amount of fun when exploring cities, towns and villages and of course in-resort.'),
(5, 'Periyar national park', 2, 9, 40000, '34.jpg', '36.jpg', '33.jpg', ' The lakes and mountains of Jasper, Banff and Yoho National Parks, provide the perfect backdrop for hiking and biking, while walking along the massive Athabasca Glacier feels like you are on top of the world. Horse riding, white water rafting, canoeing and whale watching are readily available for the adventurous traveller on our holidays to Canada. '),
(6, 'Madumalai National Park', 2, 9, 3000, '43.jpg', '44.jpg', '45.jpg', 'Haridwar means the \'Gateway to the abode of the gods\'. Legend has it, that Prince Bhagirath, through his penance, caused the river Ganges to come down to plains from the Himalayas so that his ancestors who had perished due to a curse of a sage could be revived. '),
(7, 'Kudremukh National Park', 2, 9, 500000, '48.jpg', '47.jpg', '46.jpg', 'Villa d\'Este, in the town of Tivoli east of Rome, is a beautiful garden and palace complex that\'s listed on UNESCO\'s World Heritage List. The villa was built in 1560 and was the vision of Cardinal Ippolito II d\'Este (who narrowly failed to become a pope). The villa is famous for its magnificent garden of grottoes, fountains, nymphs and water sculpture. Cardinal d\'Este died in 1572. By then the work on the garden and the interior painting of the villa was mostly complete'),
(8, ' Kaziranga National Park', 2, 7, 300000, '50.jpg', '49.jpg', '51.jpg', 'Austria is a land of craggy Alps and elaborate baroque buildings. Visitors flock to the eternally elegant city of Vienna for its musums and palaces, cafes and churchs, and a night at one of the top opera houses in Europe.  With a few extra days, you could get your Sound of Music on in Salzburg, the baroque city ringed by castles and cliffs where Mozart was born (and the classic movie musical took place), and visit lovely little Innsbruck, high in the Tyrolean Alps.'),
(9, 'Sundarbans', 2, 7, 700000, '53.jpg', '52.jpg', '54.jpg', 'Canada is more like a multi-cultural country. Christianity with Roman Catholics and Protestants are predominant in Canada as the main religion. Religious tours in Canada take you to sights of importance, which include St. Anneâ€™s Anglican Church, Frikirju Church and St. Norbert. Apart from Christianity, other religions like Hinduism, Buddhism, Islam and Sikhism too have gained grounds in the country. '),
(10, 'Manas National Park', 2, 7, 1200000, '56.jpg', '57.jpg', '55.jpg', 'The Catholic Church in England and Wales is part of the worldwide Roman Catholic Church in full communion with the Pope. Celtic Christianity, with some traditions different from those of Rome, was present in Roman Britain from the first century AD, but after the departure of the Roman legions was in retreat to Paganism. In 597 AD, the first authoritative papal mission, establishing a direct link from the Kingdom of Kent to the See of Rome and to the Benedictine form of monasticism, was carried into effect by Augustine of Canterbury.'),
(11, 'Nameri National Park', 2, 7, 500000, '59.jpg', '60.jpg', '58.jpg', 'Christ Church Cathedral in Nelson is a beautiful Anglican church located in the  upper Trafalgar Street. The first church was built in the year 1851 at a different place and it was named as Christ Church Cathedral in 1886. A new church was created at the present site in 1887 but it was not before 1965 when the construction of this church got completed. '),
(12, ' Gir National Park', 2, 8, 10000, '63.jpg', '62.jpg', '61.jpg', 'The Indian subcontinent is home to a number of ancient monuments, scenic locales, beaches, World Heritage Sites and cultural attractions. The states of Rajasthan, Gujarat, Goa, Himachal Pradesh, Jammu and Kashmir and Uttarakhand are among the top places toured by domestic and international tourists, pilgrims, wildlife enthusiasts and historians.'),
(13, 'Tadoba National Park', 2, 8, 900000, '65.jpg', '66.jpg', '64.jpg', 'The Heart of England is an iconic region, encompassing Oxford, the Cotswolds, Stratford-upon-Avon and Bath, a UNESCO World Heritage site. On this five-day journey, we will visit Oxford and Lacock, explore quaint Cotswold villages famous for their charming honey-coloured stone cottages with thatched roofs and explore traditional stately homes.'),
(14, 'Bharatpur National Park', 2, 8, 70000, '67.jpg', '69.jpg', '68.jpg', 'It is so big it is hard to get your head around sometimes so, by joining a Canada small group holiday and like-minded tourists, it takes the pressure off the organisation front. They are perfect if you want a short cut to Canada’s cultural and natural highlights, such as hiking in the Rockies, going on a polar bear expedition, or dog sledding in the Yukon. '),
(16, 'Binsar Wildlife Sanctuary', 1, 1, 40000, 'bin.jpg', 'bin2.jpg', 'bin3.jpg', 'It sits on top of the Jhandi Dhar hills in the Himalayas, about 33 km north of Almora town in Uttarakhand. The sanctuary spreads over 45.59 km2. Its altitude varies from 900 to 2500 metres with an average height of 2412 metres. The temperature of this area is about 20 °C.\n\nFrom a place called Zero Point the Himalayan peaks Kedarnath Peak, Shivling, Trisul and Nanda Devi are visible.\nBinsar has a museum about the flora and fauna of the region. The sanctuary hosts 25 types of trees, 24 types of bushes and 7 varieties of grasses. The higher altitudes are covered with oak and rhododendron trees. In March and April, flowers, especially ruby red rhododendron, are in full bloom.\n\nMammals include leopard (Panthera pardus), Himalayan goral (Naemorhedus goral), chital (Axis axis), musk deer (Moschus spp.), Sumatran serow (Capricornis sumatraensis), jungle cat (Felis chaus), wild boar (Sus scrofa), pine marten (Martes martes), red fox (Vulpes vulpes), gray langur (Presbytis entellus), rhesus macaque (Macaca mulatta), red giant flying squirrel (Petaurista petaurista), and Indian muntjac (Muntiacus muntjak). In the past black bear (Ursus thibetanus) had been recorded.\n\nBinsar hosts over 200 species of birds including tits, forktail, nuthatches, blackbirds, parakeets, laughingthrush, magpies, kalij pheasant (Lophura leucomelana), monal, koklass pheasant, eagles, woodpeckers, and Eurasian jays.[2]\n\nBinsar is home to many reptiles and butterflies.\n'),
(17, 'chail wildlife sanctuary', 1, 1, 80000, '83.jpg', '81.jpg', '82.jpg', 'There are so many Special events in Singapore like New Year celebration, Deepavali celebration, Christmas celebration, Food Festivals, Modeling Competition, Singing Competition etc...Singapore is also a best tourist place in the World...'),
(18, 'Daranghati Wildlife Sanctuatry', 1, 1, 60000, '86.jpg', '84.jpg', '85.jpg', 'There are so many Special events in Germany like New Year celebration, Deepavali celebration, Christmas celebration, Food Festivals, Modeling Competition, Singing Competition etc...Germany is also a best tourist place in the World...'),
(19, 'Manali sanctuary', 1, 1, 60000, '88.jpg', '87.jpg', '89.jpg', 'There are so many Special events in France like New Year celebration, Deepavali celebration, Christmas celebration, Food Festivals, Modeling Competition, Singing Competition etc...France is also a best tourist place in the World...'),
(20, 'Dandeli Wildlife Sanctuary', 1, 2, 20000, '93.jpg', '95.jpg', '94.jpg', 'Let\'s be honest: a Star Wars wedding can be tricky. You want it to be over-the-top fun, but you also run the risk of making it feel like a kids\' party. We\'re here to help! Ahead, check out everything you need , from starry invites to a lightsaber send-off , to keep your big day classy and memorable at the same time. May the wedding-planning force be with you. '),
(21, 'Brahmagiri Wildlife Sanctuary', 1, 2, 100000, '97.jpg', '98.jpg', '99.jpg', 'Hundreds of christmas Party Ideas, christmas party themes, Invitations, Decorations, Party Supplies & Favors Party can help you plan and deliver a great Christmas holiday party. We have a variety of Christmas party themes for every type celebration. Spend a few moments browsing through a variety of Christmas party themes until you find the theme that is right for your holiday celebration. '),
(22, 'Kabini Wildlife Sanctuary', 1, 2, 100000, '101.jpg', '100.jpg', '102.jpg', 'At My Tour we create custom designed entertainment themed vacation packages based on your specific interests making each trip unique. My Tour will give you an idea of the types of packages that could be possible for an entertainment-themed holiday.'),
(23, 'Jaldapara Wildlife Sanctuary', 1, 3, 3000, '107.jpg', '106.jpg', '108.jpg', 'Rajasthan the Largest state of India, famous for its rich culture and heritage, also have rich flora and fauna, although the forest cover is very little compare to other Indian states. Ranthambore National park at Rajasthan is world famous for tigers, below is the list of important wildlife national parks in Rajasthan. '),
(24, 'Chapramari Wildlife Sanctuary', 1, 3, 4000, '109.jpg', '110.jpg', '111.jpg', 'Kerala the gods own country is famous for its backwater, beaches and scenic beauty and wildlife, wildlife in Kerala are indeed some of the most magnificent and varied found anywhere in the world. The Western Ghats, the natural mountain barriers of Kerala, bordering Tamil Nadu and Karnataka are home to the majority of Kerala\'s wildlife, below is the list of some of the important wildlife national parks in Kerela. '),
(25, 'Daying Ering Wildlife Sanctuary', 1, 3, 2000, '113.jpg', '112.jpg', '114.jpg', 'There are over 80 national parks in India, spread all over the country. Some are larger and more accessible then others. Many people want to see the infamous tiger. The chance of spotting a tiger greatly depends on the size of the national park and the number of tigers, and is higher at some parks than others. '),
(27, 'Yawal santuary', 1, 4, 10000, '130.png', '129.jpg', '131.jpg', 'Israel is a tiny country, it got cultural, culinary, architectural, historical and spiritual experiences of biblical proportions.\r\n\r\nIsrael is not somewhere you stop off at or drop by the Holy Land requires attention, commitment, devotion and an open mind and heart, regardless of whether you are Jewish, Christian, Hindu, Agnostic, Animist, Jedi or Rasta.'),
(28, 'Bhimshankara Wildlife sanctuary', 1, 4, 10000, 'n2.jpg', 'n3.jpg', 'n4.jpg', ''),
(29, 'Koyna Wildlife sanctuary', 1, 4, 8000, '', '', '', ''),
(30, 'Bor wildlife sanctuary', 1, 4, 9000, '', '', '', 'This wildlife sanctuary gives resemblance of the Sahara wildlife sanctuary. It must visit to see the vast ground having different herbivores animals.'),
(32, 'Nanda devi Bioreserve ', 3, 15, 12000, 'n2.jpg', 'n3.jpg', 'n4.jpg', 'Nanda Devi Biosphere Reserve, located in the Himalayan Mountains in the northern part of the country, includes as core areas the Nanda Devi and Valley of Flowers National Parks, which are one World Heritage site. Nanda Devi National Park has remained more or less intact because of its inaccessibility. The Valley of Flowers National Park is renowned for its meadows of endemic alpine flowers and outstanding natural beauty. Together they encompass a unique transition zone between the mountain ranges of the Zanskar and Great Himalaya. The area has a large altitudinal range (1,800 to 7,817 m) and is dominated by the peak of Nanda Devi. The unique topography, climate, soil and biogeographical location of the Biosphere Reserve gives rise to diverse habitats, communities and ecosystems, and a large number of ecologically and economically important species. Some 1,000-plant species including lichens, fungi, bryophytes and pteridophytes have been recorded. The percentage of native and endemic species is high compared to non-native species. Over 55% of the species are native to Himalaya, over 10 are endemic and 225 are near endemic. Among these plant resources, the inhabitants of the Pindari, Lata-Tolma-Malari, and the Valley of Flowers areas use 224 species for various purposes such as medicine, food, and animal fodder.'),
(34, 'Khangchendzonga ', 3, 15, 12000, '', '', '', ''),
(35, 'Nilgiri Biosphere Reserve', 3, 16, 0, '', '', '', ''),
(36, 'Great Nicobar', 3, 16, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `Subcatid` int(200) NOT NULL,
  `Subcatname` varchar(1000) NOT NULL,
  `Catid` int(200) NOT NULL,
  `Pic` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Subcatid`, `Subcatname`, `Catid`, `Pic`, `Detail`) VALUES
(1, 'Wildlife sanctuary in northen India', 1, 'w1.jpg', 'A brilliant balance of cosy winter cottage accommodation and adventure, this holiday gives you a taste of the best wilderness activities and plenty of free time to explore too.'),
(2, 'Wildlife sanctuary in southern India   ', 1, '4.jpg', 'This relaxing holiday manages all of the organisational leg-work for you, so you can focus on combining family fun with exploring the phenomenal sights and sounds of India.'),
(3, 'Wildlife sanctuary in eastern India', 1, '6.jpg', 'Our only big Canadian adventure holiday for families, with 10 days of wilderness wonders, camping and ranching. From Banff to bears, Whistler to white water rafting.'),
(4, 'Wildlife sanctuary in western India', 1, '131.jpg', 'This is a real family adventure taking in every face of Thailand - local life, national parks, rainforest and beaches - all held together by great organisation and excellent guides.'),
(6, 'National parks in northen India', 2, 'p1.jpg', 'India is a land where various gods and goddess are worshiped over the years. The methods of worship are full of dedication and spirit. People used to visit India for seeing the Char Dham, Buddhist Pilgrimage and the famous temples of North India and South India. '),
(7, 'National parks in eastern India', 2, '10.jpg', 'The religious Tours  represent an important phenomenon that involves the Tourism industry. Nowadays all over the world there are  40 million people  spending 4 billion dollars that love to visit the places of worship . They are driven by the wish to discover the roots of Christianity and to be moved by those holy places. This great business is particularly flourishing in Italy where there are a lot of significant, beautiful and charming destination and the Christian culture deeply radicated. The itinerary that we propose here ties many important Italian religious destinations.'),
(8, 'National parks in western India', 2, '11.jpg', 'Every region of Europe offers a different and fascinating look on the religions that have influenced the world. Whether travelers would like to visit Vatican City, Lutheran cathedrals in Germany or Westminster Abbey in England, Europe offers a vast array of choices for religious-based tours.'),
(9, 'National parks in southern India', 2, '14.jpg', 'Canada is more like a multi-cultural country. Christianity with Roman Catholics and Protestants are predominant in Canada as the main religion. Religious tours in Canada take you to sights of importance, which include St. Anneâ€™s Anglican Church, Frikirju Church and St. Norbert. Apart from Christianity, other religions like Hinduism, Buddhism, Islam and Sikhism too have gained grounds in the country. '),
(12, 'Small Group Tours in India', 7, '17.jpg', 'Religious affiliation is a variable of strong interest to religious organisations, social scientists, and can be used as an explanatory variable in studies on topics such as marriage formation and dissolution, fertility and income.'),
(13, 'Small Group Tours in England', 7, '18.jpg', 'The Heart of England is an iconic region, encompassing Oxford, the Cotswolds, Stratford-upon-Avon and Bath, a UNESCO World Heritage site. On this five-day journey, we will visit Oxford and Lacock, explore quaint Cotswold villages famous for their charming honey-coloured stone cottages with thatched roofs and explore traditional stately homes.'),
(15, 'Bioreserves in northern india', 3, 'n1.jpg', 'Israel is a tiny country, it got cultural, culinary, architectural, historical and spiritual experiences of biblical proportions.\r\n\r\nIsrael is not somewhere you stop off at or drop by the Holy Land requires attention, commitment, devotion and an open mind and heart, regardless of whether you are Jewish, Christian, Hindu, Agnostic, Animist, Jedi or Rasta.'),
(16, 'Bioreserve in southern india', 3, '71.jpg', 'Adventure Education Tours (Mumbai) Pvt. Ltd. is today recognized as Indiaâ€™s fastest growing Travel & Tour Company. The Adventure Tours Logo means its people care about what they do for you, and youâ€™ll find the quality and level of service you expect. Whether you are on a holiday, a tour, picnic or a conference, our services are professionally designed, high in quality and cost effective, to enable you to fulfill your lifelong dream. When it comes to finding what youâ€™re looking for, Adventure Education Tours (Mumbai) Pvt. Ltd. is always the best bet.\r\n'),
(21, 'Themed Vacations for Singles', 6, '90.jpg', ' Vacation package based on two travelers includes round-trip airfare, hotel accommodations, breakfast daily, tours and more . Edinburgh and whisky make a perfect combination! This special trip will give you insight into the centuries-old process of whisky production, while exposing you to the vibrant city of Edinburgh, with the picturesque backdrop of the central Scottish Highlands. Come experience the magic of Edinburgh and drink in what the locals call, “the water of life”.'),
(22, 'Christmas Themed Vacations', 6, '91.jpg', 'The long school break at Christmastime is a peak time for a winter family vacation. These festive getaways are sure to please kids and parents alike. '),
(23, 'Star Wars Themed Vacation', 6, '92.png', 'My son is going to be 6 in November and we usually take them for vacation somewheres as a big Birthday gift...we are planning on going to Disney World, and I see we are going to miss the Star Wars weekends that are happening in June. Are there going to be any Star Wars attractions there in Nov.? Also what else Star Wars themed could be done? We save up for this since birth and want to make it over the top fun, so please no snide remarks...We all love Star Wars.'),
(24, 'National Parks in India', 5, '103.jpeg', 'There are over 80 national parks in India, spread all over the country. Some are larger and more accessible then others. Many people want to see the infamous tiger. The chance of spotting a tiger greatly depends on the size of the national park and the number of tigers, and is higher at some parks than others. These five parks are all very popular with visitors. If there are specific types of animals you\'re interested in, discover where to find them at the top 8 parks to see wildlife in India'),
(25, 'National Parks in Kerala', 5, '104.jpg', 'Kerala the gods own country is famous for its backwater, beaches and scenic beauty and wildlife, wildlife in Kerala are indeed some of the most magnificent and varied found anywhere in the world. The Western Ghats, the natural mountain barriers of Kerala, bordering Tamil Nadu and Karnataka are home to the majority of Kerala\'s wildlife, below is the list of some of the important wildlife national parks in Kerela.'),
(26, 'National Parks in Rajasthan', 5, '105.jpg', 'Rajasthan the Largest state of India, famous for its rich culture and heritage, also have rich flora and fauna, although the forest cover is very little compare to other Indian states. Ranthambore National park at Rajasthan is world famous for tigers, below is the list of important wildlife national parks in Rajasthan. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(100) NOT NULL,
  `Pwd` varchar(100) NOT NULL,
  `Typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Pwd`, `Typeofuser`) VALUES
('mahmud', '1234', 'Admin'),
('aryan', '12345678', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`Enquiryid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Packid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Subcatid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `Enquiryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `Packid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Subcatid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
