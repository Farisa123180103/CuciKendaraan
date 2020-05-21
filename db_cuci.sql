-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 12:23 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuci`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_paket`
--

CREATE TABLE `daftar_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_paket`
--

INSERT INTO `daftar_paket` (`id_paket`, `nama_paket`, `harga`) VALUES
(2, 'Primeun', 50000),
(4, 'Reguler', 30000),
(7, 'cuci snow', 80000),
(8, 'Jamur', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `data_antri`
--

CREATE TABLE `data_antri` (
  `id_data` int(11) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `no_pol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_antri`
--

INSERT INTO `data_antri` (`id_data`, `nama_pelanggan`, `id_paket`, `user_id`, `status`, `no_pol`) VALUES
(5, 'ko', 4, 1, 'Selesai', 'BE 1234 B'),
(6, 'Pati', 2, 3, 'Selesai', 'BE 1235 BI'),
(7, 'Pati', 4, 3, 'Selesai', 'BE 1329 BI'),
(8, 'abc', 4, 1, 'Selesai', 'BE 1234 BI'),
(9, 'adib', 4, 1, 'Selesai', 'BE 1234 L'),
(10, 'siti', 2, 1, 'Selesai', 'B 1234 BP'),
(11, 'cita', 2, 1, 'Selesai', 'L 1234 BP'),
(12, 'adib', 4, 1, 'Selesai', 'BE 1234 BI'),
(14, 'abc', 2, 1, 'Selesai', 'BE 1234 LK'),
(16, 'abc', 2, 1, 'Selesai', 'BE 1234 BI'),
(17, 'abc', 2, 1, 'Selesai', 'BE 1234 BI'),
(19, 'abc', 2, 1, 'Selesai', 'BE 1234 BP'),
(20, 'bg', 4, 1, 'Selesai', 'BE 1234 BE'),
(21, 'Pati', 2, 1, 'Selesai', 'BE 1234 BP'),
(22, 'bg', 4, 1, 'Selesai', 'BE 1234 BI'),
(23, 'siti', 4, 1, 'Selesai', 'BE 1234 BE'),
(24, 'jaja', 2, 1, 'Selesai', 'BE 1234 BI'),
(25, 'laras', 2, 1, 'Selesai', 'BE 1234 BI'),
(26, 'Pati', 2, 3, 'Selesai', 'BE 1235 BI'),
(27, 'abc', 2, 1, 'Selesai', 'BE 1234 BI'),
(29, 'risa', 7, 1, 'antri', 'BE 1234 BP'),
(31, 'Raga', 7, 11, 'Selesai', 'BE 1234 BE');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `level`) VALUES
(1, 'Admin'),
(2, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_data` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl`, `id_data`, `bayar`, `kembalian`) VALUES
('CUS-0007', '2020-04-20', 5, 50000, 0),
('CUS-0008', '2020-04-20', 9, 40000, 10000),
('CUS-0009', '2020-04-20', 10, 50000, 10000),
('CUS-0010', '2020-04-21', 11, 50000, 10000),
('CUS-0011', '2020-04-22', 12, 50000, 20000),
('CUS-0012', '2020-04-22', 14, 50000, 10000),
('CUS-0013', '2020-04-23', 16, 50000, 10000),
('CUS-0014', '2020-05-08', 17, 0, 0),
('CUS-0015', '2020-05-08', 17, 0, 0),
('CUS-0016', '2020-05-08', 17, 0, 0),
('CUS-0017', '2020-05-08', 17, 0, 0),
('CUS-0018', '2020-05-08', 19, 0, 0),
('CUS-0019', '2020-05-19', 20, 40000, 10000),
('CUS-0020', '2020-05-19', 21, 50000, 0),
('CUS-0021', '2020-05-19', 22, 40000, 10000),
('CUS-0022', '2020-05-19', 22, 40000, 10000),
('CUS-0023', '2020-05-19', 23, 40000, 10000),
('CUS-0024', '2020-05-19', 24, 50000, 0),
('CUS-0025', '2020-05-19', 25, 50000, 0),
('CUS-0026', '2020-05-19', 26, 60000, 10000),
('CUS-0027', '2020-05-20', 27, 100000, 50000),
('CUS-0028', '2020-05-20', 31, 100000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `no_telp`, `nama`, `role_id`) VALUES
(1, 'admin', 'admin1', '087899388136', 'Farisa', 1),
(3, 'pati', 'pati', '081912345679', 'Pati', 2),
(8, 'dali', 'dali', '13412', 'dali', 2),
(9, 'a', 'a', '081912345699', 'adibia', 1),
(10, 'yaya1', '123', '081912345800', 'yaya', 2),
(11, 'raga1', 'raga5', '081912345900', 'raga', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_paket`
--
ALTER TABLE `daftar_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `data_antri`
--
ALTER TABLE `data_antri`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `f_paket` (`id_paket`),
  ADD KEY `f_user` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `f_data` (`id_data`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `f_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_paket`
--
ALTER TABLE `daftar_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_antri`
--
ALTER TABLE `data_antri`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_antri`
--
ALTER TABLE `data_antri`
  ADD CONSTRAINT `f_paket` FOREIGN KEY (`id_paket`) REFERENCES `daftar_paket` (`id_paket`),
  ADD CONSTRAINT `f_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `f_data` FOREIGN KEY (`id_data`) REFERENCES `data_antri` (`id_data`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `f_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
