-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2015 at 12:10 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `si_bioskop`
--
CREATE DATABASE IF NOT EXISTS `si_bioskop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `si_bioskop`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `saldo` int(11) NOT NULL,
  `hak_akses` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `nama`, `alamat`, `pass`, `saldo`, `hak_akses`) VALUES
('a', 'a', 'a', 'a', 100000, 0),
('adminboxoffice@gmail.com', 'Admin', 'BoxOffice', 'a', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_film`
--

CREATE TABLE IF NOT EXISTS `daftar_film` (
  `kode_film` varchar(5) NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `mulai_tayang` date NOT NULL,
  `batas_tayang` date NOT NULL,
  `sinopsis` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`kode_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_film`
--

INSERT INTO `daftar_film` (`kode_film`, `nama_film`, `harga_tiket`, `mulai_tayang`, `batas_tayang`, `sinopsis`, `rating`) VALUES
('11151', 'THE GOOD DINOSAUR', 20000, '2015-11-30', '2015-12-09', 'Apa jadinya jika asteroid yang pernah menabrak bumi dan memusnahkan dinosaurus tidak jadi menabrak bumi dan Dinosaurus tidak pernah punah?\r\nDalam sebuah perjalanan epik ke dunia Dinosaurus, Arlo, dari jenis Apatosaurus, Dinosaurus yang baik berteman dengan manusia. Keduanya berpetualang ke sebuah daerah yang misterius, belajar menghadapi ketakutan dan mengetahui kemampuan yang dimilikinya.', 0),
('11152', 'LEGEND', 20000, '2015-11-30', '2015-12-09', 'Legend akan mengisahkan tentang dua sosok kembar identik, Ronald Kray dan Reggie Kray (Tom Hardy) yang menjadi tokoh paling ditakuti dalam sejarah dunia kejahatan Inggris. Organisasi pimpinan kedua bersaudara ini menguasai London selama periode tahun 1960-an.', 0),
('11153', 'FILOSOFI KOPI', 20000, '2015-11-30', '2015-12-09', 'Hutang mengancam keberadaan kedai Filosofi Kopi yang didirikan oleh Jody dan Ben. Di tengah perjuangan mengatasi hutang dan belitan konflik di antara mereka, seorang pengusaha muncul dengan tantangan yang sanggup menyelamatkan Filosofi Kopi. Dengan keahliannya Ben berhasil meracik kopi yang diberi nama Perfecto, sampai kehadiran El yang mengatakan ada kopi yang lebih baik ketimbang mahakarya Ben meruntuhkan semuanya. Ben dan Jody tidak punya pilihan selain pergi mencari Kopi Tiwus yang akan menentukan kelangsungan Filosofi Kopi dan persahabatan mereka.', 0),
('11154', 'GURU BANGSA TJOKROAMINOTO', 20000, '2015-11-30', '2015-12-09', 'Setelah lepas dari era tanam paksa di akhir tahun 1800, Hindia Belanda (Indonesia) memasuki babak baru yang berpengaruh ke kehidupan masyarakatnya. Yaitu dengan gerakan Politik Etis yang dilakukan oleh pemerintah Belanda. Tetapi kemiskinan masih banyak terjadi. Rakyat masih banyak yang belum mengenyam pendidikan dan kesenjangan sosial antar etnis dan kasta masih terlihat jelas.', 0),
('11155', 'POINT BREAK', 20000, '2015-11-30', '2015-12-09', 'Agen FBI, Johnny Utah (Luke Bracey) mendapat tugas untuk menyamar ke sebuah organisasi berbahaya. Keahlian Johnny beraksi olahraga ekstrem membuatnya dengan mudah masuk ke dalam kelompok yang dipimpin oleh Bodhi (Edgar Ramirez).', 0),
('12151', 'STAR WARS: THE FORCE AWAKENS ', 20000, '2015-12-10', '2015-12-31', 'Star Wars: The Force Awakens akan mengambil latar 30 tahun setelah Return of Jedi. Berkisah tentang sosok Rey (Daisy Ridley) yang akan bergabung bersama dengan mantan Stormtrooper bernama Finn (John Boyega) untuk melakukan sebuah perlawanan.', 0),
('12152', 'SNOOPY AND CHARLIE BROWN: THE PEANUTS MOVIE', 20000, '2015-12-10', '2015-12-31', 'Charlie Brown ingin memulai hidup baru dan menunjukkan diri kepada orang lain sebagai seorang pemenang. Ia melakukannya dengan cara berlatih bisbol dan berlatih menari untuk memikat hati perempuan. Namun semua itu gagal. Namun anjing kesayangannya Snoopy mengajaknya berpetualang bersama dengan Schroeder, Pig-Pen, Peppermint Patty dan kakak beradik Sally dan Lucy.', 0),
('12153', 'FATHERS AND DAUGHTERS', 20000, '2015-12-10', '2015-12-31', 'Seorang penulis pemenang Pulitzer berjuang bertahan hidup dengan status barunya sebagai seorang duda dan seorang ayah setelah mengalami gangguan mental. 27 tahun kemudian, putrinya yang sudah dewasa berjuang untuk memperbaiki hubungan dengan ayahnya dan dirinya sendiri', 0),
('12154', 'SUNSHINE BECOMES YOU', 20000, '2015-12-10', '2015-12-31', 'ALEX HIRANO, seorang pianis terkenal keturunan Jepang yang lebih sering dalam suasana hati buruk daripada suasana hati yang bagus. Ia sedang uring-uringan memikirkan konser yang akan diadakan seminggu lagi. Tak ada yang mampu merubah suasana hatinya ketika ia terserang bad mood, bahkan adiknya sendiri – RAY HIRANO, seorang group B-Boy. Satu hari, Ray mengajak Alex untuk ketemu gadis yang dia cintai yaitu MIA CLARK di tempat dia mengajar dansa. ', 0),
('12155', 'THE 33', 20000, '2015-12-10', '2015-12-31', 'Diangkat dari kisah nyata, The 33 akan mengisahkan kisah fenomenal tentang penyelamatan 33 pekerja tambang di Chili yang terjebak dan akhirnya bisa diselamatkan setelah 69 hari terperangkap di bawah tanah di kedalaman 700 meter.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `kode_jadwal` varchar(10) NOT NULL,
  `kode_film` varchar(5) NOT NULL,
  `kode_teater` varchar(2) NOT NULL,
  `tgl_tayang` date NOT NULL,
  `waktu_tayang` time NOT NULL,
  `sisa_kursi` int(11) NOT NULL,
  PRIMARY KEY (`kode_jadwal`),
  UNIQUE KEY `kode_film` (`kode_film`),
  UNIQUE KEY `kode_teater` (`kode_teater`),
  UNIQUE KEY `kode_film_3` (`kode_film`,`kode_teater`),
  UNIQUE KEY `kode_film_4` (`kode_film`),
  UNIQUE KEY `kode_film_5` (`kode_film`),
  KEY `kode_film_2` (`kode_film`),
  KEY `kode_teater_2` (`kode_teater`),
  FULLTEXT KEY `kode_film_6` (`kode_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `kode_film`, `kode_teater`, `tgl_tayang`, `waktu_tayang`, `sisa_kursi`) VALUES
('A0812151', '11151', '1', '2015-12-08', '11:00:00', 30),
('A0812152', '11152', '2', '2015-12-08', '11:00:00', 30),
('A0812153', '11153', '3', '2015-12-08', '11:00:00', 30),
('A0812154', '11154', '4', '2015-12-08', '11:00:00', 30),
('A0812155', '11155', '5', '2015-12-08', '11:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `teater`
--

CREATE TABLE IF NOT EXISTS `teater` (
  `kode_teater` varchar(2) NOT NULL,
  `nama_teater` varchar(15) NOT NULL,
  `jml_kursi` int(11) NOT NULL,
  PRIMARY KEY (`kode_teater`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teater`
--

INSERT INTO `teater` (`kode_teater`, `nama_teater`, `jml_kursi`) VALUES
('1', 'London', 30),
('2', 'Rome', 30),
('3', 'Sydney', 30),
('4', 'Paris', 30),
('5', 'Hamburg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE IF NOT EXISTS `tiket` (
  `kode_tiket` varchar(13) NOT NULL,
  `kode_transaksi` varchar(6) NOT NULL,
  `no_kursi` int(11) NOT NULL,
  PRIMARY KEY (`kode_tiket`),
  UNIQUE KEY `kode_transaksi` (`kode_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `kode_transaksi` varchar(8) NOT NULL,
  `kode_jadwal` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tgl_beli` date NOT NULL,
  `waktu_beli` time NOT NULL,
  `banyak_beli` int(11) NOT NULL,
  PRIMARY KEY (`kode_transaksi`),
  UNIQUE KEY `kode_jadwal` (`kode_jadwal`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
  `no_token` varchar(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket` int(11) NOT NULL,
  PRIMARY KEY (`no_token`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`no_token`, `username`, `harga`, `ket`) VALUES
('001011215', 'a', 100000, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `kode_teater_jadwal` FOREIGN KEY (`kode_teater`) REFERENCES `teater` (`kode_teater`);

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `kode_transaksi_tiket` FOREIGN KEY (`kode_transaksi`) REFERENCES `transaksi` (`kode_transaksi`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `username_transaksi` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `kode_jadwal_transaksi` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`);

--
-- Constraints for table `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `username_voucher` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
