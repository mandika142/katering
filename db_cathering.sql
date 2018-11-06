-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 04:15 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cathering`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `no_tlp`) VALUES
(1, 'Bayu Okta K', 'Teluk Jambe Timur', '089'),
(2, 'Andini', 'Cikampek', '0859'),
(3, 'Nurrochmat Saptoaji', 'Karang Mas', '089777'),
(4, 'Alif Alfadilah Nur APIP', 'Gunung Putri', '0987654321'),
(5, 'Aji', 'Cikampek', '089889');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pengiriman` varchar(255) NOT NULL,
  `paket_pesanan` varchar(255) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `dibayar` int(11) NOT NULL,
  `sisa_pembayaran` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pelanggan`, `tanggal_pengiriman`, `paket_pesanan`, `jumlah_pesanan`, `total_harga`, `dibayar`, `sisa_pembayaran`, `status`) VALUES
(1, 'Mon Oct 29 10:05:05 ICT 2018', '(NASI BOX)Nasi + Ayam Bakar + Lalap (SNACK BOX)Roti + Lontong + Aqua Gelas', 10, 200000, 200000, 0, 'LUNAS'),
(2, 'Wed Oct 31 12:02:21 ICT 2018', '(NASI)Nasi Uduk (LAUK)Ayam Bakar (TEMAN-LAUK)Tumis Buncis (MINUMAN)Levios ( Gelas )', 150, 3000000, 3000000, 0, 'LUNAS'),
(3, 'Wed Oct 31 12:33:45 ICT 2018', '(NASI BOX)Nasi + Orek Tempe + Ayam Goreng (SNACK BOX)-', 15, 300000, 300000, 0, 'LUNAS'),
(4, 'Wed Oct 31 18:34:17 ICT 2018', '(NASI BOX)Nasi + Ayam Bakar + Lalap (SNACK BOX)Lontong + Aqua Gelas', 25, 462500, 400000, -62500, 'BELUM LUNAS'),
(5, 'Wed Oct 31 09:41:45 ICT 2018', '(NASI BOX)Nasi + Orek Tempe + Ayam Goreng (SNACK BOX)Roti + Lontong + Aqua Gelas', 10, 250000, 200000, -50000, 'BELUM LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `jenis_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jenis_produk`, `harga_produk`) VALUES
(10001, 'Nasi Kuning', 'Nasi', 5000),
(10002, 'Aqua ( Gelas )', 'Minuman', 500),
(10003, 'Nasi Uduk', 'Nasi', 4000),
(10004, 'Nasi Putih ( Biasa )', 'Nasi', 3000),
(10005, 'Levios ( Gelas )', 'Minuman', 500),
(10006, 'Vit ( Gelas )', 'Minuman', 500),
(10007, 'Club ( Gelas )', 'Minuman', 500),
(10008, 'Ayam Goreng', 'Lauk', 8000),
(10009, 'Ayam Bakar', 'Lauk', 12000),
(10010, 'Ikan Mas Goreng', 'Lauk', 9500),
(10011, 'Ikan Mas Bakar', 'Lauk', 10000),
(10012, 'Sate Ayam ( 5 Tusuk )', 'Lauk', 7500),
(10013, 'Orek Tempe', 'Teman-Lauk', 3000),
(10014, 'Orek Tempe + Tumis Buncis', 'Teman-Lauk', 5000),
(10015, 'Tumis Buncis', 'Teman-Lauk', 3500),
(10016, 'Mie Goreng', 'Teman-Lauk', 2500),
(10017, 'Orek Tempe + Mie Goreng ', 'Teman-Lauk', 5000),
(10018, 'Nasi + Orek Tempe + Ayam Goreng', 'Nasi Box', 20000),
(10019, 'Roti + Lontong + Aqua Gelas', 'Snack Box', 5000),
(10020, 'Nasi + Ayam Bakar + Lalap', 'Nasi Box', 15000),
(10021, 'Lontong + Aqua Gelas', 'Snack Box', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admincat73', 'berkah73'),
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
