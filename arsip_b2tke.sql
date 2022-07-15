-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2022 pada 18.28
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip_b2tke`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_dokumen`
--

CREATE TABLE `arsip_dokumen` (
  `id_arsip_dokumen` int(11) NOT NULL,
  `kode_rak` varchar(30) NOT NULL,
  `kode_box` varchar(30) NOT NULL,
  `kode_ordner` varchar(30) NOT NULL,
  `kode_arsip` varchar(200) NOT NULL,
  `no_akun` varchar(30) NOT NULL,
  `bidang` varchar(250) NOT NULL,
  `sub_bidang` varchar(200) NOT NULL,
  `kegiatan` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `status_arsip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arsip_dokumen`
--

INSERT INTO `arsip_dokumen` (`id_arsip_dokumen`, `kode_rak`, `kode_box`, `kode_ordner`, `kode_arsip`, `no_akun`, `bidang`, `sub_bidang`, `kegiatan`, `tahun`, `status_arsip`) VALUES
(1, '', '001', '', 'B-1.2. 01', '', 'Bagian Umum\r\n', 'Program  & Keuangan', 'DIPA\r\n', 2016, ''),
(2, '', '002', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA\r\n', 2016, ''),
(3, '', '002', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE\r\n\r\n', 2016, ''),
(4, '', '002', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(5, '', '003', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'RM', 2016, ''),
(6, '', '003', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(7, '', '004', '', 'B-1.2. 01\r\n', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA\r\n', 2016, ''),
(8, '', '004', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE\r\n', 2016, ''),
(9, '', '005', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(10, '', '006', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(11, '', '006', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(12, '', '007', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA', 2016, ''),
(13, '', '007', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(14, '', '004', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA', 2016, ''),
(15, '', '004', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(16, '', '005', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(17, '', '006', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(18, '', '006', '', '', '', 'Bagian Umum', 'Program  & Keuangan', '', 2016, ''),
(19, '', '007', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA', 2016, ''),
(20, '', '007', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(21, '', '008', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'II 2016', 2016, ''),
(22, '', '009', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(23, '', '009', '', '', '', 'Bagian Umum', 'Program & Keuangan', 'SSPB,Rekening Koran,Pencairan Cek,DLL', 2016, ''),
(24, '', '010', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(25, '', '010', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Gaji', 2016, ''),
(26, '', '010', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'Gaji', 2016, ''),
(27, '', '011', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(28, '', '011', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Surat Setoran Pajak Untuk Arsip', 2016, ''),
(29, '', '011', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'Surat Setoran Pajak Untuk Arsip', 2016, ''),
(30, '', '012', '', 'B-1.2.01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(31, '', '012', '', 'B-1.2.02', '', 'Bagian Umum', 'Program  & Keuangan', 'Pajak(Surat Setoran Pajak-UP)', 2016, ''),
(32, '', '012', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'Pajak(Surat Setoran Pajak-UP)', 2016, ''),
(33, '', '013', '', 'B-1.2.01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(34, '', '013', '', 'B-1.2.02', '', 'Bagian Umum', 'Program  & Keuangan', 'SSP Untuk pihak ke III', 2016, ''),
(35, '', '013', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'SSP Untuk pihak ke III', 2016, ''),
(36, '', '014', '', 'B-1.2.01', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE\r\n', 2016, ''),
(37, '', '014', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'Pajak LS Untuk Pihak ke III', 2016, ''),
(38, '', '015', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'SP2D', 2016, ''),
(39, '', '015', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Transport Lokal', 2016, ''),
(40, '', '015', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'Bku.DLL(SILABI)', 2016, ''),
(41, '', '016', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'SSBP PNBP\r\n', 2016, ''),
(42, '', '016', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Kontrak PNBP Sudah lunas\r\n', 2016, ''),
(43, '', '016', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'Invoice dan Kwitansi', 2016, ''),
(44, '', '017', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'SP2D Gaji', 2016, ''),
(45, '', '017', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'SP2D', 2016, ''),
(46, '', '017', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'SP2D', 2016, ''),
(47, '', '018', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'Memo masuk umum', 2016, ''),
(48, '', '018', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Berkas dalam proses', 2016, ''),
(49, '', '018', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'Petunjuk Operasional PNBP', 2016, ''),
(50, '', '019', '', 'B-1.2.01', '', 'Bagian Umum', 'Program  & Keuangan', 'Faktur penjualan', 2016, ''),
(51, '', '019', '', 'B-1.2.02', '', 'Bagian Umum', 'Program  & Keuangan', 'Nota Dinas', 2016, ''),
(52, '', '020', '', 'B-1.2.01', '', 'Bagian Umum', 'Program  & Keuangan', 'Nota dinas masuk', 2016, ''),
(53, '', '020', '', 'B-1.2.02', '', 'Bagian Umum', 'Program  & Keuangan', 'Ristek dan Dipa', 2016, ''),
(54, '', '020', '', 'B-1.2.03', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA RKAKL', 2016, ''),
(55, '', '021', '', 'B-1.1.01', '', 'Bagian Umum', 'TU & SDM', 'Rekap cuti', 2016, ''),
(56, '', '021', '', 'B-1.1.02', '', 'Bagian Umum', 'TU & SDM', 'Sertifikat Rumah Cisauk', 2016, ''),
(57, '', '021', '', 'B-1.1.03', '', 'Bagian Umum', 'TU & SDM', 'Surat/Nota dinas masuk ', 2016, ''),
(58, '', '022', '', 'B-1.1.01', '', 'Bagian Umum', 'TU & SDM', 'Data pendukung Absensi', 2016, ''),
(59, '', '022', '', 'B-1.1.02', '', 'Bagian Umum', 'TU & SDM', 'STKK Tiem', 2016, ''),
(60, '', '022', '', 'B-1.1.03', '', 'Bagian Umum', 'TU & SDM', 'Data pegawai', 2016, ''),
(61, '', '023', '', 'B-1.1. 01', '', 'Bagian Umum', 'TU & SDM', 'Data dukung absensi Maret', 2016, ''),
(62, '', '023', '', 'B-1.1. 02', '', 'Bagian Umum', 'TU & SDM', 'Data dukung absensi April', 2016, ''),
(63, '', '023', '', 'B-1.1. 03', '', 'Bagian Umum', 'TU & SDM', 'Data dukung absensi Mei-Agustus', 2016, ''),
(64, '', '024', '', 'B-1.1. 01', '', 'Bagian Umum', 'TU & SDM', 'Data dukung absensi Sep-Des', 2016, ''),
(65, '', '024', '', 'B-1.1. 02', '', 'Bagian Umum', 'TU & SDM', 'Lain-lain', 2016, ''),
(66, '', '024', '', 'B-1.1. 03', '', 'Bagian Umum', 'TU & SDM', 'Surat/Nota dinas masuk', 2016, ''),
(67, '', '025', '', 'B-1.1. 01', '', 'Bagian Umum', 'TU & SDM', 'Nomor Dupak Perekayasa', 2016, ''),
(68, '', '025', '', 'B-1.1. 02', '', 'Bagian Umum', 'TU & SDM', 'SPPD', 2016, ''),
(69, '', '026', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'Kaji ulang Pengujian', 2016, ''),
(70, '', '026', '', 'B-3. 02', '', 'Tek. Kelistrikan', '', 'Jawaban Kaji Ulang', 2016, ''),
(71, '', '027', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'Surat tugas transport', 2016, ''),
(72, '', '027', '', 'B-3. 02', '', 'Tek. Kelistrikan', '', 'Surat Tugas Umum', 2016, ''),
(73, '', '028', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'Surat dinas masuk', 2016, ''),
(74, '', '028', '', 'B-3. 02', '', 'Tek. Kelistrikan', '', 'Rekap absensi', 2016, ''),
(75, '', '029', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'Nota dinas masuk', 2016, ''),
(76, '', '029', '', 'B-3. 02', '', 'Tek. Kelistrikan', '', 'Nota dinas keluar', 2016, ''),
(77, '', '030', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'Mobil Listrik', 2016, ''),
(78, '', '030', '', 'B-3. 02', '', 'Tek. Kelistrikan', '', 'LKP Pengujian', 2016, ''),
(79, '', '031', '', 'B-3. 01', '', 'Tek. Kelistrikan', '', 'DIPA 2016 Smart Grid', 2016, ''),
(80, '', '032', '', 'Fosil 01', '', 'Energi Fosil', '', 'Personil', 2016, ''),
(81, '', '032', '', 'Fosil 02', '', 'Energi Fosil', '', 'Undangan', 2016, ''),
(82, '', '032', '', 'Fosil 03', '', 'Energi Fosil', '', 'Nota dinas keluar', 2016, ''),
(83, '', '033', '', 'B-3. 01', '', 'LPKSF', '', 'Form keluhan pelanggan', 2016, ''),
(84, '', '033', '', 'B-3. 02', '', 'LPKSF', '', 'Berkas perbaikan alat', 2016, ''),
(85, '', '033', '', 'B-3. 03', '', 'LPKSF', '', 'Form Pengujian', 2016, ''),
(86, '', '033', '', 'B-3. 04', '', 'LPKSF', '', 'Panduan Mutu Prosedur Operasional', 2016, ''),
(87, '', '034', '', 'B-3. 01', '', 'LPKSF', '', 'Panduan Mutu Prosedur Operasional', 2016, ''),
(88, '', '035', '', 'B-3. 01', '', 'LPKSF', '', 'Formulir Penyerahan', 2016, ''),
(89, '', '035', '', '', '', 'LPKSF', '', 'Sempel Ke Lab.', 2016, ''),
(90, '', '036', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'DIPA', 2016, ''),
(91, '', '036', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'BPG-B2TKE', 2016, ''),
(92, '', '001', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Kontrak lunas 1', 2017, ''),
(93, '', '001', '', '', '', 'Bagian Umum', 'Program  & Keuangan', 'Kontrak lunas II\r\n', 2017, ''),
(94, '', '002', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'SSP(Surat Setoran Pajak),UP,Arsip I', 2017, ''),
(95, '', '002', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'SSP(Surat Setoran Pajak),UP,Pihak III', 2017, ''),
(96, '', '002', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'SSP(Surat Setoran Pajak),UP,Pihak ke III', 2017, ''),
(97, '', '003', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'R/K,Pencairan Cek,Bukti Transfer,Astrographia,SSPB', 2017, ''),
(98, '', '003', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Surat Setoran Pajak,LS,Pihak III', 2017, ''),
(99, '', '003', '', 'B-1.2. 03', '', 'Bagian Umum', 'Program  & Keuangan', 'Surat Setoran Pajak,LS,Pihak III', 2017, ''),
(100, '', '004', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program  & Keuangan', 'Bukti Setor,Surat Setoran Pajak,GU,Bank,Copy DRPP', 2017, ''),
(101, '', '004', '', 'B-1.2. 02', '', 'Bagian Umum', 'Program  & Keuangan', 'Bukti Transfer', 2017, ''),
(102, '', '005', '', 'B-1.1 01', '', 'Bagian Umum', 'TU & SDM & RT', 'Data Dukung Absensi Januari-Maret', 2017, ''),
(103, '', '005', '', 'B-1.1 02', '', 'Bagian Umum', 'TU & SDM & RT', 'Data Dukung Absensi April-Juni', 2017, ''),
(104, '', '005', '', 'B-1.1 03', '', 'Bagian Umum', 'TU & SDM & RT', 'Data Dukung Absensi Juli-Agustus', 2017, ''),
(105, '', '006', '', 'B-1.1 01', '', 'Bagian Umum', 'TU & SDM & RT', 'Data Dukung Absensi Oktober-Desember', 2017, ''),
(106, '', '006', '', 'B-1.1 02', '', 'Bagian Umum', 'TU & SDM & RT', 'Jabatan Fungsional,dan Kenaikan Pangkat', 2017, ''),
(107, '', '006', '', 'B-1.1 03', '', 'Bagian Umum', 'TU & SDM & RT', 'Surat atau Nota Dinas Masuk', 2017, ''),
(108, '', '007', '', 'B-1.1 01', '', 'Bagian Umum', 'TU & SDM & RT', 'Surat Pemberitahuan Rumah Dinas Puspiptek', 2017, ''),
(109, '', '007', '', 'B-1.1 02', '', 'Bagian Umum', 'TU & SDM & RT', 'PKL/Magang', 2017, ''),
(110, '', '007', '', 'B-1.1 03', '', 'Bagian Umum', 'TU & SDM & RT', 'Rekapitulasi Absensi', 2017, ''),
(111, '', '001', '', 'B-1.2. 01', '', 'Bagian Umum', 'Program & Keuangan', 'PNBP', 2017, ''),
(112, 'A1', 'A1-1', 'A1-1-1', 'BN.00.00', '1', 'bagian umum', 'program keuangan', 'DIPA', 2016, 'ada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(11) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `sub_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `bidang`, `sub_bidang`) VALUES
(1, 'energi terbarukan', 'fotofoltaik & elektro kimia\r\n'),
(2, 'energi terbarukan', 'termal mekanik\r\n'),
(3, 'efisiensi energi', 'analisis & optimasi energi'),
(4, 'efisiensi energi', 'rekayasa instrumentasi & kalibrasi'),
(5, 'energi fosil', 'pengolahan & karakterisasi\r\n'),
(6, 'energi fosil\r\n', 'konversi & pengendalian polusi\r\n'),
(7, 'bagian umum\r\n', 'SBRT\r\n'),
(8, 'bagian umum\r\n', 'TU SDM\r\n'),
(9, 'bagian umum\r\n', 'TU SDM RT\r\n'),
(10, 'bagian umum\r\n', 'program keuangan\r\n'),
(11, 'pelayanan teknologi\r\n', 'pelayanan jasa\r\n'),
(12, 'pelayanan teknologi\r\n', 'program\r\n'),
(13, 'layanan jasa teknologi\r\n', 'pengelolaan technopark energi\r\n'),
(14, 'layanan jasa teknologi\r\n', 'layanan jasa\r\n'),
(15, 'teknologi kelistrikan\r\n', ''),
(16, 'konversi energi\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_arsip`
--

CREATE TABLE `kode_arsip` (
  `id_kode_arsip` int(11) NOT NULL,
  `kode_arsip` varchar(100) NOT NULL,
  `deskripsi_arsip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kode_arsip`
--

INSERT INTO `kode_arsip` (`id_kode_arsip`, `kode_arsip`, `deskripsi_arsip`) VALUES
(1, 'BN', 'Barang Milik Negara'),
(2, 'BN.00', 'Pengelolaan Barang Milik Negara'),
(3, 'BN.00.00', 'Inventarisasi Barang Milik Negara'),
(4, 'BN.00.01', 'Penyimpanan Barang Milik Negara'),
(5, 'BN.00.02', 'Distribusi/Penyaluran Barang Milik Negara'),
(6, 'BN.01', 'Penghapusan Barang Milik Negara'),
(7, 'BN.01.00', 'Penghapusan Barang Bergerak'),
(8, 'BN.01.01', 'Penghapusan Barang Tidak Bergerak'),
(9, 'HM', 'Hubungan Masyarakat'),
(10, 'HM.00', 'Keprotokolan'),
(11, 'HM.00.00', 'Upacara/Acara Kedinasan'),
(12, 'HM.00.01', 'Penerimaan Tamu'),
(13, 'HM.00.02', 'Agenda Pimpinan'),
(14, 'HM.00.03', 'Kunjungan Kerja'),
(15, 'HM.01', 'Dengar Pendapat/Hearing DPR-RI'),
(16, 'HM.02', 'Hubungan Antar Lembaga'),
(17, 'HM.02.00', 'Lembaga Negara'),
(18, 'HM.02.01', 'Perusahaan'),
(19, 'HM.02.02', 'Organisasi Kemasyarakatan'),
(20, 'HM.02.03', 'Perguruan Tinggi/Sekolah'),
(21, 'HM.02.04', 'Bakohumas'),
(22, 'HM.03', 'Penerangan dan Publikasi'),
(23, 'HM.04', 'Dokumentasi dan Penerbitan'),
(24, 'HM.05', 'Ucapan'),
(25, 'HK', 'Hukum'),
(26, 'HK.00', 'Program Legislasi'),
(27, 'HK.01', 'Produk Hukum Lembaga Negara'),
(28, 'HK.01.00', 'Undang-Undang Dasar'),
(29, 'HK.01.01', 'Ketetapan MPR'),
(30, 'HK.01.02', 'Undang-Undang'),
(31, 'HK.01.03', 'Peraturan Pemerintah Pengganti Undang-Undang'),
(32, 'HK.01.04', 'Peraturan Pemerintah'),
(33, 'HK.01.05', 'Peraturan Presiden'),
(34, 'HK.01.06', 'Keputusan Presiden'),
(35, 'HK.01.07', 'Instruksi Presiden'),
(36, 'HK.01.08', 'Peraturan Daerah'),
(37, 'HK.01.09', 'Peraturan Lainnya'),
(38, 'HK.02', 'Produk Hukum Kementrian dan Non Kementrian di Luar BPPT'),
(39, 'HK.02.00', 'Peraturan Menteri'),
(40, 'HK.02.01', 'Keputusan Menteri'),
(41, 'HK.02.02', 'Instruksi Menteri'),
(42, 'HK.02.03', 'Keputusan/Peraturan Direktur Jenderal'),
(43, 'HK.02.04', 'Keputusan/Peraturan Gubernur,PERDA,KPU'),
(44, 'HK.02.05', 'Surat Edaran'),
(45, 'HK.02.06', 'Keputusan/Peraturan Lembaga/Badan'),
(46, 'HK.03', 'Telaah Hukum'),
(47, 'HK.03.00', 'Telaah Hukum Internal'),
(48, 'HK.03.01', 'Telaah Eksternal'),
(49, 'HK.03.02', 'Telaah Perjanjian'),
(50, 'HK.03.03', 'Telaah Akta'),
(51, 'HK.04', 'Pertimbangan Hukum'),
(52, 'HK.05', 'Sosialisasi/Penyuluhan Produk Hukum'),
(53, 'HK.06', 'Bantuan Hukum'),
(54, 'HK.07', 'Kekayaan Intelektual'),
(55, 'HK.07.00', 'Paten'),
(56, 'HK.07.01', 'Desain Industri'),
(57, 'HK.07.02', 'Hak Cipta'),
(58, 'HK.07.03', 'Merk dan Indikasi Geografis'),
(59, 'HK.07.04', 'Desain Tata Letak Sirkuit Terpadu'),
(60, 'HK.07.05', 'Rahasia Dagang'),
(61, 'HK.08', 'Dokumentasi Produk Hukum'),
(62, 'KA', 'Kearsipan'),
(63, 'KA.00', 'Penyusunan Sistem Kearsipan'),
(64, 'KA.01', 'Arsip Dinamis'),
(65, 'KA.01.00', 'Persuratan'),
(66, 'KA.01.01', 'Pengelolaan Arsip Dinamis Aktif'),
(67, 'KA.01.02', 'Pengelolaan Arsip Dinamis Inaktif'),
(68, 'KA.01.03', 'Layanan Peminjaman Arsip'),
(69, 'KA.02', 'Pembinaan Kearsipan'),
(70, 'KA.03', 'Supervisi Kearsipan'),
(71, 'KA.04', 'Evaluasi Sistem Kearsipan'),
(72, 'KA.05', 'Sosialisasi Kearsipan'),
(73, 'KA.06', 'Persandian'),
(74, 'KP', 'Kepegawaian'),
(75, 'KP.00', 'Formasi Pegawai'),
(76, 'KP.00.00', 'Usulan, Persetujuan dan Penetapan Formasi'),
(77, 'KP.00.01', 'Usulan Penempatan Pegawai'),
(78, 'KP.01', 'Pengadaan Pegawai'),
(79, 'KP.01.00', 'Penerimaan'),
(80, 'KP.01.01', 'Pengangkatan CPNS dan PNS'),
(81, 'KP.01.02', 'Prajabatan'),
(82, 'KP.02', 'Ujian Kenaikan Pangkat/Jabatan'),
(83, 'KP.02.00', 'Ujian Penyesuaian Ijazah'),
(84, 'KP.03', 'Standar Kompetensi'),
(85, 'KP.03.00', 'Standar Kompetensi Jabatan Struktural'),
(86, 'KP.03.01', 'Standar Kompetensi Jabatan Fungsional'),
(87, 'KP.04', 'Analisis Beban Kerja'),
(88, 'KP.05', 'Kompetensi'),
(89, 'KP.05.00', 'Assessment Pegawai'),
(90, 'KP.05.01', 'Pemetaan/Talent Mapping Pegawai'),
(91, 'KP.06', 'Data Pegawai'),
(92, 'KP.07', 'Kartu Pegawai'),
(93, 'KP.08', 'Pembinaan Pegawai'),
(94, 'KP.08.00', 'Penilaian Prestasi Kerja'),
(95, 'KP.08.01', 'Pembinaan Mental'),
(96, 'KP.08.02', 'Hukum Disiplin'),
(97, 'KP.08.03', 'Perselisihan/Sengketa Pegawai'),
(98, 'KP.09', 'Pembinaan Jabatan Fungsional'),
(99, 'KP.09.00', 'Pengangkatan Jabatan Fungsional Tertentu'),
(100, 'KP.09.01', 'Kenaikan Jenjang Jabatan'),
(101, 'KP.09.02', 'Pemindahan Jabatan Fungsional Tertentu'),
(102, 'KP.09.03', 'Pemberhentian'),
(103, 'KP.10', 'Mutasi'),
(104, 'KP.10.00', 'Kenaikan Pangkat atau Golongan'),
(105, 'KP.10.01', 'Perpindahan Pegawai'),
(106, 'KP.10.02', 'Penyesuaian Kelas Jabatan'),
(107, 'KP.10.03', 'Pemberhentian Pegawai'),
(108, 'KP.11', 'Pegawai Dipekerjakan dan Diperbantukan'),
(109, 'KP.12', 'Pengangkatan dan Pemberhentian Jabatan Struktural'),
(110, 'KP.12.00', 'Pengangkatan Jabatan Struktural'),
(111, 'KP.12.01', 'Pemberhentian Jabatan Struktural'),
(112, 'KP.13', 'Pendelegasian Wewenang'),
(113, 'KP.13.00', 'Pelaksana Tugas (Plt.)'),
(114, 'KP.13.01', 'Pelaksana Harian (Plh.)'),
(115, 'KP.14', 'Ijin dan Cuti Pegawai'),
(116, 'KP.15', 'Kesejahteraan'),
(117, 'KP.15.00', 'Kesehatan'),
(118, 'KP.15.01', 'Bantuan Sosial'),
(119, 'KP.15.02', 'Perumahan'),
(120, 'KP.15.03', 'Keterangan Penerimaan Pembayaran Penghasilan Pegawai (KP4)'),
(121, 'KP.15.04', 'Status Keluarga dan Penyesuaian Tunjangan Keluarga'),
(122, 'KP.15.05', 'Tunjangan Kinerja dan Uang Makan'),
(123, 'KP.15.06', 'Tanda Jasa'),
(124, 'KP.15.07', 'Kenaikan Gaji Berkala'),
(125, 'KS', 'Kerja Sama'),
(126, 'KS.00', 'Kerja Sama'),
(127, 'KS.00.00', 'Kerja Sama Dalam Negeri'),
(128, 'KS.00.01', 'Kerja Sama Luar Negeri'),
(129, 'KS.00.02', 'Kerja Sama Industri'),
(130, 'KS.01', 'Penyusunan Laporan'),
(131, 'KS.01.00', 'Laporan Berkala'),
(132, 'KS.01.01', 'Laporan Khusus'),
(133, 'KS.01.02', 'Laporan Perkembangan'),
(134, 'KS.02', 'Bantuan/Peminjaman Luar Negeri'),
(135, 'KS.02.00', 'Grey Book-Blue Book'),
(136, 'KS.02.01', 'Loan Agreement (PHLN)'),
(137, 'KS.02.02', 'Alokasi dan Relokasi'),
(138, 'KS.02.03', 'Replenishment'),
(139, 'KU', 'Keuangan'),
(140, 'KU.00', 'Pelaksanaan Anggaran'),
(141, 'KU.00.01', 'RAB'),
(142, 'KU.00.02', 'Penggajian'),
(143, 'KU.00.03', 'Pengeluaran Anggaran'),
(144, 'KU.01', 'Pengelolaan Perbendaharaan'),
(145, 'KU.01.00', 'Perbendaharaan'),
(146, 'KU.01.01', 'Kartu Pengawasan Kredit'),
(147, 'KU.01.02', 'Pajak'),
(148, 'KU.01.03', 'Penerimaan Negara Bukan Pajak (PNBP)'),
(149, 'KU.01.04', 'Pengembalian Belanja'),
(150, 'KU.01.05', 'Berita Acara Pemeriksaan Kas'),
(151, 'KU.01.06', 'Tuntutan Ganti Rugi'),
(152, 'KU.01.07', 'Pembukuan Anggaran'),
(153, 'KU.02', 'Verifikasi Anggaran'),
(154, 'KU.03', 'Ketatausahaan Keuangan '),
(155, 'KU.03.00', 'Keterangan Penghasilan'),
(156, 'KU.03.01', 'Permohonan Peminjaman'),
(157, 'KU.04', 'Bantuan/Peminjaman Luar Negeri'),
(158, 'KU.04.00', 'Realisasi'),
(159, 'KU.04.01', 'Laporan Bantuan Luar Negeri'),
(160, 'KU.05', 'Akuntansi dan Pelaporan'),
(161, 'KU.06', 'Implementasi Sistem Akuntansi Pemerintah (SAP)'),
(162, 'KU.07', 'Evaluasi Anggaran'),
(163, 'KU.08', 'Tindak Lanjut Laporan Hasil Pemeriksaan'),
(164, 'KU.09', 'Ketatausahaan Anggaran'),
(165, 'KU.10', 'Standar Biaya Masukan Lainnya'),
(166, 'MI', 'Manajemen Informasi'),
(167, 'MI.00', 'Infrastruktur Informasi'),
(168, 'MI.01', 'Manajemen Aplikasi E-Government'),
(169, 'MI.02', 'Layanan Standardisasi'),
(170, 'MI.03', 'Manajemen Pengetahuan dan Perpustakaan'),
(171, 'OT', 'Organisasi dan Tata Laksana'),
(172, 'OT.00', 'Organisasi'),
(173, 'OT.00.00', 'Penataan Organisasi'),
(174, 'OT.00.01', 'Evaluasi Organisasi'),
(175, 'OT.01', 'Analisis Jabatan\r\n'),
(176, 'OT.01.00', 'Analisis Jabatan Struktural\r\n'),
(177, 'OT.01.01', 'Analisis Jabatan Fungsional Tertentu\r\n'),
(178, 'OT.01.02', 'Analisis Jabatan Fungsional Umum\r\n'),
(179, 'OT.02', 'Evaluasi Jabatan'),
(180, 'OT.03', 'Tata Laksana'),
(181, 'OT.03.00', 'Penyusunan dan Peyelarasan Tata Laksana'),
(182, 'OT.03.01', 'Monitoring dan Evaluasi Tata Laksana'),
(183, 'PRB', 'Program Reformasi Birokrasi'),
(184, 'PRB.00', 'Pelaksanaan Reformasi Birokrasi'),
(185, 'PRB.01', 'Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)'),
(186, 'DL', 'Pendidikan dan Pelatihan'),
(187, 'DL.00', 'Program/Perencanaan'),
(188, 'DL.01', 'Penjenjangan'),
(189, 'DL.01.00', 'Penjenjangan Jabatan Struktural'),
(190, 'DL.01.01', 'Penjenjangan Jabatan Fungsional'),
(191, 'DL.02', 'Pendidikan'),
(192, 'DL.02.00', 'Perguruan Tinggi'),
(193, 'DL.02.01', 'Tugas Belajar'),
(194, 'DL.02.02', 'Ikatan Dinas'),
(195, 'DL.03', 'Pelatihan'),
(196, 'DL.03.00', 'Pelatihan Teknis dan Non Teknis'),
(197, 'DL.03.01', 'Magang/Praktek Kerja'),
(198, 'DL.03.02', 'Evaluasi'),
(199, 'DL.04', 'Akreditasi dan Sertifikasi'),
(200, 'DL.04.00', 'Akreditasi'),
(201, 'DL.04.01', 'Sertifikasi'),
(202, 'PR', 'Perencanaan'),
(203, 'PR.00', 'Pokok-Pokok Kebijakan dan Strategi Pembangunan'),
(204, 'PR.00.00', 'Rencana Pembangunan Jangka Panjang (RPJP)'),
(205, 'PR.00.01', 'Rencana Pembangunan Jangka Menengah (RPJM)'),
(206, 'PR.00.02', 'Rencana Strategis (Renstra)'),
(207, 'PR.01', 'Rencana Kerja'),
(208, 'PR.01.00', 'Usulan Perencanaan Kegiatan'),
(209, 'PR.01.01', 'Rencana Kinerja Tahunan'),
(210, 'PR.01.02', 'Rencana Kerja Berdasar Pagu Indikatif'),
(211, 'PR.01.03', 'Inisiatif Baru'),
(212, 'PR.02', 'Penetapan Kinerja'),
(213, 'PR.03', 'Perencanaan Anggaran'),
(214, 'PR.03.00', 'Penyusunan Rencana Anggaran'),
(215, 'PR.03.01', 'Penerimaan Negara Bukan Pajak (PNBP)'),
(216, 'PR.03.02', 'Standarisasi Harga Satuan Perencanaan Barang (SHSPB)'),
(217, 'PR.03.03', 'Standar Biaya Keluaran (SBK)'),
(218, 'PR.03.04', 'Arsitektur dan Informasi Kinerja (ADIK)'),
(219, 'PR.04', 'Revisi Dokumen Anggaran'),
(220, 'PR.04.00', 'Revisi DIPA dan POK'),
(221, 'PR.04.01', 'Anggaran Belanja Tambahan (ABT)'),
(222, 'PR.04.02', 'Anggaran Pendapat dan Belanja Negara-Perubahan (APBN-P)'),
(223, 'PR.05', 'Laporan Akuntabilitas Kinerja Instansi Pemerintah (LAKIP)'),
(224, 'PR.06', 'Evaluasi Program dan Pelaporan Kinerja'),
(225, 'PL', 'Perlengkapan'),
(226, 'PL.00', 'Perencanaan Pengadaan Barang dan Jasa'),
(227, 'PL.00.00', 'Analisis Kebutuhan'),
(228, 'PL.00.01', 'Tata Ruang'),
(229, 'PL.00.02', 'Daftar Perkenalan Mampu'),
(230, 'PL.01', 'Pelaksanaan Pengadaan Barang dan Jasa'),
(231, 'PL.01.00', 'Pengadaan Barang Habis Pakai'),
(232, 'PL.01.01', 'Pengadaan Barang Bergerak'),
(233, 'PL.01.02', 'Pengadaan Barang Tidak Bergerak'),
(234, 'PL.01.03', 'Pengadaan Instalasi/Jaringan'),
(235, 'PL.02', 'Penyimpanan Distribusi'),
(236, 'PL.03', 'Pemeliharaan'),
(237, 'PW', 'Pengawasan'),
(238, 'PW.00', 'Audit'),
(239, 'PW.01', 'Reviu'),
(240, 'PW.02', 'Evaluasi/Penilaian'),
(241, 'PW.03', 'Pemantauan'),
(242, 'PW.04', 'Kegiatan Pengawasan Lainnya'),
(243, 'PW.05', 'Pengaduan Masyarakat'),
(244, 'RT', 'Rumah Tangga'),
(245, 'RT.00', 'Urusan Dalam'),
(246, 'RT.00.00', 'Jamuan'),
(247, 'RT.00.01', 'Pengamanan'),
(248, 'RT.00.02', 'Evakuasi Penanggulangan Bahaya'),
(249, 'RT.01', 'Perjalanan Dinas'),
(250, 'RT.01.00', 'Perjalanan Dinas Dalam Negeri'),
(251, 'RT.01.01', 'Perjalanan Dinas Luar Negeri'),
(252, 'RT.02', 'Kendaraan Dinas'),
(253, 'RT.02.01', 'Pengelolaan Kendaraan Dinas'),
(254, 'RT.02.02', 'Pengelolaan BBM'),
(255, 'RT.03', 'Percetakan'),
(256, 'KT', 'Kebijakan Teknologi'),
(257, 'KT.00', 'Sistem Inovasi Daerah'),
(258, 'KT.00.00', 'Kebijakan Kelembagaan Inovasi'),
(259, 'KT.00.01', 'Kebijakan Budaya Inovasi'),
(260, 'KT.00.02', 'Kebijakan Infrastruktur Khusus Inovasi'),
(261, 'KT.00.03', 'Isu Perkembangan Inovasi Global'),
(262, 'KT.01', 'Kawasan Spesifik'),
(263, 'KT.01.00', 'Manajemen Invensi dan Inovasi'),
(264, 'KT.01.01', 'Jaringan Inovasi'),
(265, 'KT.01.02', 'Penyiapan Rumusan Kebijakan'),
(266, 'KT.02', 'Teknoprener dan Klaster Industri'),
(267, 'KT.02.00', 'Kebijakan Teknologi Teknoprener'),
(268, 'KT.02.01', 'Kebijakan Teknologi Klaster Tertentu'),
(269, 'KT.02.02', 'Kebijakan Pengembangan Kelembagaan dan Budaya Teknoprener'),
(270, 'KT.03', 'Strategi Teknologi dan Audit Teknologi'),
(271, 'KT.03.00', 'Strategi Teknologi'),
(272, 'KT.03.01', 'Audit Teknologi'),
(273, 'KT.03.02', 'Teknologi Tematik'),
(274, 'KT.04', 'Teknologi Industri Kreatif Keramik'),
(275, 'KT.04.00', 'Fasilitasi dan Konsultasi'),
(276, 'KT.04.01', 'Kerekayasaan Teknologi Industri Kreatif Keramik'),
(277, 'KT.05', 'Inkubator Teknologi'),
(278, 'KT.05.00', 'Fasilitasi dan Konsultasi'),
(279, 'KT.05.01', 'Inkubasi Bisnis Untuk Pengembangan'),
(280, 'SA', 'Sumber Daya Alam'),
(281, 'SA.00', 'Sumber Daya Wilayah'),
(282, 'SA.00.00', 'Eksplorasi Sumber Daya Alam Berbasis Penginderaan Jauh Maju'),
(283, 'SA.00.01', 'Eksplorasi Sumber Daya Alam Wilayah Darat'),
(284, 'SA.00.02', 'Eksplorasi Sumber Daya Alam Wilayah Laut'),
(285, 'SA.01', 'Sumber Daya Mineral'),
(286, 'SA.01.00', 'Eksplorasi dan Penambangan'),
(287, 'SA.01.01', 'Pengolahan dan Tekno-Ekonomi Mineral'),
(288, 'SA.01.02', 'Pengelolaan Dampak Pertambangan'),
(289, 'SA.02', 'Reduksi Resiko Bencana'),
(290, 'SA.02.00', 'Pengelolaan Bentang Lahan dan Badan Air'),
(291, 'SA.02.01', 'Pengembangan Wilayah dan Pengelolaan Kawasan'),
(292, 'SA.02.02', 'Mitigasi Bencana'),
(293, 'SA.03', 'Teknologi Lingkungan'),
(294, 'SA.03.00', 'Pengendalian Pencemaran Lingkungan'),
(295, 'SA.03.01', 'Konservasi dan Pemulihan Kualitas Lingkungan'),
(296, 'SA.03.02', 'Tata Kelola Lingkungan'),
(297, 'SA.04', 'Teknologi Modifikasi Cuaca'),
(298, 'SA.04.01', 'Eksternal'),
(299, 'SA.04.02', 'Internal'),
(300, 'SA.05', 'Pengolahan Air dan Limbah'),
(301, 'SA.05.00', 'Layanan Jasa Kepada Pemerintah'),
(302, 'SA.05.01', 'Layanan Jasa Kepada Swasta'),
(303, 'SA.06', 'Teknologi Survey Kelautan'),
(304, 'SA.06.00', 'Layanan Teknologi Survey Kelautan'),
(305, 'SA.06.01', 'Kerjasama Riset Kelautan'),
(306, 'SA.06.02', 'Pengelolaan Kapal Riset Baruna Jaya BPPT'),
(307, 'SA.06.03', 'Pengelolaan Sarana-Prasarana National science and Techno Park (NSTP) Maritim'),
(308, 'AB', 'Agro Industri dan Bioteknologi'),
(309, 'AB.00', 'Produksi Pertanian'),
(310, 'AB.01', 'Agro Industri'),
(311, 'AB.02', 'Bioindustri'),
(312, 'AB.03', 'Farmasi dan Medika'),
(313, 'AB.04', 'Bioteknologi'),
(314, 'AB.05', 'Teknologi Pati'),
(315, 'EM', 'Energi dan Material'),
(316, 'EM.00', 'Sumber Daya Energi dan Industri Kimia'),
(317, 'EM.01', 'Konversi dan Konservasi Energi'),
(318, 'EM.02', 'Teknologi Material'),
(319, 'EM.03', 'Teknologi Polimer'),
(320, 'EM.04', 'Teknologi Elektronika'),
(321, 'EM.05', 'Bahan Bakar dan Rekayasa Disain'),
(322, 'EM.06', 'Informasi dan Komunikasi'),
(323, 'RB', 'Rancang Bangun dan Rekayasa'),
(324, 'RB.00', 'Teknologi Pertahanan dan Keamanan'),
(325, 'RB.01', 'Teknologi Industri Permesinan'),
(326, 'RB.02', 'Teknologi Sistem dan Prasarana Transportasi'),
(327, 'RB.03', 'Teknologi Rekayasa Industri Maritim'),
(328, 'RB.04', 'Aerodinamika, Aeroelastika, dan Aeroakustika'),
(329, 'RB.04.00', 'Layanan Teknologi'),
(330, 'RB.04.o1', 'Kerekayasaan dan Inovasi Teknologi'),
(331, 'RB.05', 'Kekuatan Struktur'),
(332, 'RB.05.00', 'Uji Sertifikasi'),
(333, 'RB.05.01', 'Uji Material'),
(334, 'RB.05.02', 'Pengembangan Sarana Uji'),
(335, 'RB.06', 'Hidrodinamika'),
(336, 'RB.06.00', 'Program Teknologi Hidrodinamika'),
(337, 'RB.06.01', 'Layanan Teknologi Hidrodinamika'),
(338, 'RB.06.02', 'Sarana Prasarana BTH'),
(339, 'RB.07', 'Termodinamika, Motor, dan Propulsi'),
(340, 'RB.07.00', 'Pelayanan Jasa Teknologi'),
(341, 'RB.07.01', 'Kerekayasaan dan Inovasi Teknologi'),
(342, 'RB.07.02', 'Sarana-Prasarana'),
(343, 'RB.08', 'Teknologi Infrastruktur Pelabuhan dan Dinamika Pantai'),
(344, 'RB.08.00', 'Program Teknologi Infrastruktur Pelabuhan dan Dinamika Pantai'),
(345, 'RB.08.01', 'Layanan Teknologi Infrastruktur Pelabuhan dan Dinamika Pantai'),
(346, 'RB.08.02', 'Sarana Prasarana'),
(347, 'RB.09', 'Mesin Perkakas, Produksi dan Otomasi'),
(348, 'RB.09.00', 'Kerekayasaan Teknologi'),
(349, 'RB.09.01', 'Pengembangan Sarana-Prasarana'),
(350, 'PT', 'Pelayanan Teknologi'),
(351, 'PT.00', 'Perencanaan Pemasaran'),
(352, 'PT.01', 'Pemasyarakatan'),
(353, 'PT.02', 'Pelayanan Jasa Teknologi'),
(354, 'PT.03', 'Pematangan Usaha'),
(355, 'PT.04', 'Monitoring dan Evaluasi'),
(356, 'Fosil 03', 'Energi Fosil'),
(357, 'Fosil 02', 'Energi Fosil'),
(358, 'Fosil 01', 'Energi Fosil'),
(365, 'B-3. 04', 'LPKSF'),
(366, 'B-3. 03', 'LPKSF'),
(367, 'B-3. 02	', 'Tek. Kelistrikan'),
(368, 'B-3. 01', 'Tek. Kelistrikan'),
(369, 'B-1.2.03', 'Bagian Umum'),
(370, 'B-1.2.02', 'Bagian Umum'),
(371, 'B-1.2.01', 'Bagian Umum'),
(372, 'B-1.2. 03', 'Bagian Umum'),
(373, 'B-1.2. 02', 'Bagian Umum'),
(374, '	B-1.2. 01', 'Bagian Umum'),
(375, 'B-1.1.03', 'Bagian Umum'),
(376, 'B-1.1.02', 'Bagian Umum'),
(377, 'B-1.1.01', 'Bagian Umum'),
(378, 'B-1.1. 03', 'Bagian Umum'),
(379, 'B-1.1. 02', 'Bagian Umum'),
(380, 'B-1.1. 01	', 'Bagian Umum'),
(381, 'B-1.1 03', 'Bagian Umum'),
(382, 'B-1.1 02', 'Bagian Umum'),
(383, 'B-1.1 01', 'Bagian Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(350) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `akses` enum('administrator','pegawai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `nip`, `akses`) VALUES
(1, 'adminarsip', '$2y$10$7sXsRJsIzSNyNPADmEK7KeXWijuVaytZaBPtnu4oYrRdeZQBHwuaG', 'adminarsip', '-', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsip_dokumen`
--
ALTER TABLE `arsip_dokumen`
  ADD PRIMARY KEY (`id_arsip_dokumen`);

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `kode_arsip`
--
ALTER TABLE `kode_arsip`
  ADD PRIMARY KEY (`id_kode_arsip`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsip_dokumen`
--
ALTER TABLE `arsip_dokumen`
  MODIFY `id_arsip_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kode_arsip`
--
ALTER TABLE `kode_arsip`
  MODIFY `id_kode_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
