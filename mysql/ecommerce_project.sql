-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2024 at 08:38 PM
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
-- Database: `ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('user@gmail.com|127.0.0.1', 'i:1;', 1716445340),
('user@gmail.com|127.0.0.1:timer', 'i:1716445340;', 1716445340);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2024-05-21 04:16:39', '2024-05-21 04:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Watches', '2024-05-21 03:34:49', '2024-05-21 03:34:49'),
(2, 'Rings', '2024-05-21 03:34:58', '2024-05-21 03:34:58'),
(3, 'Men\'s Wallet', '2024-05-21 03:35:50', '2024-05-21 03:35:50'),
(4, 'Women\'s Bag', '2024-05-21 03:36:16', '2024-05-21 03:36:16'),
(5, 'Sneakers', '2024-05-21 03:36:34', '2024-05-21 03:36:34'),
(6, 'Casual Shoes', '2024-05-21 03:37:13', '2024-05-21 03:37:13'),
(7, 'Men\'s Bracelets', '2024-05-21 03:38:03', '2024-05-21 03:38:03'),
(8, 'Women\'s Bracelets', '2024-05-21 03:38:20', '2024-05-21 03:38:20'),
(9, 'Flowers', '2024-05-23 00:55:37', '2024-05-23 00:55:37'),
(10, 'Sneaker', '2024-05-24 12:07:53', '2024-05-24 12:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_19_122613_create_categories_table', 1),
(5, '2024_05_19_184021_create_products_table', 1),
(6, '2024_05_20_065004_create_carts_table', 1),
(7, '2024_05_20_182541_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rec_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in progress',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `rec_address`, `phone`, `status`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Lahore,Pakistan', '03889999999', 'On the way', 3, 2, '2024-05-21 05:17:35', '2024-05-23 01:25:07'),
(2, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-21 12:27:50', '2024-05-21 12:27:50'),
(3, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-22 00:30:39', '2024-05-22 00:30:39'),
(4, 'Ali', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-22 13:56:15', '2024-05-22 13:56:15'),
(5, 'Ali', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 4, '2024-05-22 13:56:15', '2024-05-22 13:56:15'),
(6, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-22 14:02:58', '2024-05-22 14:02:58'),
(7, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 4, '2024-05-22 14:02:58', '2024-05-22 14:02:58'),
(8, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-22 14:03:30', '2024-05-22 14:03:30'),
(9, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 4, '2024-05-22 14:03:30', '2024-05-22 14:03:30'),
(10, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 2, '2024-05-22 14:14:20', '2024-05-22 14:14:20'),
(11, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'in progress', 2, 4, '2024-05-22 14:14:20', '2024-05-22 14:14:20'),
(12, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'Delivered', 2, 5, '2024-05-23 01:23:32', '2024-05-23 01:33:39'),
(13, 'Ali Javed', 'Faislabad,Pakistan', '03236666666', 'On the way', 2, 16, '2024-05-23 01:23:32', '2024-05-23 01:33:47'),
(14, 'Abdullah', 'Faislabad,Pakistan', '03234567894', 'On the way', 4, 6, '2024-05-24 12:04:09', '2024-05-24 12:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 'Men\'s Chain Watch', 'Men\'s Black Chain Watch\r\n\r\nElevate your style with our Men\'s Black Chain Watch, a perfect blend of sophistication and functionality. This timepiece features a sleek, all-black stainless steel chain band that exudes a modern and masculine charm. The minimalist black dial is adorned with luminous hands and hour markers, ensuring easy readability even in low light conditions. With its durable construction and scratch-resistant mineral glass, this watch is built to withstand daily wear while maintaining its pristine appearance.\r\n\r\nKey Features:\r\n\r\nElegant Design: All-black stainless steel chain band and case.\r\nClear Display: Minimalist black dial with luminous hands and markers.\r\nDurability: Scratch-resistant mineral glass and water-resistant up to 50 meters.\r\nPrecision: Quartz movement for accurate timekeeping.\r\nComfort: Adjustable chain band with a secure clasp for a perfect fit.\r\nWhether you\'re heading to a business meeting or a casual outing, the Men\'s Black Chain Watch is the ultimate accessory to complement your outfit. Timeless in design and built for longevity, this watch is a must-have addition to any modern man\'s wardrobe.', '1716282955.png', '4500', 'Watches', '49', '2024-05-21 04:15:55', '2024-05-21 11:36:57'),
(4, 'Women\'s Narrow Watch', '**Product Description: Elegant Women\'s Narrow Watch**\r\n\r\n**Timeless Elegance on Your Wrist**\r\n\r\nDiscover the perfect blend of sophistication and minimalism with our Elegant Women\'s Narrow Watch. Designed for the modern woman who values both style and functionality, this exquisite timepiece is an essential addition to any jewelry collection.\r\n\r\n**Features:**\r\n- **Sleek Design:** The narrow band adds a delicate touch, complementing any outfit, from casual daywear to elegant evening attire.\r\n- **High-Quality Materials:** Crafted with a durable stainless steel case and a comfortable, adjustable strap for a perfect fit.\r\n- **Precision Movement:** Powered by a reliable quartz movement, ensuring accurate timekeeping and minimal maintenance.\r\n- **Elegant Dial:** A minimalist dial with easy-to-read markers and a subtle logo, exuding a classic charm.\r\n- **Versatile Style:** Available in multiple finishes, including polished silver, rose gold, and classic black, to match your unique style.\r\n\r\n**Specifications:**\r\n- **Case Diameter:** 24mm\r\n- **Band Width:** 8mm\r\n- **Material:** Stainless Steel\r\n- **Movement:** Quartz\r\n- **Water Resistance:** 30 meters (3 ATM)\r\n\r\n**Why You\'ll Love It:**\r\nThis narrow watch is not just a timepiece; it\'s a statement of elegance and grace. Whether you\'re dressing up for a special occasion or looking for a daily accessory that elevates your look, this watch is the perfect choice. Its slender design ensures a comfortable fit on any wrist size, making it an ideal gift for yourself or a loved one.\r\n\r\n**Order Yours Today:**\r\nEmbrace timeless elegance with our Elegant Women\'s Narrow Watch. Order now and enjoy free shipping on your purchase, along with a 1-year warranty for your peace of mind. Elevate your style with a watch that truly reflects your sophistication and grace.', '1716283867.png', '3000', 'Watches', '50', '2024-05-21 04:31:07', '2024-05-21 04:31:07'),
(5, 'Best Digital Watch', 'Sure, here\'s a concise and compelling description for a digital watch aimed at an eCommerce website:\r\n\r\n---\r\n\r\n### Sleek Digital Watch with Multifunctional Display\r\n\r\n**Features:**\r\n- **Modern Design**: Sleek and lightweight, this digital watch is perfect for both casual and sporty styles.\r\n- **Multifunctional Display**: Easily read the time, date, and day of the week at a glance. Additional features include a stopwatch, alarm, and backlight for night visibility.\r\n- **Durability**: Built with high-quality materials, this watch is water-resistant up to 50 meters, making it suitable for everyday wear and outdoor activities.\r\n- **Comfortable Fit**: The adjustable strap ensures a comfortable fit for any wrist size.\r\n- **Long Battery Life**: Designed for longevity, this watch offers a reliable battery life, ensuring you stay on time without frequent replacements.\r\n\r\n**Specifications:**\r\n- **Display**: LCD with backlight\r\n- **Case Material**: Stainless steel and durable plastic\r\n- **Band Material**: Flexible silicone\r\n- **Water Resistance**: 50 meters\r\n- **Battery**: CR2025 lithium battery included\r\n\r\nElevate your timekeeping with this stylish and practical digital watch. Whether you\'re heading to the gym, office, or an outdoor adventure, this watch is your perfect companion.\r\n\r\n---\r\n\r\nThis description highlights the watch\'s key features and specifications while appealing to a broad audience by emphasizing versatility and style.', '1716442519.png', '5000', 'Watches', '39', '2024-05-23 00:35:19', '2024-05-23 00:45:44'),
(6, 'Women\'s Wrist Watch', '**Timeless Elegance Women\'s Wrist Watch**\r\n\r\nElevate your style with our Timeless Elegance Women\'s Wrist Watch. Crafted for the modern woman who appreciates both fashion and functionality, this exquisite timepiece combines classic design with contemporary sophistication.\r\n\r\n- **Premium Quality:** The watch features a durable stainless steel case with a polished finish that resists scratches and tarnish. The genuine leather strap ensures comfort and durability, making it perfect for everyday wear or special occasions.\r\n- **Elegant Design:** The minimalist dial, adorned with delicate Roman numerals and slender hands, offers a refined look that complements any outfit. Available in various color options to suit your personal taste.\r\n- **Precision Movement:** Powered by a reliable quartz movement, this watch guarantees accurate timekeeping, so you\'re always on schedule.\r\n- **Water-Resistant:** With a water resistance rating of up to 30 meters, this watch is safe from splashes and brief immersion in water, making it versatile for different environments.\r\n- **Gift-Worthy Packaging:** Delivered in a beautifully designed box, this watch makes a perfect gift for birthdays, anniversaries, or any special occasion.\r\n\r\nExperience the perfect blend of elegance and practicality with our Timeless Elegance Women\'s Wrist Watch. Whether you\'re heading to a business meeting or a casual outing, this watch is your ideal companion, reflecting your impeccable taste and style.', '1716443211.png', '2500', 'Watches', '67', '2024-05-23 00:46:51', '2024-05-23 00:46:51'),
(7, 'Black Leather Bracelets', 'Elevate your everyday look with our Leather Braided Bracelet. Handcrafted from premium genuine leather, this bracelet features a timeless braided design that exudes rugged elegance. The stainless steel magnetic clasp ensures a secure fit while adding a touch of modern sophistication. Perfect for casual wear or a night out, this bracelet complements any outfit effortlessly. Available in black and brown.\r\n\r\nMaterial: Genuine Leather, Stainless Steel\r\nClasp: Magnetic\r\nColors: Black, Brown\r\nLength: 8.5 inches (Adjustable)', '1716443353.png', '1200', 'Men\'s Bracelets', '32', '2024-05-23 00:49:13', '2024-05-23 00:49:13'),
(9, 'Men\'s Brown Bracelet', 'Infuse natural elements into your style with our Wood and Lava Stone Bracelet. This unique piece combines polished wood beads with porous lava stones, creating a harmonious blend of textures. The lava stones can be infused with essential oils for aromatherapy benefits. Strung on a durable elastic cord, this bracelet is perfect for both casual and formal wear, adding a touch of nature to your ensemble.\r\n\r\nMaterial: Wood Beads, Lava Stones\r\nCord: Elastic\r\nColors: Natural Wood, Black Lava\r\nDiameter: 10mm beads, Adjustable fit', '1716443422.png', '1000', 'Men\'s Bracelets', '1100', '2024-05-23 00:50:22', '2024-05-23 00:50:22'),
(11, 'Stainless Men\'s Bracelet', 'Make a bold statement with our Stainless Steel Cuff Bracelet. This minimalist accessory features a sleek, polished surface that catches the light beautifully. Its open-ended design allows for easy adjustment, ensuring a perfect fit for any wrist size. Whether you\'re dressing up for a formal event or adding a touch of elegance to your casual attire, this cuff bracelet is the ultimate versatile piece.\r\n\r\nMaterial: Stainless Steel\r\nFinish: Polished\r\nColor: Silver, Gold, Black\r\nWidth: 8mm\r\nAdjustable: Yes', '1716443577.png', '1400', 'Men\'s Bracelets', '43', '2024-05-23 00:52:16', '2024-05-23 00:52:57'),
(12, 'Beaded Hematite Bracelet', 'Channel positive energy with our Beaded Hematite Bracelet. Made from high-quality hematite beads, known for their grounding properties, this bracelet is both stylish and meaningful. Each bead is polished to perfection, providing a sleek, metallic finish. Strung on a durable elastic cord, it fits comfortably on any wrist. Ideal for daily wear or as a thoughtful gift.\r\n\r\nMaterial: Hematite Beads\r\nCord: Elastic\r\nColor: Metallic Gray\r\nDiameter: 8mm beads, Adjustable fit', '1716443642.png', '1250', 'Men\'s Bracelets', '76', '2024-05-23 00:54:02', '2024-05-23 00:54:02'),
(13, 'Elegant Mixed Flower Bouquet', 'Brighten any occasion with our stunning mixed flower bouquet, artfully arranged to bring joy and beauty into any space. This exquisite bouquet features a vibrant assortment of fresh, hand-picked flowers, including:\r\n\r\nRoses: Symbolizing love and passion, our roses add a touch of romance with their velvety petals and captivating fragrance.\r\nLilies: Known for their elegance and grace, lilies bring a sense of purity and sophistication to the arrangement.\r\nGerbera Daisies: These cheerful blooms add a pop of color and a playful charm, making the bouquet irresistibly eye-catching.\r\nChrysanthemums: Representing joy and optimism, chrysanthemums enhance the bouquet with their lush, full blooms.\r\nSeasonal Greens: Complementing the vibrant flowers, our seasonal greens add texture and depth, creating a harmonious and balanced look.\r\nEach bouquet is carefully crafted by our skilled florists to ensure the perfect combination of colors and textures, making it an ideal gift for birthdays, anniversaries, or simply to brighten someone\'s day. Our flowers are sourced from trusted growers to guarantee freshness and longevity, ensuring that your bouquet stays beautiful for days.\r\n\r\nKey Features:\r\n\r\nFresh, hand-picked flowers\r\nElegant and vibrant design\r\nLong-lasting freshness\r\nPerfect for any occasion\r\nCare Instructions:\r\n\r\nKeep flowers in a cool place, away from direct sunlight and drafts\r\nChange the water every two days\r\nTrim the stems at a 45-degree angle every few days to maintain freshness\r\nMake your loved ones feel special with the timeless beauty of our mixed flower bouquet, a perfect blend of elegance and cheer. Order now and experience the joy of giving a gift that truly speaks from the heart.', '1716443775.png', '5000', 'Flowers', '15', '2024-05-23 00:56:15', '2024-05-23 00:56:15'),
(14, 'Elegant Mixed Flower Bouquet', '**Elegant Mixed Flower Bouquet**\r\n\r\nBrighten any occasion with our stunning mixed flower bouquet, artfully arranged to bring joy and beauty into any space. This exquisite bouquet features a vibrant assortment of fresh, hand-picked flowers, including:\r\n\r\n- **Roses:** Symbolizing love and passion, our roses add a touch of romance with their velvety petals and captivating fragrance.\r\n- **Lilies:** Known for their elegance and grace, lilies bring a sense of purity and sophistication to the arrangement.\r\n- **Gerbera Daisies:** These cheerful blooms add a pop of color and a playful charm, making the bouquet irresistibly eye-catching.\r\n- **Chrysanthemums:** Representing joy and optimism, chrysanthemums enhance the bouquet with their lush, full blooms.\r\n- **Seasonal Greens:** Complementing the vibrant flowers, our seasonal greens add texture and depth, creating a harmonious and balanced look.\r\n\r\nEach bouquet is carefully crafted by our skilled florists to ensure the perfect combination of colors and textures, making it an ideal gift for birthdays, anniversaries, or simply to brighten someone\'s day. Our flowers are sourced from trusted growers to guarantee freshness and longevity, ensuring that your bouquet stays beautiful for days.\r\n\r\n**Key Features:**\r\n- Fresh, hand-picked flowers\r\n- Elegant and vibrant design\r\n- Long-lasting freshness\r\n- Perfect for any occasion\r\n\r\n**Care Instructions:**\r\n- Keep flowers in a cool place, away from direct sunlight and drafts\r\n- Change the water every two days\r\n- Trim the stems at a 45-degree angle every few days to maintain freshness\r\n\r\nMake your loved ones feel special with the timeless beauty of our mixed flower bouquet, a perfect blend of elegance and cheer. Order now and experience the joy of giving a gift that truly speaks from the heart.', '1716443808.png', '7000', 'Flowers', '40', '2024-05-23 00:56:48', '2024-05-23 00:56:48'),
(15, 'Elegant Mixed Flower Bouquet', '**Elegant Mixed Flower Bouquet**\r\n\r\nBrighten any occasion with our stunning mixed flower bouquet, artfully arranged to bring joy and beauty into any space. This exquisite bouquet features a vibrant assortment of fresh, hand-picked flowers, including:\r\n\r\n- **Roses:** Symbolizing love and passion, our roses add a touch of romance with their velvety petals and captivating fragrance.\r\n- **Lilies:** Known for their elegance and grace, lilies bring a sense of purity and sophistication to the arrangement.\r\n- **Gerbera Daisies:** These cheerful blooms add a pop of color and a playful charm, making the bouquet irresistibly eye-catching.\r\n- **Chrysanthemums:** Representing joy and optimism, chrysanthemums enhance the bouquet with their lush, full blooms.\r\n- **Seasonal Greens:** Complementing the vibrant flowers, our seasonal greens add texture and depth, creating a harmonious and balanced look.\r\n\r\nEach bouquet is carefully crafted by our skilled florists to ensure the perfect combination of colors and textures, making it an ideal gift for birthdays, anniversaries, or simply to brighten someone\'s day. Our flowers are sourced from trusted growers to guarantee freshness and longevity, ensuring that your bouquet stays beautiful for days.\r\n\r\n**Key Features:**\r\n- Fresh, hand-picked flowers\r\n- Elegant and vibrant design\r\n- Long-lasting freshness\r\n- Perfect for any occasion\r\n\r\n**Care Instructions:**\r\n- Keep flowers in a cool place, away from direct sunlight and drafts\r\n- Change the water every two days\r\n- Trim the stems at a 45-degree angle every few days to maintain freshness\r\n\r\nMake your loved ones feel special with the timeless beauty of our mixed flower bouquet, a perfect blend of elegance and cheer. Order now and experience the joy of giving a gift that truly speaks from the heart.', '1716443833.png', '3500', 'Flowers', '30', '2024-05-23 00:57:13', '2024-05-23 00:57:13'),
(16, 'Elegant Mixed Flower Bouquet', '**Elegant Mixed Flower Bouquet**\r\n\r\nBrighten any occasion with our stunning mixed flower bouquet, artfully arranged to bring joy and beauty into any space. This exquisite bouquet features a vibrant assortment of fresh, hand-picked flowers, including:\r\n\r\n- **Roses:** Symbolizing love and passion, our roses add a touch of romance with their velvety petals and captivating fragrance.\r\n- **Lilies:** Known for their elegance and grace, lilies bring a sense of purity and sophistication to the arrangement.\r\n- **Gerbera Daisies:** These cheerful blooms add a pop of color and a playful charm, making the bouquet irresistibly eye-catching.\r\n- **Chrysanthemums:** Representing joy and optimism, chrysanthemums enhance the bouquet with their lush, full blooms.\r\n- **Seasonal Greens:** Complementing the vibrant flowers, our seasonal greens add texture and depth, creating a harmonious and balanced look.\r\n\r\nEach bouquet is carefully crafted by our skilled florists to ensure the perfect combination of colors and textures, making it an ideal gift for birthdays, anniversaries, or simply to brighten someone\'s day. Our flowers are sourced from trusted growers to guarantee freshness and longevity, ensuring that your bouquet stays beautiful for days.\r\n\r\n**Key Features:**\r\n- Fresh, hand-picked flowers\r\n- Elegant and vibrant design\r\n- Long-lasting freshness\r\n- Perfect for any occasion\r\n\r\n**Care Instructions:**\r\n- Keep flowers in a cool place, away from direct sunlight and drafts\r\n- Change the water every two days\r\n- Trim the stems at a 45-degree angle every few days to maintain freshness\r\n\r\nMake your loved ones feel special with the timeless beauty of our mixed flower bouquet, a perfect blend of elegance and cheer. Order now and experience the joy of giving a gift that truly speaks from the heart.', '1716443859.png', '4000', 'Flowers', '33', '2024-05-23 00:57:39', '2024-05-23 00:57:39'),
(17, 'Women\'s Bag', 'terfghjopffvlkl]', '1716570766.png', '7000', 'Women\'s Bag', '30', '2024-05-24 12:12:46', '2024-05-24 12:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TXk6QVG2TAPUlpZYlZn4yInD2kIqKabMG9z0Du2u', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR1hkQ2RlQVBrenM1YlZMdmtnQUJnUTZEQzVBOWNKVElIVTVRZlB6TiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1716570952);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@gmail.com', 'user', NULL, NULL, '2024-05-21 02:25:12', '$2y$12$OeM3MWlx2mg5FihB1pKD8.xqe6Wb3Eq1m3Nz3hnut9uFYvR.p0Rka', 'QvtA1n7RCF', '2024-05-21 02:25:13', '2024-05-21 02:25:13'),
(2, 'Ali Javed', 'ali@gmail.com', 'user', '03236666666', 'Faislabad,Pakistan', NULL, '$2y$12$HPJqXJoeIhmdyOjtFcZO/e8M4RJKcJvYOhQYRxVMKxBGWbj3PhgI2', NULL, '2024-05-21 02:32:40', '2024-05-21 02:32:40'),
(3, 'Admin', 'admin@gmail.com', 'admin', '03889999999', 'Lahore,Pakistan', NULL, '$2y$12$Xn8cP/cwyryzACaGOX5yt.O4Qpsf/C37JHpSb3rbifYwLXk5gz/um', NULL, '2024-05-21 02:33:58', '2024-05-21 02:33:58'),
(4, 'Abdullah', 'abdullah@gmail.com', 'user', '03234567894', 'Faislabad,Pakistan', NULL, '$2y$12$RPs6lHaMwu.QiLpreqEOZOtA4wLF2BHXki7HQ11vztEDiUU6FuZ9K', NULL, '2024-05-24 12:02:50', '2024-05-24 12:02:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
