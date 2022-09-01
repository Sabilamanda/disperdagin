-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2022 pada 06.19
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disperdagin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(2) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'Demika', 'mika', '123'),
(2, 'Zehanara ', 'zean', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(4) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `penulis`, `gambar`, `deskripsi`) VALUES
(1, 'Dinas Perdagangan dan Perindustrian Kota Bogor melaksanakan kegiatan Sosialisasi cukai ', 'Admin', 'ka1.jpg', 'Pada hari selasa (02 November 2021) Dinas Perdagangan dan Perindustrian Kota Bogor melaksanakan kegiatan Sosialisasi cukai bagi para pelaku usaha dan masyarakat di wilayah kota bogor Acara sosialisasi ini dibuka oleh Bapak Kepala Dinas Perdagangan dan Perindustrian Kota Bogor.\r\nKegiatan dilaksanakan selama 3 hari dari tanggal 1 s.d 3 november 2021 dan bertempat di Pajajaran Suites Resort Hotel & Convention Bogor Nirwana Residence.\r\nPeserta adalah para pelaku usaha dan masyarakat di wilayah kota bogor.\r\nNarasumber dari Kantor pengawasan dan pelayanan bea dan cukai tipe madya pabean A Bogor.\r\nAcara ini dimaksudkan untuk memberikan pemahaman kepada para pelaku usaha serta masyarakat, tentang apa yang dimaksud dengan Cukai serta jenis-jenis penyalahgunaannya seperti cukai palsu, tanpa pita cukai, cukai bekas, cukai salah personalisasi dan cukai salah peruntukan.'),
(2, 'Peninjauan situasi dan penerapan prokes di salah satu pusat perbelanjaan di kota Bogor ', 'Admin', 'ka2.jpg', 'Pada hari Sabtu (08 Mei 2021) Bapak Ganjar Gunawan bersama Dinas Kesehatan mendamping Bapak Wakil Walikota Bogor Dedie Rachim melakukan peninjauan situasi dan penerapan prokes di salah satu pusat perbelanjaan di kota Bogor Lippo plaza ekalokasari bogor.\r\n\r\nBeberapa hari menjelang hari Raya Idul Fitri 1442 H memang terlihat adanya peningkatan kunjungan masyarakat ke beberapa pusat perbelanjaan. Disamping mungkin efek larangan mudik, tapi disisi lain secara bertahap terlihat adanya perbaikan geliat ekonomi dengan peningkatan daya beli masyarakat.\r\n\r\nPemerintah Kota Bogor terus menghimbau agar protokol kesehatan tetap dilaksanakan dan pembatasan kapasitas pengunjung juga tetap ditegakkan. Jangan lengah atau abai, karena pandemi Covid19 belum berakhir...\r\n\r\nTidak mudik bukan berarti lengah dan abai menjalankan protokol kesehatan. Salam sehat selalu.'),
(3, 'Acara Diseminasi ASEAN Sertifikasi Mandiri dan Form D', 'Admin', 'ka3.jpg', 'Pada hari Rabu (29 September 2021) Acara Diseminasi ASEAN Sertifikasi Mandiri dan Form D hari ini telah selesai. Acara ini dibuka oleh Direktur Perundingan ASEAN dan Kepala Dinas Perdagangan dan Perindustrian Kota Bogor.\r\n\r\nBerdasarkan data Kementrian Perdagangan nilai ekspor Indonesia ke negara ASEAN pada tahun 2020 mencapai 29,4 M US Dollar, sedangkan Impor sebesar 21.2 M US Dollar sehingga Indonesia mencatatkan Surplus sebesar 8.2 M US Dollar.\r\n\r\nUntuk Kota Bogor angka Ekspor juga cukup tinggi pada tahun 2020 dengan mencapai 70 Juta US Dollar dari 28 Pelaku UMKM yang melakukan ekspor terbesar ke Filipina, Malaysia, Singapura, Thailand dan Vietnam.\r\n\r\nKepala Dinas Perindustrian dan Perdagangan Kota Bogor Ganjar Gunawan mengatakan saat ini sudah banyak produk Bogor yang menembus dunia internasional, khususnya ke ASEAN dengan produk utama makanan dan minuman olahan.\r\n\r\nSosialisasi ini dihadiri oleh sekitar 80 eksportir baik secara fisik dan virtual. “Kota Bogor, SIAP EKSPOR!!” seru para pelaku eksporter yang hadir membuka kegiatan diseminasi. Semoga kegiatan ini dapat membantu pelaku usaha dalam melakukan kegiatan ekspor Indonesia ke mancanegara.\r\n\r\nKegiatan ini merupakan bagian dari webinar series, yang akan dilanjutkan webinar terkait \"Market Compliance ke Negara - Negara Mitra ASEAN\" besok tanggal 30 September 2021.'),
(4, 'Brand Store terkemuka , Uniqlo Indonesia membuka gerai di mall Botani Square mall Kota Bogor.', 'Admin', 'ka4.jpg', 'Pada hari Jumat (05 november 2021) Brand store terkemuka , Uniqloindonesia membuka gerai di mall Botani Square mall Kota Bogor. Dan kami menyambut positif response pihak Ritel UNIQLO untuk bisa bermitra dengan para pelaku UKM Kota Bogor.\r\n.\r\nAlhamdulillah, di kesempatan pertama ini, ada beberapa perwakilan UKM Kota Bogor diantaranya produk produk dari @adriebasuki.id , @handayani.geulis , @ramizaboutique , dan beberapa UKM lainnya, dapat mempromosikan produk di showcase khusus UNIQLO dan selanjutnya akan bergilir untuk temen temen UKM lainnya yg lolos kurasi.\r\n.\r\nBersama Mr. Shigeru Kumano, perwakilan dari PT. Fast Retailing Indonesia, sebagai induk brand UNIQLO di Indonesia, tadi sempat berdiskusi terkait pembentukan “Kampung Perca” yg sedang direncanakan Pemkot Bogor, dan kami bersepakat untuk saling ikut mendorong penguatan daya saing UKM Kota Bogor. Semoga kerjasama ini bisa berkelanjutan…'),
(5, 'Kegiatan Coaching Clinic Waralaba', 'Admin', 'ka5.jpg', 'Pada hari Sabtu (07 November 2020) Melalui protokol kesehatan yang sangat ketat Disperindag Kota Bogor bekerjasama dengan Kementerian Perdagangan RI dan Perhimpunan Waralaba dan Lisensi Indonesia (Wali) menyelenggarakan kegiatan Coaching Clinic Waralaba yang dilaksanakan pada hari Rabu dan Kamis tanggal 4, 5 November 2020 bertempat di Ruang Tarumanegara Fave Hotel Pajajaran kegiatan dibuka secara langsung oleh Kepala Disperindag Kota Bogor Bapak Ganjar gunawan diikuti oleh 30 peserta para pelaku usaha di Kota Bogor dgn narasumber antara lain Bapak Ronny S Mahesa, Kemendag RI; Ibu Levita Supit, perhimpunan waralaba dan lisensi Indonesia (Wali) ; Bapak Faiz , e-Mam Laundry; Bapak Edy, Akuntan perusahaan; serta Bapak Ulyses konsultan khusus waralaba.\r\n\r\nMaksud dan tujuan dari kegiatan ini selain sebagai lanjutan dari pembinaan kebijakan waralaba juga sebagai proses pembinaan dan pembelajaran secara teknis kepada para pelaku usaha terpilih asli dari Kota Bogor baik dari sisi prosedur, tata cara, aturan serta mekanisme sistem bisnis Waralaba. Diharapkan melalui coaching clinic ini peserta akan lebih memahami tentang bisnis Waralaba dan akan lahir para pelaku usaha yg tangguh , kuat dan kapable untuk menjadi pewaralaba atau pemberi waralaba asli dari Kota Bogor'),
(6, 'Kampanye Gerakan Nasional Bangga Buatan Indonesia (BBI)', 'Admin', 'ka6.jpg', '<p>Pada hari Senin (08 April 2021) Dalam rangka kampanye Gerakan Nasional Bangga Buatan Indonesia (BBI), Provinsi Jawa Barat bekerja sama dgn kementrian terkait dan Dekranasda kab/kota se Jabar, BUMN dan pihak lainnya, minggu lalu menggelar event Karya Kreatif Jabar dan Pekan Kerajinan Jabar yg diselenggarakan di Bandung. . Event ini, disamping sebagai salah satu media promosi produk produk lokal berkualitas se Jabar, juga sebagai ajakan untuk terus menggelorakan kampanye Bangga Buatan Indonesia dan membela negara dengan membeli produk2 lokal. Selamat beraktifitas, dan tetap semangat untuk para pelaku UMKM dimanapun berada, teruslah berkarya, dan tetap jaga kesehatan.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `file_id` int(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`file_id`, `name`, `file`) VALUES
(1, 'Draft Perwali Tusi Dinas Koperasi, UKM, Perdagangan dan Perindustrian 2022 (1)', 'files/Draft Perwali Tusi Dinas Koperasi, UKM, Perdagangan dan Perindustrian 2022 (1).docx'),
(2, 'Buku Laporan LKIP 2019', 'files/Buku Laporan LKIP 2019.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(3) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `headline` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `headline`, `isi`, `gambar`) VALUES
(1, 'kegiatan Apel Gabungan TNI POLRI dan Pemkot Kota Bogor ', 'Dinas Perdagangan dan Perindustrian Kota Bogor', '(Senin, 17/05/2021) bertempat di Pasar Teknis Umum Kemang Kota Bogor, Kepala Dinas Perdagangan dan Perindustrian Kota Bogor, Bapak Ganjar Gunawan, AP. bersama Kepala Bidang Sarana Komoditi Perdagangan Kota Bogor, melaksanakan kegiatan Apel Gabungan TNI POLRI dan Pemkot Kota Bogor dalam Rangka Operasionalisasi Pasar Teknis Umum yang di pimpin Wakil Walikota Bapak Dedie Rachim.', 'ki1.jpg'),
(2, 'kegiatan Pembinaan dan Pendampingan PMSE', 'Disperdagin', 'Satu setengah tahun pendemi merupakan waktu yg berat bagi semua pihak khususnya bagi para pelaku usaha, oleh karena itu utk tetap bertahan para pelaku usaha harus memiliki strategi penguasaan pasar yg tepat dengan berbagai inovasi yg dilakukan salah satunya adalah pemasaran melalui media online.\r\n.\r\nMemenuhi kebutuhan itu Kemendag RI melalui Direktorat Bina Usaha dan Pelaku Distribusi Direktorat Jenderal PDN bekerjasama dengan Disperdagin Kota Bogor melaksanakan kegiatan Pembinaan dan Pendampingan PMSE yg dilaksanakan pada tanggal 13 s.d 14 September 2021 bertempat @thesahirahotel\r\n.\r\nKegiatan yang diikuti oleh 60 peserta IKM Kota Bogor melalui Prokes yg ketat (peserta harus sudah 2 kali vaksin dan dilakukan SWAB antigen) ini di buka secara langsung oleh Direktur Bina Usaha dan Pelaku Distribusi dengan sambutan selamat datang dari Kepala Disperdagin Kota Bogor dengan harapan seluruh IKM siap untuk naik kelas dan menjadi IKM GO DIGITAL', 'ki2.jpg'),
(3, 'Kegiatan pengawasan IOMKI ke PT. Coats Rejo', 'Disperdagin', '<p>Jum&#39;at (06/08/2021) pagi tadi Tim Disperdagin yang dipimpin langsung oleh kepala Disperdagin Bapak Ganjar Gunawan, A.P. dan didampingi kepala bidang perindustrian beserta jajaran, tim disperdagin tengah melaksanakan Kegiatan pengawasan IOMKI ke PT. Coats Rejo yang bertempat di Jl. Raya Tajur No.33D, RT.06/RW.02, Kel. Pakuan, Kec. Bogor Selatan.</p>\r\n', 'ki3.jpg'),
(4, 'Dinas Perdagangan bertugas melakukan pengawasan peredaran barang kena Cukai, termasuk komoditi Rokok', 'Disperdagin', 'penerimaan Negara dari Cukai Hasil Tembakau (CHT) itu sangat luar biasa. Tahun 2020 saja, APBN mentargetkan penerimaan negara dari Cukai Hasil Tembakau itu sebesar kurang lebih Rp.111 Trilyun , dan di tahun 2021 ditargetkan sebesar kurang lebih Rp.174 Trilyun. . Begitu besarnya penerimaan Negara dari Cukai Hasil Tembakau, membuat kementrian keuangan melalui seluruh kantor Bea dan Cukai se Indonesia, punya kewajiban untuk mengamankan dan mensosialisasikan regulasi dan ketetapan terkait Cukai hasil tembakau ini. . Dinas Perdagangan sebagai salah satu OPD yang bertugas melakukan pengawasan peredaran barang kena Cukai, termasuk komoditi Rokok, beberapa waktu lalu menggandeng kantor Pengawasan dan Pelayanan Bea Cukai Type madya Pabean A Bogor @beacukaibogor , untuk memberikan Sosialisasi dan edukasi terkait Ketetapan Cukai Hasil Tembakau, kepada perwakilan para pelaku usaha dan aparatur wilayah di 6 (enam) kecamatan se Kota Bogor.', 'ki4.jpg'),
(5, 'Sosialisasi dan monitoring di beberapa pusat perbelanjaan di Kota Bogor', 'Disperdagin', 'Kepala Disperdagin Kota Bogor tengah mendampingi Walikota Bogor Bapak Bima Arya melaksanakan sosialisasi dan monitoring di beberapa pusat perbelanjaan di Kota Bogor, kegiatan monitoring dan sosialisasi aplikasi peduli lindungi yang harus wajib di unduh untuk akses masuk dan keluar setiap kali berkunjung ke pusat perbelanjaan yang ada di Kota Bogor. . Nah Sobat Dagin, udah unduh aplikasi PEDULI LINDUNGI nya kan di setiap Handphone/Gadget masing-masing ? Dan yang pasti Sobat Dagin harus sudah melakukan Vaksinasi sebelum berkunjung ke pusat perbelanjaan Kota Bogor yah, AKU JAGA KAMU, KAMU JAGA AKU.', 'ki5.jpg'),
(6, 'Melaksanakan kegiatan Pendataan dan Pemantauan Sistem Bongkar Muat Sembako dan Komoditi lainnya', 'Disperdagin', 'Selasa, (25/05/2021) Pagi tadi bertempat di Pasar Bogor, Kepala Dinas Perdagangan dan Perindustrian Kota Bogor, Bapak Ganjar Gunawan, AP. Didampingi oleh Lurah Gudang dan Lurah Babakan Pasar bersama Tim Disperdagin Kota Bogor, melaksanakan kegiatan Pendataan dan Pemantauan Sistem Bongkar Muat Sembako dan Komoditi lainnya yang bertempat di beberapa titik pusat aktivitas di sekitar wilayah kota bogor.', 'ki6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
