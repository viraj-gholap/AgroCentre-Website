-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 11:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrocenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Fertilizers', 1),
(2, 'Seeds', 1),
(3, 'Tools', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Viraj Gholap', 'viraj.gholap@somaiya.edu', '8169852339', 'Test Query', '2021-08-26 10:41:12'),
(2, 'Viraj', 'viraj.gholap@somaiya.edu', '8169852339', 'AQSWDEFRGTHYJUKILO', '2021-09-16 06:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `added_on`) VALUES
(1, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'COD', 90, 'pending', 3, 0, 0, 0, 0, '', '', 0, 0, '', '2021-09-17 08:32:25'),
(2, 1, 'Shanti van', 'Murbad', 421402, 'payu', 270, 'pending', 1, 0, 0, 0, 0, '', '', 0, 0, '', '2021-09-17 08:40:43'),
(3, 1, 'test', 'test', 421402, 'COD', 180, 'pending', 1, 0, 0, 0, 0, '', '', 0, 0, '', '2021-09-17 09:04:33'),
(4, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'COD', 450, 'pending', 1, 0, 0, 0, 0, '', '', 0, 0, '', '2021-09-17 10:28:01'),
(5, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'COD', 180, 'pending', 1, 0, 0, 0, 0, '', '', 0, 0, '', '2021-09-17 10:53:40'),
(6, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, 'e4274e08d77e1308f889', '', 0, 0, '', '2021-09-22 11:59:47'),
(7, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 180, 'pending', 1, 0, 0, 0, 0, '149ee660ec58909a38eb', '', 0, 0, '', '2021-09-22 12:04:43'),
(8, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, '0b7d2f521123ac43568f', '', 0, 0, '', '2021-09-22 12:09:32'),
(9, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, 'd506e29f001346c15266', '', 0, 0, '', '2021-09-22 12:10:17'),
(10, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 270, 'pending', 1, 0, 0, 0, 0, '4b0acf421291a990a689', '', 0, 0, '', '2021-09-23 09:21:03'),
(11, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, 'e3e45928a01fccdbb562', '', 0, 0, '', '2021-09-23 09:31:34'),
(12, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, 'dce4cfd528ed0cc73270', '', 0, 0, '', '2021-09-23 09:34:19'),
(13, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, 'e279359c5cfc3f1bc0e3', '', 0, 0, '', '2021-09-23 10:11:54'),
(14, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 3, 20, 20, 20, 2.5, 'f25dbbc6cab8dafad376', '', 147335336, 146886757, '', '2021-09-23 10:15:41'),
(15, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 1, 0, 0, 0, 0, '7d16f9b7e6036c560334', '', 0, 0, '', '2021-09-23 10:40:00'),
(16, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 90, 'pending', 3, 20, 20, 20, 2.5, 'd8ec95bc267c4b4d6f5a', '', 147067281, 146618992, '', '2021-09-24 10:33:29'),
(17, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'payu', 339, 'pending', 3, 20, 20, 20, 2.5, 'd425307b069fa0ea5e0d', '', 147065377, 146617091, '', '2021-09-28 04:50:20'),
(18, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 2176, 'pending', 1, 0, 0, 0, 0, '3bf8d8325f4182de0704', '', 0, 0, '', '2021-09-30 07:00:17'),
(19, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 2176, 'pending', 1, 0, 0, 0, 0, '2e7e115f9fa974fe06c5', '', 0, 0, '', '2021-09-30 07:01:14'),
(20, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 2176, 'pending', 1, 0, 0, 0, 0, '4f344f09148bdf5a350c', '', 0, 0, '', '2021-09-30 10:02:01'),
(21, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 2176, 'pending', 1, 0, 0, 0, 0, 'bcf0707d9b46474fb8d74e45c8ed44ed', '', 0, 0, '', '2021-09-30 10:41:52'),
(22, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 339, 'complete', 1, 0, 0, 0, 0, 'd0919f9dda9341e593a7738ab8b0de61', 'MOJO1930R05A95855837', 0, 0, '', '2021-09-30 10:44:41'),
(23, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 678, 'complete', 1, 0, 0, 0, 0, '923ba961b2384240a02a2ad40b77c59b', 'MOJO1930Y05A95855838', 0, 0, '', '2021-09-30 10:50:21'),
(24, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 339, 'complete', 3, 20, 20, 20, 2.5, '2a3dd07a2bdb43fb82187460e552f0f2', 'MOJO1a01205A68779247', 147495602, 147046797, '', '2021-10-01 10:34:58'),
(25, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 500, 'complete', 1, 0, 0, 0, 0, '8d1b8bfba5914a4d900c8223bb0e83aa', 'MOJO1a30705A39456924', 0, 0, '', '2021-10-30 12:42:38'),
(26, 1, 'Shanti Laxman Sadan, Shanti van Rd, Dhasai , Tal.Murbad', 'Murbad', 421402, 'instamojo', 500, 'complete', 3, 20, 20, 20, 2.5, '1c94d74adef3420288410acf78fdb6f5', 'MOJO1a30I05A39456951', 155391601, 154937032, '', '2021-10-30 01:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 1, 1, 90),
(2, 2, 1, 3, 90),
(3, 3, 1, 2, 90),
(4, 4, 1, 5, 90),
(5, 5, 1, 2, 90),
(6, 6, 1, 1, 90),
(7, 7, 1, 2, 90),
(8, 8, 1, 1, 90),
(9, 9, 1, 1, 90),
(10, 10, 1, 3, 90),
(11, 11, 1, 1, 90),
(12, 12, 1, 1, 90),
(13, 13, 1, 1, 90),
(14, 14, 1, 1, 90),
(15, 15, 1, 1, 90),
(16, 16, 1, 1, 90),
(17, 17, 6, 1, 339),
(18, 19, 6, 1, 339),
(19, 19, 2, 1, 1837),
(20, 20, 6, 1, 339),
(21, 20, 2, 1, 1837),
(22, 21, 6, 1, 339),
(23, 21, 2, 1, 1837),
(24, 22, 6, 1, 339),
(25, 23, 6, 2, 339),
(26, 24, 6, 1, 339),
(27, 25, 7, 1, 500),
(28, 26, 7, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 1, 'OrganoMagic Liquid Soil Booster | Organic Liquid Manure for all plants | 5 Ltr | With Micro & Macro Nutrients | Immunity booster for all plants| Organic Liquid Fertilizer for all Indoor and Outdoor Garden', 1700, 899, 10, '756541323_51m2CKb2EsS.jpg', 'Manufacturer : GPS Renewables Pvt. Ltd.\r\nItem Weight : 5 kg 500 g', 'OrganoMagic Liquid Soil Booster is a completely organic product and is suitable for replacing chemical manures. It contains rejuvenating properties for soil. Not only does this concentrate have readily available NPK but also has other micro and macro nutrients. The storehouse of nutrients in the product include both fast releasing and slow releasing nutrients. Fast releasing nutrients provide instant boost to the plant health and the slow releasing nutrients ensure that they do not run-off with water and are available for plant use over a longer interval of time.\r\n\r\nFor optimal growth, the concentrate can be diluted by a factor of 5 to 20 for direct application.', 1, 'OrganoMagic Liquid Soil Booster | Organic Liquid Manure for all plants | 5 Ltr | With Micro & Macro Nutrients | Immunity booster for all plants| Organic Liquid Fertilizer for all Indoor and Outdoor Garden', 'OrganoMagic Liquid Soil Booster | Organic Liquid Manure for all plants | 5 Ltr | With Micro & Macro Nutrients | Immunity booster for all plants| Organic Liquid Fertilizer for all Indoor and Outdoor Garden', 'OrganoMagic Liquid Soil Booster | Organic Liquid Manure for all plants | 5 Ltr | With Micro & Macro Nutrients | Immunity booster for all plants| Organic Liquid Fertilizer for all Indoor and Outdoor Garden', 1),
(2, 1, 'A R S H Liquid Seaweed Fertilizer For Plants With Measuring Cup 30ml - Organic & Pure Extract For All Indoor, Outdoor And Agricultural Crops - 500ml', 2000, 1837, 10, '442427731_711K1r-dRpL._SL1500_.jpg', 'Item Weight   :   650 g', 'Liquid seaweed extract can be sprayed on kinds of agriculture and horticulture and landscaping plants, including indoor and outdoor, to enhance bud initiation, flower and fruit set.\r\nIt can also be sprayed on vegetables and fruits to reduce fast ripening and keep the quality of fruits and vegetables. It enhances germination percentage by soaking the seeds, and it gives vigorous growth and development of the plant. It improves the number of branches, number of flowers per branch, root development, and fruits setting. Hence, an increase in yield by 10-15% is observed.', 1, 'A R S H Liquid Seaweed Fertilizer For Plants With Measuring Cup 30ml - Organic & Pure Extract For All Indoor, Outdoor And Agricultural Crops - 500ml', 'A R S H Liquid Seaweed Fertilizer For Plants With Measuring Cup 30ml - Organic & Pure Extract For All Indoor, Outdoor And Agricultural Crops - 500ml', 'A R S H Liquid Seaweed Fertilizer For Plants With Measuring Cup 30ml - Organic & Pure Extract For All Indoor, Outdoor And Agricultural Crops - 500ml', 0),
(3, 1, 'Ugaoo Organic Cow Manure Fertilizer for Home Garden Plants - 5 Kg', 455, 350, 10, '181760904_41hBM7OgzhL._AC_UL320_.jpg', 'Item Weight  :   4 kg 900 g , Manufacturer   :   Namdeo Umaji Agritech India Pvt Ltd-Pune', 'At Ugaoo, we believe in going nature\'s way. Cow dung manure for plants is an excellent fertilizer highly rich with organic matter which help to improve aeration and break up compacted soils. This fine textured manure is developed from composted cow dung of Indian Desi Cows and is extremely rich with beneficial bacteria which converts soil nutrients into easily accessible forms for the tender plants. Composted cow manure increases easy and convenient way to enrich the soil. Our high quality cow dung manure helps in adding extra nutrients and minerals to your home and garden soil. The manure can provide the right fertility for the plants to grow and flourish in your garden. It can surely give healthy crops and blooming plants.', 0, 'Ugaoo Organic Cow Manure Fertilizer for Home Garden Plants - 5 Kg', 'Ugaoo Organic Cow Manure Fertilizer for Home Garden Plants - 5 Kg', 'Ugaoo Organic Cow Manure Fertilizer for Home Garden Plants - 5 Kg', 0),
(4, 1, 'OrganicDews Liquid Seaweed Concentrate for Plants 250 ml with Measuring Cup 25 ml Fertilizer for All Indoor and Outdoor Plants', 300, 255, 20, '139796866_61939hofyBL._AC_UL320_.jpg', 'Item Weight : 360 g , Manufacturer  :  Lucca Retail', 'Liquid Seaweed Fertilizer For Organic Gardening - Overall Plant Health :\r\n\r\nLiquid seaweed is great nourishment for plants. It has hormones i.e., Auxins, Cytokinins, Gibberellins and many other minerals, vitamins, and enzymes that are natural growth stimulants. These nutrients fuel the plant cells growth, and this results in healthier, stronger, and more disease-resistant plants.\r\nLiquid seaweed fertilizers have hormones; i.e., Auxins, Cytokinins, Gibberellins, and Betaines contribute to overall plant health. The auxins are a major hormonal component that regulate the development speed of the plant. Auxins tend to increase or delay the growth rate of the plant. It helps the flower buds to unfold on time.', 0, 'OrganicDews Liquid Seaweed Concentrate for Plants 250 ml with Measuring Cup 25 ml Fertilizer for All Indoor and Outdoor Plants', 'OrganicDews Liquid Seaweed Concentrate for Plants 250 ml with Measuring Cup 25 ml Fertilizer for All Indoor and Outdoor Plants', 'OrganicDews Liquid Seaweed Concentrate for Plants 250 ml with Measuring Cup 25 ml Fertilizer for All Indoor and Outdoor Plants', 1),
(6, 1, 'TrustBasket Enriched organic Earth Magic Potting Soil Fertilizer for Plants, 5 Kg', 656, 339, 10, '676660264_61fUoGkNdHL._AC_UL320_.jpg', 'Item Weight : 5 kg , Manufacturer  : MULTIPLEX URBAN GREEN INDIA PVT LTD', '1. Completely organic and does not contain any harmful chemicals.\r\n\r\n2. Contains micro and macro nutrients.\r\n\r\n3. Has good water holding capacity.\r\n\r\n4. Its anti-fungal property helps the plants to grow healthy.\r\n\r\n5. Contains microbes which enhance the soil properties\r\n\r\n5. Ready to Use.\r\n\r\n7. Good for saplings.\r\n\r\n8. Good Texture\r\n\r\n9. Good water holding capacity.', 0, 'TrustBasket Enriched organic Earth Magic Potting Soil Fertilizer for Plants, 5 Kg', 'TrustBasket Enriched organic Earth Magic Potting Soil Fertilizer for Plants, 5 Kg', 'TrustBasket Enriched organic Earth Magic Potting Soil Fertilizer for Plants, 5 Kg', 1),
(7, 1, 'TrustBasket Organic Vermicompost Fertilizer Manure for Plants - 5 KG', 900, 500, 10, '454747398_71iPA5LfB7L._AC_UL320_.jpg', 'Item Weight: 5 kg | Manufacturer : MULTIPLEX URBAN GREEN INDIA PVT LTD', '1. 100% organic\r\n\r\n2. Improves soil aeration\r\n\r\n3. Enriches soil with micro-organisms (adding enzymes such as phosphate and cellulose)\r\n\r\n4. Microbial activity in worm castings is 10 to 20 times higher than in the soil and organic matter that the worm ingests\r\n\r\n5. Attracts deep-burrowing earthworms already present in the soil.\r\n\r\n6. Increases the immune system of plants.\r\n\r\n7. Easy to store and easy to use.', 0, 'TrustBasket Organic Vermicompost Fertilizer Manure for Plants - 5 KG', 'TrustBasket Organic Vermicompost Fertilizer Manure for Plants - 5 KG', 'TrustBasket Organic Vermicompost Fertilizer Manure for Plants - 5 KG', 1),
(8, 3, 'Sharpex Multi-Cutter', 2000, 1499, 10, '651109536_71XqyJkeBHL._SL1500_.jpg', 'Manufacturer : sharpex\r\nItem Weight : 1 kg 300 g', 'We at Sharpex specialize in providing tools and equipments for different industries. Our products are highly appreciated for the features and specifications incorporated in them. As we are set up by a team of technocrats and professionals, we have all the understanding and expertise to offer the right type of tools and solutions. We provide products to different industries like saw mills, veneer industries, hotels, resorts as well as other gardening needs.', 1, 'Sharpex Multi-Cutter', 'Sharpex Multi-Cutter', 'Sharpex Multi-Cutter', 1),
(9, 3, 'Kraft Seeds Gate Garden Spectacular Gardening Tools Set with Heavy Gardening Cut Tool and One Pair Hand Gloves (Orange Handle and Black Metal)', 500, 450, 10, '278265879_511Reqja+HS._SL1000_.jpg', 'Manufacturer : Kraft Seeds', 'This set of heavy duty handy tools are ideal for household and professional gardening applications. They are made with corrosion resistant heads and ergonomically designed handles for smooth operation. This set also includes a iweeder and fork', 1, 'Kraft Seeds Gate Garden Spectacular Gardening Tools Set with Heavy Gardening Cut Tool and One Pair Hand Gloves (Orange Handle and Black Metal)', 'Kraft Seeds Gate Garden Spectacular Gardening Tools Set with Heavy Gardening Cut Tool and One Pair Hand Gloves (Orange Handle and Black Metal)', 'Kraft Seeds Gate Garden Spectacular Gardening Tools Set with Heavy Gardening Cut Tool and One Pair Hand Gloves (Orange Handle and Black Metal)', 1),
(10, 3, 'Digging Hoe Iron Steel Spade for Gardening and Reck with Handle', 1600, 1300, 10, '675750252_51QKRVjCkqS._SL1080_.jpg', 'Manufacturer : Sneha Traders', 'This is Digging Hoe Iron Steel Spade for Gardening. Handle is polished by ASIAN paint Touch Wood polish. It has best grip. Reck With Polished Handle usefull while seeding process. Easy to use and simply connected by wooden handle', 0, 'Digging Hoe Iron Steel Spade for Gardening and Reck with Handle', 'Digging Hoe Iron Steel Spade for Gardening and Reck with Handle', 'Digging Hoe Iron Steel Spade for Gardening and Reck with Handle', 1),
(11, 2, 'GENNEXT SEEDS Vegetable Seeds Green Peas Seeds - Peas Seeds Seeds For Gardening Home Garden Seeds', 150, 99, 10, '668262798_51fhYoIOhRL.jpg', 'Brand : GENNEXT SEEDS', 'Gennext Seeds have always believed in the sustainable development of the environment by believing in growing a seed a house. Gennext Seeds wide range of flower seeds, Indian vegetable seeds, exotic vegetable seeds, herb seeds, flower bulbs, and all you need in garden accessories.', 1, 'GENNEXT SEEDS Vegetable Seeds Green Peas Seeds - Peas Seeds Seeds For Gardening Home Garden Seeds', 'GENNEXT SEEDS Vegetable Seeds Green Peas Seeds - Peas Seeds Seeds For Gardening Home Garden Seeds', 'GENNEXT SEEDS Vegetable Seeds Green Peas Seeds - Peas Seeds Seeds For Gardening Home Garden Seeds', 1),
(12, 2, 'Aero Seeds 45 Varieties of Vegetable Seeds', 400, 199, 10, '244432599_91xryjlVd9L._SL1500_.jpg', 'Brand : Aero Seeds', 'Aero Seeds have always believed in sustainable development of environment by believing in growing a seed a house. Since the year 1995 a group of passionate dreamers at Aero Seeds work day in day out to provide the best seeds and flower bulbs to Indian homes. Aero Seeds wide range of flower seeds, Indian vegetable seeds, exotic vegetable seeds, herb seeds, flower bulbs, and all you need in garden accessories. Aero Seeds have always believed, organic, and moving forward in that direction.', 1, 'Aero Seeds 45 Varieties of Vegetable Seeds', 'Aero Seeds 45 Varieties of Vegetable Seeds', 'Aero Seeds 45 Varieties of Vegetable Seeds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjE5MjExODksImlzcyI6Imh0dHBzOi8vYXBpdjIuc2hpcHJvY2tldC5pbi92MS9leHRlcm5hbC9hdXRoL2xvZ2luIiwiaWF0IjoxNjM1NTk0NDc2LCJleHAiOjE2MzY0NTg0NzYsIm5iZiI6MTYzNTU5NDQ3NiwianRpIjoiRGhLY0p3dERqWUswcHFCdiJ9.-G9v88ISAB2Aq_4pYyUfO_Bd9QLH5cQA0L7Uilapd3g', '2021-10-29 23:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Viraj Gholap', '12345', 'viraj.gholap@somaiya.edu', '8169852339', '2021-08-26 17:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(7, 1, 7, '2021-10-30 01:00:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
