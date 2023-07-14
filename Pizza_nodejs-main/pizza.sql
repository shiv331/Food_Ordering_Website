-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 09:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `product` int(5) NOT NULL,
  `order_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `name`, `email`, `address`, `city`, `state`, `country`, `product`, `order_id`) VALUES
(1, 'Deepak', 'dm5260180@gmail.com', 'h no 210', 'ghaziabad', 'yp', 'JP', 3, 'ORDS63783'),
(2, 'Deepak', 'dm5260180@gmail.com', 'h no 210', 'ghaziabad', 'yp', 'JP', 3, 'ORDS81591'),
(3, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS39504'),
(4, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS12641'),
(5, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS8831'),
(6, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS61609'),
(7, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS18529'),
(8, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'DK', 3, 'ORDS18324'),
(9, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'HK', 3, 'ORDS59491'),
(10, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'HK', 3, 'ORDS29204'),
(11, 'Deepak Morya', 'helodeepakji@gmail.com', 'Ghaziabad', 'Ghaziabad', 'Uttar Pradesh', 'FI', 7, 'ORDS11835'),
(12, 'Deepak', 'dm5260180@gmail.com', 'h no 210', 'ghaziabad', 'yp', 'DK', 7, 'ORDS765'),
(13, 'Deepak Morya', 'helodeepakji@gmail.com', 'Ghaziabad', 'Ghaziabad', 'Uttar Pradesh', 'FI', 7, 'ORDS28234'),
(14, 'Deepak Morya', 'helodeepakji@gmail.com', 'Ghaziabad', 'Ghaziabad', 'Uttar Pradesh', 'FI', 7, 'ORDS74188'),
(15, 'Deepak Morya', 'helodeepakji@gmail.com', 'Ghaziabad', 'Ghaziabad', 'Uttar Pradesh', 'FI', 7, 'ORDS50602'),
(16, 'sandeep', 'dm5260180@gmail.com', 'h no 210 rahul vihar daulatpura', 'ghaziabad', 'uttar pradesh', 'CA', 2, 'ORDS32849'),
(17, 'Anurag', 'ak220088@gmail.com', 'H.no 299 Gali.no 2', 'Daulatpura', 'UTTAR PRADESH', 'DK', 6, 'ORDS29781');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(4) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`) VALUES
(9, 'Shivani', '8076763204', 'shivani@gmail.com', 'me node'),
(10, 'Shivani', '8076763204', 'shivani@gmail.com', 'me node'),
(11, 'Shivam', '8076763204', 'shivanisingh36813@gmail.com', '????????????');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(4) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `product_id` int(5) NOT NULL,
  `amount` int(10) NOT NULL,
  `txn` varchar(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `product_id`, `amount`, `txn`, `date`) VALUES
(1, 'ORDS50602', 7, 599, 'pay_LxxaCPyc79vtiB', '2023-06-05 00:31:32'),
(2, 'ORDS32849', 2, 349, 'pay_Lxxe6UK3ZoqKPL', '2023-06-05 00:32:24'),
(3, 'ORDS29781', 6, 149, 'pay_Lxy2yz0wDj8c79', '2023-06-05 00:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sno` int(3) NOT NULL,
  `product_name` varchar(1000) NOT NULL,
  `product_desc` varchar(1300) NOT NULL,
  `rate` int(4) NOT NULL,
  `price` int(4) NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sno`, `product_name`, `product_desc`, `rate`, `price`, `image`) VALUES
(1, 'tofu scramble', 'Tofu scrambles have been a mainstay of vegan cuisine for decades. At their best, they\'re seared and crisp on the outside.', 499, 249, 'https://hips.hearstapps.com/hmg-prod/images/delish-200527-tofu-scramble-002-ab-1593537122.jpg?crop=0.905xw:0.913xh;0.0952xw,0.0867xh&resize=480:*'),
(2, 'Chia Pudding\r\n', 'Cooking with chia seeds might *sound* intimidating, but in reality they couldn\'t be easier to whip up! Simply add liquid, give it a good stir, and let time do the rest. In just a couple of hours, your seeds will be transformed into creamy, smooth, softly textured pudding.', 499, 349, 'https://hips.hearstapps.com/hmg-prod/images/20190905-delish-chiapudding-ehg-1248-jpg-1569007244.jpg?crop=1xw:1xh;center,top&resize=1200:*'),
(3, 'Bunless Bacon, Egg & Cheese\r\n', 'Using the egg for the bun on this classic breakfast sandwich is a true genius move. We loaded ours up with bacon, cheddar, and avocado but go for some of your favorite fillings! Sausage and gruyère would be killer too!', 399, 199, 'https://hips.hearstapps.com/hmg-prod/images/delish-200114-bunless-bacon-egg-and-cheese-0055-landscape-pf-1580224317.jpg?crop=0.668xw:1.00xh;0.131xw,0&resize=360:*'),
(4, 'Acai Bowl', 'We love a good smoothie bowl. This one, made with nutrient rich açaí and a crunchy coconut topping, will keep you full and happy all morning long. We chose to include some of our favorite fruits in the mix, but feel free to switch it up and sub in your own favorites.', 299, 199, 'https://hips.hearstapps.com/hmg-prod/images/190514-acai-bowl-162-1559077269.jpg?crop=0.980xw:0.980xh;0.00850xw,0.00680xh&resize=1200:*'),
(5, 'Classic Muhammara\r\n', 'Muhammara is a Middle eastern dip made of roasted red peppers, walnuts, and usually some fresh bread crumbs, which provide a pleasant texture. Pomegranate molasses adds sweetness and a little tang, giving the Muhammara its trademark flavor. And since the dip originated in Aleppo, the use of Aleppo pepper is traditional, and worth looking for.', 399, 249, 'https://hips.hearstapps.com/hmg-prod/images/delish-vegan-spiral-muhammara075-1617816020.jpg?crop=0.537xw:0.806xh;0.257xw,0.0791xh&resize=1200:*'),
(6, 'Vegan Chipotle Lentil Tacos\r\n', 'These vegan tacos are loaded with bright flavors and a variety of textures—just like any good taco should be!', 299, 149, 'https://hips.hearstapps.com/hmg-prod/images/20200422-vegan-tacos-delish-ehg-10021-1588271152.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*'),
(7, 'Vegan Meatballs\r\n', 'Few comfort foods satisfy like a hearty bowl of spaghetti and meatballs. Now, my vegan friends, you TOO can enjoy this comfort sans guilt! These chickpea based meatballs pack tons of flavor, come together quickly, and even provide a good amount of protein and fiber.', 799, 599, 'https://hips.hearstapps.com/hmg-prod/images/delish-190815-vegan-meatballs-0088-landscape-pf-1566333710.jpg?crop=0.668xw:1.00xh;0.0357xw,0&resize=1200:*'),
(8, 'Veggie Kabobs\r\n', 'These kabobs have the *perfect* combination of flavors and textures. Serve them up with our ultimate meat-lovers veggie burger for a backyard vegetarian feast that even a carnivore couldn\'t turn down.', 499, 349, 'https://hips.hearstapps.com/hmg-prod/images/delish-200511-seo-veggie-kebabs-h-14487-eb-1590509811.jpg?crop=0.667xw:1.00xh;0.0663xw,0&resize=1200:*'),
(9, 'Mussels with Tomatoes and Garlic', 'This dish will transport you straight to the Mediterranean seaside.\r\n\r\n', 399, 349, 'https://hips.hearstapps.com/del.h-cdn.co/assets/17/28/1024x683/gallery-1499895381-mussels-tomato-garlic-delish.jpg?resize=1200:*'),
(10, 'sea shells chia', 'very taste', 1000, 700, 'https://www.licious.in/blog/wp-content/uploads/2022/02/shutterstock_1773695441-min-750x750.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Deepak', 'helodeepakji@gmail.com', '8076763204', 'deepak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
