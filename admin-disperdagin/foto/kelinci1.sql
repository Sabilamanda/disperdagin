-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 13. September 2017 jam 09:26
-- Versi Server: 5.1.33
-- Versi PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kelinci1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'erwin1', 'erwin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelinci`
--

CREATE TABLE IF NOT EXISTS `kelinci` (
  `id_kelinci` int(7) NOT NULL AUTO_INCREMENT,
  `binduk` varchar(7) NOT NULL,
  `noinduk` varchar(7) NOT NULL,
  `bjantan` varchar(7) NOT NULL,
  `nojantan` varchar(7) NOT NULL,
  PRIMARY KEY (`id_kelinci`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `kelinci`
--

INSERT INTO `kelinci` (`id_kelinci`, `binduk`, `noinduk`, `bjantan`, `nojantan`) VALUES
(3, 'Rex', 'PM 14', 'Reza', 'P 38'),
(1, 'Reza', ' NP 26', 'Hyla', ' P 40'),
(2, 'Rex', 'NP 23', 'Hycole', 'P 39'),
(27, 'Hyla', ' 1431', 'Satin', ' 25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reproduksi`
--

CREATE TABLE IF NOT EXISTS `reproduksi` (
  `id_reproduksi` int(7) NOT NULL AUTO_INCREMENT,
  `id_kelinci` int(7) NOT NULL DEFAULT '0',
  `tglkawin` varchar(15) NOT NULL,
  `tahunkawin` varchar(7) NOT NULL,
  `kp` varchar(15) NOT NULL,
  `bbjantankawin` varchar(6) NOT NULL,
  `bbindukkawin` varchar(6) NOT NULL,
  `ab` varchar(10) NOT NULL,
  `ketkawin` text NOT NULL,
  `tglpalpasi` varchar(15) NOT NULL,
  `tahunpalpasi` varchar(7) NOT NULL,
  `bt` varchar(9) NOT NULL,
  `bbindukpalpasi` varchar(6) NOT NULL,
  `pbbpalpasi` varchar(6) NOT NULL,
  `ketpalpasi` text NOT NULL,
  `tgllahir` varchar(15) NOT NULL,
  `tahunlahir` varchar(7) NOT NULL,
  `hidupL` varchar(6) NOT NULL,
  `matiL` varchar(6) NOT NULL,
  `bbindukke` varchar(6) NOT NULL,
  `bbanakke` varchar(6) NOT NULL,
  `bbindividuke` varchar(6) NOT NULL,
  `pbblahir` varchar(6) NOT NULL,
  `lb` varchar(6) NOT NULL,
  `ketlahir` text NOT NULL,
  `my` varchar(10) NOT NULL,
  `jumlahposter` varchar(6) NOT NULL,
  `ketpostering` text NOT NULL,
  `tgl21` varchar(15) NOT NULL,
  `tahun21` varchar(7) NOT NULL,
  `hidup21` varchar(6) NOT NULL,
  `mati21` varchar(6) NOT NULL,
  `bbinduk21` varchar(6) NOT NULL,
  `bbanak21` varchar(6) NOT NULL,
  `bbindividu21` varchar(6) NOT NULL,
  `pbb21` varchar(6) NOT NULL,
  `produksisusu` varchar(6) NOT NULL,
  `ket21` text NOT NULL,
  `tgl35` varchar(15) NOT NULL,
  `tahun35` varchar(5) NOT NULL,
  `hidup35` varchar(6) NOT NULL,
  `mati35` varchar(6) NOT NULL,
  `bbinduk35` varchar(6) NOT NULL,
  `bbanak35` varchar(6) NOT NULL,
  `bbindividu35` varchar(6) NOT NULL,
  `pbb35` varchar(6) NOT NULL,
  `ket35` text NOT NULL,
  PRIMARY KEY (`id_reproduksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `reproduksi`
--

INSERT INTO `reproduksi` (`id_reproduksi`, `id_kelinci`, `tglkawin`, `tahunkawin`, `kp`, `bbjantankawin`, `bbindukkawin`, `ab`, `ketkawin`, `tglpalpasi`, `tahunpalpasi`, `bt`, `bbindukpalpasi`, `pbbpalpasi`, `ketpalpasi`, `tgllahir`, `tahunlahir`, `hidupL`, `matiL`, `bbindukke`, `bbanakke`, `bbindividuke`, `pbblahir`, `lb`, `ketlahir`, `my`, `jumlahposter`, `ketpostering`, `tgl21`, `tahun21`, `hidup21`, `mati21`, `bbinduk21`, `bbanak21`, `bbindividu21`, `pbb21`, `produksisusu`, `ket21`, `tgl35`, `tahun35`, `hidup35`, `mati35`, `bbinduk35`, `bbanak35`, `bbindividu35`, `pbb35`, `ket35`) VALUES
(2, 2, '8 juni', '2018', 'positip', ' 4612', ' 567', 'B', ' gssdxusahxdjs', '7 juli', '2019', 'negatip', ' 67', ' -500', '  gcxsdhc', ' 9 agustus', ' 2019', ' 5', ' 5', ' 255', ' 300', ' 60', ' 188', ' ', ' bcdbvcdfvh', 'negatip', '', '', '', '', '', '', ' ', ' ', ' ', ' -255', ' -255', ' ', '', '', '', '', '', '', ' ', ' 0', ' '),
(3, 3, '9 mei', '2019', 'negatip', ' 123', ' 1234', 'B', ' erma cute', '7 juli', '2018', 'negatip', ' 87', ' -1147', ' welh', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' -87', ' ', ' ', 'negatip', '', '', '', '', '', '', ' ', ' ', ' ', ' 0', ' 0', ' ', '', '', '', '', '', '', ' ', ' 0', ' ');
