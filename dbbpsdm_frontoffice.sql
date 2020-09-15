-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Sep 2020 pada 09.12
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbpsdm_frontoffice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `idbidang` int(4) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`idbidang`, `nama_bidang`) VALUES
(5, 'Sekretaris BPSDM'),
(6, 'UPT 1 BPSDM'),
(7, 'UPT 2 BPSDM'),
(8, 'Pendidikan dan Pelatihan Kepemimpinan'),
(9, 'Pendidikan dan Pelatihan Teknis'),
(10, 'Perencanaan Kediklatan'),
(11, 'Pengembangan dan Inovasi Kediklatan'),
(12, 'Front Office BPSDM'),
(15, 'Bank Data BPSDM'),
(16, 'Ruang Kaban BPSDM'),
(19, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `idstatus_surat` int(11) NOT NULL,
  `nama_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_surat`
--

INSERT INTO `jenis_surat` (`idstatus_surat`, `nama_status`) VALUES
(1, 'UNDANGAN'),
(2, 'PEMBERITAHUAN'),
(3, 'PENGUMUMAN'),
(4, 'PERMOHONAN'),
(5, 'PERINTAH'),
(6, 'TUGAS'),
(7, 'PERIZINAN'),
(8, 'IZIN'),
(9, 'LAIN-LAIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `idkabupaten` int(3) NOT NULL,
  `nama_kabupaten` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`idkabupaten`, `nama_kabupaten`) VALUES
(1, 'Kabupaten Kepulauan Selayar'),
(2, 'Kabupaten Bulukumba'),
(3, 'Kabupaten Bantaeng'),
(4, 'Kabupaten Jeneponto'),
(5, 'Kabupaten Takalar'),
(6, 'Kabupaten Gowa'),
(7, 'Kabupaten Sinjai'),
(8, 'Kabupaten Bone'),
(9, 'Kabupaten Maros'),
(10, 'Kabupaten Pangkajene dan Kepulauan'),
(11, 'Kabupaten Barru'),
(12, 'Kabupaten Soppeng'),
(13, 'Kabupaten Wajo'),
(14, 'Kabupaten Sidenreng Rappang'),
(15, 'Kabupaten Pinrang'),
(16, 'Kabupaten Enrekang'),
(17, 'Kabupaten Luwu'),
(18, 'Kabupaten Tana Toraja'),
(19, 'Kabupaten Luwu Utara'),
(20, 'Kabupaten Luwu Timur'),
(21, 'Kabupaten Toraja Utara'),
(22, 'Kota Makassar'),
(23, 'Kota Parepare'),
(24, 'Kota Palopo'),
(25, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `idkecamatan` int(5) NOT NULL,
  `nama_kecamatan` varchar(255) NOT NULL,
  `idkabupaten` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`idkecamatan`, `nama_kecamatan`, `idkabupaten`) VALUES
(1, 'Kecamatan Biring Kanaya', 22),
(2, 'Kecamatan Bontoala', 22),
(3, 'Kecamatan Makassar', 22),
(4, 'Kecamatan Mamajang', 22),
(5, 'Kecamatan Manggala', 22),
(6, 'Kecamatan Mariso', 22),
(7, 'Kecamatan Panakkukang', 22),
(8, 'Kecamatan Rappocini', 22),
(9, 'Kecamatan Tallo', 22),
(10, 'Kecamatan Tamalanrea', 22),
(11, 'Kecamatan Tamalate', 22),
(12, 'Kecamatan Ujung Pandang', 22),
(13, 'Kecamatan Ujung Tanah', 22),
(14, 'Kecamatan Wajo', 22),
(15, 'Kecamatan Bacukiki', 23),
(16, 'Kecamatan Bacukiki Barat', 23),
(17, 'Kecamatan Soreang', 23),
(18, 'Kecamatan Ujung', 23),
(19, 'Kecamatan Benteng', 1),
(20, 'Kecamatan Bontoharu', 1),
(21, 'Kecamatan Bontomanai', 1),
(22, 'Kecamatan Bontomatene', 1),
(23, 'Kecamatan Bontosikuyu', 1),
(24, 'Kecamatan Buki', 1),
(25, 'Kecamatan Pasilambena', 1),
(26, 'Kecamatan Pasimassunggu', 1),
(27, 'Kecamatan Pasimasunggu Timur', 1),
(28, 'Kecamatan Takabonerate', 1),
(29, 'Kecamatan Bonto Bahari', 2),
(30, 'Kecamatan Bontotiro', 2),
(31, 'Kecamatan Bulukumba / Bulukumpa', 2),
(32, 'Kecamatan Gantarang / Gangking', 2),
(33, 'Kecamatan Hero Lange-Lange / Herlang', 2),
(34, 'Kecamatan Kajang', 2),
(35, 'Kecamatan Kindang', 2),
(36, 'Kecamatan Rilau Ale', 2),
(37, 'Kecamatan Ujung Bulu', 2),
(38, 'Kecamatan Ujung Loe', 2),
(39, 'Kecamatan Bantaeng', 3),
(40, 'Kecamatan Bissappu', 3),
(41, 'Kecamatan Eremerasa', 3),
(42, 'Kecamatan Gantarang Keke / Gantareng Keke', 3),
(43, 'Kecamatan Pajukukang', 3),
(44, 'Kecamatan Sinoa', 3),
(45, 'Kecamatan Tompobulu', 3),
(46, 'Kecamatan Uluere', 3),
(47, 'Kecamatan Arungkeke', 4),
(48, 'Kecamatan Bangkala', 4),
(49, 'Kecamatan Bangkala Barat', 4),
(50, 'Kecamatan Batang', 4),
(51, 'Kecamatan Binamu', 4),
(52, 'Kecamatan Bontoramba', 4),
(53, 'Kecamatan Kelara', 4),
(54, 'Kecamatan Rumbia', 4),
(55, 'Kecamatan Tamalatea', 4),
(56, 'Kecamatan Tarowang', 4),
(57, 'Kecamatan Turatea', 4),
(58, 'Yang Lain (Others)', 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan`
--

CREATE TABLE `kelurahan` (
  `idkelurahan` int(7) NOT NULL,
  `idkecamatan` int(11) NOT NULL,
  `nama_kelurahan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelurahan`
--

INSERT INTO `kelurahan` (`idkelurahan`, `idkecamatan`, `nama_kelurahan`) VALUES
(1, 1, 'Daya'),
(2, 1, 'Paccerakang'),
(3, 1, 'Untia'),
(4, 1, 'Sudiang'),
(5, 1, 'Sudiang Raya'),
(6, 1, 'Bulurokeng'),
(7, 1, 'Pai'),
(8, 2, 'Timungan Lompoa'),
(9, 2, 'Tompo Balang'),
(10, 2, 'Wajo Baru'),
(11, 2, 'Malimongan Baru'),
(12, 2, 'Baraya'),
(13, 2, 'Bunga Ejaya'),
(14, 2, 'Layang'),
(15, 2, 'Parang Layang'),
(16, 2, 'Bontoala'),
(17, 2, 'Bontoala Tua'),
(18, 2, 'Bontoala Parang'),
(19, 2, 'Gaddong'),
(20, 3, 'Lariang Bangi'),
(21, 3, 'Maradekaya'),
(22, 3, 'Maradekaya Selatan'),
(23, 3, 'Maradekaya Utara'),
(24, 3, 'Maricaya'),
(25, 3, 'Maricaya Baru'),
(26, 3, 'Bara-Baraya'),
(27, 3, 'Bara-Baraya Selatan'),
(28, 3, 'Bara-Baraya Timur'),
(29, 3, 'Bara-Baraya Utara'),
(30, 3, 'Maccini'),
(31, 3, 'Maccini Gusung'),
(32, 3, 'Maccini Parang'),
(33, 3, 'Barana'),
(34, 4, 'Baji Mappakasunggu'),
(35, 4, 'Maricaya Selatan'),
(36, 4, 'Pa Batang'),
(37, 4, 'Bonto Biraeng'),
(38, 4, 'Labuang Baji'),
(39, 4, 'Mamajang Luar'),
(40, 4, 'Bonto Lebang'),
(41, 4, 'Parang'),
(42, 4, 'Karang Anyar'),
(43, 4, 'Sambung Jawa'),
(44, 4, 'Tamparang Keke'),
(45, 4, 'Mamajang Dalam'),
(46, 4, 'Mandala'),
(47, 5, 'Batua'),
(48, 5, 'Borong'),
(49, 5, 'Antang'),
(50, 5, 'Manggala'),
(51, 5, 'Bangkala'),
(52, 5, 'Tamangapa'),
(53, 6, 'Kampung Buyang'),
(54, 6, 'Mattoangin'),
(55, 6, 'Panambungan'),
(56, 6, 'Mariso'),
(57, 6, 'Lette'),
(58, 6, 'Kunjung Mae'),
(59, 6, 'Mario'),
(60, 6, 'Bontorannu'),
(61, 6, 'Tamarunang'),
(62, 7, 'Karampuang'),
(63, 7, 'Masale'),
(64, 7, 'Pampang'),
(65, 7, 'Panaikang'),
(66, 7, 'Pandang'),
(67, 7, 'Sinri Jala'),
(68, 7, 'Tamamaung'),
(69, 7, 'Karuwisi'),
(70, 7, 'Karuwisi Utara'),
(71, 7, 'Paropo'),
(72, 7, 'Tello Baru'),
(73, 8, 'Gunung Sari'),
(74, 8, 'Ballaparang'),
(75, 8, 'Banta Bantaeng'),
(76, 8, 'Bonto Makkio'),
(77, 8, 'Buakana'),
(78, 8, 'Karunrung'),
(79, 8, 'Kassi Kassi'),
(80, 8, 'Mappala'),
(81, 8, 'Rappocini'),
(82, 8, 'Tidung'),
(83, 9, 'Bunga Eja Beru'),
(84, 9, 'La Latang'),
(85, 9, 'Lakkang'),
(86, 9, 'Suwangga'),
(87, 9, 'Buloa'),
(88, 9, 'Tallo'),
(89, 9, 'Lembo'),
(90, 9, 'Panampu'),
(91, 9, 'Kalukuang'),
(92, 9, 'Kaluku Bodoa'),
(93, 9, 'Rapppojawa'),
(94, 9, 'Rappokaling'),
(95, 9, 'Tammua'),
(96, 9, 'Ujung Pandang Baru'),
(97, 9, 'Wala Walaya'),
(98, 10, 'Kapasa'),
(99, 10, 'Bira'),
(100, 10, 'Parang Loe'),
(101, 10, 'Tamalanrea'),
(102, 10, 'Tamalanrea Indah'),
(103, 10, 'Tamalanrea Jaya'),
(104, 11, 'Mangasa'),
(105, 11, 'Mannuruki'),
(106, 11, 'Pa Baeng Baeng'),
(107, 11, 'Bongaya'),
(108, 11, 'Jongaya'),
(109, 11, 'Balang Baru'),
(110, 11, 'Maccini Sombala'),
(111, 11, 'Parang Tambung'),
(112, 11, 'Barombong'),
(113, 11, 'Tanjung Merdeka'),
(114, 12, 'Baru'),
(115, 12, 'Bulogadng'),
(116, 12, 'Lae Lae'),
(117, 12, 'Losari'),
(118, 12, 'Maloku'),
(119, 12, 'Mangkura'),
(120, 12, 'Sawerigading'),
(121, 12, 'Lajangiru'),
(122, 12, 'Pisang Selatan'),
(123, 12, 'Pisang Utara'),
(124, 13, 'Pattingalloang'),
(125, 13, 'Pattingalloang Baru'),
(126, 13, 'Camba Berua'),
(127, 13, 'Cambaya'),
(128, 13, 'Gusung'),
(129, 13, 'Tamalabba'),
(130, 13, 'Ujung Tanah'),
(131, 13, 'Tabaringan'),
(132, 13, 'Totaka'),
(133, 13, 'Barrang Lompo'),
(134, 13, 'Barrang Caddi'),
(135, 13, 'Kodingareng'),
(136, 14, 'Melayu'),
(137, 14, 'Melayu Baru'),
(138, 14, 'Malimongan'),
(139, 14, 'Malimongan Tua'),
(140, 14, 'Butung'),
(141, 14, 'Mampu'),
(142, 14, 'Ende'),
(143, 14, 'Pattunuang'),
(144, 99, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `idkomentar` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `kode` text NOT NULL,
  `timestamp_masuk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `idprovinsi` int(2) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`idprovinsi`, `nama_provinsi`) VALUES
(1, 'ACEH'),
(2, 'SUMATERA UTARA'),
(3, 'SUMATERA BARAT'),
(4, 'RIAU'),
(5, 'KEPULAUAN RIAU (KEPRI)'),
(6, 'BENGKULU'),
(7, 'JAMBI'),
(8, 'KEP. BANGKA BELITUNG'),
(9, 'SUMATERA SELATAN'),
(10, 'LAMPUNG'),
(11, 'BANTEN'),
(12, 'DKI JAKARTA'),
(13, 'JAWA BARAT'),
(14, 'JAWA TENGAH'),
(15, 'JAWA TIMUR'),
(16, 'DI YOGYAKARTA'),
(17, 'BALI'),
(18, 'NUSA TENGGARA TIMUR'),
(19, 'NUSA TENGGARA BARAT'),
(20, 'KALIMANTAN BARAT'),
(21, 'KALIMANTAN TENGAH'),
(22, 'KALIMANTAN UTARA'),
(23, 'KALIMANTAN TIMUR'),
(24, 'KALIMANTAN SELATAN'),
(25, 'SULAWESI BARAT'),
(26, 'SULAWESI SELATAN'),
(27, 'SULAWESI TENGAH'),
(28, 'SULAWESI TENGGARA'),
(29, 'SULAWESI UTARA'),
(30, 'GORONTALO'),
(31, 'MALUKU'),
(32, 'MALUKU UTARA'),
(33, 'PAPUA'),
(34, 'PAPUA BARAT'),
(35, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan_kerja`
--

CREATE TABLE `satuan_kerja` (
  `idsatker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `satuan_kerja`
--

INSERT INTO `satuan_kerja` (`idsatker`, `nama_satker`) VALUES
(1, 'ASISTEN ADMINISTRASI SETDA PROV. SULSEL'),
(2, 'ASISTEN EKONOMI, PEMBANGUNAN DAN KESEJAHTERAAN SETDA PROV. SULSEL'),
(3, 'ASISTEN PEMERINTAHAN SETDA PROV. SULSEL'),
(4, 'BIRO PEMERINTAHAN'),
(5, 'BIRO HUKUM DAN HAK ASASI MANUSIA'),
(6, 'BIRO HUBUNGAN MASYARAKAT DAN PROTOKOL'),
(7, 'BIRO PEREKONOMIAN'),
(8, 'BIRO PEMBANGUNAN DAN PENGADAAN BARANG/JASA'),
(9, 'BIRO KESEJAHTERAAN'),
(10, 'BIRO ORGANISASI DAN TATALAKSANA'),
(11, 'BIRO UMUM DAN PERLENGKAPAN'),
(12, 'BIRO PENGELOLAAN BARANG DAN ASET DAERAH'),
(13, 'INSPEKTUR'),
(14, 'SEKRETARIS DPRD'),
(15, 'DINAS PENDIDIKAN'),
(16, 'DINAS KESEHATAN'),
(17, 'DINAS SUMBER DAYA AIR, CIPTA KARYA DAN TATA RUANG'),
(18, 'DINAS BINA MARGA DAN BINA KONSTRUKSI'),
(19, 'DINAS PERUMAHAN, KAWASAN PERMUKIMAN DAN PERTANAHAN'),
(20, 'SATUAN POLISI PAMONG PRAJA'),
(21, 'DINAS SOSIAL'),
(22, 'DINAS TENAGA KERJA DAN TRANSMIGRASI'),
(23, 'DINAS PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(24, 'DINAS KETAHANAN PANGAN, TANAMAN PANGAN DAN HORTIKULTURA'),
(25, 'DINAS PENGELOLAAN LINGKUNGAN HIDUP'),
(26, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA'),
(27, 'DINAS PERHUBUNGAN'),
(28, 'DINAS KOMUNIKASI, INFORMATIKA, STATISTIK DAN PERSANDIAN'),
(29, 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH'),
(30, 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU'),
(31, 'DINAS KEPEMUDAAN DAN OLAHRAGA'),
(32, 'DINAS KEBUDAYAAN DAN KEPARIWISATAAN'),
(33, 'DINAS PERPUSTAKAAN DAN KEARSIPAN'),
(34, 'DINAS KELAUTAN DAN PERIKANAN'),
(35, 'DINAS PERKEBUNAN'),
(36, 'DINAS PETERNAKAN DAN KESEHATAN HEWAN'),
(37, 'DINAS KEHUTANAN'),
(38, 'DINAS ENERGI DAN SUMBER DAYA MINERAL'),
(39, 'DINAS PERINDUSTRIAN'),
(40, 'DINAS PERDAGANGAN'),
(41, 'DINAS KEPENDUDUKAN, PENCATATAN SIPIL, PENGENDALIAN PENDUDUK DAN KB'),
(42, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH'),
(43, 'BADAN PENGELOLAAN KEUANGAN DAERAH'),
(44, 'BADAN PENDAPATAN DAERAH'),
(45, 'BADAN KEPEGAWAIAN DAERAH'),
(46, 'BADAN PENGEMBANGAN SUMBER DAYA MANUSIA'),
(47, 'BADAN PENELITIAN DAN PENGEMBANGAN DAERAH'),
(48, 'BADAN KESATUAN BANGSA'),
(49, 'BADAN PENGHUBUNG DAERAH'),
(50, 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(51, 'DIREKTUR RUMAH SAKIT UMUM DAERAH LABUANG BAJI'),
(52, 'DIREKTUR RUMAH SAKIT UMUM DAERAH HAJI MAKASSAR'),
(53, 'DIREKTUR RUMAH SAKIT UMUM DAERAH SAYANG RAKYAT'),
(54, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pengirim`
--

CREATE TABLE `status_pengirim` (
  `idstatus_pengirim` int(11) NOT NULL,
  `status_pengirim` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pengirim`
--

INSERT INTO `status_pengirim` (`idstatus_pengirim`, `status_pengirim`) VALUES
(1, 'ASN internal'),
(2, 'non-ASN internal'),
(3, 'ASN eksternal'),
(4, 'non-ASN eksternal'),
(5, 'masyarakat umum'),
(6, 'perusahaan'),
(7, 'TNI'),
(8, 'kepolisian'),
(9, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_surat`
--

CREATE TABLE `status_surat` (
  `idstatus_surat` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_surat`
--

INSERT INTO `status_surat` (`idstatus_surat`, `nama_status`) VALUES
(1, 'masuk'),
(2, 'dibaca'),
(3, 'ditolak'),
(4, 'diteruskan'),
(5, 'dipending'),
(6, 'dikembalikan'),
(7, 'balasan'),
(8, 'jawaban'),
(9, 'lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subbidang`
--

CREATE TABLE `subbidang` (
  `idsubbidang` int(11) NOT NULL,
  `nama_subbidang` varchar(100) NOT NULL,
  `idbidang` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subbidang`
--

INSERT INTO `subbidang` (`idsubbidang`, `nama_subbidang`, `idbidang`) VALUES
(1, 'Perencanaan Pegawai ASN', NULL),
(2, 'Informasi Pegawai ASN', NULL),
(3, 'Data dan Dokumen', NULL),
(4, 'Jabatan Pimpinan Tinggi dan Administrasi', NULL),
(5, 'Jabatan Fungsional', NULL),
(6, 'Pengembangan Pegawai', NULL),
(7, 'Kinerja Pegawai', NULL),
(8, 'Pensiun dan Cuti', NULL),
(9, 'Kesejahteraan dan Penghargaan', NULL),
(10, 'Mutasi Pindah', NULL),
(11, 'Disiplin dan Konseling', NULL),
(12, 'Kenaikan Pangkat', NULL),
(13, 'Bag. Program', NULL),
(14, 'Bag. Umum, Kepegawaian dan Hukun', NULL),
(15, 'Bag. Keuangan', NULL),
(16, 'Bag. Tata Usaha UPT ', NULL),
(17, 'SIE Perencanaan dan Penilaian UPT', NULL),
(18, 'SIE Evaluasi dan Pengembangan UPT', NULL),
(19, 'Yang Lain (Others)', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_balasan_tamupegawai`
--

CREATE TABLE `surat_balasan_tamupegawai` (
  `idsurat_balasan` int(11) NOT NULL,
  `idsurat_balasan_sekretariat` int(11) NOT NULL,
  `idsurat_masuk_yang_dibalas` int(11) NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `ditujukan_ke` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `target_penerima` varchar(255) NOT NULL,
  `status_pengirim` varchar(255) NOT NULL,
  `dari_satker` varchar(255) NOT NULL,
  `dari_bidang` varchar(255) NOT NULL,
  `dari_subbidang` varchar(255) NOT NULL,
  `timestamp_pengiriman` varchar(100) NOT NULL,
  `nama_file_surat` varchar(255) NOT NULL,
  `nama_file_berkas` text NOT NULL,
  `direktori_surat_masuk` text NOT NULL,
  `direktori_berkas_yg_menyertai` text NOT NULL,
  `disposes_ke` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status_surat` varchar(50) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(100) NOT NULL,
  `timestamp_baca` varchar(100) NOT NULL,
  `timestamp_tolak` varchar(100) NOT NULL,
  `timestamp_diteruskan` varchar(100) NOT NULL,
  `timestamp_dikembalikan` varchar(100) NOT NULL,
  `timestamp_dipending` varchar(100) NOT NULL,
  `posisi_surat_terakhir` varchar(255) NOT NULL,
  `harapan_respon_hari` int(2) NOT NULL DEFAULT 7,
  `urgensi_surat` varchar(50) NOT NULL,
  `digest_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_balasan_tamupegawai`
--

INSERT INTO `surat_balasan_tamupegawai` (`idsurat_balasan`, `idsurat_balasan_sekretariat`, `idsurat_masuk_yang_dibalas`, `perihal_surat`, `nomor_surat_masuk`, `ditujukan_ke`, `pengirim`, `nip`, `target_penerima`, `status_pengirim`, `dari_satker`, `dari_bidang`, `dari_subbidang`, `timestamp_pengiriman`, `nama_file_surat`, `nama_file_berkas`, `direktori_surat_masuk`, `direktori_berkas_yg_menyertai`, `disposes_ke`, `keterangan`, `status_surat`, `timestamp_masuk`, `timestamp_baca`, `timestamp_tolak`, `timestamp_diteruskan`, `timestamp_dikembalikan`, `timestamp_dipending`, `posisi_surat_terakhir`, `harapan_respon_hari`, `urgensi_surat`, `digest_signature`) VALUES
(1, 1, 1, 'Balasan id 1', 'jkjaksjkad', 'tamu', 'admin sekretariat', '8797979', 'Pengirim', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-6294-0.94900500 1582473685', 'b44f7_1-s2.0-S0160791X1830188X-main.pdf', '421c5_1-s2.0-S016740481831201X-main.pdf', './public/surat_dan_berkas_balasan/b44f7_1-s2.0-S0160791X1830188X-main.pdf', './public/surat_dan_berkas_balasan/421c5_1-s2.0-S016740481831201X-main.pdf', 'Front Office BKD', 'ini surat balasan anda', 'balasan', '23/02/2020-5968-0.96596500 1582473788', '', '', '', '', '', 'Front Office BKD', 3, 'NORMAL', 'bbfa3956fa8b938f3854542a644c21fc6975f5df'),
(2, 1, 0, 'jlkj', 'oiuoiu', 'uiuoiu', '89080980', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-5161-0.45132600 1582475690', 'e0a6e_08fetchjsonrev2.pdf', 'c9ec7_bkartu.sql', './public/surat_dan_berkas_balasan/e0a6e_08fetchjsonrev2.pdf', './public/surat_dan_berkas_balasan/c9ec7_bkartu.sql', 'Gubernur', '', 'masuk', '23/02/2020-2732-0.58209700 1582475736', '', '', '', '', '', 'Front Office BKD', '3', 0, '4e9c2a59b33af539ebc8b2b6aa08ac65075d6241', ''),
(3, 1, 0, 'oooooooooo', 'ooooooooooo', 'oooooooo', 'oooooooo', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7207-0.52690200 1582475946', 'dept_2_lv_3_552.ppt', '6c5cf_dept_2_lv_3_552.ppt', './public/surat_dan_berkas_balasan/6c5cf_dept_2_lv_3_552.ppt', './public/surat_dan_berkas_balasan/87d71_lesson6-Classification.pdf', 'Gubernur', '', 'masuk', '23/02/2020-1697-0.81373300 1582476009', '', '', '', '', '', 'Front Office BKD', '3', 0, '', 'd4f61b950bb992a3ddaf04417b08523c8fc4038c'),
(4, 0, 1, 'tes', 'tes', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-9137-0.22922700 1582476222', '82d45_csl-lba.pdf', './public/surat_dan_berkas_balasan/82d45_csl-lba.pdf', './public/surat_dan_berkas_balasan/', '', 'Gubernur', '', 'masuk', '23/02/2020-3677-0.45146200 1582476272', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '04ab75a4b18cf682111ccbea9732b9cf76334804'),
(5, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-3060-0.29204500 1582476393', '', '', '', '', 'Gubernur', '', 'masuk', '23/02/2020-6162-0.75567500 1582476417', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', 'a565a1305dc482b4ed0899f4b5aeaf6a9cdd6876'),
(6, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-1829-0.56966100 1582476604', '3187a_1-s2.0-S104061901930048X-main.pdf', 'dc23a_01.pdf', './public/surat_dan_berkas_balasan/3187a_1-s2.0-S104061901930048X-main.pdf', './public/surat_dan_berkas_balasan/dc23a_01.pdf', 'Gubernur', '', 'masuk', '23/02/2020-4201-0.74315500 1582476640', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', 'b2bbd795a1a81c8a6c9a04510c898b51a54ceb2b'),
(7, 0, 1, 'tes malam', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-4049-0.41699300 1582477072', '9a0dc_1-s2.0-S016740481831201X-main.pdf', 'd54be_1-s2.0-S0007681319301156-main.pdf', './public/surat_dan_berkas_balasan/9a0dc_1-s2.0-S016740481831201X-main.pdf', './public/surat_dan_berkas_balasan/d54be_1-s2.0-S0007681319301156-main.pdf', 'Gubernur', '', 'masuk', '23/02/2020-9684-0.36352000 1582477106', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', 'f909787bc009af52db26d37db19cb983b72689fd'),
(8, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-4157-0.07429200 1582477214', '347c8_1-s2.0-S104061901930048X-main.pdf', '38c64_1-s2.0-S104061901930048X-main.pdf', './public/surat_dan_berkas_balasan/347c8_1-s2.0-S104061901930048X-main.pdf', './public/surat_dan_berkas_balasan/38c64_1-s2.0-S104061901930048X-main.pdf', 'Gubernur', '', 'masuk', '23/02/2020-4769-0.19580700 1582477236', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '37b09e4b84e8d376b58b478954a612f0d6cf117c'),
(9, 0, 0, 'tes', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-9364-0.78801700 1585827142', '1d0d9_association rule.xlsx', '', './public/surat_dan_berkas_balasan/1d0d9_association rule.xlsx', '', 'Kepala BKD', '', 'masuk', '02/04/2020-7592-0.61908600 1585827171', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '7c86d8bee37a221d37ab047edbfda22d7a236823'),
(10, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-3659-0.88619100 1585827219', '0f953_untuk cover2 buku.png', '', './public/surat_dan_berkas_balasan/0f953_untuk cover2 buku.png', '', 'Kepala BKD', '', 'masuk', '02/04/2020-5326-0.84958300 1585827259', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '66ad6acf8afbb1838158bd5592dda0e84e4c0d27'),
(11, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-3158-0.68374400 1585830771', '5cfa9_format surat ismee.docx', '', './public/surat_dan_berkas_balasan/5cfa9_format surat ismee.docx', '', 'Kepala BKD', '', 'masuk', '02/04/2020-8693-0.31745500 1585830798', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '8d32d00d36fe038376072d9c47a9f7c5429ace1b'),
(12, 0, 0, 'TES YANG BARU', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-4691-0.02614300 1585834592', 'eb48f_untuk cover buku.png', '', './public/surat_dan_berkas_balasan/eb48f_untuk cover buku.png', '', 'Kepala BKD', '', 'masuk', '02/04/2020-1784-0.00988700 1585834693', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', '9442000bcc770563e712195769889e24bd6ac0c4'),
(13, 0, 0, 'TES BRO', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-5329-0.02760200 1585836637', 'fbbd1_3D.pdf', '', './public/surat_dan_berkas_balasan/fbbd1_3D.pdf', '', 'Kepala BKD', '', 'masuk', '02/04/2020-2722-0.33107100 1585836659', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', '7bf40ec709baed3543700cb7ea00a2c1870c8685'),
(14, 0, 0, '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '02/04/2020-1396-0.73139000 1585836794', '37450_Clustering - Fuzzy C-means.pdf', '', './public/surat_dan_berkas_balasan/37450_Clustering - Fuzzy C-means.pdf', '', 'Kepala BKD', '', 'masuk', '02/04/2020-8451-0.54716600 1585836830', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', 'f6d42bc4e26a619a01a1e5331aca0da902e4028e'),
(15, 0, 7, 'sdsdsdsdsds', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '21/04/2020-3116-0.63739800 1587483436', 'ec87b_3D.pdf', '', './public/surat_dan_berkas_balasan/ec87b_3D.pdf', '', 'Kepala BKD', '', 'masuk', '21/04/2020-1786-0.97231700 1587483488', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', 'bc3c7af1328e3a4864aea2f691863bc5f8137e9e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `idsurat_keluar` int(11) NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `ditujukan_ke` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `target_penerima` varchar(255) NOT NULL,
  `status_pengirim` varchar(255) NOT NULL,
  `dari_satker` varchar(255) NOT NULL,
  `dari_bidang` varchar(255) NOT NULL,
  `dari_subbidang` varchar(255) NOT NULL,
  `timestamp_pengiriman` varchar(100) NOT NULL,
  `nama_file_surat` varchar(255) NOT NULL,
  `nama_file_berkas` text NOT NULL,
  `direktori_surat_masuk` text NOT NULL,
  `direktori_berkas_yg_menyertai` text NOT NULL,
  `disposes_ke` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status_surat` varchar(50) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(100) NOT NULL,
  `timestamp_baca` varchar(100) NOT NULL,
  `timestamp_tolak` varchar(100) NOT NULL,
  `timestamp_diteruskan` varchar(100) NOT NULL,
  `timestamp_dikembalikan` varchar(100) NOT NULL,
  `timestamp_dipending` varchar(100) NOT NULL,
  `posisi_surat_terakhir` varchar(255) NOT NULL,
  `harapan_respon_hari` int(2) NOT NULL DEFAULT 7,
  `urgensi_surat` varchar(50) NOT NULL,
  `digest_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`idsurat_keluar`, `perihal_surat`, `nomor_surat_masuk`, `ditujukan_ke`, `pengirim`, `nip`, `target_penerima`, `status_pengirim`, `dari_satker`, `dari_bidang`, `dari_subbidang`, `timestamp_pengiriman`, `nama_file_surat`, `nama_file_berkas`, `direktori_surat_masuk`, `direktori_berkas_yg_menyertai`, `disposes_ke`, `keterangan`, `status_surat`, `timestamp_masuk`, `timestamp_baca`, `timestamp_tolak`, `timestamp_diteruskan`, `timestamp_dikembalikan`, `timestamp_dipending`, `posisi_surat_terakhir`, `harapan_respon_hari`, `urgensi_surat`, `digest_signature`) VALUES
(1, 'coba kirim pertama', '230/MT/345/2020', 'Kabid Kinerja', 'admin sekretariat', '-', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '01/03/2020-6733-0.88059000 1583075077', '83198_arules.pdf', 'be307_Association_Rule.pdf', './public/arsip_unggah_surat_sekretariat/83198_arules.pdf', './public/arsip_unggah_surat_sekretariat/be307_Association_Rule.pdf', 'Kepala BKD', 'ok ini uji coba pertama pengiriman ke 3 target action sekaligus.', 'masuk', '01/03/2020-9986-0.94461600 1583075227', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', ''),
(2, 'coba kirim yang kedua', '230/MT/345/2020', 'Kabid Kinerja', 'admin sekretariat', '901920192012019', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '01/03/2020-3768-0.95914200 1583075930', '6ef57_2331b1d5af68d7e8e0e30dda7a8cfa050c0e.pdf', '0dc33_arules.pdf', './public/arsip_unggah_surat_sekretariat/6ef57_2331b1d5af68d7e8e0e30dda7a8cfa050c0e.pdf', './public/arsip_unggah_surat_sekretariat/0dc33_arules.pdf', 'Kepala BKD', 'ini hanya percobaan yang kedua', 'masuk', '01/03/2020-3943-0.37358700 1583075995', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', ''),
(3, 'coba kirim yang ketiga', '230/MT/345/2020', 'Kabid Kinerja', 'admin sekretariat', '092390293-2391-343', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '01/03/2020-6366-0.53162800 1583076152', '3352e_10.1.1.23.736.pdf', '', './public/arsip_unggah_surat_sekretariat/3352e_10.1.1.23.736.pdf', '', 'Kepala BKD', 'ini hanya percobaan yang ketiga', 'masuk', '01/03/2020-8877-0.93633700 1583076233', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', ''),
(4, 'percobaan dari bidang kkpegawai-bkd', '230/MT/345/2020', 'Kabid Kinerja', 'admin bidang kesehatan masyarakat', '0390293-2930-', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '01/03/2020-8292-0.34654600 1583080542', '1d91d_arules.pdf', 'af02b_ch6.pdf', './public/arsip_unggah_surat_sekretariat/1d91d_arules.pdf', './public/arsip_unggah_surat_sekretariat/af02b_ch6.pdf', 'Kepala BKD', 'ini hanya percobaan tapi dari bidang', 'masuk', '01/03/2020-7341-0.44974000 1583080651', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', ''),
(5, 'ini tes dari bidang 1', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-7876-0.63685600 1583554348', 'c2a0e_Association_Rule.pdf', '', './public/arsip_unggah_surat_sekretariat/c2a0e_Association_Rule.pdf', '', 'Kepala BKD', '', 'masuk', '07/03/2020-2187-0.41391800 1583554391', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(6, 'ini tes kedua dari bidang', '5555555555555', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-3575-0.76757100 1583556632', '', '24315_ch6.pdf', '', './public/arsip_unggah_surat_bidang/24315_ch6.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-7854-0.90689700 1583556676', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(7, 'ini tes jika salah satu kolom surat_masuk_bidang dihapus', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-5716-0.75313500 1583559958', 'f07de_Association_Rule.pdf', '6b998_ch6.pdf', './public/arsip_unggah_surat_bidang/f07de_Association_Rule.pdf', './public/arsip_unggah_surat_bidang/6b998_ch6.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-7351-0.00890300 1583560001', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(8, 'tes berikut ............', '999999999', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-1490-0.34993700 1583560139', 'ecbb2_arules.pdf', '9512d_ch6.pdf', './public/arsip_unggah_surat_bidang/ecbb2_arules.pdf', './public/arsip_unggah_surat_bidang/9512d_ch6.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-9459-0.84431000 1583560165', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(9, 'ok ini dibalikin lagi', '0000000000000000', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-6214-0.05853600 1583560462', '6d2c1_handbookofartific01barr.pdf', '1e18d_ch6.pdf', './public/arsip_unggah_surat_bidang/6d2c1_handbookofartific01barr.pdf', './public/arsip_unggah_surat_bidang/1e18d_ch6.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-6420-0.07855000 1583560499', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(10, 'tes 123', '1234', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-7897-0.24731600 1583561150', '6bc94_ch6.pdf', 'dd4a8_Association_Rule.pdf', './public/arsip_unggah_surat_bidang/6bc94_ch6.pdf', './public/arsip_unggah_surat_bidang/dd4a8_Association_Rule.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-9015-0.51257000 1583561174', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(11, 'tes 1111', '11111', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-3955-0.68697000 1583561257', '3b57c_Association_Rule.pdf', '3753a_arules.pdf', './public/arsip_unggah_surat_bidang/3b57c_Association_Rule.pdf', './public/arsip_unggah_surat_bidang/3753a_arules.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-1291-0.51393900 1583561324', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(12, 'tes 2222', '2222', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '07/03/2020-5150-0.62093800 1583561415', 'e089c_arules.pdf', '94ba5_Association_Rule.pdf', './public/arsip_unggah_surat_bidang/e089c_arules.pdf', './public/arsip_unggah_surat_bidang/94ba5_Association_Rule.pdf', 'Kepala BKD', '', 'masuk', '07/03/2020-4730-0.12900500 1583561439', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', '770fc916fa1aa2806b95891d857cf00b70be695c'),
(13, 'tes cruid dari pipegawai-bkd', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '16/03/2020-2020-0.09283100 1584368844', '5a0b5_Atuy.jpg', 'dc76a_Formulir tanpa judul.csv', './public/arsip_unggah_surat_bidang/5a0b5_Atuy.jpg', './public/arsip_unggah_surat_bidang/dc76a_Formulir tanpa judul.csv', 'Kepala BKD', '', 'masuk', '16/03/2020-1876-0.34405700 1584368873', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', '74e337f189d435bf3a55f2197fa6314caddcedd8'),
(14, 'tes kirim dari pipegawai ke uptppk', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '16/03/2020-7688-0.65204200 1584374110', '85009_CFP EnTec 2018 v2.pdf', '', './public/arsip_unggah_surat_bidang/85009_CFP EnTec 2018 v2.pdf', '', 'Kepala BKD', '', 'masuk', '16/03/2020-3591-0.15332200 1584374171', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', 'aa6264297fd12aa2ad58f4fe174799fc504392e9'),
(15, 'tes kirim ke bankdata', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '16/03/2020-6369-0.18227400 1584376032', '70998_Atuy.jpg', '', './public/arsip_unggah_surat_bidang/70998_Atuy.jpg', '', 'Kepala BKD', '', 'masuk', '16/03/2020-6483-0.86057700 1584376061', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', '6a606a4aef5cf87c78c7a4cec8dc9aa703032dc3'),
(16, 'tes kirim dari bankdata ke kkpegawai', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '16/03/2020-1239-0.39460300 1584376135', '2728a_Formulir tanpa judul.csv', '', './public/arsip_unggah_surat_bidang/2728a_Formulir tanpa judul.csv', '', '', '', 'UNDANGAN', '16/03/2020-9934-0.88872800 1584376197', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', '2b422a7697a71377194cc1c3cc4db5f556f52396'),
(17, 'tes kirim dari bankdata ke kkpegawai', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '16/03/2020-1239-0.39460300 1584376135', 'f646d_Formulir tanpa judul.csv', '', './public/surat_keluar_arsip/f646d_Formulir tanpa judul.csv', '', '', '', 'UNDANGAN', '16/03/2020-4437-0.66105700 1584376199', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'PENTING', '4735fda56e7bb4eadbdada6ad1bb9d72637ae8ed'),
(18, 'tes kirim ke bankdata', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '17/03/2020-6105-0.49169900 1584439381', 'bada4_01.pdf', '', './public/arsip_unggah_surat_bidang/bada4_01.pdf', '', 'Kepala BKD', '', 'masuk', '17/03/2020-7809-0.24962700 1584439437', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', 'f9eac88d0bf41bc3e133db876b2b39e5f918d7e4'),
(19, 'tes kirim ke bankdata 2', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '17/03/2020-5443-0.27952100 1584440097', 'b21db_01.pdf', '29fc9_1-s2.0-S0160791X1830188X-main.pdf', './public/arsip_unggah_surat_bidang/b21db_01.pdf', './public/arsip_unggah_surat_bidang/29fc9_1-s2.0-S0160791X1830188X-main.pdf', 'Kepala BKD', '', 'masuk', '17/03/2020-5369-0.69133100 1584440161', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', 'ab8dc5e079c857c3a1b454f2871d1a8cec81dcdd'),
(20, 'tes notifikasi', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-3422-0.91629300 1586436449', 'a97f1_3D.pdf', '', './public/arsip_unggah_surat_sekretariat/a97f1_3D.pdf', '', 'Kepala BKD', '', 'masuk', '09/04/2020-4902-0.20442400 1586436483', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(21, 'tes notifikasi 2', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-5414-0.27122900 1586436517', 'd1e14_lingkaran.png', '', './public/arsip_unggah_surat_sekretariat/d1e14_lingkaran.png', '', 'Kepala BKD', '', 'masuk', '09/04/2020-9416-0.82882000 1586436568', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(22, 'tes notifikasi 3', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-9580-0.22028300 1586436603', '43796_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/43796_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-3655-0.96481100 1586436844', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(23, 'tes notifikasi 4', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-3140-0.17084600 1586436927', '3a504_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/3a504_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-1366-0.85614400 1586436951', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(24, 'tes notifikasi 4', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-3010-0.34750500 1586437009', '48690_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/48690_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-1078-0.59384600 1586437048', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(25, 'tes notifikasi 5', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-3712-0.38556100 1586437158', '530c9_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/530c9_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-4404-0.82828500 1586437181', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(26, 'tes notifikasi 6', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-1220-0.89819200 1586437230', '3f659_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/3f659_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-9205-0.19833700 1586437265', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(27, 'tes kirim notif 8', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-6108-0.05139800 1586446099', 'e6299_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/e6299_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-2123-0.04869800 1586446129', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(28, 'tes notif 9', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-7875-0.20226000 1586446196', '8ce5b_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/8ce5b_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-3553-0.92814500 1586446232', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(29, 'tes notif 10', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-8126-0.62843600 1586446459', 'c0fed_association rule.xlsx', '', './public/arsip_unggah_surat_sekretariat/c0fed_association rule.xlsx', '', 'Kepala BKD', '', 'masuk', '09/04/2020-1510-0.28177100 1586446500', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(30, 'tes notif 1', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-1876-0.69407500 1586446571', 'e01af_3D.pdf', '', './public/arsip_unggah_surat_sekretariat/e01af_3D.pdf', '', 'Kepala BKD', '', 'masuk', '09/04/2020-2528-0.63174900 1586446597', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(31, 'tes notif 2 kk', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-1848-0.34237400 1586447153', '22653_Clustering - Fuzzy C-means.pdf', '', './public/arsip_unggah_surat_sekretariat/22653_Clustering - Fuzzy C-means.pdf', '', 'Kepala BKD', '', 'masuk', '09/04/2020-3305-0.65404000 1586447188', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(32, 'tes dari notif kkpegawai', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '09/04/2020-2242-0.61617800 1586447812', '1ee30_ABSEN 2018 DIPERKECIL.pdf', '', './public/arsip_unggah_surat_bidang/1ee30_ABSEN 2018 DIPERKECIL.pdf', '', 'Kepala BKD', '', 'masuk', '09/04/2020-3447-0.35776100 1586447859', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', '093c3199f0111c44234d036ef36155d2d4fd320d'),
(33, 'tes notif hari ini', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '10/04/2020-5406-0.34012100 1586528447', '35f5e_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/35f5e_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '10/04/2020-7265-0.38695500 1586528477', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(34, 'tes baru bro', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '10/04/2020-5479-0.85337600 1586535607', 'caee5_ABSEN 2018 DIPERKECIL.docx', '', './public/arsip_unggah_surat_sekretariat/caee5_ABSEN 2018 DIPERKECIL.docx', '', 'Kepala BKD', '', 'masuk', '10/04/2020-9308-0.29669300 1586535636', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(35, 'tes 9999', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '12/04/2020-1912-0.72758500 1586686080', '4fa3c_ABSEN 2018 DIPERKECIL.docx', '', './public/surat_keluar_arsip/4fa3c_ABSEN 2018 DIPERKECIL.docx', '', '', '', 'UNDANGAN', '12/04/2020-4045-0.31923200 1586686111', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'PENTING', 'd3fe0858bb4d32d108220dde29035cf4a7f2bf9d'),
(36, 'tes ke ruang kaban dari sekretariat', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '12/04/2020-9334-0.64979900 1586690380', 'f6601_ABSEN 2018 DIPERKECIL.pdf', '', './public/arsip_unggah_surat_sekretariat/f6601_ABSEN 2018 DIPERKECIL.pdf', '', 'Kepala BKD', '', 'masuk', '12/04/2020-7011-0.43110400 1586690414', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(37, 'tes 8888', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '12/04/2020-7337-0.10927200 1586696797', 'd55eb_CFP EnTec 2018 v2.pdf', '', './public/arsip_unggah_surat_bidang/d55eb_CFP EnTec 2018 v2.pdf', '', 'Kepala BKD', '', 'masuk', '12/04/2020-3574-0.40754300 1586696829', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', 'bbae25c28fbc8e0ea9805033f4ed8af41d77651d'),
(38, 'tes kirim surat ke front office', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '20/04/2020-1406-0.08211700 1587391901', 'e1fbf_3D.pdf', '', './public/arsip_unggah_surat_bidang/e1fbf_3D.pdf', '', 'Kepala BKD', '', 'masuk', '20/04/2020-3409-0.88747500 1587391946', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', 'fad4cf96875ef5b9d74abd7d85d07d69ce072ec6'),
(39, 'tes kirim dari bankdata magrib', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-3804-0.29500300 1587465178', 'c70f9_3D.pdf', '', './public/surat_keluar_arsip/c70f9_3D.pdf', '', '', '', 'UNDANGAN', '21/04/2020-4009-0.52346700 1587465214', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'PENTING', 'ccd190c0379c51ffa4dc6ee9ee2d2c69571874f3'),
(40, 'tes kirim dari bankdata magrib', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-3804-0.29500300 1587465178', 'a85cd_3D.pdf', '', './public/arsip_unggah_surat_bidang/a85cd_3D.pdf', '', '', '', 'UNDANGAN', '21/04/2020-5697-0.09823800 1587465220', '', '', '', '', '', 'Sekretariat BKD', 3, 'PENTING', 'ca66d62a6db067a95e6fee741125e3b25c8186e0'),
(41, 'surat dari pipegawai, tes bro', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-7608-0.99472600 1587477556', 'f35a6_3D.pdf', '', './public/arsip_unggah_surat_bidang/f35a6_3D.pdf', '', 'Kepala BKD', '', 'masuk', '21/04/2020-8641-0.51087700 1587477602', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', '560d94c12e6e3c65b34db9f960c5c3a507caceec'),
(42, 'tes kirim dari sekretarit, bro.', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-3328-0.87465500 1587477678', 'aa5cd_3D.pdf', '', './public/arsip_unggah_surat_sekretariat/aa5cd_3D.pdf', '', 'Kepala BKD', '', 'masuk', '21/04/2020-2012-0.16397900 1587477706', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(43, 'tes rrrrrrrrrrrrrrrrr', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-3292-0.22574200 1587483241', 'ca1d8_3D.pdf', '', './public/arsip_unggah_surat_sekretariat/ca1d8_3D.pdf', '', 'Kepala BKD', '', 'masuk', '21/04/2020-9528-0.30376900 1587483284', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(44, 'tes kirim ke bank data dari front-office-depan', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '22/04/2020-1584-0.83096900 1587565861', '20bdf_3D.pdf', '', './public/surat_keluar_arsip/20bdf_3D.pdf', '', 'Kepala BKD', '', 'masuk', '22/04/2020-5473-0.74927000 1587565928', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', '7268288b0997d183f448c8ebac36b112f0945519'),
(45, 'tes balas dari front 3333', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Front Office BKD', '', '23/04/2020-4467-0.31763600 1587636858', 'c00a5_3D.pdf', '', './public/surat_keluar_arsip/c00a5_3D.pdf', '', 'Kepala BKD', '', 'masuk', '23/04/2020-4298-0.97710000 1587636887', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', 'dbb8fd95c0f65bfd98b507cc8eec3003d6815464'),
(46, '090909', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Front Office BKD', '', '23/04/2020-2385-0.62426600 1587637027', '4ebdd_01.pdf', '', './public/surat_keluar_arsip/4ebdd_01.pdf', '', 'Kepala BKD', '', 'masuk', '23/04/2020-3325-0.44753200 1587637048', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', 'a6f20a58ec6e2eab6663983be468887e8dce08a7'),
(47, 'tes front ke kk untuk perbesar', '283/323/232323', 'admin kk', 'admin front', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Front Office BKD', '', '29/04/2020-7674-0.98141800 1588149551', '649f4_01.pdf', 'a3591_@REVISION Article reviewer candidates.docx', './public/surat_keluar_arsip/649f4_01.pdf', './public/surat_keluar_arsip/a3591_@REVISION Article reviewer candidates.docx', 'Kepala BKD', '', 'masuk', '29/04/2020-3456-0.88977100 1588149628', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', 'aaf31ac3711bbb7cdbe89366ed2395a013910838');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `idsurat_masuk` int(11) NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `ditujukan_ke` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `no_registrasi_tamu` varchar(255) NOT NULL,
  `target_penerima` varchar(255) NOT NULL,
  `status_pengirim` varchar(255) NOT NULL,
  `dari_satker` varchar(255) NOT NULL,
  `dari_bidang` varchar(255) NOT NULL,
  `dari_subbidang` varchar(255) NOT NULL,
  `timestamp_pengiriman` varchar(100) NOT NULL,
  `nama_file_surat` varchar(255) NOT NULL,
  `nama_file_berkas` text NOT NULL,
  `direktori_surat_masuk` text NOT NULL,
  `direktori_berkas_yg_menyertai` text NOT NULL,
  `disposes_ke` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status_surat` varchar(50) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(100) NOT NULL,
  `timestamp_baca` varchar(100) NOT NULL,
  `timestamp_tolak` varchar(100) NOT NULL,
  `timestamp_diteruskan` varchar(100) NOT NULL,
  `timestamp_dikembalikan` varchar(100) NOT NULL,
  `timestamp_dipending` varchar(100) NOT NULL,
  `posisi_surat_terakhir` varchar(255) NOT NULL,
  `harapan_respon_hari` int(2) NOT NULL DEFAULT 7,
  `urgensi_surat` varchar(50) NOT NULL,
  `digest_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`idsurat_masuk`, `perihal_surat`, `nomor_surat_masuk`, `ditujukan_ke`, `pengirim`, `nip`, `no_registrasi_tamu`, `target_penerima`, `status_pengirim`, `dari_satker`, `dari_bidang`, `dari_subbidang`, `timestamp_pengiriman`, `nama_file_surat`, `nama_file_berkas`, `direktori_surat_masuk`, `direktori_berkas_yg_menyertai`, `disposes_ke`, `keterangan`, `status_surat`, `timestamp_masuk`, `timestamp_baca`, `timestamp_tolak`, `timestamp_diteruskan`, `timestamp_dikembalikan`, `timestamp_dipending`, `posisi_surat_terakhir`, `harapan_respon_hari`, `urgensi_surat`, `digest_signature`) VALUES
(12, 'perihal tes inbox', '', '', '', '', '', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '26/04/2020-4106-0.28236000 1587933502', 'ffcca_01.pdf', '', './public/surat_dan_berkas_masuk/ffcca_01.pdf', '', '', '', '', '26/04/2020-9591-0.72907100 1587933525', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', '8d5c7ea5ae90a2bd193c5de50b85d31c1eb668ab'),
(13, 'Upacara bendera menyambut 17 Agustus', '283/323/232323', 'Kasubag Kinerja', 'admin bankdata', '1979110720091212', '-', 'Sekretariat BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '21/06/2020-9182-0.46198500 1592717951', '2c749_Permohonan persiapan upacara bendera.pdf', 'a9c1f_Permohonan persiapan upacara bendera.docx', './public/surat_dan_berkas_masuk/2c749_Permohonan persiapan upacara bendera.pdf', './public/surat_dan_berkas_masuk/a9c1f_Permohonan persiapan upacara bendera.docx', '', '', '', '21/06/2020-2075-0.35047500 1592718658', '', '', '', '', '', 'Front Office BKD', 3, 'Yang Lain (Others)', 'a1b0af5407f5f6ff97b27295a1e74f0d528d8950'),
(16, 'tes surat multi, apakah verifikasinya rusak?', '283/323/232323', 'admin kk', 'admin front', '-', '12', 'Sekretariat BPSDM', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'subbidang lain', '25/08/2020-3005-0.54912800 1598334993', 'a8e02_LEMBAR PENGESAHAN LKD.pdf', 'ea0c2_HALAMAN DEPAN JILID.docx', './public/surat_dan_berkas_masuk/a8e02_LEMBAR PENGESAHAN LKD.pdf', './public/surat_dan_berkas_masuk/ea0c2_HALAMAN DEPAN JILID.docx', '', '', '', '25/08/2020-9098-0.71128100 1598335135', '', '', '', '', '', 'Front Office BPSDM', 3, 'Yang Lain (Others)', '6e9863bf28b6d9b61264f93a52b6a8ae3b29919e'),
(17, 'tes 333', '333', '333', '333', '333', '333', 'Sekretariat BPSDM', 'ASN internal', 'DINAS PERKEBUNAN', 'Pendidikan dan Pelatihan Kepemimpinan', '333', '26/08/2020-8156-0.58667100 1598449734', '8ccd5_kartu IAII aslan.jpg', 'be2cd_kartu IAII munirah.jpg', './public/surat_dan_berkas_masuk/8ccd5_kartu IAII aslan.jpg', './public/surat_dan_berkas_masuk/be2cd_kartu IAII munirah.jpg', '', '', '', '26/08/2020-9954-0.99758000 1598449781', '', '', '', '', '', 'Front Office BPSDM', 3, 'NORMAL', '62070c7c199490841961d063b96aa899a24186ab'),
(18, 'Permohonan pengajuan tugas belajar', '283/323/232323', 'Kepala BPSDM', 'Fulan', '-', '01', 'Sekretariat BPSDM', 'ASN internal', 'BADAN PENGEMBANGAN SUMBER DAYA MANUSIA', 'Perencanaan Kediklatan', 'Subbidang ', '27/08/2020-4949-0.87786000 1598537904', 'fda45_Surat Permohonan Asesor untuk Rektor IST Akprind.jpg', 'a8d53_LEMBAR PENGESAHAN LKD.pdf', './public/surat_dan_berkas_masuk/fda45_Surat Permohonan Asesor untuk Rektor IST Akprind.jpg', './public/surat_dan_berkas_masuk/a8d53_LEMBAR PENGESAHAN LKD.pdf', '', '', '', '27/08/2020-1688-0.69986700 1598538167', '', '', '', '', '', 'Front Office BPSDM', 3, 'NORMAL', '6cb37c0bde5b79ca6130ccc3a67bdb7021e0fbf1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk_bidang`
--

CREATE TABLE `surat_masuk_bidang` (
  `idsurat_masuk_bidang` int(11) NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `ditujukan_ke` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `target_penerima` varchar(255) NOT NULL,
  `status_pengirim` varchar(255) NOT NULL,
  `dari_satker` varchar(255) NOT NULL,
  `dari_bidang` varchar(255) NOT NULL,
  `dari_subbidang` varchar(255) NOT NULL,
  `timestamp_pengiriman` varchar(100) NOT NULL,
  `nama_file_surat` varchar(255) NOT NULL,
  `nama_file_berkas` text NOT NULL,
  `direktori_surat_masuk` text NOT NULL,
  `direktori_berkas_yg_menyertai` text NOT NULL,
  `disposes_ke` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status_surat` varchar(50) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(100) NOT NULL,
  `timestamp_baca` varchar(100) NOT NULL,
  `timestamp_tolak` varchar(100) NOT NULL,
  `timestamp_diteruskan` varchar(100) NOT NULL,
  `timestamp_dikembalikan` varchar(100) NOT NULL,
  `timestamp_dipending` varchar(100) NOT NULL,
  `posisi_surat_terakhir` varchar(255) NOT NULL,
  `harapan_respon_hari` int(2) NOT NULL DEFAULT 7,
  `urgensi_surat` varchar(50) NOT NULL,
  `digest_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk_bidang`
--

INSERT INTO `surat_masuk_bidang` (`idsurat_masuk_bidang`, `perihal_surat`, `nomor_surat_masuk`, `ditujukan_ke`, `pengirim`, `nip`, `target_penerima`, `status_pengirim`, `dari_satker`, `dari_bidang`, `dari_subbidang`, `timestamp_pengiriman`, `nama_file_surat`, `nama_file_berkas`, `direktori_surat_masuk`, `direktori_berkas_yg_menyertai`, `disposes_ke`, `keterangan`, `status_surat`, `timestamp_masuk`, `timestamp_baca`, `timestamp_tolak`, `timestamp_diteruskan`, `timestamp_dikembalikan`, `timestamp_dipending`, `posisi_surat_terakhir`, `harapan_respon_hari`, `urgensi_surat`, `digest_signature`) VALUES
(7, 'tes kirim surat ke front office', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '20/04/2020-1406-0.08211700 1587391901', 'fa280_3D.pdf', '', './public/surat_dan_berkas_masuk/fa280_3D.pdf', '', 'Kepala BKD', '', 'masuk', '20/04/2020-6132-0.32365000 1587391943', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(8, 'tes rrrrrrrrrrrrrrrrr', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '21/04/2020-3292-0.22574200 1587483241', 'f54f8_3D.pdf', '', './public/surat_dan_berkas_masuk/f54f8_3D.pdf', '', 'Kepala BKD', '', 'masuk', '21/04/2020-7811-0.26966300 1587483283', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(9, 'tes ke 9999', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', '', '23/04/2020-7887-0.11867100 1587636085', 'd41b7_3D.pdf', '', './public/surat_dan_berkas_masuk/d41b7_3D.pdf', '', 'Kepala BKD', '', 'masuk', '23/04/2020-2343-0.53312100 1587636106', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(10, 'tes to front', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', '', '23/04/2020-9074-0.50684100 1587636333', 'ca8d2_3D.pdf', '', './public/surat_dan_berkas_masuk/ca8d2_3D.pdf', '', 'Kepala BKD', '', 'masuk', '23/04/2020-3364-0.35775100 1587636355', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(11, 'tes to front 2', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', '', '23/04/2020-1446-0.27356200 1587636690', '98db0_3D.pdf', '', './public/surat_dan_berkas_masuk/98db0_3D.pdf', '', 'Kepala BKD', '', 'masuk', '23/04/2020-3127-0.10028600 1587636710', '', '', '', '', '', 'Sekretariat BKD', 3, 'Yang Lain (Others)', ''),
(12, '02', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-5669-0.20653000 1587637526', 'bb852_3D.pdf', '', './public/surat_dan_berkas_masuk/bb852_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-8287-0.13337500 1587637542', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(13, 'tes 333333', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-2677-0.51629900 1587649754', 'de77e_3D.pdf', '', './public/surat_dan_berkas_masuk/de77e_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-2935-0.06430200 1587649793', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(14, 'tes perbaikan read alamat web', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-9891-0.94749400 1587651765', '764eb_3D.pdf', '', './public/surat_dan_berkas_masuk/764eb_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-7431-0.58979300 1587651794', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(15, '10999999999999999999999999999999999999999999', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-2089-0.62424700 1587654870', '335d2_3D.pdf', '', './public/surat_dan_berkas_masuk/335d2_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-8690-0.19125500 1587654897', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(16, '--------------------------------------------99', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-4826-0.36265300 1587655670', '8ba28_3D.pdf', '', './public/surat_dan_berkas_masuk/8ba28_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-3650-0.15593000 1587655688', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(17, '0000000000000000000--------------------', '', '', '', '', '', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Bank Data BKD', '', '23/04/2020-9143-0.67210500 1587655745', '6a0f6_3D.pdf', '', './public/surat_dan_berkas_masuk/6a0f6_3D.pdf', '', '', '', 'UNDANGAN', '23/04/2020-4569-0.44457100 1587655764', '', '', '', '', '', 'Bank Data BKD', 3, 'PENTING', ''),
(18, 'tes kk ke front', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Kesejahteraan dan Kinerja Pegawai', '', '25/04/2020-3149-0.93762900 1587818902', 'c4776_3D.pdf', '', './public/surat_dan_berkas_masuk/c4776_3D.pdf', '', 'Kepala BKD', '', 'masuk', '25/04/2020-2043-0.91490800 1587818946', '', '', '', '', '', 'Kesejahteraan dan Kinerja Pegawai', 3, 'Yang Lain (Others)', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_terusan`
--

CREATE TABLE `surat_terusan` (
  `idsurat_terusan` int(11) NOT NULL,
  `idsurat_sekretariat` int(11) NOT NULL,
  `idsurat_asal` int(11) NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `nomor_surat_masuk` varchar(255) NOT NULL,
  `ditujukan_ke` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `no_registrasi_tamu` varchar(255) NOT NULL,
  `target_penerima` varchar(255) NOT NULL,
  `status_pengirim` varchar(255) NOT NULL,
  `dari_satker` varchar(255) NOT NULL,
  `dari_bidang` varchar(255) NOT NULL,
  `dari_subbidang` varchar(255) NOT NULL,
  `timestamp_pengiriman` varchar(100) NOT NULL,
  `nama_file_surat` varchar(255) NOT NULL,
  `nama_file_berkas` text NOT NULL,
  `direktori_surat_masuk` text NOT NULL,
  `direktori_berkas_yg_menyertai` text NOT NULL,
  `disposes_ke` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status_surat` varchar(50) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(100) NOT NULL,
  `timestamp_baca` varchar(100) NOT NULL,
  `timestamp_tolak` varchar(100) NOT NULL,
  `timestamp_diteruskan` varchar(100) NOT NULL,
  `timestamp_dikembalikan` varchar(100) NOT NULL,
  `timestamp_dipending` varchar(100) NOT NULL,
  `posisi_surat_terakhir` varchar(255) NOT NULL,
  `harapan_respon_hari` int(2) NOT NULL DEFAULT 7,
  `urgensi_surat` varchar(50) NOT NULL,
  `digest_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_terusan`
--

INSERT INTO `surat_terusan` (`idsurat_terusan`, `idsurat_sekretariat`, `idsurat_asal`, `perihal_surat`, `nomor_surat_masuk`, `ditujukan_ke`, `pengirim`, `nip`, `no_registrasi_tamu`, `target_penerima`, `status_pengirim`, `dari_satker`, `dari_bidang`, `dari_subbidang`, `timestamp_pengiriman`, `nama_file_surat`, `nama_file_berkas`, `direktori_surat_masuk`, `direktori_berkas_yg_menyertai`, `disposes_ke`, `keterangan`, `status_surat`, `timestamp_masuk`, `timestamp_baca`, `timestamp_tolak`, `timestamp_diteruskan`, `timestamp_dikembalikan`, `timestamp_dipending`, `posisi_surat_terakhir`, `harapan_respon_hari`, `urgensi_surat`, `digest_signature`) VALUES
(1, 10, 30, 'uyiyiuyIY', 'yiuyiuyiuyiu', 'yiuyiuyiu', 'yiuyuy', '7987798', '9', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '13/02/2020-4633-0.90212000 1581561865', '45347_font4.jpg', '41633_guru.xlsx', './public/surat_dan_berkas_terusan/45347_font4.jpg', './public/surat_dan_berkas_terusan/41633_guru.xlsx', 'Gubernur', '', 'masuk', '23/02/2020-3630-0.53709900 1582456174', '23/02/2020-7007-0.56367200 1582456142', '', '', '', '', 'Front Office BKD', 12, 'PENTING', '517dddd724008b78eb0996b79aeac85438b6f582'),
(2, 9, 26, 'yyyyyyyyyyyyyyyyyy', 'yyyyyyyyyyyyyyyyyy', 'yyyyyyyyyyyyyyyyyyyyy', 'yyyyyyyyyyyyyyyyyy', 'yyyyyyyyyyyyyyyyy', '9', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '12/02/2020-8459-0.33403600 1581468863', '50eed_gambar untuk web.pptx', '5927d_Form Permohonan Perpanjangan Studi aslan 2019.docx', './public/surat_dan_berkas_terusan/50eed_gambar untuk web.pptx', './public/surat_dan_berkas_terusan/5927d_Form Permohonan Perpanjangan Studi aslan 2019.docx', 'Gubernur', '', 'masuk', '23/02/2020-1977-0.89993100 1582456363', '23/02/2020-6743-0.07864600 1582456349', '', '', '', '', 'Front Office BKD', 3, 'PENTING', '31f14225af62763df57b0d1731171ac65eb108eb'),
(3, 8, 27, 'wwwwwwwwwwwwwwwwwwwwww', 'mmmmmmmmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmmmmmmm', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '12/02/2020-5634-0.49598200 1581469072', '6feeb_SURAT PERMOHONAN PEMINJAMAN DANA_3.rar', '27266_dokter.xlsx', './public/surat_dan_berkas_terusan/6feeb_SURAT PERMOHONAN PEMINJAMAN DANA_3.rar', './public/surat_dan_berkas_terusan/27266_dokter.xlsx', 'Gubernur', '', 'masuk', '23/02/2020-7102-0.43918800 1582456469', '23/02/2020-2621-0.77525500 1582456456', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'c8f3fe3233f93fbe23f99c52daaf915c1280c590'),
(4, 7, 28, '99999999999999999999999', '99999999999999999999999', '999999999999999999999999999', '99999999999999999999999999999', '999999999999999999999', '999999999999999999999', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '12/02/2020-2706-0.75311700 1581469210', 'b53ac_tanggal.png', '867b2_Berita Acara Senat & Daftar Hadir Senat.pdf', './public/surat_dan_berkas_terusan/b53ac_tanggal.png', './public/surat_dan_berkas_terusan/867b2_Berita Acara Senat & Daftar Hadir Senat.pdf', 'Gubernur', '', 'masuk', '23/02/2020-2763-0.08675300 1582456612', '23/02/2020-2877-0.41710200 1582456588', '', '', '', '', 'Front Office BKD', 3, 'PENTING', '08ad92f58bb18e88368dc68636c21b53dcfe31c9'),
(5, 6, 29, '888888888888888888888', '88888888888888888888888', '888888888888888888888888', '888888888888', '8888888888888888888', '888888888888888888888888888', 'Kepala BKD', 'ASN internal', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', '12/02/2020-6592-0.84696400 1581469297', '71981_Transkrip S3.jpg', '', './public/surat_dan_berkas_terusan/71981_Transkrip S3.jpg', '', 'Gubernur', '', 'masuk', '23/02/2020-3276-0.05431300 1582458975', '23/02/2020-7768-0.12756000 1582458945', '', '', '', '', 'Front Office BKD', 3, 'PENTING', '5f800932eeafb66bb877ab3763d82e74a8d24b75'),
(6, 12, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-3081-0.12338600 1582459537', '23/02/2020-1036-0.57566100 1582459505', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(7, 12, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-2252-0.68608900 1582459665', '23/02/2020-6280-0.30944900 1582459653', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(8, 12, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-8410-0.16374400 1582459753', '23/02/2020-3578-0.45164200 1582459742', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(9, 11, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '42', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', 'dari dinas kesehatan makassar', 'masuk', '23/02/2020-4744-0.02894800 1582459826', '23/02/2020-6489-0.59381400 1582459812', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(10, 11, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', 'dari dinas kesehatan makassar', 'masuk', '23/02/2020-5279-0.44079300 1582459963', '23/02/2020-2862-0.38433400 1582459943', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(11, 12, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '9', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-3986-0.38524700 1582460365', '23/02/2020-5076-0.60949100 1582460354', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(12, 12, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-8849-0.84146200 1582460498', '23/02/2020-8809-0.55248000 1582460488', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(13, 13, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '9', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-9342-0.08328100 1582460718', '23/02/2020-5875-0.29673200 1582460706', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(14, 16, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '42', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-1942-0.22142700 1582461640', '23/02/2020-6089-0.71112800 1582461623', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(15, 15, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-6619-0.17992000 1582475632', '23/02/2020-7572-0.51753100 1582475612', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(16, 16, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '23/02/2020-6128-0.87610100 1582475668', '23/02/2020-6687-0.09522800 1582475658', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(17, 16, 1, 'Pemeriksaan Kebersihan', '14/02/2020/BKD/kebersihan', 'setiap pegawai BKD', 'admin bidang kesehatan masyarakat', '2380921830921892', '44', 'Kesejahteraan dan Kinerja Pegawai', 'ASN internal', 'DINAS KESEHATAN', 'Yang Lain (Others)', 'Yang Lain (Others)', '23/02/2020-7267-0.27161700 1582459042', 'fe865_08fetchjson.pdf', '5e5e7_dikfung.sql', './public/surat_dan_berkas_terusan/fe865_08fetchjson.pdf', './public/surat_dan_berkas_terusan/5e5e7_dikfung.sql', 'Gubernur', '', 'masuk', '24/02/2020-2405-0.36620800 1582521429', '24/02/2020-6818-0.43218700 1582521414', '', '', '', '', 'Front Office BKD', 3, 'PENTING', 'dd95731675f92d9161b59b27c1b8d66643811450'),
(18, 32, 7, 'tes kirim surat ke front office', '', '', '', '', 'Kepala BKD', 'ASN internal', 'BADAN KEPEGAWAIAN DAERAH', 'Sekretariat BKD', 'Sekretaris Badan', '20/04/2020-1406-0.08211700 1587391901', 'fa280_3D.pdf', '', './public/surat_dan_berkas_masuk/fa280_3D.pdf', '', 'Kepala BKD', 'Kepala BKD', 'dibaca', 'masuk', '21/04/2020-8783-0.48607300 1587483390', '21/04/2020-7744-0.53692200 1587483355', '', '', '', 'Sekretariat BKD', '3', 0, 'PENTING', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `keperluan` text NOT NULL,
  `satuan_kerja` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `subbidang` varchar(100) NOT NULL,
  `asal_provinsi` varchar(100) NOT NULL,
  `asal_kabupaten` varchar(100) NOT NULL,
  `asal_kecamatan` varchar(100) NOT NULL,
  `asal_kelurahan` varchar(100) NOT NULL,
  `pass_berlaku_mulai` varchar(12) NOT NULL,
  `pass_sampai_tgl` varchar(12) NOT NULL,
  `cookie` text NOT NULL,
  `timestamp_daftar` varchar(100) NOT NULL,
  `direktori_foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`idtamu`, `email`, `username`, `password`, `nama_tamu`, `nip`, `no_hp`, `keperluan`, `satuan_kerja`, `bidang`, `subbidang`, `asal_provinsi`, `asal_kabupaten`, `asal_kecamatan`, `asal_kelurahan`, `pass_berlaku_mulai`, `pass_sampai_tgl`, `cookie`, `timestamp_daftar`, `direktori_foto`) VALUES
(47, 'admin@mail.com', 'admin', '$2y$10$lN5JputZqWzXxnbsrvZb1eljLwAZGUiQ1tXRUKEjjUKchlxJN2rfe', 'admin', '-', '-', 'tes', 'Yang Lain (Others)', 'Yang Lain (Others)', 'Yang Lain (Others)', 'SULAWESI SELATAN', 'Kota Makassar', 'Yang Lain (Others)', 'Yang Lain (Others)', '31/07/2020', '08/08/2020', '', '31/07/2020-3581-0.23698800 1596179762', './public/image_tamu/6ab45_logo unmuh.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `target_surat`
--

CREATE TABLE `target_surat` (
  `idtarget_surat` int(11) NOT NULL,
  `target` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `target_surat`
--

INSERT INTO `target_surat` (`idtarget_surat`, `target`) VALUES
(4, 'Kepala BPSDM'),
(5, 'Sekretariat BPSDM'),
(6, 'UPT 1 BPSDM'),
(7, 'Pendidikan dan Pelatihan Kepemimpinan'),
(8, 'Pendidikan dan Pelatihan Teknis'),
(9, 'Perencanaan Kediklatan'),
(10, 'Pengembangan dan Inovasi Kediklatan'),
(11, 'Yang Lain (Others)'),
(12, 'Front Office BPSDM'),
(13, 'Pengirim'),
(14, 'UPT 2 BPSDM'),
(15, 'Bank Data BPSDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbagenda_kerja`
--

CREATE TABLE `tbagenda_kerja` (
  `idagenda_kerja` int(11) NOT NULL,
  `acara_kegiatan` text NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `jam_mulai` varchar(10) NOT NULL,
  `tanggal_selesai` varchar(100) NOT NULL,
  `jam_selesai` varchar(10) NOT NULL,
  `lama_kegiatan` varchar(100) NOT NULL,
  `status_kegiatan` varchar(20) NOT NULL,
  `nama_file_surat_pendukung` text NOT NULL,
  `direktori_surat_pendukung` text NOT NULL,
  `nama_file_foto` text NOT NULL,
  `direktori_foto_yg_menyertai` text NOT NULL,
  `keterangan_foto` text NOT NULL,
  `nama_file_video` text NOT NULL,
  `direktori_video_yang_menyertai` text NOT NULL,
  `urgensi` varchar(100) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `narasi_acara` text NOT NULL DEFAULT '\'Laporan Acara Kegiatan\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbagenda_kerja`
--

INSERT INTO `tbagenda_kerja` (`idagenda_kerja`, `acara_kegiatan`, `tempat`, `tanggal_mulai`, `jam_mulai`, `tanggal_selesai`, `jam_selesai`, `lama_kegiatan`, `status_kegiatan`, `nama_file_surat_pendukung`, `direktori_surat_pendukung`, `nama_file_foto`, `direktori_foto_yg_menyertai`, `keterangan_foto`, `nama_file_video`, `direktori_video_yang_menyertai`, `urgensi`, `admin`, `narasi_acara`) VALUES
(18, 'Acara 2, rapat kordinasi BKD untuk penanganan masalah COVID 19 di lingkungan kantor BKD pemprov sulsel.', 'BKD Provinsi Sulawesi Selatan', '23/05/2020', '', '23/05/2020', '', '1', 'tes4', 'a00a7_Buku Pedoman Frontoffice Sistem Terintegrasi BKD.pptx; b16c7_Baru.pptx; 76870_02Responsif.pdf', './public/arsip_surat_agenda/a00a7_Buku Pedoman Frontoffice Sistem Terintegrasi BKD.pptx; ./public/arsip_surat_agenda/b16c7_Baru.pptx; ./public/arsip_surat_agenda/76870_02Responsif.pdf', '2f890_bkd_sulsel.jpeg; aa5e1_foto_sekda_sulsel.jpg; d3378_gubwagub.jpg', './public/arsip_foto_agenda/2f890_bkd_sulsel.jpeg; ./public/arsip_foto_agenda/aa5e1_foto_sekda_sulsel.jpg; ./public/arsip_foto_agenda/d3378_gubwagub.jpg', 'foto Kepala BKD Sulsel; foto Sekda Sulsel; foto Gubernur dan Wakil Gubernur', '1d2b7_VID-20191115-WA0010.mp4; 66bee_VID-20191207-WA0000.mp4; 82b53_IMG_2167.mp4', './public/arsip_video_agenda/1d2b7_VID-20191115-WA0010.mp4; ./public/arsip_video_agenda/66bee_VID-20191207-WA0000.mp4; ./public/arsip_video_agenda/82b53_IMG_2167.mp4', 'penting', 'Andi Sinra', '504768306257772b5047686c5957512b5043396f5a57466b506a7869623252355067304b5457467a6457747565574567553246325a584a70626942685a47467359576767645735306457736762575674596d467564485567625756746347567959325677595851676347567964485674596e566f59573467533239776153424c5a573568626d646862693467535745675a476c7a5a574a316443426959577468624342745a573169595864684947746c634756746157317761573568626d3535595342355957356e49484e6c636d4a6849474a70633245675a474675494852795957357a5a6d39796257467a61573975595777676132567759575268494852706253424c623342704945746c626d46755a3246754c69414e4369414e43694a5459586c684947316c626d467564476c725957346761325679616d4567633246745953426b5a57356e59573467533239776153424c5a573568626d646862694231626e5231617942745a5731695957356e6457346750476b2b596e4a68626d51384c326b2b4947647362324a68624342355957356e4947316c636d4635595774686269426a6158526849484a68633245675357356b6232356c63326c68494752686269424263326c684946526c626d646e59584a684c434967613246305953426b615745754941304b4941304b553246325a584a70626942695a584a7a5957316849474a6c596d56795958426849484a6c61324675626e6c684c4342305a584a7459584e316179424e59584a72494670315932746c636d4a6c636d63734947316c626d5270636d6c7259573467526d466a5a574a766232737549457468624745676158523149476c6849474a6c636e5270626d52686179427a5a574a685a32467049475270636d5672644856794947746c645746755a324675494752686269427459573568616d567949474a70633235706379424759574e6c596d39766179346744516f67445170545a577068617941794d4441354c43425459585a6c636d6c7549485270626d646e595777675a476b6755326c755a32467764584a6849475268626942745a5731695957356e64573467596d6c7a626d6c7a4947527049484e68626d456763325672595778705a33567a4947316c626d70685a476b6750476b2b5957356e5a577767615735325a584e30623349755043397050694251595752684948526861485675494449774d54557349476c684947316c626d5270636d6c72595734676347567964584e68614746686269427462325268624342325a57353064584a684945496751324677615852686243346744516f674451704349454e6863476c305957776762575675595735686257746862694274623252686243426b615342775a584a316332466f595746754c58426c636e567a5957686859573467636d6c7564476c7a595734675a476b6751584e70595342555a57356e5a3246795953426b595734675357356b61574575494642316269424349454e6863476c305957776762575679645842686132467549484e686247466f49484e6864485567615735325a584e3062334967655746755a7942706133563049484e6c636e526849475268624746744948426c626d5268626d46686269427a5a584a7049454967533239776153424c5a573568626d64686269346744516f67445170545a57316c626e5268636d4567615852314c4342465a486468636d516756476c7964474675595852684c43427a595778686143427a595852314948426c626d5270636d6b675a47467549454e465479424c623342704945746c626d46755a3246754947316c626d646864474672595734734948427061474672626e6c6849474a6c636d567559324675595342745a57356e5a33567559577468626942775a57356b59573568595734676157357049485675644856724947316c6258426c636d7431595851676233426c636d467a615735355953426b6153424a626d5276626d567a615745754941304b4941304b533239776153424c5a573568626d64686269776761573169645767675257523359584a6b4c434271645764684947467259573467625756736457356a64584a725957346763484a765a48567249474a68636e557349474a6c636d6c75646d567a6447467a6153426b59577868625342305a577475623278765a326b67595764686369426b59584268644342745a57786865574675615342775a577868626d646e595734675a4756755a3246754947786c596d6c6f49474a686157737349484e6c636e526849474a6c636d4a685a3246704948567759586c6849485675644856724947316c62476c755a4856755a326b676132467965574633595734675a476b67644756755a32466f49484268626d526c62576b6751323932615751744d546b754941304b4941304b496b746c63325671595768305a584a6859573467613246796557463359573467595752686247466f4948427961573979615852686379426b5957346761324674615342695a584a70626e5a6c6333526863326b675a474673595730676132567a5a5778686257463059573467625756795a5774684947526c626d6468626942745a573570626d64725958527259573467625746755a6d4668644342725a584e6c6147463059573467633256796447456762575674596d567961577468626942735a574a7061434269595735355957736763475673595852706147467549485675644856724947316c62574a68626e52314947316c636d5672595342745a57356e5958526863326b676347567964574a686147467549474a6c6332467949476c756153776949485671595849675257523359584a6b4c69414e4369414e436c426c626d5268626d46686269426959584a3149476c75615342745a57353564584e31624342775a57356b595735685957346763325679615342424945747663476b67533256755957356e595734676332567561577868615341794d43427164585268494752766247786863694242557942775957526849457031626d6b674d6a41784f5334675548563059584a68626942775a57356b5957356859573467615852314947527063476c7463476c75494739735a57676755325678645739705953424459584270644746734c69414e4369414e436b466b59584231626942775a57356b5957356859573467595864686243424c623342704945746c626d46755a324675494842685a4745674d6a41784f43426b6158427062584270626942766247566f49476c75646d567a644739794947787661324673494546736347686849457058517934675547466b595342455a584e6c62574a6c636941794d4445354c43424c623342704945746c626d46755a324675494770315a324567625756755a33567464573172595734676347567962485668633246754948426c626d5268626d4668626942545a584a70494545675a47467961534268626e5268636d45676247467062694242636e4a70646d557349464a765979424f595852706232346762576c736157736750476b2b636d467763475679504339705069424b59586b6757697767553256795a57356849465a6c626e5231636d567a4947317062476c724948426c6447567561584d67553256795a57356849466470624778705957317a4c4342775a57316861573467596d467a6132563049454e68636d6c7a4945786c566d567964437767633256796447456751305650494752686269424462793147623356755a47567949464e335a5756305a334a6c5a573467536d39755958526f59573467546d5674595734754941304b4941304b533239776153424c5a573568626d64686269427a5957463049476c75615342745a57356e6233426c636d467a615774686269417a4d6a5167644739726279426b6153424a626d5276626d567a615745675a4746754947316c62576c736157747049444d754d44417749477468636e6c68643246754c69424c623342704945746c626d46755a32467549484231626942305a577868614342745a5735715957356e613246314947786c596d6c6f49475268636d6b676332463064534271645852684948426c624746755a326468626942745a577868624856704947467762476c7259584e7049484276626e4e6c6243346744516f67445170465a486468636d51676257567565575669645851734948427061474672626e6c684947316c626d46795a3256306132467549485675644856724947316c62574a31613245674e5441774947646c636d467049476870626d646e59534268613268706369423059576831626941794d4449774c69414e4369414e4369414e436a786950694174494570685a476b67616d6c7259534276636d46755a79426b5a57356e595734676132567a5a5768686447467549486c68626d6367596e56796457736762474673645342745a5731695a584a7a615768725957346763475674596e5673645767675a47467959576767625756795a5774684c4342745a584a6c61324567595774686269426f61575231634342735a574a706143427359573168507a7776596a346744516f6744516f744946526c626e523149484e68616d45684945316c626d6468634745676132567a5a5768686447467549473168626e567a615745676332566a59584a6849477868626d647a6457356e49474a6c636d7468615852686269426b5a57356e5957346763475674596e5673645767675a4746795957672f4946426c62574a316248566f49475268636d466f49476c306453427461584a70634342776158426849474670636934675247467959576767625756755a324673615849676257567359577831615342775a573169645778316143776762575674596d567961534274595774686269427a5a57313159534276636d646862697767633256775a584a306153426861584967625756735957783161534277615842684c6942545a57316861326c7549474a686157736762575674596d567961534274595774686269776763325674595774706269427a5a5768686443423064574a316143346755325670636d6c755a794233595774306453776763475674596e5673645767675a4746795957676762575675616d466b615342305a584a726232353059573170626d467a61537767636e5668626d6367615735305a584a755957776762575675616d466b615342735a574a70614342725a574e70624377675a47467549475270626d5270626d647565574567636e567a5957737349484e6c6347567964476b6763476c775953426861584967596d567961324679595851675a4746754948526c636e4e3162574a68644334675247467959576767655746755a7942695a584a7063326b67626e5630636d6c7a61534230615752686179426b59584268644342745a57356a5958426861534276636d64686269426b59577868625377675a4746754947316c636d56725953427464577868615342725a577868634746795957347549456470626d70686243776762474674596e56755a797767614746306153776759585268645342725957356b6457356e4947746c62576c6f49484e6c62585668626e6c684947316c626d6468624746746153427a61584a726457786863326b67655746755a79426964584a3161793467516d46355957356e61324675494770706132456763324635595342695a584a6f5a573530615342745a5731695a584a70494731686132467549484e6863476b675a4746754947746862574a70626d637349476c6849474672595734676332566e5a584a6849484e6861326c304953414e4369414e436b70706132456763326c796133567359584e7049475268636d466f49475270634856736157687259573473494731686132456762334a6e5957347462334a6e595734676258567359576b6761476c6b6458416761325674596d467361533467545856755a3274706269427a59577068494739795957356e494852705a474672494746725957346761476c6b64584167633256735957316849484e686557456761476c6b645841734948526c644746776153427759584e30615342745a584a6c613245675a47467759585167625756746347567963474675616d46755a79426f61575231634342745a584a6c6132457549453131626d6472615734676332567359573168494455676447466f6457347349484e6c62474674595341784d4342305957683162694268644746314947786c596d6c6f4c694261595731686269426b645778314c4342725a5852706132456764476c6b59577367595752684947396959585173494739795957356e4947316c626d646c636e527049477476626e4e6c63434270626d6b675a4746754948526c6447467749484e6c614746304c69414e4369414e436c4e68655745676157356e5958516763324630645342725a5770685a476c68626934675533566862576b675a474679615342305a5731686269426959576c7249484e6865574567633246755a3246304947316c626d526c636d6c305953426b61584e6c596d4669613246754948526c61324675595734675a4746795957676764476c755a3264704c694245623274305a584967625756755a3246305957746862694269595768335953426b61574567614746756557456763485675655745676132567a5a573177595852686269427a595852314948526861485675494778685a326b67645735306457736761476c6b6458417549464e6c62334a68626d6367644756745957346762575674615735305953427a59586c6849485675644856724947316c62574a68626e52314c69425459586c68494852705a47467249484231626e6c6849484a686147467a61574573494752686269427a59586c6849476868626e6c684947316c626e6c68636d4675613246754947527059534231626e5231617942745a5731695a584a7a615768725957346763475674596e5673645767675a47467959576875655745754944457749485268614856754948526c6247466f49474a6c636d786862485567633256745a57357159577367613256715957527059573467615852314c694251636d6c6849476c75615342305a584a316379426f615752316343426b595734676447567959584e684947783159584967596d6c68633245754945467261476c79626e6c6849484e6c624856796457676761325673645746795a3246756557456762575674596d567963326c6f613246754948426c62574a316248566f49475268636d466f4947316c636d56725953344e436a7776596d396b655434384c3268306257772b'),
(35, 'sa', '', '', '', '', '', '', '', '', '', 'f4243_SAMPUL BUKU DATAWAREHOUSE.jpg; 81498_23519189_1698110433593288_4261449253295612632_n.jpg; 68c17_64424736_2758047537599567_3535038142245502976_o.jpg', './public/arsip_foto_agenda/f4243_SAMPUL BUKU DATAWAREHOUSE.jpg; ./public/arsip_foto_agenda/81498_23519189_1698110433593288_4261449253295612632_n.jpg; ./public/arsip_foto_agenda/68c17_64424736_2758047537599567_3535038142245502976_o.jpg', '', '4c72a_Presentation2.mp4', './public/arsip_video_agenda/4c72a_Presentation2.mp4', '', '', '616d74715a4746726332516759584e6b616d46715a484e725953427a613252715957747a5a476f3d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbalasan_komentar`
--

CREATE TABLE `tbbalasan_komentar` (
  `idbalasan_komentar` int(11) NOT NULL,
  `idkomentar` int(11) NOT NULL,
  `balasan` text NOT NULL,
  `timestamp_balas` varchar(100) NOT NULL,
  `admin_yang_balas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcounter_notifikasi`
--

CREATE TABLE `tbcounter_notifikasi` (
  `idcounter_notifikasi` int(11) NOT NULL,
  `nama_counter` varchar(255) NOT NULL,
  `nilai_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbcounter_notifikasi`
--

INSERT INTO `tbcounter_notifikasi` (`idcounter_notifikasi`, `nama_counter`, `nilai_counter`) VALUES
(1, 'counter surat masuk', 0),
(2, 'counter arsip surat terkirim semua bidang', 0),
(3, 'counter surat masuk terusan ', 0),
(4, 'counter surat masuk balasan', 0),
(5, 'counter surat masuk tamu_pegawai', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbnotifikasi`
--

CREATE TABLE `tbnotifikasi` (
  `idnotif` int(11) NOT NULL,
  `pengirim_surat_masuk` varchar(255) NOT NULL,
  `digest_signature` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'masuk',
  `timestamp_masuk` varchar(255) NOT NULL,
  `timestamp_baca` varchar(255) NOT NULL,
  `jenis_surat_masuk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbnotifikasi`
--

INSERT INTO `tbnotifikasi` (`idnotif`, `pengirim_surat_masuk`, `digest_signature`, `status`, `timestamp_masuk`, `timestamp_baca`, `jenis_surat_masuk`) VALUES
(1, 'pengirim', '75250e7a963e8d35ae58f0bf2cea3be428771114', '', '', '', ''),
(2, 'ghghghg', 'c188d702a0084836e0bc71f02c5925ea415e3724', 'masuk', '', '', ''),
(3, 'vbvbvbvb', 'baa8f25e16f9180c7dab012e4b04dab4442557c2', 'masuk', '', '', ''),
(4, 'vbvbvbvb', 'baa8f25e16f9180c7dab012e4b04dab4442557c2', 'masuk', '10/02/2020-1044-0.96488700 1581290629', '', 'balasan dari sekretariat'),
(5, 'pengirim', '75250e7a963e8d35ae58f0bf2cea3be428771114', 'masuk', '09/02/2020-3714-0.78695900 1581225706', '', 'balasan dari sekretariat'),
(6, 'pengirim', '75250e7a963e8d35ae58f0bf2cea3be428771114', 'masuk', '09/02/2020-3714-0.78695900 1581225706', '', 'balasan dari sekretariat'),
(7, '', '3b61e842d63076742905a735ed9db7d6c486ec95', 'masuk', '', '', ''),
(8, 'ddddddd', 'ba764dea7a120bcbd3f02e155a12077d31201f09', 'masuk', '', '', ''),
(9, 'yyyyyyyyyyyyyyyyyy', '31f14225af62763df57b0d1731171ac65eb108eb', 'masuk', '', '', ''),
(10, 'mmmmmmmmmmmmmmmmmmmmmm', 'c8f3fe3233f93fbe23f99c52daaf915c1280c590', 'masuk', '', '', ''),
(11, '99999999999999999999999999999', '08ad92f58bb18e88368dc68636c21b53dcfe31c9', 'masuk', '', '', ''),
(12, '888888888888', '5f800932eeafb66bb877ab3763d82e74a8d24b75', 'masuk', '', '', ''),
(13, 'yiuyuy', '517dddd724008b78eb0996b79aeac85438b6f582', 'masuk', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstatus_kegiatan`
--

CREATE TABLE `tbstatus_kegiatan` (
  `idstatus_kegiatan` int(11) NOT NULL,
  `nama_status_kegiatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbstatus_kegiatan`
--

INSERT INTO `tbstatus_kegiatan` (`idstatus_kegiatan`, `nama_status_kegiatan`) VALUES
(1, 'selesai'),
(2, 'batal'),
(3, 'berlangsung'),
(4, 'ditunda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `urgensi_surat`
--

CREATE TABLE `urgensi_surat` (
  `idurgensi_surat` int(11) NOT NULL,
  `nama_urgensi_surat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `urgensi_surat`
--

INSERT INTO `urgensi_surat` (`idurgensi_surat`, `nama_urgensi_surat`) VALUES
(1, 'PENTING'),
(2, 'SANGAT PENTING'),
(3, 'SEGERA'),
(4, 'NORMAL'),
(5, 'Yang Lain (Others)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idadmin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `status_admin` varchar(20) NOT NULL,
  `satker` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `subbidang` varchar(255) NOT NULL,
  `pass_berlaku_mulai` varchar(12) NOT NULL,
  `pass_sampai_tgl` varchar(12) NOT NULL,
  `cookie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idadmin`, `email`, `username`, `password`, `nama_admin`, `no_hp`, `status_admin`, `satker`, `bidang`, `subbidang`, `pass_berlaku_mulai`, `pass_sampai_tgl`, `cookie`) VALUES
(1, 'unknown@unknown.com', 'admin', '$2y$10$3hFn6ufpEIPy5h/hbIi4KuG3MYJ7juBUiur.BeO1C3Jt0Y9txZtdS', 'admin', '-', 'admin', '-', '-', '-', '-', '-', 'f1bef56fd304e8ed9528c3b43e1dd7e213cf3b6567a1f462d8d0df4069deb9f7'),
(2, 'bagusbagus2733@gmail.com', 'bagus', '$2y$04$Ajvw9fdS0nOuJnG.sKINSeT0Si3Rjlur4PPQqDvyMd24EgsEl4xpi', 'bagus', '', 'admin', '', '', '', '', '', ''),
(3, 'noeng.hunter@gmail.com', 'NURWANTO', '$2y$04$/k2GJ7IDPnJz0zabG0xP9eDcvfHJ350eqZk7fJSzEG58RdUtQB8Fm', 'NURWANTO', '', 'admin', '', '', '', '', '', ''),
(29, 'eljjsk@jskjs.com', 'Kamos', '$2y$10$x8qP0ENghb13dVvaQe4LCektGqnBiiCg7DGwayNX6aqqamMEWDgQW', 'Kamos', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`idbidang`);

--
-- Indeks untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`idstatus_surat`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`idkabupaten`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`idkecamatan`);

--
-- Indeks untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`idkelurahan`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`idkomentar`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`idprovinsi`);

--
-- Indeks untuk tabel `satuan_kerja`
--
ALTER TABLE `satuan_kerja`
  ADD PRIMARY KEY (`idsatker`);

--
-- Indeks untuk tabel `status_pengirim`
--
ALTER TABLE `status_pengirim`
  ADD PRIMARY KEY (`idstatus_pengirim`);

--
-- Indeks untuk tabel `status_surat`
--
ALTER TABLE `status_surat`
  ADD PRIMARY KEY (`idstatus_surat`);

--
-- Indeks untuk tabel `subbidang`
--
ALTER TABLE `subbidang`
  ADD PRIMARY KEY (`idsubbidang`);

--
-- Indeks untuk tabel `surat_balasan_tamupegawai`
--
ALTER TABLE `surat_balasan_tamupegawai`
  ADD PRIMARY KEY (`idsurat_balasan`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`idsurat_keluar`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`idsurat_masuk`);

--
-- Indeks untuk tabel `surat_masuk_bidang`
--
ALTER TABLE `surat_masuk_bidang`
  ADD PRIMARY KEY (`idsurat_masuk_bidang`);

--
-- Indeks untuk tabel `surat_terusan`
--
ALTER TABLE `surat_terusan`
  ADD PRIMARY KEY (`idsurat_terusan`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `target_surat`
--
ALTER TABLE `target_surat`
  ADD PRIMARY KEY (`idtarget_surat`);

--
-- Indeks untuk tabel `tbagenda_kerja`
--
ALTER TABLE `tbagenda_kerja`
  ADD PRIMARY KEY (`idagenda_kerja`);

--
-- Indeks untuk tabel `tbbalasan_komentar`
--
ALTER TABLE `tbbalasan_komentar`
  ADD PRIMARY KEY (`idbalasan_komentar`);

--
-- Indeks untuk tabel `tbcounter_notifikasi`
--
ALTER TABLE `tbcounter_notifikasi`
  ADD PRIMARY KEY (`idcounter_notifikasi`);

--
-- Indeks untuk tabel `tbnotifikasi`
--
ALTER TABLE `tbnotifikasi`
  ADD PRIMARY KEY (`idnotif`);

--
-- Indeks untuk tabel `tbstatus_kegiatan`
--
ALTER TABLE `tbstatus_kegiatan`
  ADD PRIMARY KEY (`idstatus_kegiatan`);

--
-- Indeks untuk tabel `urgensi_surat`
--
ALTER TABLE `urgensi_surat`
  ADD PRIMARY KEY (`idurgensi_surat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idadmin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `idbidang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `idstatus_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `idkabupaten` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `idkecamatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `idkelurahan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `idkomentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `idprovinsi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `satuan_kerja`
--
ALTER TABLE `satuan_kerja`
  MODIFY `idsatker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `status_pengirim`
--
ALTER TABLE `status_pengirim`
  MODIFY `idstatus_pengirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `status_surat`
--
ALTER TABLE `status_surat`
  MODIFY `idstatus_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `subbidang`
--
ALTER TABLE `subbidang`
  MODIFY `idsubbidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `surat_balasan_tamupegawai`
--
ALTER TABLE `surat_balasan_tamupegawai`
  MODIFY `idsurat_balasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `idsurat_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `idsurat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk_bidang`
--
ALTER TABLE `surat_masuk_bidang`
  MODIFY `idsurat_masuk_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `surat_terusan`
--
ALTER TABLE `surat_terusan`
  MODIFY `idsurat_terusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `target_surat`
--
ALTER TABLE `target_surat`
  MODIFY `idtarget_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbagenda_kerja`
--
ALTER TABLE `tbagenda_kerja`
  MODIFY `idagenda_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbbalasan_komentar`
--
ALTER TABLE `tbbalasan_komentar`
  MODIFY `idbalasan_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbcounter_notifikasi`
--
ALTER TABLE `tbcounter_notifikasi`
  MODIFY `idcounter_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbnotifikasi`
--
ALTER TABLE `tbnotifikasi`
  MODIFY `idnotif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbstatus_kegiatan`
--
ALTER TABLE `tbstatus_kegiatan`
  MODIFY `idstatus_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `urgensi_surat`
--
ALTER TABLE `urgensi_surat`
  MODIFY `idurgensi_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
