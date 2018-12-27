-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2018 pada 16.09
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_c1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `nim` char(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nim`, `nama`, `no_hp`, `email`, `alamat`) VALUES
(20001, '12177764', 'budi santosa', '', '', 'cilebut'),
(20002, '12177765', 'yuda', '8900001', '', 'bogor'),
(20003, '12177766', 'aldi', '8900002', '', 'dramaga'),
(20004, '12177767', 'rahma', '8900003', '', 'ciampea'),
(20005, '12177768', 'wati', '8900004', '', 'ciomas'),
(20006, '12177769', 'adnin', '8900005', '', 'kebon pedes'),
(20007, '12177770', 'rizal', '8900006', '', 'ciluar'),
(20008, '12177771', 'yazid', '8900007', '', 'cilebut'),
(20009, '12177772', 'yuyun', '8900008', '', 'bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `harga` varchar(40) NOT NULL,
  `keterangan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `keterangan`) VALUES
('k001', 'kopi', '20000', 'kopi orang'),
('n001', 'nasi uduk', '5000', 'original');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kd_buku` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `th_terbit` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul`, `pengarang`, `penerbit`, `stok`, `th_terbit`, `id_kategori`) VALUES
(10001, 'pemrograman visual', 'tatang sutarbi', 'abdi jaya', 10, 2017, 1),
(10002, 'pemrograman visual', 'tatang sutarbi', 'abdi jaya', 10, 2017, 1),
(10003, 'pemrograman visual', 'tatang sutarbi', 'abdi jaya', 10, 2017, 1),
(10004, 'pemrograman visual', 'tatang sutarbi', 'abdi jaya', 10, 2017, 1),
(10005, 'pemrograman visual', 'tatang sutarbi', 'abdi jaya', 10, 2017, 1),
(10006, 'pemrograman visual', 'jonsen', 'abdi jaya', 10, 2000, 1),
(10007, 'pemrograman visual', 'jonsen', 'abdi jaya', 10, 2000, 1),
(10008, 'pemrograman visual', 'jonsen', 'abdi jaya', 10, 2000, 1),
(10009, 'pemrograman visual', 'jonsen', 'abdi jaya', 10, 2000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daf`
--

CREATE TABLE `daf` (
  `id_no` int(10) NOT NULL,
  `nama_depan` varchar(40) NOT NULL,
  `nama_belakang` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `konf_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daf`
--

INSERT INTO `daf` (`id_no`, `nama_depan`, `nama_belakang`, `email`, `password`, `konf_password`) VALUES
(2, 'wqqwq', 'wwqw', 'wwqwqqwq', 'qweqe', 'qweqwe'),
(3, 'ma', 'ul', 'gtgyusup@gmail.com', '1234', '1234'),
(4, 'yusup', 'up', 'ma@yahoo.com', '123', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `m_nama` varchar(50) NOT NULL,
  `m_email` varchar(60) NOT NULL,
  `m_no_tlp` varchar(60) NOT NULL,
  `m_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `m_nama`, `m_email`, `m_no_tlp`, `m_alamat`) VALUES
(7, 'maulana', 'maulana@yahoo.com', '12345678', 'cilebut rt/rw 001/001 no.95'),
(8, 'lala', 'lala@gmail.com', '02510000111', 'cibinong kabupaten bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `kd_transaksi` int(10) UNSIGNED NOT NULL,
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `kd_buku` int(10) UNSIGNED NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jml_pinjam` int(10) NOT NULL,
  `denda` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`kd_transaksi`, `id_anggota`, `kd_buku`, `tanggal_pinjam`, `tanggal_kembali`, `jml_pinjam`, `denda`) VALUES
(30001, 20001, 10001, '0000-00-00', '0000-00-00', 2, 0),
(30002, 20002, 10002, '0000-00-00', '0000-00-00', 2, 0),
(30003, 20003, 10003, '0000-00-00', '0000-00-00', 2, 0),
(30004, 20004, 10004, '0000-00-00', '0000-00-00', 2, 0),
(30005, 20005, 10005, '0000-00-00', '0000-00-00', 2, 0),
(30006, 20006, 10006, '0000-00-00', '0000-00-00', 2, 0),
(30007, 20007, 10007, '0000-00-00', '0000-00-00', 2, 0),
(30008, 20008, 10008, '0000-00-00', '0000-00-00', 2, 0),
(30009, 20009, 10009, '0000-00-00', '0000-00-00', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap`
--

CREATE TABLE `rekap` (
  `no` int(10) NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  `waktu` varchar(40) NOT NULL,
  `mata_kuliah` varchar(40) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `sks` varchar(40) NOT NULL,
  `kd_instruktur` varchar(40) NOT NULL,
  `p_instruktur` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekap`
--

INSERT INTO `rekap` (`no`, `tanggal`, `waktu`, `mata_kuliah`, `kelas`, `sks`, `kd_instruktur`, `p_instruktur`) VALUES
(1, '22-okt-18', '13.45-16.45', 'cpp', '11.1A.13', '4', 'RBD', ''),
(2, '22-OKT-18', '17.00-20.00', 'JAVA#1', '11.5C.13', '4', 'DUR', ''),
(3, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(40) NOT NULL,
  `kelas` varchar(40) NOT NULL,
  `kd_matkul` varchar(40) NOT NULL,
  `nilai_tugas` varchar(40) NOT NULL,
  `nilai_projek` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nim`, `kelas`, `kd_matkul`, `nilai_tugas`, `nilai_projek`) VALUES
(12, '12170088', 'maulana', '12', '80', '70'),
(13, '12170089', 'yusup', '12', '80', '70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`firstname`, `lastname`, `email`, `password`) VALUES
('maulana', 'yusup', 'gtgyusup@gmail.com', '123'),
('maulana', 'yusup', 'gtgyusup@gmail.com', '1234'),
('mau', 'lan', 'ma@yahoo.com', '1234'),
('admin', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_userpinjam`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_userpinjam` (
`id_anggota` int(10)
,`nama` varchar(50)
,`kd_transaksi` int(10) unsigned
,`tanggal_pinjam` date
,`tanggal_kembali` date
,`kd_buku` int(10)
,`judul` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_userpinjam`
--
DROP TABLE IF EXISTS `v_userpinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_userpinjam`  AS  select `a`.`id_anggota` AS `id_anggota`,`a`.`nama` AS `nama`,`b`.`kd_transaksi` AS `kd_transaksi`,`b`.`tanggal_pinjam` AS `tanggal_pinjam`,`b`.`tanggal_kembali` AS `tanggal_kembali`,`c`.`kd_buku` AS `kd_buku`,`c`.`judul` AS `judul` from ((`anggota` `a` join `pinjam` `b` on((`a`.`id_anggota` = `b`.`id_anggota`))) join `buku` `c` on((`b`.`kd_buku` = `c`.`kd_buku`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `daf`
--
ALTER TABLE `daf`
  ADD PRIMARY KEY (`id_no`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- Indeks untuk tabel `rekap`
--
ALTER TABLE `rekap`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20010;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `kd_buku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT untuk tabel `daf`
--
ALTER TABLE `daf`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rekap`
--
ALTER TABLE `rekap`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
