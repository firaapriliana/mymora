-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Feb 2020 pada 04.35
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10407112_db_gangguan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `idadmin` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`idadmin`, `username`, `nama_lengkap`, `password`, `level`) VALUES
(1, 'rahma', 'rahma', '12345', 'teknisi'),
(2, 'annisa', 'Annisa Anjani', '@Nnisa03', 'teknisi'),
(3, 'fira', 'Fira Apriliana', '12345678', 'admin'),
(4, 'abim', 'abim bimantara', '12345', 'teknisi'),
(5, 'amirul', 'amirul mukminin', '12345', 'teknisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gangguan`
--

CREATE TABLE `tbl_gangguan` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `NoInet` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `CP` varchar(15) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `Jenis_Gangguan` varchar(25) NOT NULL,
  `Sub_Gangguan` varchar(25) NOT NULL,
  `status` varchar(40) NOT NULL,
  `tiket` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gangguan`
--

INSERT INTO `tbl_gangguan` (`tanggal`, `jam`, `NoInet`, `nama`, `alamat`, `CP`, `keluhan`, `Jenis_Gangguan`, `Sub_Gangguan`, `status`, `tiket`) VALUES
('2019-07-26', '12:50:52', '15292785', 'umine', 'lamongan', '085637478890', 'USEETV', 'Lupa Password', 'lupa nama&sandi', 'belum', 'open ticket'),
('2019-07-23', '20:59:32', '153267', 'ewy', 'lamongan', '086327', 'USEETV', 'Error', '4. Error 1901', 'belum', 'open ticket'),
('2019-08-01', '12:09:55', '15638292', 'Fira Apriliana', 'Jl raya plosowahyu', '085647485590', 'USEETV', 'Error', '4. Error 1901', 'belum', 'open ticket'),
('2019-07-26', '18:11:17', '157393749303', 'Annisa Anjani', 'Sambeng', '081733633004', 'INTERNET', 'Tidak Bisa Connect', 'ILM', 'Belum', 'open ticket'),
('2019-07-26', '12:42:45', '15983463820', 'Kaga-kun', 'mojosari', '081711633005', 'INTERNET', 'Tidak Bisa Connect', 'GCSSID', 'belum', 'open ticket'),
('2019-07-26', '13:19:03', '15GHSA576', 'mayasi', 'surabaya', '085627526637', 'USEETV', 'Terkait Youtube', 'setting ulang', 'belum', 'open ticket'),
('2019-07-26', '13:13:37', '15GSHA56', 'hee kyo', 'lamongan', '085637489987', 'USEETV', 'Error', '3. Error 1306', 'belum', 'open ticket'),
('2019-07-26', '13:03:30', '15HD577', 'arira', 'surabaya', '093486493', 'USEETV', 'Error', '3. Error 1306', 'belum', 'open ticket'),
('2019-07-21', '09:06:46', '15HGDAJ6', 'Lily', 'lamongan', '085647389987', 'USEETV', 'Error', '1. Error 1302', 'belum', 'open');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_progress`
--

CREATE TABLE `tbl_progress` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `NoInet` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `CP` varchar(15) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `Jenis_Gangguan` varchar(25) NOT NULL,
  `Sub_Gangguan` varchar(25) NOT NULL,
  `status` varchar(40) NOT NULL,
  `tiket` varchar(40) NOT NULL,
  `teknisi` varchar(50) NOT NULL,
  `Progress` varchar(50) NOT NULL,
  `Customerexperience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tambahanteknisi`
--

CREATE TABLE `tbl_tambahanteknisi` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `NoInet` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `CP` varchar(15) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `Jenis_Gangguan` varchar(25) NOT NULL,
  `Sub_Gangguan` varchar(25) NOT NULL,
  `status` varchar(40) NOT NULL,
  `tiket` varchar(40) NOT NULL,
  `teknisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tambahanteknisi`
--

INSERT INTO `tbl_tambahanteknisi` (`tanggal`, `jam`, `NoInet`, `nama`, `alamat`, `CP`, `keluhan`, `Jenis_Gangguan`, `Sub_Gangguan`, `status`, `tiket`, `teknisi`) VALUES
('2019-07-23', '09:35:46', '1512314578', 'Anjani Annisah', 'sambeng', '085730941900', 'INTERNET', 'Tidak Bisa Browsing', 'IPP', 'sudah', 'close', 'Annisa Anjani'),
('2019-07-21', '09:21:10', '15123456789754', 'annisa hanabi', 'Ngimbang, Lamongan', '081335285039', 'INTERNET', 'Tidak Bisa Connect', 'LIM', 'sudah', 'close', 'amirul mukminin'),
('2019-07-20', '09:41:08', '15211354687', 'anjanyannisa03', 'Mantup, Lamongan', '081265339875', 'INTERNET', 'Tidak Bisa Connect', 'ILM', 'sudah', 'close', 'Annisa Anjani'),
('2019-07-23', '20:36:03', '15216FGSAF5', 'apriliany', 'lamongan', '085624751', 'USEETV', 'Error', '1. Error 1302', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-23', '09:48:40', '152614285', 'farah', 'lamongan', '085647237927', 'USEETV', 'Terkait Youtube', 'setting ulang', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-23', '09:50:40', '15FHG5', 'fira', 'lamongan', '0856473892386', 'USEETV', 'Terkait Youtube', 'setting ulang', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-22', '09:32:59', '15GDFGS5', 'apriliana', 'lamongan', '085678987767', 'USEETV', 'Terkait Youtube', 'TEXT', 'SUDAH', 'close', 'Annisa Anjani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tambahanteknisitemp`
--

CREATE TABLE `tbl_tambahanteknisitemp` (
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `NoInet` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `CP` varchar(15) NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `Jenis_Gangguan` varchar(25) NOT NULL,
  `Sub_Gangguan` varchar(25) NOT NULL,
  `status` varchar(40) NOT NULL,
  `tiket` varchar(40) NOT NULL,
  `teknisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tambahanteknisitemp`
--

INSERT INTO `tbl_tambahanteknisitemp` (`tanggal`, `jam`, `NoInet`, `nama`, `alamat`, `CP`, `keluhan`, `Jenis_Gangguan`, `Sub_Gangguan`, `status`, `tiket`, `teknisi`) VALUES
('2019-07-23', '09:35:46', '1512314578', 'Anjani Annisah', 'sambeng', '085730941900', 'INTERNET', 'Tidak Bisa Browsing', 'IPP', 'sudah', 'close', 'Annisa Anjani'),
('2019-07-21', '09:21:10', '15123456789754', 'annisa hanabi', 'Ngimbang, Lamongan', '081335285039', 'INTERNET', 'Tidak Bisa Connect', 'LIM', 'sudah', 'close', 'amirul mukminin'),
('2019-07-20', '09:41:08', '15211354687', 'anjanyannisa03', 'Mantup, Lamongan', '081265339875', 'INTERNET', 'Tidak Bisa Connect', 'ILM', 'sudah', 'close', 'Annisa Anjani'),
('2019-07-23', '20:36:03', '15216FGSAF5', 'apriliany', 'lamongan', '085624751', 'USEETV', 'Error', '1. Error 1302', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-23', '09:48:40', '152614285', 'farah', 'lamongan', '085647237927', 'USEETV', 'Terkait Youtube', 'setting ulang', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-23', '09:50:40', '15FHG5', 'fira', 'lamongan', '0856473892386', 'USEETV', 'Terkait Youtube', 'setting ulang', 'belum', 'open ticket', 'Annisa Anjani'),
('2019-07-22', '09:32:59', '15GDFGS5', 'apriliana', 'lamongan', '085678987767', 'USEETV', 'Terkait Youtube', 'TEXT', 'SUDAH', 'close', 'Annisa Anjani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_teknisi`
--

CREATE TABLE `tbl_teknisi` (
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_teknisi`
--

INSERT INTO `tbl_teknisi` (`nik`, `nama`) VALUES
(123456, 'Annisa Anjani'),
(126537, 'rahma'),
(789123, 'Fira Apriliana'),
(352322700, 'amirul mukminin'),
(352422600, 'abim bimantara');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `tbl_gangguan`
--
ALTER TABLE `tbl_gangguan`
  ADD UNIQUE KEY `NoInet` (`NoInet`);

--
-- Indeks untuk tabel `tbl_progress`
--
ALTER TABLE `tbl_progress`
  ADD UNIQUE KEY `NoInet` (`NoInet`);

--
-- Indeks untuk tabel `tbl_tambahanteknisi`
--
ALTER TABLE `tbl_tambahanteknisi`
  ADD UNIQUE KEY `NoInet` (`NoInet`);

--
-- Indeks untuk tabel `tbl_tambahanteknisitemp`
--
ALTER TABLE `tbl_tambahanteknisitemp`
  ADD UNIQUE KEY `NoInet` (`NoInet`);

--
-- Indeks untuk tabel `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  ADD UNIQUE KEY `nik` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `idadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
