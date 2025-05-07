-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2025 at 10:51 PM
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
-- Database: `cash_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `type` enum('income','expense') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `amount`, `description`, `date`, `created_at`) VALUES
(1, 'income', 1250000.00, 'Pembayaran Proyek Freelance', '2025-05-08', '2025-05-06 19:26:55'),
(2, 'income', 750000.00, 'Penjualan Barang Bekas', '2025-05-09', '2025-05-06 19:26:55'),
(3, 'income', 3500000.00, 'Dividen Investasi', '2025-05-10', '2025-05-06 19:26:55'),
(4, 'income', 450000.00, 'Komisi Afiliasi', '2025-05-12', '2025-05-06 19:26:55'),
(5, 'income', 8000000.00, 'Bonus Semester', '2025-05-15', '2025-05-06 19:26:55'),
(6, 'income', 600000.00, 'Hasil Sewa Properti', '2025-05-18', '2025-05-06 19:26:55'),
(7, 'income', 350000.00, 'Cashback Kartu Kredit', '2025-05-20', '2025-05-06 19:26:55'),
(8, 'income', 1000000.00, 'Pembayaran dari Klien', '2025-05-22', '2025-05-06 19:26:55'),
(9, 'income', 275000.00, 'Pengembalian Dana', '2025-05-25', '2025-05-06 19:26:55'),
(10, 'income', 4500000.00, 'Pendapatan Bisnis Online', '2025-05-28', '2025-05-06 19:26:55'),
(11, 'expense', 250000.00, 'Tagihan Listrik', '2025-05-08', '2025-05-06 19:27:09'),
(12, 'expense', 180000.00, 'Tagihan Air', '2025-05-08', '2025-05-06 19:27:09'),
(13, 'expense', 450000.00, 'Asuransi Bulanan', '2025-05-10', '2025-05-06 19:27:09'),
(14, 'expense', 750000.00, 'Biaya Pendidikan', '2025-05-11', '2025-05-06 19:27:09'),
(15, 'expense', 320000.00, 'Perawatan Kendaraan', '2025-05-12', '2025-05-06 19:27:09'),
(16, 'expense', 1200000.00, 'Cicilan KPR', '2025-05-15', '2025-05-06 19:27:09'),
(17, 'expense', 850000.00, 'Cicilan Kendaraan', '2025-05-15', '2025-05-06 19:27:09'),
(18, 'expense', 600000.00, 'Biaya Kesehatan', '2025-05-16', '2025-05-06 19:27:09'),
(19, 'expense', 480000.00, 'Belanja Pakaian', '2025-05-18', '2025-05-06 19:27:09'),
(20, 'expense', 350000.00, 'Iuran Keamanan dan Kebersihan', '2025-05-19', '2025-05-06 19:27:09'),
(21, 'expense', 1500000.00, 'Renovasi Rumah', '2025-05-20', '2025-05-06 19:27:09'),
(22, 'expense', 650000.00, 'Belanja Elektronik', '2025-05-22', '2025-05-06 19:27:09'),
(23, 'expense', 420000.00, 'Biaya Transportasi', '2025-05-24', '2025-05-06 19:27:09'),
(24, 'expense', 275000.00, 'Langganan Digital', '2025-05-25', '2025-05-06 19:27:09'),
(25, 'expense', 900000.00, 'Biaya Liburan', '2025-05-28', '2025-05-06 19:27:09'),
(26, 'expense', 380000.00, 'Alat Rumah Tangga', '2025-05-30', '2025-05-06 19:27:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
