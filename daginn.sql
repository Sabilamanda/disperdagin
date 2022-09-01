-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 09:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daginn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `username`, `password`, `foto`) VALUES
(1, 'Demika', 'mika', '123', ''),
(2, 'Zehanara ', 'zean', '2222', ''),
(17, 'afiifah.085019013@unpak.ac.id', 'fifah', '12222', '1660455770135.jpg'),
(18, 'demika.oktavia@gmail.com', 'fgthj', 'th', 'slazzer-edit-image.png');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(4) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` char(20) NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `penulis`, `gambar`, `deskripsi`, `tanggal`) VALUES
(1, 'Kegiatan pelatihan yang dilaksanakan bersama UNBIN ini melibatkan 120 peserta UMKM yg berasal dari wilayah Kecamatan Bogor Barat, Bogor Utara dan Tanah Sareal Kota Bogor', 'Admin', 'gmbrr.jpg', '<p>Senin 13 Juni 2022. Sebagai salah satu bentuk Kolaborasi dalam upaya pemberdayaan UMKM di Kota Bogor. Dinkukmdagin Kota Bogor bekerjasama dengan Universitas Binaniaga Indonesia menyelenggarakan Pelatihan Pendampingan Fasilitator E-commerce melalui branding, design &amp; marketing yang bertempat di Aula Universitas Binaniaga Indonesia, Kota Bogor.</p>\r\n\r\n<p>Kegiatan pelatihan yang dilaksanakan bersama UNBIN ini melibatkan 120 peserta UMKM yg berasal dari wilayah Kecamatan Bogor Barat, Bogor Utara dan Tanah Sareal Kota Bogor dan dilaksanakan mulai tanggal 9, 10, 13 Juni 2022 dan merupakan rangkaian kegiatan Pelatihan selama 6 (enam) hari Bagi UMKM di seluruh wilayah Kecamatan di Kota Bogor secara resmi di tutup oleh Kepala DinKUKMDagin Bpk. Ganjar Gunawan, AP serta di hadiri secara langsung oleh Rektor Universitas Binaniaga Indonesia Bpk. Dr. Ismulyana Djan, S.E., M.M.</p>\r\n\r\n<p>Pelaksanaan pelatihan ini sebagai langkah awal dari proses pembinaan dan pendampingan secara berkelanjutan melalui program-program Dinkukmdagin lainnya yang mendukung dan menunjang para pelaku UKM untuk bisa Naik Kelas.</p>\r\n', '2022-06-13'),
(2, 'Festival Olahan Pangan Lokal Berbasis Kacang Koro', 'Admin', 'gmbrd.jpg', '<p>Mendengar nama komoditas pangan lokal yang satu ini, &ldquo;Kacang Koro&rdquo;, memang belum cukup familiar di telinga masyarakat kita. Apalagi jenis Kacang Koro pedang yang bisa dijadikan bahan baku alternatif pembuatan tempe, yang diinisiasi oleh Koperasi BUMR Paramasera&nbsp;</p>\r\n\r\n<p>Alhamdulillah, kegiatan yang pertama kali diadakan di dunia kuliner, yakni &ldquo;Festival Olahan Pangan Lokal Berbasis Kacang Koro&rdquo; dan dihadiri langsung bapak Menteri Koperasi dan UKM RI Teten Masduki&nbsp;dan bapak Walikota Bogor Bima Arya,&nbsp;serta beberapa pejabat Kementrian Koperasi dan UKM RI&nbsp;Kemenkopukm yakni bpk Achmad Zabadi selaku Deputi Bidang Perkoperasian dan bpk Temmy Satya Permana selaku Asdep Pembiayaan &amp; Investasi UKM, berhasil digelar hari ini Jum&rdquo;at 1 April 2022 di Bubulak Tepi Sawah (BTS) Jalan Cifor kel Bubulak kec Bogor Barat, dan menghasilkan kreasi sekitar 100 menu olahan pangan yg berbahan baku kacang koro, mulai dari kacang nya itu sendiri, tempenya, tepung nya, juga kulit kacang koro.<br />\r\n.<br />\r\nKegiatan yang bertujuan untuk lebih mengenalkan dan meng-edukasi publik tentang banyak ragam menu olahan yg bisa dikolaborasi dengan kacang koro ini adalah merupakan Kolaborasi penthelix antara DinKUKMDagin beserta TP. PKK Kota Bogor&nbsp;PHRI Bogor, Asosiasi Chef Indonesia cab Bogor, bank bjb Bogor, Koperasi BUMR Paramasera,&nbsp;dan Bubulak Tepi Sawah, dan juga merupakan rangkaian kegiatan dalam rangka Hari Kesatuan Gerak PKK Kota Bogor. Semoga kegiatan Festival Olahan Pangan Lokal berbasis kacang koro ini, menjadi momentum bahwa komoditi pangan Lokal tidak kalah dengan komoditi Impor dalam hal ini kedelai, sebagai bahan baku pembuatan tempe.</p>\r\n', '2022-04-01'),
(3, 'Kunjungan Polresta Bogor Kota dipimpin Kapolresta Susatyo  Purnomo ke Dinkukmdagin dalam acara selasa berkunjung.', 'Admin', '187569029_495198431622406_8651297881529054671_n.jpg', '<p>Pada Hari Kamis 19 Mei 2022 Kunjungan Polresta Bogor Kota dipimpin Kapolresta Susatyo&nbsp; Purnomo ke Dinkukmdagin dalam acara selasa berkunjung. Kepala Dinas Koperasi dan UKM Kota Bogor, Samson Purba mengawali pertemuan dengan memaparkan program kegiatan Dinas Koperasi dan UKM kota Bogor.</p>\r\n\r\n<p>Kapolresta menyebutkan bahwa Pandemi Covid 19 memukul semua sektor masyarakat. Ekonomi tumbuh minus, Kaporesta mengajak untuk berkolaborasi untuk mengurangi beban masyarakat akibat pandemi. Yang bisa dilakukan misalnya Pengawasan Koperasi, bantu promosi produk UMKM melalui mobil penyuluhan binmas polresta, penegakan aturan perda PKL,dll.</p>\r\n', '2022-05-19'),
(4, 'Rapat kordinasi bidang UMKM HIPMI bersama Kabid UKM Dinas Koperasi dan UKM Kota Bogor, dan Sekretaris Kecamatan Tanah Sareal terkait program pemberdayaan Ekonomi masyarakat di wilayah Kelurahan Sukare', 'Admin', '158715880_1094240274403176_8180848967253960966_n.jpg', '<p>Rapat kordinasi bidang UMKM HIPMI bersama Kabid UKM Dinas Koperasi dan UKM Kota Bogor, dan Sekretaris Kecamatan Tanah Sareal terkait program pemberdayaan Ekonomi masyarakat di wilayah Kelurahan Sukaresmi.</p>\r\n\r\n<p>Program KAWANI (Keterampilan Membawa Nilai) merupakan program resmi Pemerintah Kota Bogor melalui Dinas Koperasi dan UMKM Kota Bogor bekerjasama dengan HIPMI Kota Bogor yang ditujukan bagi masyarakat yang terkena dampak pandemi, pada program ini peserta dilatih keterampilan berusaha melalui bidang kerajinan yang kemudian dilakukan pendampingan pengelolaan usaha, bantuan peralatan, dan pemasaran.</p>\r\n', '2022-01-12'),
(6, 'Pelatihan Pendampingan Fasilitator E-commerce melalui branding, design & marketing yang bertempat di Aula IBI Kesatuan Kota Bogor.', 'Admin', '286363671_986837785313626_2830658835084323431_n.jpg', '<p>Senin 6 Juni 2022 Dinkukmdagin Kota Bogor bekerjasama dengan Civitas Akademika IBI Kesatuan Bogor menyelenggarakan Pelatihan Pendampingan Fasilitator E-commerce melalui branding, design &amp; marketing yang bertempat di Aula IBI Kesatuan Kota Bogor.<br />\r\n<br />\r\nPelaksanaan pelatihan ini sebagai langkah awal dari proses pembinaan dan pendampingan secara berkelanjutan melalui program-program Dinkukmdagin lainnya yang mendukung dan menunjang para pelaku UKM untuk bisa Naik Kelas.<br />\r\n<br />\r\nKegiatan dibuka secara langsung oleh Kepala Dinas Koperasi, Usaha Kecil dan Menengah, Perdagangan dan Perindustrian Kota Bogor Bapak Ganjar Gunawan, A.P juga turut dihadiri oleh Wakil Rektor III IBI Kesatuan Kota Bogor Bapak Dr. Ir. Muktiadji, MM Kabid Promija selaku Ketua Panitia serta Sekretaris Camat Bogor Timur.<br />\r\n<br />\r\nPelatihan yang melibatkan 240 peserta dari seluruh perwakilan kecamatan ini diikuti oleh para pelaku UKM dibidang kuliner, kerajinan serta para pemilik Distro yang tersebar di Kota Bogor khususnya di wilayah ciheuleut.<br />\r\n<br />\r\nDiharapkan melalui pelatihan ini para pelaku UKM dapat memahami berbagai strategi marketing e-commcerce khususnya dalam meningkatkan penjualan produk yg dihasilkan.</p>\r\n', '2022-06-06'),
(8, 'Kunjungan HIPMI Kota Bogor', 'Admin', '161246304_747128336189674_6614385760016995583_n.jpg', '<p>Senin, 15 Maret 2021</p>\r\n\r\n<p>Kepala Dinas Koperasi dan UKM Kota Bogor dan Kepala Bidang UMKM Dinas Koperasi dan UKM Kota Bogor, Menerima Kunjungan HIPMI Kota Bogor. Dengan Kepengurusan Baru, HIPMI terus berkolaborasi dengan Dinas Koperasi dan UKM Kota Bogor membangun UMKM Kota Bogor.</p>\r\n', '2022-03-15'),
(12, 'Melaksanakan Pembinaan dan Pengawasan Jam Operasional Toko Swalayan ', 'Admin', '272090811_619516992598297_1804912312482361664_n.jpg', '<p>Pagi tadi Jajaran DinKUKMDagin Kota Bogor, melaksanakan Pembinaan dan Pengawasan Jam Operasional Toko Swalayan di Sekitaran Jalan Pandu Raya.<br />\r\n.<br />\r\nSelain Pembinaan dan Pengawasan tim DinKUKMDagin juga Menegakkan aturan berdasarkan Perwali Nomor 10 Tahun 2017 kepada Toko Swalayan yang masih melakukan pelanggaran pada Jam Operasional.<br />\r\n.<br />\r\nUntuk informasi tentang Perwali Nomor 10 Tahun 2017 untuk Jam Operasional Toko Swalayan bisa di unduh melalui https://bit.ly/PerwaliKotaBogorNo10Tahun2017 .</p>\r\n', '2022-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(3) NOT NULL,
  `judul_berita` varchar(150) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `kategori`, `isi`, `foto`) VALUES
(1, 'Pemkot Bogor Gelar Operasi Pasar Murah Minyak Goreng', 'Bahan Pokok', '<p>Pemerintah Kota (Pemkot) Bogor menggelar Operasi Pasar Murah (OPM) Minyak Goreng pada pekan ini mulai Rabu (12/1/2022) hingga Jumat (14/1/2022) mendatang. OPM ini dilakukan untuk membantu masyarakat agar bisa membeli minyak goreng dengan harga terjangkau dan menekan harga.</p>\r\n\r\n<p>Sekretaris Daerah (Sekda) Kota Bogor sekaligus Ketua Tim Pengendali Inflasi Daerah Kota Bogor (TPID), Syarifah Sofiah menjelaskan, OPM Minyak Goreng di Kota Bogor merupakan tugas TPID Kota Bogor. Didasari perintah Presiden Joko Widodo melalui kementerian, terkait gejolak mahal dan kelangkaan minyak goreng di masyarakat.</p>\r\n\r\n<p>&ldquo;Kelangkaan minyak goreng sudah ramai, termasuk di rumah saya, harganya sempat&nbsp; mencapai Rp 20 ribuan dari harga awal Rp 14 ribu. Semoga dengan intervensi dalam bentuk OPM ini, setidaknya harga bisa dikendalikan dan segera kembali ke harga awal,&rdquo; kata Syarifah, Rabu (12/1/2022).</p>\r\n\r\n<p>Syarifah mengatakan, mahal dan langkanya minyak goreng terjad karena terganggunya pasar dan kebutuhan minyak goreng di dalam negeri akibat pengaruh ekspor. Dimana kebutuhan terhadap produksi minyak kelapa sawit atau crude palm oil (CPO) bertambah sehingga banyak terserap. Di Jawa Barat sendiri ada 11 kota yang menjadi penyumbang inflasi terbesar.</p>\r\n\r\n<p>&ldquo;Semoga kelangkaan dan kenaikan harga komoditas segera kembali normal, tidak hanya minyak goreng tetapi juga komoditas lainnya sehingga tetap tersedia dan harganya terjangkau,&rdquo; tuturnya.</p>\r\n\r\n<p>Kepala Dinas Perdagangan, Industri dan KUKM (DinKUKMDagin) Kota Bogor, Ganjar Gunawan&nbsp; menambahkan, dalam pekan ini akan dilaksanakan OPM Minyak Goreng sebanyak tiga kali.</p>\r\n\r\n<p>&ldquo;Dalam pelaksanaannya nanti melibatkan beberapa produsen minyak goreng yang menjadi mitra Kementerian Perdagangan dan Disperindag Provinsi Jawa Barat,&rdquo; kata Ganjar.</p>\r\n\r\n<p>Kepala Bidang Pengembangan Perdagangan Dalam Negeri, Perlindungan Konsumen dan tertib Niaga DinKUKMDagin Kota Bogor, Mohamad Soleh, menambahkan OPM Minyak Goreng pertama di Kecamatan Tanah Sareal sebanyak 6.000 liter. Kemudian Kamis (13/1/2022) di Kecamatan Bogor Utara sebanyak 6.000 liter, dan Jumat (14/1/2022) di Kecamatan Bogor Barat sebanyak 7.200 liter, khusus bekerjasama dengan Dinas Perindag Provinsi Jawa Barat.</p>\r\n\r\n<p>&ldquo;Untuk pekan depan tepatnya 19 Januari 2022, pelaksanaan OPM dilaksanakan di dua&nbsp; pasar, yakni Pasar Kebon Kembang dan Pasar Bogor dengan kapasitas sampai dengan 40 ribu liter,&rdquo; kata Soleh.</p>\r\n\r\n<p>Dalam OPM Minyak Goreng tersebut, sambung dia, masing-masing warga yang akan membeli minyak goreng diharuskan membawa kupon yang telah dibagikan sebelumnya. Adapun minyak goreng yang disediakan seharga Rp 14 ribu per liter dengan pembelian maksimal sebanyak 2 liter.</p>\r\n\r\n<p>Rep: Shabrina Zakaria/ Red: Dwi Murdaningsih</p>\r\n', 'sejumlah-warga-antre-membeli-minyak-goreng.jpg'),
(3, 'Kementerian Perdagangan Ajak UMKM Bogor Naik Kelas Level Internasional', 'UMKM', '<p>KBRN, Bogor : Pelaku UMKM di Bogor dan sekitarnya mendapatkan informasi terkini dari Dina Kurniasari, Direktur Perundingan ASEAN, Ditjen PPI Kementerian Perdagangan untuk bisa menembus level Internasional dengan meningkatkan ekspor ke ASEAN melalui Sertifikasi Mandiri dan Form D secara elektronik.</p>\r\n\r\n<p>Berdasarkan data Kementerian Perdagangan nilai ekspor Indonesia ke negara ASEAN pada tahun 2020 mencapai 29,4 M US Dollar, sedangkan Impor sebesar 21.2 M US Dollar sehingga Indonesia mencatatkan Surplus sebesar 8.2 M US Dollar.</p>\r\n\r\n<p>Untuk Kota Bogor, angka Ekspor juga cukup tinggi pada tahun 2020 dengan mencapai 70 Juta US Dollar dari 28 Pelaku UMKM yang melakukan ekspor terbesar ke Filipina, Malaysia, Singapura, Thailand dan Vietnam.</p>\r\n\r\n<p>Kepala Dinas Perindustrian dan Perdagangan Kota Bogor, Ganjar Gunawan mengatakan, saat ini sudah banyak produk Bogor yang menembus dunia internasional, khususnya ke ASEAN dengan produk utama makanan dan minuman olahan.</p>\r\n\r\n<p>Untuk itu, pihaknya terus melakukan pembinaan kepada pelaku UMKM agar banyak menembus level Ekspor melalui aktif mengikuti pelatihan ekspor dan pemahaman tentang Sertifikasi Mandiri yang&nbsp; telah diimplementasikan oleh Eksporter Tersertifikasi sejak 20 September 2020.</p>\r\n\r\n<p>Walaupun kondisi Covid-19, Eksportir Indonesia terus dapat melakukan ekspor ke ASEAN dengan memanfaatkan e-Form D supaya dapat mempermudah mendapatkan tarif preferensi 0% di ASEAN yag bisa dimonitor sampai diterima oleh Petugas Bea Cukai negara importir.</p>\r\n\r\n<p>Kementerian Perdagangan juga terus melakukan pembinaan dan pendampingan kepada UMKM untuk bisa menembus level ekspor ke ASEAN.</p>\r\n\r\n<p>Koordinator Bidang Fasilitasi Perdagangan Barang sekaligus Negosiator Perdagangan, Zulvri Yenni menjelaskan warga ASEAN sudah banyak menerima produk dari Indonesia sehingga transaksi Ekspor bisa lebih ditingkatkan lagi.</p>\r\n\r\n<p>Pihaknya terus melakukan negosiasi dengan Pemerintah Negara Sahabat di ASEAN untuk bisa mendapatkan kemudahan saat produk Indonesia masuk ke ASEAN seperti adanya biaya bea masuk 0% dan mengurangi hambatan ekspor produk Indonesia ke ASEAN.</p>\r\n\r\n<p>&quot;Masyarakat Luar Negeri lebih banyak melihat asal barang dari sektor higienis dan keamanan&nbsp; pangan pada produk makanan dan minuman, supaya mudah diterima oleh konsumen di negara sahabat ASEAN,&quot; ujarnya, Rabu (29/9/2021).</p>\r\n\r\n<p>Kepala Bidang Promosi Kemitraan dan Jasa Perdagangan, Disperindag Kota Bogor Ayip Samsul menambahkan sangat mendukung acara Diseminasi ASEAN Sertifikasi dan Form D ini dapat dilakukan secara rutin di Kota Bogor supaya dapat menambah produk baru unggulan ekspor Kota Bogor ke ASEAN.</p>\r\n\r\n<p>Kementerian Perdagangan juga memberikan pelatihan untuk administrasi yang harus dipenuhi sebagai Eksporter Tersertifikasi dan kemudahan e-Form D untuk menghemat biaya dan proses administrasi menjadi eksportir ke ASEAN.</p>\r\n\r\n<p>Penulis | Sonni Agung Saputra&nbsp; &nbsp; Editor | Susi Lintang</p>\r\n', 'img_20210929_wa0087.jpg'),
(6, 'PANTAS, Ratusan UMKM di Kota Bogor Dilatih Naik Kelas', 'UMKM', '<p>KBRN, Bogor : Sebanyak 350 pelaku UMKM Kota Bogor mengikuti kegiatan Pendampingan Terintegrasi UMKM Naik Kelas (PANTAS) yang diselenggarakan Dinas Koperasi, UKM, Perdagangan dan Perindustrian (DinKUKMDagin) Kota Bogor. &nbsp;Kegiatan dibagi menjadi 5 batch (gelombang) dengan masing-masing jumlah peserta sebanyak 70 peserta.</p>\r\n\r\n<p>Sekretaris Daerah (Sekda) Kota Bogor, Syarifah Sofiah secara langsung membuka kegiatan PANTAS yang dilaksanakan di Hotel Asana Grand Pangrango, Jalan Raya Pajajaran, Kecamatan Bogor Tengah, Kota Bogor, Senin (21/3/2022).</p>\r\n\r\n<p>&ldquo;Kegiatan pembinaan yang berkesinambungan perlu dilakukan untuk ditingkatkan mengingat secara nasional UMKM sudah menjadiur&nbsp; program nasional yang harus menjadi prioritas,&quot; katanya.</p>\r\n\r\n<p>Syarifah menyebutkan, tantangan yang hadir dimana saat ini dari segi penganggaran sebesar 60 persen harus menggunakan produk dalam negeri atau mempunyai kandungan prioritasnya adalah produk dalam negeri. &nbsp;</p>\r\n\r\n<p>Kedua, dalam proyek kegiatan APBD yang bernilai Rp 50 juta ke bawah maka itu harus masuk ke dalam bela pengadaan.</p>\r\n\r\n<p>&quot;Ini adalah peluang bagi kita semua yang harus ditangkap dan peluang-peluang yang ada semakin banyak. Untuk itu kita mulai mengkampanyekan dan menyosialisasikan produk dalam negeri yang berasal dari Kota Bogor,&rdquo; katanya.</p>\r\n\r\n<p>Dalam kondisi krisis tahun 90-an maupun pandemi saat ini kata Sekda,&nbsp; UMKM&nbsp; terbukti tetap bertahan dan bertransformasi lebih fleksibel. Salah satunya di awal pandemi Covid-19, produk yang dihasilkan mengikuti periode dan pasar yang ada, seperti masker atau kegiatan lainnya.</p>\r\n\r\n<p>Satu hal lain yang bisa menjadi keuntungan adalah masifnya digital marketing yang tidak terbatas secara administrasi, namun hanya dibatasi kemampuan para pelaku UMKM. &nbsp;Di sisi lain, saat ini UMKM di Kota Bogor baru berjumlah 68 ribu atau 6,18 % dari jumlah penduduk dan secara nasional baru 3,47 persen. Sedangkan di negara maju UMKM berada di angka 14 persen, sehingga usahanya di tingkat masyarakat sudah mulai bergerak tidak hanya di usaha-usaha yang besar saja.</p>\r\n\r\n<p>Peningkatan diungkapkan Syarifah tidak hanya sebatas kuantitas tetapi&nbsp; juga kualitas. Kedekatan dengan Jakarta yang menjadi pusat ekonomi dan Jabodetabek yang merupakan pusat pasar terbesar, menurutnya menjadi keuntungan lain bagi produk UMKM Kota Bogor.</p>\r\n\r\n<p>Untuk itu dirinya meminta para pelaku UMKM Kota Bogor untuk berusaha memanfaatkan dan menguasai peluang tersebut &ldquo;Di beberapa kegiatan dan dalam berbagai bidang kita sudah menjadi Centre of Excellence. Semoga pada setiap kegiatan di Kota Bogor ada UMKM Kota Bogor didalamnya. Integrasikan dengan Disparbud yang memiliki Calender of Event di Kota Bogor,&rdquo; ujar Syarifah.</p>\r\n\r\n<p>Kepala DinKUKMDagin, Ganjar Gunawan menjelaskan, PANTAS Tahun 2022 merupakan kegiatan ketiga dalam rangka memberikan pendampingan terintegrasi kerja sama dengan Kadin Kota Bogor, IBI Kesatuan dan Nusa Karya Inovasi, komunitas Bisa Digital Marketing.</p>\r\n\r\n<p>&ldquo;Kegiatan kami lakukan untuk 5 gelombang yang diikuti 70 orang per gelombang yang telah memiliki&nbsp; usaha minimal 5 atau 6 bulan sampai dengan&nbsp; 2 tahun yang telah diseleksi, usia 20 - 45 tahun. Kita rekrut 2 orang per kelurahan ditambah yang mendaftar melalui link secara IT,&quot; sebutnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pola latihan selama 2 hari dan selama 6 bulan ke depan akan didampingi para pelatih yang sudah ditunjuk. Total ada 350 orang yang didampingi. &quot;Di ujung dari Kadin akan memberikan reward untuk UMKM yang dianggap pantas dan diangkat serta dikategorikan naik kelas,&quot; jelasnya.</p>\r\n\r\n<p>Formula yang dilakukan saat ini sebut Ganjar, berbeda dengan tahun sebelumnya. Setelah mengikuti pelatihan akan diberikan pendampingan secara berkesinambungan oleh para pelatih, komunitas dan dinas terkait yang berkaitan dengan semua aspek usaha.</p>\r\n\r\n<p>Untuk membantu para pelaku UMKM di Kota Bogor menghadapi tantangan dan memanfaatkan peluang baru, DinKUKMDagin Kota Bogor membantu dalam hal standarisasi sebagai langkah awal kemudian label hingga taraf upgrade produk, sehingga bisa pantas untuk masuk ke ekosistem belanja pengadaan barang dan jasa yang saat ini disuarakan pemerintah pusat.</p>\r\n\r\n<p>&ldquo;Semoga kita memiliki daya saing dan bisa berbicara dengan nilai serta mutu,&rdquo; harapnya.</p>\r\n\r\n<p>Selain PANTAS, dua kegiatan sebelumnya yang sudah diselenggarakan DinKUKMDagin Kota Bogor bagi para pelaku UMKM Kota Bogor adalah taruna digital bootcamp yang diikuti 60 orang dan sosialisasi edukasi pembiayaan usaha meningkat bekerjasama dengan beberapa lembaga keuangan untuk memberikan solusi-solusi pembiayaan. Selain dihadiri perwakilan Komisi 2 DPRD Kota Bogor, kegiatan PANTAS dihadiri Noor Rafita, Wakil Ketua Kadin Kota Bogor Bidang Koperasi dan UMKM sebagai salah satu pelatih.</p>\r\n\r\n<p>Penulis | Sonni Agung Saputra Editor | Dedi Sudiana</p>\r\n', 'img_20220321_wa0100.jpg'),
(7, 'Bogor Punya Pusat Kerajinan Canggih dan Khas, Begini Konsepnya', 'Kerajinan', '<p>Wali Kota Bogor, Bima Arya&nbsp;meresmikan Gedung Pusat&nbsp;Kerajinan&nbsp;Kota Bogor&nbsp;yang berlokasi di jalan Bina Marga nomor 1b, Kelurahan Baranangsiang, Kecamatan Bogor Timur, Kamis 17 Desember 2020.</p>\r\n\r\n<p>Peresmian gedung ini kata dia, menjadi kado terindah ulang tahunnya yang ke-48 dari orang-orang hebat di&nbsp;Kota Bogor, yaitu para pengrajin. &quot;Semua wilayah punya nama, karena nama adalah identitas, tetapi tidak semua wilayah memiliki karakter. Melalui Gedung Pusat&nbsp;Kerajinan&nbsp;Kota Bogor&nbsp;akan terlihat sesuatu yang&nbsp;khas, bukan hanya soal identitas tetapi karakter&nbsp;Kota Bogor,&quot; katanya. Bima Arya&nbsp;menyebut, jika dilihat arsitekturnya yang rapi, melambangkan&nbsp;Kota Bogor&nbsp;sebagai Kota Pusaka (Heritage City). Selain itu, di dalamnya terlihat rapi dan&nbsp;canggih, ini melambangkan Kota Cerdas (Smart City).</p>\r\n\r\n<p>Sementara, semangat dan guyubnya para pengrajin mengatur pola kerja dengan baik, itu artinya karakter orang Bogor yang guyub, kompak dan solid.&nbsp;&quot;Karakter itu memiliki nilai lebih, inilah yang ingin kita tampilkan,&quot; jelasnya.</p>\r\n\r\n<p>Editor |&nbsp;Iyud Walhadi</p>\r\n', 'Cuplikan layar 2022-07-29 234942.png'),
(9, 'Diresmikan, Kota Bogor Kini Punya Gedung Pusat Kerajinan  ', 'Kerajinan', '<p><q>Wali Kota Bogor, Bima Arya meresmikan Gedung Pusat Kerajinan Kota Bogor yang berlokasi di Jalan Bina Marga Nomor 1b, Kelurahan Baranangsiang, Kecamatan Bogor Timur. Menurutnya peresmian ini menjadi kado terindah di ulang tahunnya yang ke-48.</q></p>\r\n\r\n<p><q><span dir=\"rtl\">Semua wilayah punya nama, karena nama adalah identitas, tetapi tidak semua wilayah memiliki karakter. Melalui Gedung Pusat Kerajinan Kota Bogor akan terlihat sesuatu yang khas, bukan hanya soal identitas tetapi karakter Kota Bogor,&quot; katanya dalam keterangan tertulis, Kamis (17/12/2020).<br />\r\nIa mengatakan gedung tersebut melambangkan Kota Bogor sebagai Kota Pusaka (Heritage City) bila dilihat dari arsitekturnya yang rapi. Selain itu di dalamnya juga terlihat rapi dan canggih yang melambangkan Kota Bogor sebagai Kota Cerdas (Smart City).<br />\r\nBima mengatakan semangat dan guyubnya para perajin mengatur pola kerja dengan baik melambangkan karakter orang Bogor yang guyub, kompak, dan solid. Menurutnya karakter itu memiliki nilai lebih yang ingin ditampilkan.<br />\r\n<br />\r\nBima bercerita termasuk kepada Wakil Ketua Dekranasda Provinsi Jawa Barat, Lina Uu Ruzhanul Ulum dalam acara tersebut selama 6 tahun ia melihat, mengalami, dan bertemu secara langsung dengan para perajin hebat dengan potensi yang besar, namun terbentur berbagai persoalan, seperti tempat, anggaran, dan yang lain. Ia menegaskan bukan hal mudah untuk mengelola potensi hebat yang ada menjadi satu kekuatan bersama.<br />\r\n&quot;Dan hari ini saya melihat potensi yang besar mampu disatukan lewat satu semangat yang luar biasa, sehingga Gedung Pusat Kerajinan Kota Bogor berdiri. Apresiasi untuk Dekranasda dan semua perajin serta pihak terkait lainnya, akhirnya mimpi itu terjadi, menjadi tuan rumah di rumah sendiri,&quot; imbuhnya.<br />\r\nBima menyatakan lokasi yang strategis, tim, dan produk yang luar biasa diharapkan tempat tersebut mampu dikelola secara profesional. Ia juga mengajak semua meyakini bila hal tersebut diserahkan kepada ahlinya, maka semuanya akan lancar.<br />\r\n<br />\r\nPenulis |&nbsp;Abu Ubaidillah</span></q></p>\r\n', 'kerajinan.jpeg'),
(10, 'Sudah Sepekan, Harga Kebutuhan Pokok di Kota Bogor Naik', 'Bahan Pokok', '<p>Harga sejumlah kebutuhan pokok di Kota Bogor mulai melambung tinggi jelang Hari Raya Idul Adha 1443 H atau 2022. Kenaikan sudah terjadi sejak sepekan yang lalu. Seperti yang terjadi di Pasar Bogor, Kecamatan Bogor Tengah, Kota Bogor. Harga kebutuhan pokok yang dijual pedagang mengalami kenaikan hingga 20 persen.</p>\r\n\r\n<p>Diantaranya, cabai rawit merah yang semula Rp40 ribu perkg, kini menjadi Rp100 ribu perkg. Cabai rawit hijau semula Rp30 ribu, kini Rp80 ribu perkg. Kemudian, cabai merah semula Rp30 ribu perkg kini Rp80 ribu. Lalu, bawang merah semula Rp30 ribu perkg kini Rp70 ribu perkg. Terakhir, tomat semula Rp7 ribu perkg kini jadi Rp20 ribu perkg.</p>\r\n\r\n<p>&ldquo;Udah seminggu naik, bukan naik lagi ini mah pindah harga,&rdquo; keluh pedagang, Jajang (40). Menurutnya, imbas kenaikan harga kebutuhan pokok ini menyebabkan daya beli turun secara drastis.&nbsp;</p>\r\n\r\n<p>Warga yang biasanya membeli dengan jumlah banyak, kini dikurangi. &ldquo;Biasanya beli seperapat sekarang jadi seons. Paling jago belinya seperapat,&rdquo; ucap Jajang.</p>\r\n\r\n<p>Untuk itu, dirinya berharap agar Pemerintah dapat menstabilkan lagi harga kebutuhan pokok, mengingat Hari Raya Idul Adha sebentar lagi akan terlaksana. &ldquo;Pengennya harga stabil, tolong pemerintah bagaimana caranya lah. Jangankan masyarakat, saya yang jual aja pusing,&rdquo; ujar Jajang. Keluhan juga disampaikan Imas (55). Ia mengaku merasa keberatan dengan kenaikan harga kebutuhan pokok ini. Apalagi, usaha makanan yang digelutinya saat ini tengah mengalami sepi.</p>\r\n\r\n<p>&ldquo;Soalnya kan usahanya lagi agak sepi, sementara bahan pokok malah tinggi,&rdquo; keluh Imas.</p>\r\n\r\n<p>&ldquo;Belanja cabe sama tomat, bawang ini aja sampai Rp200 ribu. Keberatan ya, tapi mau gimana lagi,&rdquo; sambungnya.</p>\r\n\r\n<p>Menurutnya, mensiasati agar usahanya tetap berjalan, ia mengurangi jumlah kebutuhan pokok yang harus dibelinya. &ldquo;Dikurang-kurangin, biasa setengah kg jadi seperapat, dibagi-bagi aja yang penting cukup, karena butuh,&rdquo; tukasnya.</p>\r\n\r\n<p>Editor | Rany</p>\r\n', 'Cuplikan layar 2022-07-30 002321.png');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(2) NOT NULL,
  `sekretariat` text NOT NULL,
  `koperasi` text NOT NULL,
  `umkm` text NOT NULL,
  `industri` text NOT NULL,
  `promija` text NOT NULL,
  `ppdnpktn` text NOT NULL,
  `metro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `sekretariat`, `koperasi`, `umkm`, `industri`, `promija`, `ppdnpktn`, `metro`) VALUES
(1, '<p><strong>SEKRETARIS</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Sekretariat yang meliputi Sub Bagian Umum dan Kepegawaian, Sub Bagian Keuangan dan Sub Bagian Perencanaan dan Pelaporan</li>\r\n	<li>Mengoordinasikan penyusunan rencana kerja Sekretariat</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan dan mengendalikan kegiatan bawahan</li>\r\n	<li>Mengevaluasi hasil kerja bawahan dalam upaya meningkatkan produktivitas kerja</li>\r\n	<li>Mengoordinasikan penyusunan Rencana Strategis, Rencana Kerja, penyelenggaraan kegiatan serta penyusunan laporan Dinas</li>\r\n	<li>Menyelenggarakan kegiatan kesekretariatan di lingkungan Dinas yang meliputi perencanaan dan pengelolaan administrasi umum, kepegawaian, perlengkapan, keuangan, kearsipan, aset dan kerumahtanggaan</li>\r\n</ol>\r\n\r\n<p><strong>KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Sub Bagian Umum dan Kepegawaian.</li>\r\n	<li>Menyusun rencana kerja Sub Bagian Umum dan Kepegawaian</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Menyelenggarakan kegiatan pengelolaan surat-menyurat, kearsipan, barang milik daerah dan kerumahtanggaan</li>\r\n	<li>Melaksanakan penatausahaan barang pengguna</li>\r\n	<li>Menyelenggarakan kegiatan pengelolaan surat-menyurat, kearsipan, barang milik daerah dan kerumahtanggaan</li>\r\n</ol>\r\n\r\n<p><strong>KEPALA SUB BAGIAN KEUANGAN</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Sub Bagian Keuangan</li>\r\n	<li>Menyusun rencana kerja Sub Bagian Keuangan</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Menyusun konsep naskah dinas yang berkaitan dengan Sub Bagian Keuangan</li>\r\n	<li>Melaksanakan pengelolaan administrasi keuangan yang meliputi penerimaan, pembukuan, penyimpanan, pembayaran dan penyetoran pendapatan</li>\r\n	<li>Melaksanakan pengelolaan administrasi keuangan yang meliputi penerimaan, pembukuan, penyimpanan, pembayaran dan penyetoran pendapatan</li>\r\n</ol>\r\n', '<p><strong>KEPALA</strong><strong>&nbsp;BIDANG&nbsp;</strong><strong>KOPERASI</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Bidang Koperasi yang meliputi Kelompok Substansi Kelembagaan Koperasi, Kelompok Substansi Usaha Koperasi, dan Kelompok Substansi Pengawasan Koperasi</li>\r\n	<li>Mengoordinasikan penyusunan rencana kerja bidang koperasi</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan pelaksanaan fasilitasi penerbitan Izin Usaha Simpan Pinjam untuk Koperasi dengan Wilayah Keanggotaan dalam Daerah Kota</li>\r\n	<li>Mengoordinasikan pelaksanaan fasilitasi penerbitan izin pembukaan kantor cabang, cabang pembantu dan kantor kas koperasi simpan pinjam untuk koperasi dengan wilayah keanggotaan dalam Daerah Kota</li>\r\n	<li>Mengoordinasikan pelaksanaan pemeriksaan dan pengawasan koperasi, koperasi simpan pinjam/unit simpan pinjam koperasi yang wilayah keanggotaannya dalam Daerah Kota</li>\r\n	<li>Mengoordinasikan pelaksanaan pembinaan, pendampingan dan penyuluhan dalam rangka pelayanan pendirian koperasi, perubahan anggaran dasar koperasi dan pembubaran koperasi serta manajemen usaha agar koperasi dapat berdaya saing</li>\r\n</ol>\r\n', '<p><strong>KEPALA BIDANG USAHA MIKRO KECIL, DAN MENENGAH</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Bidang Usaha Mikro, Kecil dan Menengah yang meliputi Kelompok Substansi Penguatan dan Pengembangan UMKM, Kelompok Substansi Kemitraan dan Pembiayaan Usaha Mikro dan Menengah, Kelompok Substansi Produksi dan Peningkatan Kualitas Produk</li>\r\n	<li>Mengoordinasikan penyusunan rencana kerja Bidang Usaha Mikro, Kecil dan Menengah</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan pelaksanaan pemberdayaan usaha mikro melalui pendataan, kemitraan, kemudahan perizinan, penguatan kelembagaan dan koordinasi dengan para pemangku kepentingan</li>\r\n	<li>Mengoordinasikan pelaksanaan pemberian layanan bimbingan konsultasi bagi Usaha Mikro Kecil dan Menengah serta bimbingan teknis dan pelatihan dalam Pengembangan dan Penguatan Usaha</li>\r\n	<li>Mengoordinasikan pelaksanaan fasilitasi perizinan bagi Usaha Mikro, Kecil dan Menengah dan Pedagang Kaki Lima di zona yang telah ditetapkan</li>\r\n	<li>Merumuskan pedoman fasilitasi standarisasi produk, peningkatan kualitas dan manajemen mutu bagi Usaha Mikro, Kecil, dan Menengah</li>\r\n</ol>\r\n', '<p><strong>KEPALA</strong><strong> BIDANG PERINDUSTRIAN</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Bidang Perindustrian yang meliputi Kelompok Substansi Pemberdayaan Industri, Kelompok Substansi Perencanaan dan pengendalian Industri,&nbsp; Kelompok Substansi Sarana Prasarana Industri</li>\r\n	<li>Mengoordinasikan penyusunan rencana kerja Bidang Perindustrian</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan pemberian, pembinaan, dan pengawasan Izin Usaha Industri, Izin Perluasan Usaha Industri, Izin Usaha Kawasan Industri&nbsp; dan Izin Perluasan Kawasan Industri Kewenangan Daerah Kota Berbasis Sistem Informasi Industri Nasional</li>\r\n	<li>Mengoordinasikan fasilitasi perlindungan usaha (HKI, merk dan halal) bagi Industri Kecil Menengah</li>\r\n	<li>Mengoordinasikan Penyediaan dan pengelolaan Informasi Industri untuk Izin Usaha Industri, Izin Perluasan Usaha Industri, Izin Usaha Kawasan Industri&nbsp; dan Izin Perluasan Kawasan Industri yang terintegrasi dengan Sistem Informasi Industri Nasional dan Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik</li>\r\n	<li>Mengoordinasikan pelaksanaan Pembangunan Sumber Daya Industri, Pemberdayaan Industri dan Peran Serta Masyarakat dalam pengembangan industri kecil menengah melalui Pembinaan, Pelatihan, serta bimbingan Teknis bagi pengembangan Industri Kecil Menengah</li>\r\n</ol>\r\n', '<p><strong>KEPALA</strong><strong> BIDANG PROMOSI, KEMITRAAN DAN JASA PERDAGANGAN</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Bidang Promosi, Kemitraan dan Jasa Perdagangan meliputi Kelompok Substansi Promosi dan Pengembangan Ekspor, Kelompok Substansi Kemitraan dan Peningkatan Penggunaan Produk Dalam Negeri dan Kelompok Substansi Pengembangan Jaringan Informasi Perdagangan</li>\r\n	<li>Mengoordinasikan rencana kerja Bidang Promosi, Kemitraan dan Jasa Perdagangan</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan perumusan kebijakan teknis, pedoman dan petunjuk teknis di Bidang Promosi Dalam Negeri dan Pengembangan Ekspor, &nbsp;Kemitraan, Sistem Informasi dan Jaringan Perdagangan, sesuai dengan ketentuan yang berlaku</li>\r\n	<li>Mengoordinasikan pengumpulan, pengolahan data promosi, realisasi ekspor impor, realisasi kemitraan, peningkatan penggunaan produk dalam negeri dan informasi jasa perdagangan melalui Sistem Elektronik/<em>E-Commerce</em></li>\r\n	<li>Menganalisa dan mengevaluasi hasil pelaksanaan kegiatan di Bidang Promosi, Kemitraan dan Jasa Perdagangan</li>\r\n	<li>Mengoordinasikan pelaksanaan promosi dagang melalui pameran dan misi dagang produk unggulan daerah, media <em>online</em>, media cetak, media elektronik dan media promosi Lainnya</li>\r\n</ol>\r\n', '<p><strong>KEPALA</strong><strong> BIDANG PENGEMBANGAN PERDAGANGAN DALAM NEGERI, PERLINDUNGAN KONSUMEN DAN TERTIB NIAGA</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Bidang Pengembangan Perdagangan Dalam Negeri, Perlindungan Konsumen Dan Tertib Niaga yang meliputi Kelompok Substansi Pengendalian, Perlindungan Konsumen dan Tertib Niaga, Kelompok Substansi Pengendalian Barang Pokok dan Barang Penting, Kelompok Substansi Seksi Sarana Komoditi Perdagangan</li>\r\n	<li>Mengoordinasikan rencana kerja Bidang Pengembangan Perdagangan Dalam Negeri, Perlindungan Konsumen Dan Tertib Niaga</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Mengoordinasikan perumusan pedoman dan kebijakan teknis Perizinan, Tanda daftar perusahaan/izin usaha dagang, pengelolaan Pasar Rakyat, Toko Swalayan dan Komoditi Perdagangan lainnya, Perlindungan Konsumen, Tertib Niaga, Pengendalian Barang Pokok dan Penting, Distribusi, Pergudangan, dan Surat Keterangan sesuai dengan ketentuan yang berlaku</li>\r\n	<li>Mengoordinasikan pelaksanaan operasi pasar dalam rangka stabilisasi harga barang kebutuhan pokok sesuai dengan kewenangan di Pemerintah Daerah</li>\r\n	<li>Menganalisa dan mengevaluasi hasil pelaksanaan rencana di bidang Pengembangan Perdagangan Dalam Negeri, Perlindungan Konsumen Dan Tertib Niaga</li>\r\n	<li>Mengoordinasikan analisa, pemantauan, evaluasi dan pelaporan ketersediaan barang pokok dan barang penting</li>\r\n</ol>\r\n', '<p><strong>KEPALA UPTD METROLOGI LEGAL KELAS A</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas lingkup UPTD Metrologi Legal Kelas A</li>\r\n	<li>Menyusun rencana kerja UPTD Metrologi Legal Kelas A</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Melaksanakan pengelolaan standar ukuran, laboratorium dan verifikasi standar ukuran di wilayah kerjanya</li>\r\n	<li>Melaksanakan pengujian, pendataan alat UTTP dan BDKT</li>\r\n	<li>Melaksanakan pengadaan dan pemeliharaan alat kalibrasi</li>\r\n	<li>Melaksanakan koordinasi dengan instansi terkait</li>\r\n</ol>\r\n\r\n<p><strong>KEPALA SUB BAGIAN TATA USAHA</strong></p>\r\n\r\n<ol>\r\n	<li>Memimpin pelaksanaan tugas Sub Bagian Tata Usaha</li>\r\n	<li>Menyusun rencana kerja Sub Bagian Tata Usaha</li>\r\n	<li>Mendistribusikan pekerjaan dan memberi arahan pelaksanaan tugas kepada bawahan</li>\r\n	<li>Menyelenggarakan ketatausahaan yang meliputi administrasi umum, administrasi keuangan, administrasi kepegawaian, perlengkapan, perencanaan dan pengolahan data</li>\r\n	<li>Menyelenggarakan urusan rumah tangga lingkup UPTD Metrologi Legal Kelas A</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id_file` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_file`, `nama`, `file`) VALUES
(9, 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SK', 'dokumen/Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD.pdf'),
(10, 'Lampiran-4', 'dokumen/Lampiran-4.pdf'),
(11, '39-Article Text-100-1-10-20200425 (1)', 'dokumen/39-Article Text-100-1-10-20200425 (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `name`, `file`) VALUES
(29, '', 'SOP_Izin_Pembukaan_Kantor_Cabang_Koperasi_Simpan_Pinjam.pdf'),
(33, '', '297884-rancang-bangun-sistem-informasi-desa-ber-a9c67785.pdf'),
(35, '', 'RENJA 2020 RENCANA KERJA 2020 DINAS PERINDUSTRIAN DAN PERDAGANGAN KOTA BOGOR - PDF Download Gratis.pdf'),
(36, '', 'Rencana Kerja 2020.pdf'),
(37, '', '85-Article Text-153-1-10-20180210 (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(3) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `isi`, `gambar`) VALUES
(18, 'Kepala Dinas Koperasi dan UKM Kota Bogor menghadiri acara Panen Raya Budiman', '<p>Rabu, 16 September 2020<br />\r\nKepala Dinas Koperasi dan UKM Kota Bogor menghadiri acara Panen Raya Budiman yang diadakan di Griya Melati Rt 02 Rw 13 Kelurahan Bubulak, Kecamatan Bogor Barat.<br />\r\nAcara ini dihadiri juga oleh Bapak Wali Kota Bogor, Dr. Bima Arya Sugiarto.</p>\r\n', '798-23.jpg'),
(21, 'Pelatihan Pendampingan Fasilitator E-commerce melalui branding, design & marketing', '<p>Senin 6 Juni 2022 Dinkukmdagin Kota Bogor bekerjasama dengan Civitas Akademika IBI Kesatuan Bogor menyelenggarakan Pelatihan Pendampingan Fasilitator E-commerce melalui branding, design &amp; marketing yang bertempat di Aula IBI Kesatuan Kota Bogor.<br />\r\nPelaksanaan pelatihan ini sebagai langkah awal dari proses pembinaan dan pendampingan secara berkelanjutan melalui program-program Dinkukmdagin lainnya yang mendukung dan menunjang para pelaku UKM untuk bisa Naik Kelas.<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'ds.jpg'),
(25, 'Pelatikan pejabat struktural dan fungsional Pemerintah Kota Bogor', '<p>Selamat kepada Bapak Ganjar Gunawan AP yg telah dilantik sebagai Kepala Dinas Koperasi UKM Perdagangan dan Perindustrian Kota Bogor<br />\r\n.<br />\r\nMasih bersama lagii kita...<br />\r\n.<br />\r\nKompak dan selalu menjadi &quot; Insan Cerdik&quot; Diskopukmdagin...</p>\r\n', '270817689_339354434688114_9181640341562984423_n.jpg'),
(26, 'Rapat Kerja Daerah (Rakerda) Dekranasda [ Dewan Kerajinan Nasional Daerah ] tingkat Provinsi Jawa Barat ', '<p>Rapat Kerja Daerah (Rakerda) Dekranasda [ Dewan Kerajinan Nasional Daerah ] tingkat Provinsi Jawa Barat tgl 23 - 24 November 2021, dibuka langsung oleh Ketua Dekranasda Prov Jabar bu&nbsp;ataliapr&nbsp;dan dihadiri oleh ibu Sekjen Dekranasda Indonesia&nbsp;gatiwibawaningsih&nbsp;serta seluruh ketua Dekranasda Kab/kota se Jabar, serta lintas OPD terkait dan para stakeholders lainnya.<br />\r\n.<br />\r\nDekranasda, sebagai Organisasi Non Pemerintahan tetap berkomitmen untuk terus melakukan pendampingan terhadap kreasi dan produk2 lokal masing2 kab/kota, supaya memiliki daya saing dan bisa diterima di pasar Global.</p>\r\n', '260846076_610144947075793_4867234152766627395_n (1).jpg'),
(27, 'Acara Diseminasi ASEAN Sertifikasi Mandiri dan Form D ', '<p>Acara Diseminasi ASEAN Sertifikasi Mandiri dan Form D hari ini telah selesai. Acara ini dibuka oleh Direktur Perundingan ASEAN dan Kepala Dinas Perdagangan dan Perindustrian Kota Bogor.<br />\r\n.<br />\r\nBerdasarkan data Kementrian Perdagangan nilai ekspor Indonesia ke negara ASEAN pada tahun 2020 mencapai 29,4 M US Dollar, sedangkan Impor sebesar 21.2 M US Dollar sehingga Indonesia mencatatkan Surplus sebesar 8.2 M US Dollar.<br />\r\n.<br />\r\nUntuk Kota Bogor angka Ekspor juga cukup tinggi pada tahun 2020 dengan mencapai 70 Juta US Dollar dari 28 Pelaku UMKM yang melakukan ekspor terbesar ke Filipina, Malaysia, Singapura, Thailand dan Vietnam.<br />\r\n.<br />\r\nKepala Dinas Perindustrian dan Perdagangan Kota Bogor Ganjar Gunawan mengatakan saat ini sudah banyak produk Bogor yang menembus dunia internasional, khususnya ke ASEAN dengan produk utama makanan dan minuman olahan.<br />\r\n.<br />\r\nSosialisasi ini dihadiri oleh sekitar 80 eksportir baik secara fisik dan virtual. &ldquo;Kota Bogor, SIAP EKSPOR!!&rdquo; seru para pelaku eksporter yang hadir membuka kegiatan diseminasi. Semoga kegiatan ini dapat membantu pelaku usaha dalam melakukan kegiatan ekspor Indonesia ke mancanegara.<br />\r\n.<br />\r\nKegiatan ini merupakan bagian dari webinar series, yang akan dilanjutkan webinar terkait &quot;Market Compliance ke Negara - Negara Mitra ASEAN&quot; besok tanggal 30 September 2021.</p>\r\n', '243211881_118880747189388_8436521344584960537_n (1).jpg'),
(28, 'Monitoring dan Pembinaan IKM', '<p>Monitoring dan Pembinaan IKM&nbsp;<a href=\"https://www.instagram.com/bogor_lion_art_indonesia/\">@bogor_lion_art_indonesia</a>&nbsp;kerajinan keramik di Kedung Halang.</p>\r\n', '293201099_416026680467601_1304708450948465426_n.jpg'),
(29, 'Kunjungan Polresta Kota Bogor dipimpin Kapolresta Susatyo Punomo ke Dinas kukm Kota Bogor dalam acara selasa berkunjung.', '<p>Acara Berkunjung Polresta ke Kepala Bidang Koperasi di Dinas Koperasi, Usaha Kecil dan Menengah, Perdagangan dan Perindustrian&nbsp;Kota Bogor,&nbsp;<a href=\"https://www.instagram.com/samsonpurba54/\">@samsonpurba54</a>&nbsp;mengawali pertemuan dengan memaparkan program kegiatan DINKUKMDAGIN kota Bogor.</p>\r\n', '187569029_495198431622406_8651297881529054671_n (1).jpg'),
(30, 'Bantuan Usaha Kecil Program Jaringan Pengaman Sosial Terdampak Covid-19', '<p>Kepala Bidang UMKM DINKUMDAGIN&nbsp;Kota Bogor, Menghadiri Penyerahan Bantuan Secara Simbolis Bantuan Modal Usaha (UMKM). BAZNAS Kota Bogor dan BAZNAS Jawa barat.</p>\r\n', '166744575_349119783188229_7183435407449494562_n.jpg'),
(31, 'Operasi Pasar Minyak Goreng hari ini Kamis 24/2/22', '<p>Bertempat di kantor kecamatan Bogor Selatan, dan dibuka secara simbolik oleh bu Sekda Kota Bogor&nbsp;<a href=\"https://www.instagram.com/sofiahsyarifah/\">@sofiahsyarifah</a>&nbsp;selaku ketua TPID, bekerja sama dengan Perum Bulog Drive II Cianjur, kali ini sebanyak 12.000 liter minyak goreng disebar ke masyarakat dan pelaku Umkm, dengan harga yg sudah ditetapkan pemerintah yakni Rp.14.000/liter.</p>\r\n', '471-274642060_360994232708427_3549775437130246209_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ikm`
--

CREATE TABLE `ikm` (
  `id_ikm` int(3) NOT NULL,
  `nama_toko` text NOT NULL,
  `nama_pemilik` char(50) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` char(20) NOT NULL,
  `jns_usaha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ikm`
--

INSERT INTO `ikm` (`id_ikm`, `nama_toko`, `nama_pemilik`, `alamat`, `kecamatan`, `jns_usaha`) VALUES
(1, 'Agustine Embroidery', 'Agustine Siselowati', 'Baranangsiang Indah  E5 No.13 Kel. Katulampa Kec. Bogor Timur', 'Bogor Timur', 'Home Decor, Crfat & Fashion'),
(2, 'Adjam dan Kaligrafi', 'Adjam Collection', 'Taman Topi Bogor Jl. Kapten Muslihat Bogor', 'Bogor Tengah', 'Gantungan Kunci Kenari dan Kaligrafi'),
(3, 'Box Unik', 'Fahmi Djibran/ Banni Dienajawestri', 'Jl. Cimanggu Bogor NO. 5 Bogor', 'Bogor Barat', 'Kotak perhiasan & Jam Tangan'),
(4, 'Lesung Kramik', 'Ir. Suryo Purnomo', 'Sukadamai Rt. 02 Rw. 01 Tanah Sereal Bogor', 'Bogor Utara', 'Westafel, aroma terapi, tegel, dll'),
(5, 'CV. Mitra Technical', 'Zainullah, MA', 'Jl. Rante Rt.04/07 No.28 Kel. Gunung Batu Kec. Bogor Barat', 'Bogor Barat', 'Audio Bambu'),
(6, 'Khabeesana Craft', 'Koriah', 'Kp Sindang Sari Rt 02 Rw 11 Kel Tanah Baru Bogor Utara', 'Bogor Utara', 'Anyaman Kertas'),
(7, 'Bogor Kreatif', 'Nurdin ( Bim-Bim)', 'Jl. Tentara Pelajar No.4 Kota Bogor', 'Bogor Barat', 'Kerajinan Daur Ulang dan Cinderamata'),
(8, 'Bogor Woodcraft', 'Dery Adam', 'Jl. Tegal Lega No.1', 'Bogor Timur', 'Lampu Tidur, Gantungan Kunci'),
(9, 'Greenbelle', 'Nurfinayati, SP', 'Jl. R. Kosasih No.21 Rt.01/08 Cikaret Bogor Selatan', 'Bogor Selatan', 'Boneka Potty & mainan edukasi'),
(10, 'Dini Design', 'Ir. Dini Astriani, MM.', 'Jl. Pahlawan No.113 Bogor', 'Bogor Selatan', 'Handycraft DaurUlang'),
(11, 'GIE Shop', 'Egie Sugiwati', 'BTN Tanah Baru Block 6 IV/3 Bogor', 'Bogor Utara', 'Sepatu Rajut'),
(12, 'Mynoi Gallery', 'Hilmy Fatimah Nurdin', 'Komp. Baranangsiang Indah Blok B 6 No.11 Bogor', 'Bogor Tengah', 'Decoupage, Fabric Decoupage, Culture'),
(13, 'CV. Mones Flush', 'Linda Marlinda', 'Jl. Ashari Jaya II No. 5 Sindang Sari', 'Bogor Timur', 'Boneka'),
(14, 'KNH Collection', 'Siti Halimah', 'Jl. Sukamulya 3 No. 67 Rt 04/03 Kel. Sukasari Kec. Bogor Timur', 'Bogor Timur', 'Bunga Kering dan Dompet'),
(15, 'CV. Omacha Toys', 'Wahyuni', 'Kp. Pilar Rt.001/002 Sindang Barang Jero', 'Bogor Barat', 'Mainan Anak Edukati fdari Kayu'),
(16, 'Nyunyu Micu Handmade', 'Fenti Ferdianti', 'Bukit Cimanggu City N4/15', 'Tanah Sereal', 'Aneka Souvenir Bahan Fanel'),
(17, 'Lista Sheephouse', 'Lindawati Jahja Natasaputra', 'Bukit Cimanggu City Blok M No.9', 'Tanah Sereal', 'Kemoceng, Boneka, Bantal, Gantungan Kunci'),
(18, 'Wisnu Toys', 'Juminah', 'Jl. Raya Tajur No.59 Rt.003/007 Kel. Muarasari', 'Bogor Selatan', 'Boneka, Bantal, Guling untuk Souvenir dll'),
(19, 'Twist Rope', 'Mila Wiarti', 'Sindang Panorama Regency Blok B No 7 Jl. Sindang Barang Pilar I-Bogor 16117', 'Bogor Barat', 'Macrame Sarung Bantal & Gantungan Pot (Kerajinan Tangan Macrame)'),
(20, 'Tyas Alifa Decoration (Mozaik Cermin)', 'Tyas Alifa', 'Jl. Bukit Cassiavera Raya FF 22 Koramil Kayumanis ? Bogor', 'Tanah Sereal', 'Cermin Hias'),
(21, 'Talitha Art', 'Edi  Mulyono/Erni', 'Jl. Arkasia Raya P3 No. 2 Taman Cimanggu Bogor', 'Tanah Sereal', 'Lukisan Kaca, Botol dan  Keramik'),
(22, 'Paneupaan Kujang Pajajaran', 'Wahyu Affandi Suradinata, Bsc/ Yanthi', 'Parung Banteng Rt.04 Rw.01 No.120', 'Bogor Timur', 'Kujang beberapa jenis dan ukuran'),
(23, 'Reisya Flanel', 'Elina Fitriani', 'Kp Curug Induk Rt 01 Rw 05 Kel Curug Bobar', 'Bogor Barat', 'Souvenir & Kotak Tissue'),
(24, 'AFW Knife', 'Evi Novalina', 'Bojong Pesantren Rt 001  RW 003 No 22 Bojongkerta Bosel', 'Bogor Selatan', 'Pisau Adventure'),
(25, 'Djallal Creative', 'Rahman Wibowo /Desy Suryantini', 'Jl. Cimanggu perikanan No.23 Rt.05 Rw.01 Kedung Waringin Kec. Tanah Sereal ', 'Tanah Sereal', 'Lukisan Tiga Dimensi'),
(26, 'Rumah Umi 75', 'Cut MeutiaAlvira', 'Bogor Baru Blok B5 No.14\n\n', 'Bogor Utara', 'Home D?cor'),
(27, 'Salam Rancage', 'Aling Nur Naluri', 'Jl. P. Ashogiri 150 Kel. Tanah Baru', 'Bogor Utara', 'Produk daur ulang'),
(28, 'Jumpa Production', 'Desti Nurahmah', 'Jl. Cilendek Timur Rt. 05/08 No.39', 'Bogor Timur', 'Boneka Batik'),
(29, 'Galeri Odelle', 'Vlorenia Octavyani', 'Baranang Siang Indah Blok A2 no 23 Botim', 'Bogor Timur', 'Tas'),
(30, 'Kandang Mainan', 'Julian Vitra', 'Jl Baru Kedung Badak Rt 009 Rw 001 Kel Kedung Badak', 'Tanah Sereal', 'edukasi Toys'),
(31, 'My Simple Decou', 'Yulvia Prihasti Suman', 'Jl. Cempaka Blok CIII No 21 Bumi Ciluar Indah', 'Bogor Utara', 'Sculpture Painting'),
(32, 'My Zhee', 'Teti Femiawaty', 'Villa Bogor Indah 2 Blok EE8 No. 7', 'Bogor Utara', 'craft'),
(33, 'MQ Bamboo', 'Micky Mulyadi', 'Sirnagalih Rt.002 Rw.007 Kel. Loji Kec. Bogor Barat', 'Bogor Barat', 'Craft'),
(34, 'Kin n Ken', 'Yane Ardian Rachman', '<p>Pendopo 6 Baranang Siang Indah</p>\r\n', 'Bogor Timur', 'Patchwork'),
(35, 'Himmah Aneka Perca', 'Rd. Aan Rohana', 'Gg. Sarkawi Rt. 05/05 Tanah Baru Cimahpar', 'Bogor Utara', 'Tas Shoulder, Slempang, Bag Pack, Dompet'),
(36, 'CV. Omera Shazfa Senada (Galis Design, Shazfa, Gadis Craft)\n', 'Miftachul Jannah', 'Jl. Boulevard Blok O III/6 Taman Cimanggu Bogor', 'Tanah Sereal', 'Buana Muslim dan Kerudung'),
(37, 'Kresna Handyicraft', 'Hj. Woro Djuarningsih', 'Jl. Kresna Raya No.25 Indra Prasta Bogor', 'Bogor Utara', 'Tas, Selop, Tas Kosmetik'),
(38, 'Cabs Pocket', 'Hafiq Gani Porta', 'Gg Sekolah ABN Rt 02 RW 15 Kedung Waringin Kec Tanah Sareal', 'Tanah Sereal', 'Dompet'),
(39, 'UNCHAL oleh-oleh khas Bogor', 'LuthfiHadi', 'Jl. Ceremai no.1 Kel. Babakan Kec. Bogor Tengah', 'Bogor Tengah', 'Kaos'),
(40, 'House Of  Thalita', 'Aisyah Setyawati', 'Taman Yasmin Sektor  V, Jl. Palem Putri III, No.16 Kel. Curug  Mekar Kec. Bogor Barat Kota Bogor ', 'Bogor Barat', 'Tas, Clutch, Kipas dan souvenir'),
(41, 'ITANDO & GAYANIK', 'Meita Maya, SE', 'Perumahan Johar Grande D-1, Jl. Johar Kedung Waringin', 'Tanah Sereal', 'Clutch Bag dan Fashion'),
(42, 'Simple 8 Corner', 'Carlina', 'Kebun Raya Residence, Blok AB#7 Rt.005/Rw10 Bogor 16610', 'Bogor Barat', 'Sepatu Fashion Wanita, Kaftan Bordir Modifkasi'),
(43, 'Ramiza Boutique', 'Yudiwati', 'Taman Yasmin Jl. Teratai Raya 24 Bogor', 'Bogor Barat', 'Bross dan Handmade Accessories'),
(44, 'Navisya Collection', 'Hetty', 'Komp. Cimanggu Permai Jl. Majapahit Raya Blok B8 No.8', 'Tanah Sereal', 'Bros pita organdi'),
(45, 'Niel Design', 'Nila Nuraida', 'Jl. Kacapiring VII Blok V16 No.13 Taman Cimanggu ', 'Tanah Sereal', 'Accessories'),
(46, 'Aitha Collection', 'Nelita Fatma', 'Perum  Bukit Kayu Manis Blok O No 16 Rt 03 RW12 Kayumanis Tanah Sareal', 'Tanah Sereal', 'Aksesories'),
(47, 'Valerie', 'Bellina Triyanto', 'Jl. Dr. SemeruKelor Utama No.160 Mentang Bogor Barat', 'Bogor Barat', 'Pakaian Anak'),
(48, 'Zola Leather', 'Mira Nur Gandaniati', 'Komplek BPPB Blok P2 Rt 2 Rw 7 Pasir Mulya', 'Bogor Barat', 'Tas Kulit Sapi'),
(49, 'Pepari Leather', 'Peppy Megawati', 'Jl. Masjid Al Hikmah No 36 Kel Semplak Kec Bogor Barat', 'Bogor Barat', 'Tas kulit sapi'),
(50, 'Ginding Leather', 'Diana Indriani', 'Kampung Cibatok Bogor', 'Bogor Barat', 'Produk Kulit'),
(51, 'Adrie Basuki', 'Andhika Satria Basuki', 'Bogor Baru Taman Blok B 4 JL. Cikaso No 10-11', 'Bogor Utara', 'Fashion Pria dan Wanita'),
(52, 'BIA ', 'Yannya Tihbia', 'Perumahan Saba Utama Blok B1 No 12 Bogor', 'Bogor Utara', 'sepatu handmade'),
(53, 'Batik Handayani Geulis', 'Sri Ratna Handayani B', 'Tegal Peuteuy, Tegal Lega-Bogor', 'Bogor Tengah', 'Batik & Patchwork Batik'),
(54, 'Batik Tradisiku', 'H. Siswaya', 'Jl. Jalak No.2 Tanah Sareal, Kota Bogor 16161', 'Tanah Sereal', 'Batik Bogor Kujang Kijang, Hujan Gerimis, dan Mozaik Batik'),
(55, 'Batik Bogor TegallegaPaniisan', 'Inayah', 'Jl. Tegallega No.14 Rt.01/01 Bogor Tengah', 'Bogor Tengah', 'Batik Tulis'),
(56, 'Batik Bogor Pancawati', 'Sri Hartati', 'Jl. Neglasari Rt.03/04 Cibuluh Bogor Utara', 'Bogor Utara', 'Bahan Batik dan Pakaian Batik'),
(57, 'Batik Bogor Melinda', 'Cornalia Melindawati,SE', 'Jl. Neglasari Rt.03/04 Cibuluh Bogor Utara', 'Bogor Utara', 'Batik'),
(58, 'Batik Bogor Bumiku', 'Gumi Indang Siswati', 'Kp Neglasari I Rt 03 Rw 04 Cibuluh Kedung Halang', 'Bogor Utara', 'Kain Batik'),
(59, 'IRD Batik dan Fashion', 'Indriya Rusamana', 'Jl. Katumbiri No 1 Villa Duta', 'Bogor Timur', 'Kain Batik'),
(60, 'Batik Melangit', 'Sri Wahyuningsih', 'Kp Neglasari I Rt 03 Rw 04 Cibuluh Kedung Halang', 'Bogor Utara', 'Kain Batik'),
(61, 'Gazi Seri', 'Ina Winarti', 'Kampung Batik Cibuluh Rt 02 Rw 04 Cibuluh', 'Bogor Utara', 'Batik'),
(62, 'Dgawan co', 'Galih Kurniawan', 'Jl. Raya Cifor Bogor', 'Bogor Barat', 'Fashion'),
(63, 'Nu Taly', 'Vera Dwitany', 'Komplek PDK Jl.Geografi No.13 Ciparigi ', 'Bogor Utara', 'Tas & Keranjang Tali Katun'),
(64, 'Aseupan Daun', 'Syafriani Salamah', 'Taman Tampak Siring TTS 9/11 Sentul City', 'Bogor Timur', 'Kriya'),
(65, 'FridAulia Indonesia', 'Frida Nursanti', 'Komplek Bogor Baru Taman Blok A3 No 5 Bogut', 'Bogor Utara', 'Fashion & Craft'),
(66, 'Loji Craft', 'Mardiah', 'Jl. Raya Ibrahim Ajie No. 165 Bogor', 'Bogor Barat', 'Fashion & Craft'),
(67, 'Desco', 'Siti Rochmah', 'Gunung Batu Wate GG Musholla No 371 Rt 01 RW 12', 'Bogor Barat', 'Tas Macrame'),
(68, 'Tri Crochet', 'Tri Hanum Puspitasari, Spd', 'Jl. Rawajaha Rt 04 Rw 03 Kel Situgede ', 'Bogor Barat', 'Sepatu dan sandal rajutan'),
(69, 'Kalong Leather Garment', 'Sudarmanto', 'Jl. Raya Pemda N0 9 Kedung Halang', 'Bogor Utara', 'Jaket dan Tas Kulit');

-- --------------------------------------------------------

--
-- Table structure for table `ikmm`
--

CREATE TABLE `ikmm` (
  `id_ikmm` int(3) NOT NULL,
  `nama_usahaa` text NOT NULL,
  `nama_pemilikk` char(50) NOT NULL,
  `alamat_usahaa` text NOT NULL,
  `kecamatan_usahaa` char(20) NOT NULL,
  `jns_usahaa` varchar(100) NOT NULL,
  `tahunn` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ikmm`
--

INSERT INTO `ikmm` (`id_ikmm`, `nama_usahaa`, `nama_pemilikk`, `alamat_usahaa`, `kecamatan_usahaa`, `jns_usahaa`, `tahunn`) VALUES
(1, 'Agustine Embroidery', 'Agustine Siselowati', 'Baranangsiang Indah  E5 No.13 Kel. Katulampa Kec. Bogor Timur', 'Bogor Timur', 'Home Decor, Crfat & Fashion', 2020),
(2, 'Adjam dan Kaligrafi', 'Adjam Collection', 'Taman Topi Bogor Jl. Kapten Muslihat Bogor', 'Bogor Tengah', 'Gantungan Kunci Kenari dan Kaligrafi', 2020),
(3, 'Box Unik', 'Fahmi Djibran/ Banni Dienajawestri', 'Jl. Cimanggu Bogor NO. 5 Bogor', 'Bogor Barat', 'Kotak perhiasan & Jam Tangan', 2020),
(4, 'Lesung Kramik', 'Ir. Suryo Purnomo', 'Sukadamai Rt. 02 Rw. 01 Tanah Sereal Bogor', 'Bogor Utara', 'Westafel, aroma terapi, tegel, dll', 2019),
(5, 'CV. Mitra Technical', 'Zainullah, MA', 'Jl. Rante Rt.04/07 No.28 Kel. Gunung Batu Kec. Bogor Barat', 'Bogor Barat', 'Audio Bambu', 2021),
(6, 'Khabeesana Craft', 'Koriah', 'Kp Sindang Sari Rt 02 Rw 11 Kel Tanah Baru Bogor Utara', 'Bogor Utara', 'Anyaman Kertas', 2020),
(7, 'Bogor Kreatif', 'Nurdin ( Bim-Bim)', 'Jl. Tentara Pelajar No.4 Kota Bogor', 'Bogor Barat', 'Kerajinan Daur Ulang dan Cinderamata', 2019),
(8, 'Bogor Woodcraft', 'Dery Adam', 'Jl. Tegal Lega No.1', 'Bogor Timur', 'Lampu Tidur, Gantungan Kunci', 2019),
(9, 'Greenbelle', 'Nurfinayati, SP', 'Jl. R. Kosasih No.21 Rt.01/08 Cikaret Bogor Selatan', 'Bogor Selatan', 'Boneka Potty & mainan edukasi', 2021),
(10, 'Dini Design', 'Ir. Dini Astriani, MM.', 'Jl. Pahlawan No.113 Bogor', 'Bogor Selatan', 'Handycraft DaurUlang', 2021),
(11, 'GIE Shop', 'Egie Sugiwati', 'BTN Tanah Baru Block 6 IV/3 Bogor', 'Bogor Utara', 'Sepatu Rajut', 2021),
(12, 'Mynoi Gallery', 'Hilmy Fatimah Nurdin', 'Komp. Baranangsiang Indah Blok B 6 No.11 Bogor', 'Bogor Tengah', 'Decoupage, Fabric Decoupage, Culture', 2022),
(13, 'CV. Mones Flush', 'Linda Marlinda', 'Jl. Ashari Jaya II No. 5 Sindang Sari', 'Bogor Timur', 'Boneka', 2021),
(14, 'KNH Collection', 'Siti Halimah', 'Jl. Sukamulya 3 No. 67 Rt 04/03 Kel. Sukasari Kec. Bogor Timur', 'Bogor Timur', 'Bunga Kering dan Dompet', 2022),
(15, 'CV. Omacha Toys', 'Wahyuni', 'Kp. Pilar Rt.001/002 Sindang Barang Jero', 'Bogor Barat', 'Mainan Anak Edukati fdari Kayu', 2022),
(16, 'Nyunyu Micu Handmade', 'Fenti Ferdianti', 'Bukit Cimanggu City N4/15', 'Tanah Sereal', 'Aneka Souvenir Bahan Fanel', 2019),
(17, 'Lista Sheephouse', 'Lindawati Jahja Natasaputra', 'Bukit Cimanggu City Blok M No.9', 'Tanah Sereal', 'Kemoceng, Boneka, Bantal, Gantungan Kunci', 2020),
(18, 'Wisnu Toys', 'Juminah', 'Jl. Raya Tajur No.59 Rt.003/007 Kel. Muarasari', 'Bogor Selatan', 'Boneka, Bantal, Guling untuk Souvenir dll', 2022),
(19, 'Twist Rope', 'Mila Wiarti', 'Sindang Panorama Regency Blok B No 7 Jl. Sindang Barang Pilar I-Bogor 16117', 'Bogor Barat', 'Macrame Sarung Bantal & Gantungan Pot (Kerajinan Tangan Macrame)', 2019),
(20, 'Tyas Alifa Decoration (Mozaik Cermin)', 'Tyas Alifa', 'Jl. Bukit Cassiavera Raya FF 22 Koramil Kayumanis ? Bogor', 'Tanah Sereal', 'Cermin Hias', 2019),
(21, 'Talitha Art', 'Edi  Mulyono/Erni', 'Jl. Arkasia Raya P3 No. 2 Taman Cimanggu Bogor', 'Tanah Sereal', 'Lukisan Kaca, Botol dan  Keramik', 2019),
(22, 'Paneupaan Kujang Pajajaran', 'Wahyu Affandi Suradinata, Bsc/ Yanthi', 'Parung Banteng Rt.04 Rw.01 No.120', 'Bogor Timur', 'Kujang beberapa jenis dan ukuran', 2020),
(23, 'Reisya Flanel', 'Elina Fitriani', 'Kp Curug Induk Rt 01 Rw 05 Kel Curug Bobar', 'Bogor Barat', 'Souvenir & Kotak Tissue', 2021),
(24, 'AFW Knife', 'Evi Novalina', 'Bojong Pesantren Rt 001  RW 003 No 22 Bojongkerta Bosel', 'Bogor Selatan', 'Pisau Adventure', 2021),
(25, 'Djallal Creative', 'Rahman Wibowo /Desy Suryantini', 'Jl. Cimanggu perikanan No.23 Rt.05 Rw.01 Kedung Waringin Kec. Tanah Sereal ', 'Tanah Sereal', 'Lukisan Tiga Dimensi', 2020),
(26, 'Rumah Umi 75', 'Cut MeutiaAlvira', 'Bogor Baru Blok B5 No.14\n\n', 'Bogor Utara', 'Home D?cor', 2020),
(27, 'Salam Rancage', 'Aling Nur Naluri', 'Jl. P. Ashogiri 150 Kel. Tanah Baru', 'Bogor Utara', 'Produk daur ulang', 2021),
(28, 'Jumpa Production', 'Desti Nurahmah', 'Jl. Cilendek Timur Rt. 05/08 No.39', 'Bogor Timur', 'Boneka Batik', 2022),
(29, 'Galeri Odelle', 'Vlorenia Octavyani', 'Baranang Siang Indah Blok A2 no 23 Botim', 'Bogor Timur', 'Tas', 2019),
(30, 'Kandang Mainan', 'Julian Vitra', 'Jl Baru Kedung Badak Rt 009 Rw 001 Kel Kedung Badak', 'Tanah Sereal', 'edukasi Toys', 2020),
(31, 'My Simple Decou', 'Yulvia Prihasti Suman', 'Jl. Cempaka Blok CIII No 21 Bumi Ciluar Indah', 'Bogor Utara', 'Sculpture Painting', 2021),
(32, 'My Zhee', 'Teti Femiawaty', 'Villa Bogor Indah 2 Blok EE8 No. 7', 'Bogor Utara', 'craft', 2021),
(33, 'MQ Bamboo', 'Micky Mulyadi', 'Sirnagalih Rt.002 Rw.007 Kel. Loji Kec. Bogor Barat', 'Bogor Barat', 'Craft', 2021),
(34, 'Kin ?n Ken', 'Yane Ardian Rachman', 'Pendopo 6 Baranang Siang Indah', 'Bogor Timur', 'Patchwork', 2020),
(35, 'Himmah Aneka Perca', 'Rd. Aan Rohana', 'Gg. Sarkawi Rt. 05/05 Tanah Baru Cimahpar', 'Bogor Utara', 'Tas Shoulder, Slempang, Bag Pack, Dompet', 2020),
(36, 'CV. Omera Shazfa Senada (Galis Design, Shazfa, Gadis Craft)\n', 'Miftachul Jannah', 'Jl. Boulevard Blok O III/6 Taman Cimanggu Bogor', 'Tanah Sereal', 'Buana Muslim dan Kerudung', 2019),
(37, 'Kresna Handyicraft', 'Hj. Woro Djuarningsih', 'Jl. Kresna Raya No.25 Indra Prasta Bogor', 'Bogor Utara', 'Tas, Selop, Tas Kosmetik', 2019),
(38, 'Cabs Pocket', 'Hafiq Gani Porta', 'Gg Sekolah ABN Rt 02 RW 15 Kedung Waringin Kec Tanah Sareal', 'Tanah Sereal', 'Dompet', 2020),
(39, 'UNCHAL oleh-oleh khas Bogor', 'LuthfiHadi', 'Jl. Ceremai no.1 Kel. Babakan Kec. Bogor Tengah', 'Bogor Tengah', 'Kaos', 2021),
(40, 'House Of  Thalita', 'Aisyah Setyawati', 'Taman Yasmin Sektor  V, Jl. Palem Putri III, No.16 Kel. Curug  Mekar Kec. Bogor Barat Kota Bogor ', 'Bogor Barat', 'Tas, Clutch, Kipas dan souvenir', 2021),
(41, 'ITANDO & GAYANIK', 'Meita Maya, SE', 'Perumahan Johar Grande D-1, Jl. Johar Kedung Waringin', 'Tanah Sereal', 'Clutch Bag dan Fashion', 2020),
(42, 'Simple 8 Corner', 'Carlina', 'Kebun Raya Residence, Blok AB#7 Rt.005/Rw10 Bogor 16610', 'Bogor Barat', 'Sepatu Fashion Wanita, Kaftan Bordir Modifkasi', 2021),
(43, 'Ramiza Boutique', 'Yudiwati', 'Taman Yasmin Jl. Teratai Raya 24 Bogor', 'Bogor Barat', 'Bross dan Handmade Accessories', 2021),
(44, 'Navisya Collection', 'Hetty', 'Komp. Cimanggu Permai Jl. Majapahit Raya Blok B8 No.8', 'Tanah Sereal', 'Bros pita organdi', 2021),
(45, 'Niel Design', 'Nila Nuraida', 'Jl. Kacapiring VII Blok V16 No.13 Taman Cimanggu ', 'Tanah Sereal', 'Accessories', 2021),
(46, 'Aitha Collection', 'Nelita Fatma', 'Perum  Bukit Kayu Manis Blok O No 16 Rt 03 RW12 Kayumanis Tanah Sareal', 'Tanah Sereal', 'Aksesories', 2021),
(47, 'Valerie', 'Bellina Triyanto', 'Jl. Dr. SemeruKelor Utama No.160 Mentang Bogor Barat', 'Bogor Barat', 'Pakaian Anak', 2021),
(48, 'Zola Leather', 'Mira Nur Gandaniati', 'Komplek BPPB Blok P2 Rt 2 Rw 7 Pasir Mulya', 'Bogor Barat', 'Tas Kulit Sapi', 2022),
(49, 'Pepari Leather', 'Peppy Megawati', 'Jl. Masjid Al Hikmah No 36 Kel Semplak Kec Bogor Barat', 'Bogor Barat', 'Tas kulit sapi', 2020),
(50, 'Ginding Leather', 'Diana Indriani', 'Kampung Cibatok Bogor', 'Bogor Barat', 'Produk Kulit', 2021),
(51, 'Adrie Basuki', 'Andhika Satria Basuki', 'Bogor Baru Taman Blok B 4 JL. Cikaso No 10-11', 'Bogor Utara', 'Fashion Pria dan Wanita', 2019),
(52, 'BIA ', 'Yannya Tihbia', 'Perumahan Saba Utama Blok B1 No 12 Bogor', 'Bogor Utara', 'sepatu handmade', 2021),
(53, 'Batik Handayani Geulis', 'Sri Ratna Handayani B', 'Tegal Peuteuy, Tegal Lega-Bogor', 'Bogor Tengah', 'Batik & Patchwork Batik', 2021),
(54, 'Batik Tradisiku', 'H. Siswaya', 'Jl. Jalak No.2 Tanah Sareal, Kota Bogor 16161', 'Tanah Sereal', 'Batik Bogor Kujang Kijang, Hujan Gerimis, dan Mozaik Batik', 2021),
(55, 'Batik Bogor TegallegaPaniisan', 'Inayah', 'Jl. Tegallega No.14 Rt.01/01 Bogor Tengah', 'Bogor Tengah', 'Batik Tulis', 2021),
(56, 'Batik Bogor Pancawati', 'Sri Hartati', 'Jl. Neglasari Rt.03/04 Cibuluh Bogor Utara', 'Bogor Utara', 'Bahan Batik dan Pakaian Batik', 2021),
(57, 'Batik Bogor Melinda', 'Cornalia Melindawati,SE', 'Jl. Neglasari Rt.03/04 Cibuluh Bogor Utara', 'Bogor Utara', 'Batik', 2020),
(58, 'Batik Bogor Bumiku', 'Gumi Indang Siswati', 'Kp Neglasari I Rt 03 Rw 04 Cibuluh Kedung Halang', 'Bogor Utara', 'Kain Batik', 2022),
(59, 'IRD Batik dan Fashion', 'Indriya Rusamana', 'Jl. Katumbiri No 1 Villa Duta', 'Bogor Timur', 'Kain Batik', 2021),
(60, 'Batik Melangit', 'Sri Wahyuningsih', 'Kp Neglasari I Rt 03 Rw 04 Cibuluh Kedung Halang', 'Bogor Utara', 'Kain Batik', 2019),
(61, 'Gazi Seri', 'Ina Winarti', 'Kampung Batik Cibuluh Rt 02 Rw 04 Cibuluh', 'Bogor Utara', 'Batik', 2019),
(62, 'Dgawan co', 'Galih Kurniawan', 'Jl. Raya Cifor Bogor', 'Bogor Barat', 'Fashion', 2020),
(63, 'Nu Taly', 'Vera Dwitany', 'Komplek PDK Jl.Geografi No.13 Ciparigi ', 'Bogor Utara', 'Tas & Keranjang Tali Katun', 2019),
(64, 'Aseupan Daun', 'Syafriani Salamah', 'Taman Tampak Siring TTS 9/11 Sentul City', 'Bogor Timur', 'Kriya', 2021),
(65, 'FridAulia Indonesia', 'Frida Nursanti', 'Komplek Bogor Baru Taman Blok A3 No 5 Bogut', 'Bogor Utara', 'Fashion & Craft', 2020),
(66, 'Loji Craft', 'Mardiah', 'Jl. Raya Ibrahim Ajie No. 165 Bogor', 'Bogor Barat', 'Fashion & Craft', 2021),
(67, 'Desco', 'Siti Rochmah', 'Gunung Batu Wate GG Musholla No 371 Rt 01 RW 12', 'Bogor Barat', 'Tas Macrame', 2022),
(68, 'Tri Crochet', 'Tri Hanum Puspitasari, Spd', 'Jl. Rawajaha Rt 04 Rw 03 Kel Situgede ', 'Bogor Barat', 'Sepatu dan sandal rajutan', 2020),
(69, 'Kalong Leather Garment', 'Sudarmanto', 'Jl. Raya Pemda N0 9 Kedung Halang', 'Bogor Utara', 'Jaket dan Tas Kulit', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(3) NOT NULL,
  `id_berita` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(70, 1, 'demikaaa', 'demika.oktaviani@gmail.com', '<p>Tempat dan Lokasi&nbsp;Operasi Pasar Murah Minyak Goreng</p>\r\n', '1'),
(79, 0, 'Sri Hartini, SE', 'demixcha.085019030@unpak.ac.id', 'AAAAA', '0'),
(89, 0, 'ANANDA AZKA PERKASA', 'demixcha.085019030@gmail.com', 'e', '0'),
(91, 0, 'yeni', 'octavia.085019003@unpak.ac.id', 'e', '0'),
(92, 0, 'Sri Hartini, SE', 'demika.oktavia@gmail.com', 'Sooooo', ''),
(93, 0, 'ANANDA AZKA PERKASA', 'demixcha.085019030@unpak.ac.id', 'smogaaa bisa', '0'),
(95, 3, 'muhammad', 'muhamad@gmail.com', 'bismillah', '1'),
(96, 0, 'zehanara syaqila', 'zehanara.syaqila@gmail.com', 'untuk harga bahan pokok', '0'),
(97, 0, 'zehanara syaqila', 'zehanara.syaqila@gmail.com', 'untuk harga bahan pokok', '0'),
(98, 0, 'zehanara syaqila', 'zehanara.syaqila@gmail.com', 'untuk harga bahan pokok', '0'),
(99, 3, 'zehanara syaqila', 'octavia.085019003@unpak.ac.id', 'errrrt', '0'),
(100, 0, 'sri ayu', 'ayu.dwi@gmail.com', 'test test', '0'),
(101, 0, 'sri ayu', 'ayu.dwi@gmail.com', 'test test', '0'),
(103, 1, 'Dea anisa', 'deaanisaa04@gmail.com', 'Akhirnya ada Operasi Pasar Murah Minyak Goreng dari Dinkukmdagin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `komentarr`
--

CREATE TABLE `komentarr` (
  `id_komen` int(4) NOT NULL,
  `nama_komen` char(35) NOT NULL,
  `email_komen` varchar(30) NOT NULL,
  `tlp` text NOT NULL,
  `pekerjaan` char(30) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarr`
--

INSERT INTO `komentarr` (`id_komen`, `nama_komen`, `email_komen`, `tlp`, `pekerjaan`, `pesan`) VALUES
(1, 'demika', 'demika@gmail.com', '08655567894', 'guru', '<p>Test</p>\r\n'),
(2, 'demika oktaviani', 'demika.oktavia@gmail.com', '0851781908343', 'Mahasiswa', '<p>pertanyaan apa aja</p>\r\n'),
(5, 'Riana santika', 'riana.oktaliana@gmail.com', '085999912031', 'Programmer', 'Alamat bidang industri sesuai dengan di website ya');

-- --------------------------------------------------------

--
-- Table structure for table `koperasi`
--

CREATE TABLE `koperasi` (
  `id_koperasi` int(4) NOT NULL,
  `nama_koperasi` varchar(100) NOT NULL,
  `nomor_bh` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `koperasi`
--

INSERT INTO `koperasi` (`id_koperasi`, `nama_koperasi`, `nomor_bh`, `alamat`, `kecamatan`) VALUES
(1, 'Koperasi Pegawai PT Telkom Bogor KOPEGTEL KIJANG', '8091/BH/KWK-10/22', 'Jl. KS Tubun Pangkalan Raya No. 5', 'Bogor Utara'),
(2, 'Koperasi Jasa Sola Rumah Karya', '008412/BH/M.KUKM.2/V/2018', 'jalan artzimar II, Rukun Tetangga 01, Rukun Warga 01', 'Bogor Utara'),
(3, 'Koperasi Pegawai Republik Indonesia Madrasah Tsanawiah \nNegeri Bogor AL AMANAH', '01/BH/KDK.1022/I/2001', 'Jl.Yudhistira raya Indraprasta ll', 'Bogor Utara'),
(4, 'Koperasi Simpan Pinjam Sepakat Satu', '50/BH/XIII.5/KANKOP', 'Jalan Ceremai No. 47 RT 001 RW 009', 'Bogor Utara'),
(5, 'Koperasi Konsumen Annajah Solution Indonesia', '20/BH/XIII.5/DISPERINDAGKOP', 'Jl. Achmad Adnawijaya(Pandawa Raya) Blok AI No.6', 'Bogor Utara'),
(6, 'KOPERASI JASA PURNA BANK SEJAHTERA KOPPURNABANK', '140/BH/KDK.1022/XI/1999', 'JL.PANDAWA RAYA RUKO A2 No. 18', 'Bogor Utara'),
(7, 'Koperasi Pegawai Republik Indonesia Istana Presiden Bogor Melati', '518/09/BH/KANKOP', 'Jl. Ir. H Juanda No. 1 RT.004 RW.001', 'Bogor Tengah'),
(8, 'KOPERASI KONSUMEN KELUARGA BESAR PANTANG \nMENYERAH KBPM NUSANTARA', '009192/BH/M.KUKM.2/VII/2018', 'Komplek PDK Jl. Sosilologi No. 42 Rt. 002 Rw. 006', 'Bogor Utara'),
(9, 'Koperasi Karyawan Industri PT Citra Abadi Sejati', '9662/BH/KWK.10/5', 'Jl.Raya KS. Tubun 263 Kel.Ciparigi Bogor Utara', 'Bogor Utara'),
(10, 'KOPERASI USAHA BERSAMA KHANTISA', '011452/BH/M.KUKM.2/XII/2018', 'Villa Bogor Indah 3 Blok AC1 No 17 RT 004 RW 015', 'Bogor Utara'),
(11, 'PRIMKOPPOLRESTA BOGOR', '6467/BH/DK-10/3', 'JL. KS. Tubun 21', 'Bogor Utara'),
(12, 'Koperasi Simpan Pinjam Sejahtera Bersama', '04/BH/518-DISKOP.UKM/I/2004', 'Jl. Pajajaran No. 1 RT 002/004', 'Bogor Tengah'),
(13, 'Koperasi Karyawan Puspa Kencana', '518/14/BH/PERINDAGKOP', 'Jl.Taman Kencana No. 1', 'Bogor Tengah'),
(14, 'KOPERASI KARYAWAN INIRO', '518/18/BH/PERINDAGKOP', 'JL. SALAK NO. 1', 'Bogor Tengah'),
(15, 'Koperasi Usaha Bersama Mandiri Sejahtera', '009532/BH/M.KUKM.2/IX/2018', 'JALAN LODAYA UJUNG NOMOR 6, RT 003, RW 007', 'Bogor Tengah'),
(16, 'Koperasi Karyawan RS PMI Bogor Mitra Melati', '9290/BH/KWK-10/IX-1996', 'Jl. Pajajaran No. 80 Rt.01 Rw. 04', 'Bogor Tengah'),
(17, 'KOPERASI KONSUMEN ADHYAKSA KEJAKSAAN NEGERI KOTA BOGOR', '8048/BH/DK.10/3', 'JL. IR. H. JUANDA NO. 6', 'Bogor Tengah'),
(18, 'Koperasi Pensiunan Bogor KPB', '2823/BH/VII', 'Jl. Jend. Sudirman No.5 RT.005 RW.003', 'Bogor Tengah'),
(19, 'Koperasi Karyawan Stacoref Bank Mandiri Bogor', '19/BH/KDK-1022/IX/1998', 'JALAN KAPTEN MUSLIHAT NO.17 BOGOR', 'Bogor Tengah'),
(20, 'Koperasi Pedagang Pasar Kebon Kembang Bogor', '11.306/BH/KWK.10/22', 'Jl. Dewi Sartika', 'Bogor Tengah'),
(21, 'Koperasi Jasa Transportasi Pengusaha Angkutan KOPATA', '66/BH/XIII.5/Kankop', 'Jl. Warung Bandrek Komplek Mardi Yuana No. 7 RT 05/05', 'Bogor Selatan'),
(22, 'Koperasi Konsumen Empang Karya Mandiri', '002868/BH/M.KUKM.2/XI/2016', 'Jl. Pahlawan No.144', 'Bogor Selatan'),
(23, 'KOPERASI KONSUMEN ABI UMMI BERKAH', 'AHU-0007286.AH.01.26.TAHUN 2020', 'Jl. Mesjid II No.4 RT03/RW02', 'Bogor Selatan'),
(24, 'Koperasi Jasa Angkutan Bogor Raya', '102/BH/XIII.5/kop', 'Jl. Cikaret Komplek Mina Bhakti RT 003 RW 003', 'Bogor Selatan'),
(25, 'Koperasi Duta Jasa Angkutan Mandiri KODJARI', '76/BH/XIII.5/KOP', 'Jl. Siliwangi No.70 RT.005 RW.004', 'Bogor Selatan'),
(26, 'Koperasi Konsumen Mulya Asih Mandiri', '003209/BH/M.KUKM.2/I/2017', 'Jl.Cibeureum No.13', 'Bogor Selatan'),
(27, 'KOPERASI KONSUMEN KOMUNITAS KUMKM MUTIARA SEJATI', '110/BH/XIII.5/KOP', 'JL. CIBEUREUM NO. 25', 'Bogor Selatan'),
(28, 'KSPPS BMT Binaul Ummah', '34/BH/KDK.1022/III/1999', 'Jl. Re Sumantadireja No. 17 Bojong RT.02 RW.08', 'Bogor Selatan'),
(29, 'Koperasi Konsumen Pembiayaan Ekonomi Kelurahan Rahayu \nDisingkat Kpek Rahayu', '518/18/BH/KANKOP', 'JL.Marga Bhakti No25 RT.03 RW.08', 'Bogor Selatan'),
(30, 'Koperasi Karyawan PT Yudhistira Ghalia Indonesia KOPKAR ARIMBI', '65/BH/KDK.1022/IV/99', 'Jl.Rancamaya Km I Warung Nangka No.47 RT 001 RW. 002', 'Bogor Selatan'),
(31, 'KOPERASI KONSUMEN KARYAWAN SUMBER SEJAHTERA AGRICON', '9593/BH/KWK.10/22', 'Jl.Siliwangi No 68', 'Bogor Selatan'),
(32, 'KOPERASI JASA ANGKUTAN USAHA BERSAMA KAUBER', '54/BH/XIII.5/Kankop', 'Jl. Raya Tajur No. 54 RT 001 RW 04', 'Bogor Selatan'),
(33, 'KOPERASI KONSUMEN KARYAWAN PERUMDA TIRTA PAKUAN \nKOTA BOGOR TIRTA SANITA', '8066/BH/KWK.10/22', 'JL.RAYA TAJUR No. 67E', 'Bogor Timur'),
(34, 'Koperasi Pegawai Republik Indonesia KPRI Analis SMAKBO', '518/11/BH/PERINDAGKOP', 'Jl.Bina Marga I Ciheulet RT.004 RW.008', 'Bogor Timur'),
(35, 'Koperasi Simpan Pinjam KSP Keluarga Bahagia Sejahtera', '005814/BH/M.KUKM.2/X/2017', 'Perumahan Baranangsiang Indah Blok S1 No, 1 RT 010 \nRW 005', 'Bogor Timur'),
(36, 'KOPERASI SIMPAN PINJAM KARYA MARTOMUJANDI', '10/BH/XIII/518-DISKOP.UMKM/X/2013', 'Jl. BTN Tanah Baru Blok A No. 78', 'Bogor Utara'),
(37, 'KOPERASI JASA NAMASTRA JAYA SEJAHTERA', '125/BH/XIII.5/Kop', 'JL. KOL. H. ACHMAD SYAM NO. 179C', 'Bogor Utara'),
(38, 'Koperasi Simpan Pinjam Sentra Mandiri', '62/BH/XIII.5/KANKOP', 'Jl. Siliwangi No. 124 A , Sukasari', 'Bogor Timur'),
(39, 'Koperasi Serba Usaha Karya Mandiri', '518/15/BH/PERINDAGKOP', 'Jl. Sukamulya No. 104 RT 001 RW 005', 'Bogor Timur'),
(40, 'Koperasi Gm Sukses Mandiri Sejahtera', '005415/BH/M.KUKM.2/IX/2017', 'Jl. Raya Tajur No. 156', 'Bogor Timur'),
(41, 'Koperasi Karyawan PD Bank Pasar Kota Bogor Jasa Karya', '9350/BH/KWK.10/22', 'Jl.Sawojajar No.8 RT.01 RW.02', 'Bogor Tengah'),
(42, 'Primer Koperasi Kartika Ksatria Bhakti', '2713/B.H/VII', 'Jl. Jend. Sudirman No.35', 'Bogor Tengah'),
(43, 'Koperasi Pegawai Republik Indonesia KPRI Beriman', '7022./KEP/KWK.10/XII-1997', 'Jl. Ir H Juanda No.10 Gedung Kemuning Gading', 'Bogor Tengah'),
(44, 'Koperasi Simpan Pinjam KSP Sahabat Keluarga Sejahtera', '71/BH/XIII.5/KANKOP', 'Jl. Pulo Empang No.42 RT 04 RW.06', 'Bogor Tengah'),
(45, 'Koperasi Pegawai Republik Indonesia KPRI Mitra Industri', '1388.A/BH/DK-10/3', 'Jl. Ir. H. Juanda No.11', 'Bogor Tengah'),
(46, 'KOPERASI PENGAYOMAN PEGAWAI LAPAS BOGOR', '9366/BH/KWK.10/IV/96', 'JL. PALEDANG NO. 2', 'Bogor Tengah'),
(47, 'Koperasi Karyawan Bank BTN', '9647/BH/KWK.10.22', 'Jl. Pengadilan No. 13-15 Bogor', 'Bogor Tengah'),
(48, 'Koperasi Pegawai Republik Indonesia Nabati Lestari', '07/BH/KDK.1022/II/2000', 'Jl.Ir.H.Juanda 13', 'Bogor Tengah'),
(49, 'Koperasi Karyawan Cipta Usaha PT PLN APJ Bogor', '2017/BH/IX-9/12-67', 'Jl.Kapten Muslihat No.2', 'Bogor Tengah'),
(50, 'KOPERASI KONSUMEN KPRI PASCAPANEN', '518/13/BH/PERINDAGKOP', 'JL.Tentara Pelajar No.12', 'Bogor Tengah'),
(51, 'Primkop Kartika Surya Kancana', '1970/BH/VII', 'JL. Merdeka NO 64', 'Bogor Tengah'),
(52, 'Pusat Koperasi Pegawai Republik Indonesia PKPRI Kota Bogor', '1181/BH/IX-9/12-67', 'JL. Merdeka 78', 'Bogor Tengah'),
(53, 'Koperasi Pegawai Republik Indonesia Usaha Sekerja Bblitvet', '2106/B/BH/KWK-10/22', 'Jl. RE. Martadinata No.30', 'Bogor Tengah'),
(54, 'Koperasi Pegawai Republik Indonesia Tantri', '2835./BH/9-12-1967', 'Jl. Tentara Pelajar No.3', 'Bogor Tengah'),
(55, 'Koperasi Simpan Pinjam Kapital Karya Mandiri KSP KOKARDI', '127/BH/XIII.5/KOP', 'Jl. Suryakancana No.65 Lt. 2', 'Bogor Tengah'),
(56, 'KOPERASI SUBUR MAKMUR SENTOSA', '40/BH/XIII.5/KANKOP', 'Jl. Pahlawan No. 140/142', 'Bogor Tengah'),
(57, 'Koperasi Pedagang Pasar Unit II Pasar Baru Bogor KOPPAS II \nSURYA KENCANA', '8071/BH/KWK.10/22', 'Jl. Suryakencana no. 3', 'Bogor Tengah'),
(58, 'Primer Koperasi Kartika Salak Bogor', '518/02/BH/PERINDAGKOP', 'JL. Sudirman No.8 RT.003/007', 'Bogor Tengah'),
(59, 'KOPERASI KONSUMEN PEGAWAI REPUBLIK INDONESIA INSTITUT \nPERTANIAN BOGOR TEKO SUMODIWIRJO', '6446/BH/DK-10/3', 'Jl. Raya Pajajaran Bogor, Gedung Utama Kampus IPB \nBaranangsiang', 'Bogor Tengah'),
(60, 'Koperasi Simpan Pinjam Multi Guna', '73/BH/XIII.5/KOP', 'Jalan Ir. H. Juanda No. 68', 'Bogor Tengah'),
(61, 'Koperasi Pegawai Republik Indonesia Usaha Bersama \nRS Marzuki Mahdi', '2086/BH/KWK.10/XI/1995', 'Jl. Dr. Semeru No. 114', 'Bogor Barat'),
(62, 'Koperasi Pegawai Republik Indonesia Bhakti Lestari', '8911/BH/KWK.10/VIII/91', 'Jl. Dr. Semeru - Gang Kelor No.4', 'Bogor Barat'),
(63, 'Koperasi Pegawai Republik Indonesia Tanaman Pangan', '538A/BH/IX-9/12-67', 'Jl.Tentara Pelajar No 3A', 'Bogor Barat'),
(64, 'KOPERASI KONSUMEN PRIMER WASKITA SATUAN INDUK BAIS TNI', '3784/BH/IX-9/12-67', 'Jl. Dr. Semeru Nomor 142', 'Bogor Barat'),
(65, 'Koperasi Pegawai Republik Indonesia KOPAGRO', '7766/BH/DK-10/3', 'Jalan Tentara Pelajar No. 3B', 'Bogor Barat'),
(66, 'Koperasi Simpan Pinjam Sinar Kandaga', '8792/BH/KWK.10/22', 'JL.Raya Semplak No.68 RT.04 RW.10', 'Bogor Barat'),
(67, 'Koperasi Simpan Pinjam Agrikaben Sabta Centrawal KSP ASC', '67/BH/XII.5/Kankop', 'Jl. Curug Mekar No. 4 K', 'Bogor Barat'),
(68, 'KOPERASI KARYAWAN SIT ALIYA', '518/19/BH/DIPERINDAGKOP', 'JL. GARDU RAYA RT 03 RW 11', 'Bogor Barat'),
(69, 'Koperasi Simpan Pinjam dan Pembiayaan Syariah Baitul Mall wa \nTamwil Wihdatul Ummah', '822/BH/KWK.10/VII.1998', 'Jalan Mayjen Ishak Djuarsa Nomor 226 G', 'Bogor Barat'),
(70, 'KSPPS Kebajikan Ikamatabagsel Sejahtera', '003003/BH/M.KUKM/2/I/2017', 'Jl. Raya Dramaga KM 7, Ziara Valley Cluster Kencana \nBlok i No.1', 'Bogor Barat'),
(71, 'KOPERASI KONSUMEN DANA PINJAMAN MANDIRI SEJAHTERA', '14/BH/XIII.5/DISPERINDAGKOP', 'Jl. Kh. Abdullah Bin Nuh Ruko No. 46C', 'Bogor Barat'),
(72, 'Koperasi Simpan Pinjam dan Pembiayaan Syariah Baytul Ikhtiar', '518/169/BH/KPTS/KKUKM/2008', 'Komp. Pertanian Jalan Siaga Nomer 25 RT 02 RW 10', 'Bogor Barat'),
(73, 'Primer Koperasi Kartika Garuda', '6999/BH/IX-8/12-67', 'JL. Mayjen Ishak Djuarsa', 'Bogor Barat'),
(74, 'Koperasi Jasa Artha Mandiri Abadi Indonesia', '004366/BH/M.KUKM.2/VI/2017', 'Jl. KH Soleh Iskandar Ruko 24 No. 21 RT.004/ RW.008', 'Tanah Sareal'),
(75, 'Koperasi Pegawai Republik Indonesia Badan Pendapatan daerah', '6786/BH/DK-10/3', 'Jalan Pemuda No. 31 Bogor', 'Tanah Sareal'),
(76, 'KOPERASI KONSUMEN PEDAGANG PASAR JAMBU DUA DISINGKAT \nKOPPAS JAMBU DUA', '18/KEP/KDK.1022/IX/1998', 'JALAN AHMAD YANI PASAR JAMBU DUA LOS PINGGIR \nB NOMOR 1 RT.03 RW.04', 'Tanah Sareal'),
(77, 'Koperasi Karyawan GoodYear', '3444/BH/VII', 'Jl. Pemuda No.27', 'Tanah Sareal'),
(78, 'Koperasi Konsumen Karyawan Al Falaah Disingkat Jemaah Al Falaah', '615/BH/KWK10/X-1997', 'JL. Majapahit Raya, Perumahan Cimanggu Permai', 'Tanah Sareal'),
(79, 'KOPERASI KONSUMEN JIWA USAHA KOWASA', '01/BH/KDK.1022/I/2000', 'Curug No. 35', 'Tanah Sareal'),
(80, 'Koperasi Karyawan Harapan Bersama', '68/BH/KDK.1022/XII/2000', 'Jl. Raya Baru Ci manggu', 'Tanah Sareal'),
(81, 'Koperasi Serba Usaha Karya Mandiri', '518/15/BH/DIPERINDAGKOP', 'Jl. Cibuluh No.24 Rt.002/008', 'Tanah Sareal'),
(82, 'Koperasi Produsen Tempe Tahu Indonesia Kota Bogor PRIMKOPTI', '6926/BH/DK.10/3', 'Jl. Kedung Badak No.111', 'Tanah Sareal'),
(83, 'Koperasi Serba Usaha KSU Warga Saluyu Jaya Bogor', '30/BH/XIII.5/DIPERINDAGKOP', 'Jl. Cimanggu Pahlawan No.8 Rt.02/02', 'Tanah Sareal'),
(84, 'KOPERASI PEMASARAN BADAN USAHA MILIK RAKYAT PARAMASERA', 'AHU-0006225.AH.01.26.TAHUN 2020', 'Jl. Tanjung Raya ,Blok O VII No.8, RT.004/RW. 012', 'Tanah Sareal'),
(85, 'KSPPS Berkah Bersama', '65/BH/XIII.5/KANKOP', 'Jl. KH.Sholeh Iskandar KM.08 No10 A-D', 'Tanah Sareal'),
(86, 'Koperasi Wanita Kopwan Yasmina', '518/23/BH/PERINDAGKOP', 'Jl. Johar Raya No. 38 RT.002/004', 'Tanah Sareal'),
(87, 'Koperasi Pegawai Republik Indonesia SMPN 16 Binus', '518/03/BH/PERINDAGKOP', 'JL. Sholeh Iskandar Kampung Sumurwangi RT.001 RW.008', 'Tanah Sareal'),
(88, 'KOPERASI JASA KARYAWAN TELKOM SATELIT', 'AHU-0005224.AH.01.26.TAHUN 2020', 'Jl. KH. Soleh Iskandar KM 6', 'Tanah Sareal'),
(89, 'KOPERASI PRODUSEN WIRA SAKTI UTAMA', 'AHU-0005575.AH.01.26.TAHUN 2020', 'Kampung Sumur Wangi Lamping', 'Tanah Sareal'),
(90, 'Koperasi Ikasati Maju Bersama (Kimb)', '009229/BH/M.KUKM.2/VIII/2018', 'Jalan Taman Cimanggu Utara Blok X 6 Nomor 3, Rt 002, Rw 008', 'Tanah Sareal'),
(91, 'KOPERASI PEMASARAN IKM KUJANG BAROKAH BERSAMA', '001381/BH/M.KUKM.2/V/2016', 'RUKO BUKIT CIMANGGU CITY BLOK C-1 NOMOR.06, \nRT.007/RW.011', 'Tanah Sareal'),
(92, 'Koperasi Konsumen Proshar', '52/BH/XIII.5/KANKOP', 'Bukit Cimanggu City Blok 1 No. 21', 'Tanah Sareal'),
(93, 'Koperasi Ellips Guna Amanah', '010022/BH/M.KUKM.2/X/2018', 'Bukit Cimanggu City Blok S.3 Nomor.17 RT 002/014', 'Tanah Sareal'),
(94, 'Koperasi Mina Maju Bersama', '005530/BH/M.KUKM.2/X/2017', 'Kampung Perapatan, Rukun Tetangga 002, Rukun Warga 002', 'Tanah Sareal'),
(95, 'KOPERASI KONSUMEN INSAN MULIA MANDIRI', 'AHU-0014439.AH.01.26.TAHUN 2021', 'Jl. KH. Sholeh Iskandar, Perumahan Tamansari Persada\nBlok F8 No. 6', 'Tanah Sareal'),
(96, 'KOPERASI JASA MOBIL ONLINE BOGOR', 'AHU-0016191.AH.01.26.TAHUN 2022', 'PERUMAHAN BUKIT CIMANGGU CITY BLOK X4 NO.19', 'Tanah Sareal'),
(97, 'Koperasi Mandiri Bunda Sejahtera', '004608/BH/M.KUKM.2/VII/2017', 'Kampung Kencana, Rukun Tetangga.003, Rukun Warga.002', 'Tanah Sareal'),
(98, 'KOPERASI JASA DRIVER ONLINE KOTA BOGOR', 'AHU-0014049.AH.01.26.TAHUN 2021', 'JL. TAMAN GRIYA KENCANA B7 NO. 11', 'Tanah Sareal'),
(99, 'KOPERASI JASA PRIMADONA MAKMUR BERSAMA', 'AHU-0010946.AH.01.26.TAHUN 2021', 'JL. KH SHOLEH ISKANDAR NO. 1', 'Tanah Sareal'),
(100, 'Koperasi Mitra Usaha Jaya Bogor', '012414/BH/M.KUKM.2/II/2019', 'KP. SEREMPED, RT 003, RW 007', 'Tanah Sareal'),
(101, 'Koperasi Produksi Budidaya Perikanan', '014575/BH/M.KUKM.2/VIII/2019', 'Kedung Halang Poncol RT 006/006', 'Tanah Sareal'),
(102, 'Koperasi Umat Sejahtera Mandiri', '009509/BH/M.KUKM.2/VIII/2018', 'Komplek Cimanggu Permai, Jalan Mataram A III nomor 03, RT 006, RW 006,', 'Tanah Sareal'),
(103, 'Koperasi Mitra Inovasi Sejahtera', '005531/BH/M.KUKM.2/X/2017', 'JL. KH. SHOLEH ISKANDAR (RUKO PIB BLOK B NO.2), RT 007, RW 007', 'Tanah Sareal'),
(104, 'KOPERASI SIMPAN PINJAM MAJU RAKYAT SENTOSA', 'AHU-0003854.AH.01.26.TAHUN 2020', 'KP. CIBULUH NO. 5 008/007', 'Tanah Sareal'),
(105, 'KOPERASI PRODUSEN SATU DELAPAN EMPAT', 'AHU-0008276.AH.01.26.TAHUN 2021', 'JL. TUMAPEL BLOK 04 NO. 15 CIMANGGU PERMAI', 'Tanah Sareal'),
(106, 'Koperasi Simpan Pinjam Sumber Rejeki', '7000/BH/PAD/KWK.10/III/1997', 'Jl. Layung Sari', 'Tanah Sareal'),
(107, 'Koperasi Usaha Persaudaraan Muslimah Bogor', '011326/BH/M.KUKM.2/XII/2018', 'Jalan Pancawarna No.02/A RT 02/07', 'Tanah Sareal'),
(108, 'KOPERASI JASA WARTAWAN MANDIRI SEJAHTERA', 'AHU-0000364.AH.01.26.TAHUN 2019', 'JL. KESEHATAN NO. 4 000/000', 'Tanah Sareal'),
(109, 'KOPERASI PEMASARAN BERTUAH MAJU BERSAMA', 'AHU-0000858.AH.01.26.TAHUN 2019', 'JALAN ACHMAD YANI NOMOR 40A 01/01', 'Tanah Sareal'),
(110, 'KOPERASI KONSUMEN MEGA BOGOR SEJAHTERA', 'AHU-0001576.AH.01.26.TAHUN 2020', 'Jl. A. Yani II No. 4 006/004', 'Tanah Sareal'),
(111, 'KOPERASI KONSUMEN SPENSA DELAPAN TUJUH', 'AHU-0004598.AH.01.26.TAHUN 2020', 'JALAN A. YANI GG. BINA SATWA 006/004', 'Tanah Sareal'),
(112, 'Koperasi Pegawai Gelanggang Remaja dan Olahraga Kotamadya \nBogor KPN adiluhung', '9347/BH/KWK.10/22', 'Jl. Pemuda', 'Tanah Sareal'),
(114, 'Koperasi Usaha Sukses Bersama (Kk Usb)', '008310/BH/M.KUKM.2/V/2018', 'Jalan Mayjend Ishak Djuarsa Nomor 223, Rt 005, Rw 004', 'Bogor Barat'),
(115, 'Koperasi Argadika Rimba Lestari (Kogardika)', '009750/BH/M.KUKM.2/IX/2018', 'JALAN SERUNI NOMOR 9, RT 002, RW 012', 'Bogor Barat'),
(116, 'KOPERASI PRODUSEN SAWIT HENDA SEJAHTERA', '003357/BH/M.KUKM.2/II/2017', 'Komplek Ruko Botanica Blok R.19 Jalan Letjend Ibrahim Aji', 'Bogor Barat'),
(117, 'Koperasi Kopi Bogor Lestari', '008935/BH/M.KUKM.2/VII/2018', 'Jl. Letjen Ibrahim Adjie', 'Bogor Barat'),
(118, 'KOPERASI KONSUMEN CAHAYA GEMILANG NUSANTARA', 'AHU-0007984.AH.01.26.TAHUN 2021', 'Jl. HM. Syarifudin Sirna Sari', 'Bogor Barat'),
(119, 'KOPERASI JASA MAKMUR INTI BERKA', 'AHU-0013555.AH.01.26.TAHUN 2021', 'Ruko Grande Jalan Letjen Ibrahim Adjie Nomor 15', 'Bogor Barat'),
(120, 'KPEK Maju Terus', '518/49/BH/KANKOP', 'Jl. Pemuda No.25 Rt 3/05', 'Bogor Barat'),
(121, 'Koperasi Sivitas Akademika STEI-Taskia', '03/BH/XIII.5/PERINDAGKOP', 'Jl.Raya Dermaga Km.7', 'Bogor Barat'),
(122, 'KOPERASI KONSUMEN AL HIKMAH BINA BANGSA SEJAHTERA', 'AHU-0000203.AH.01.26.TAHUN 2019', 'Asrama Komplek SMA BBS Jalan Raya Dramaga Km 7 002/006', 'Bogor Barat'),
(123, 'Koperasi Pondok Pesantren Al-Falak', '61/BH/KDK.1022/XII/1998', 'Jl.Pagentongan No. 2 Rt.01/IV Bogor', 'Bogor Barat'),
(124, 'Koperasi Pondok Pesantren Al-um', '57/BH/KDK.1022/IV/1999', 'Jl.Pagentongan Rt.01/06', 'Bogor Barat'),
(125, 'KPEK Mitra Sejahtera Loji \"Komitraji\"', '518/02/PAD/KANKOP', 'Jl. Siaga No.49 Komplek Pertanian', 'Bogor Barat'),
(126, 'Koperasi Serba Usaha Karya Indo', '518/08/BH/PERINDAGKOP', 'Jl.Raya Sindang Barang No.302', 'Bogor Barat'),
(127, 'Koperasi Serba Usaha Doa Bangsa', '41/BH/XII.5/KANKOP', 'Jl. Pancagalih Rt.001/003', 'Bogor Barat'),
(128, 'Koperasi Konsumen Pasir Mulia Sejahtera', '003211/BH/M.KUKM.2/I/2007', '', 'Bogor Barat'),
(129, 'KOPERASI JASA FAKULTAS KEHUTANAN UGM ANGKATAN \nTAHUN TUJUH DELAPAN', 'AHU-0001008.AH.01.26.TAHUN 2019', 'Jl. Warga Mulya No. 16 002/006', 'Bogor Barat'),
(130, 'KOPERASI KONSUMEN PELITA SEJAHTERA BERSAMA', 'AHU-0010847.AH.01.26.TAHUN 2021', 'KOMPLEK BPPB BLOK O NO. 15-16', 'Bogor Barat'),
(131, 'KOPERASI KONSUMEN MASYARAKAT EKONOMI SEJAHTERA', 'AHU-0014042.AH.01.26.TAHUN 2021', 'JL. ARIA SURIALAGA BATUTAPAK', 'Bogor Barat'),
(132, 'KOPERASI KONSUMEN BIBILINTIK BERKAH MAKMUR', 'AHU-0003307.AH.01.26.TAHUN 2020', 'Cibalagung No. 2 006/003', 'Bogor Barat'),
(133, 'KOPERASI KONSUMEN KAUM AMANAH SEJAHTERA', 'AHU-0006886.AH.01.26.TAHUN 2020', 'Jl. Babakan Sukamantri Perumahan Babakan Asri Blok A No.1', 'Bogor Barat'),
(134, 'Koperasi Pegawai Negeri Hikmah SMAN 2 Bogor', '7845/BH/PAD/KWK10/V/1988', 'Jl Kranji Ujung No 1 Budi Agung', 'Tanah Sareal'),
(135, 'Koperasi Serba Usaha Pembangunan Lingkungan dan Ekonomi \nMasyarakat', '518/13/BH/PERINDAGKOP', 'Jl. Palem Putri II No.21 Taman Yasmin V', 'Tanah Sareal'),
(136, 'KOPASGO', '8621/BH/PAD/KWK.10/II/98', 'JL.PEMDA NO.28', 'Tanah Sareal'),
(137, 'Koperasi Pegawai Negeri Swakerta Raharja', '518/05/BH/PAD/PERINDAGKOP', 'JL. Dadali No.4', 'Tanah Sareal'),
(138, 'Koperasi Pegawai Republik Indonesia Imigrasi Bogor', '8331/BH/PAD/KWK.10/II/97', 'JL. A. Yani', 'Tanah Sareal'),
(139, 'Koperasi Pegawai Negeri Wiyata Sejahatera', '8038/BH/PAD/KWK.10/VI/1996', 'Jl. A Yani', 'Tanah Sareal'),
(140, 'Koperasi Pegawai Negeri Gotong Royong Kota Bogor', '10858/BH/KWK.10/22', 'JL.HEULANG NO.6', 'Tanah Sareal'),
(141, 'Koperasi Pegawai Republik Indonesia Karya Husada', '7953/BH/PAD/KWK.10/IV/96', 'Jl. Kesehatan No. 3 Bogor', 'Tanah Sareal'),
(142, 'KOPERASI Kopsiga', '5910/BH/PAG.KWK.10/II-1998', 'JL. DADALO NO 10A', 'Tanah Sareal'),
(143, 'Koperasi Karyawan Rumah Sakit Islam RSIB)', '71/BH/KDK.1022/V/1999', 'Jl.Perdana Raya No.22', 'Tanah Sareal'),
(144, 'Koperasi Serba Usaha Bhakti Mulya', '755/BH/KWK10/VII/97', 'Jl. Jl. Kebon Pedes Gg.Pacilong', 'Tanah Sareal'),
(145, 'KBMT TABUNG UMAT', '519/19/BH/PERINDAGKOP/2003', 'JL.CEMPAKA BAWAH-07', 'Tanah Sareal'),
(146, 'Koperasi Pegawai Negeri Agro Kencana', '518/02/BH/DIPERINDAGKOP', 'Jl. Tentara Pelajar No. 10', 'Tanah Sareal'),
(147, 'Koperasi Karyawan PT Sahabat Unggul Internasional', '518/07/BH/PAD/PERINDAGKOP', 'Jl. Jend. A Yani No 28', 'Tanah Sareal'),
(148, 'KPEK Bondes', '49/BH/KDK.1022/X/2000', 'JL.Pondok Rumput I No. 40', 'Tanah Sareal'),
(149, 'Koperasi Jamaah Masjid AL-Muqorrobin', '518/06/BH.DIPERINDGKOP', 'Jl. Kayu Manis', 'Tanah Sareal'),
(150, 'KBMT Ukhuwah Ummah', '15/BH/XIII.5/DISPERINDAGKOP', 'Jl. Komplek Masjid Al-Hidayah BCV Blok Q 1', 'Tanah Sareal'),
(151, 'KPEK Kedung Jaya', '518/42/BH/KANKOP', 'Jl. Mataram No.1', 'Tanah Sareal'),
(152, 'Koperasi Pegawai Negeri Kec. Tanah sereal', '131/BH/KWK.10/IX/96', 'Jl. Kebon Pedes', 'Tanah Sareal'),
(153, 'Koperasi Simpan Pinjam Karya Mandiri', '23/BH/KDK.1022/IX/1998', 'Jl. Kebon Pedes I No. 21', 'Tanah Sareal'),
(154, 'Koperasi Simpan Pinjam Satria Kencana', '8166/BH/PAD/KWK.10/IV/97', 'Jl. Badak Baru', 'Tanah Sareal'),
(155, 'Koperasi Simpan Pinjam Wira Karya', '6712/BH/PAD/KWK.10/IV/97', 'Jl. Warung Jambu', 'Tanah Sareal'),
(156, 'Koperasi Kelompok PKK Bhakti Pertiwi', '50/BH/KDK.1022/XI/1998', 'Jl. Kolonel Enjo Rt.01/05 No.12', 'Tanah Sareal'),
(157, 'Koperasi Serba Usaha Mandiri Bersama (SUMBER)', '62/BH/KDK.1022/XII/1998', 'Jl. Perdana Mesjid No.13 Bogor', 'Tanah Sareal'),
(158, 'KPEK Redjeki Mandiri', '518/29/BH/KANKOP', 'JL. Cimanggu no 4', 'Tanah Sareal'),
(159, 'Koperasi Karyawan Jasa Mandiri (Pondok Nirmala)', '27/BH/XIII.5/PERINDANGKOP', 'Jl. KH. sholeh iskandar No.91 Rt.01/010', 'Tanah Sareal'),
(160, 'Koperasi Pegawai Negeri SMAN 2', '7845/BH/DK.10/3', 'Jl. Budi Agung', 'Tanah Sareal'),
(161, 'KPEK Damai', '518/30/BH/KANKOP', 'Jl. Ramin No.11 BTN Budi Agung', 'Tanah Sareal'),
(162, 'KPEK Sejahtera', '518/62/BH/KANKOP', 'Jl. H.Achmad Yunus Rt.01/04', 'Tanah Sareal'),
(163, 'Koperasi Serba Usaha Indonesia Bersatu', '518/07/BH/PERINDAGKOP', 'Jl. Raya Cilebut No.9', 'Tanah Sareal'),
(164, 'KBMT Tabung Umat', '518/19/PERINDAGKOP', 'Perumahan Bukit Mekar Wangi Blok C17 No.36', 'Tanah Sareal'),
(165, 'Koperasi Serba Usaha Setia Karya', '38/BH/XIII.5/KANKOP', 'Jl.Salabenda Rt.006/004', 'Tanah Sareal'),
(166, 'Koperasi Pegawai Negeri SMKN 1', '10858/BH/KWK.10/22', 'Jl. Heulang', 'Tanah Sareal'),
(167, 'Koperasi Pegawai Negeri SMPN 8', '8038/BH/PAD/KWK.10/VI/96', 'Jl. A. Yani', 'Tanah Sareal'),
(168, 'Koperasi Pegawai Negeri SMPN 5', '5910/BH/PAD/KWK.10/II/98', 'Jl. Bincarung', 'Tanah Sareal'),
(169, 'Koperasi Karyawan PT.Jamsostek', '8621/BH/PAD/KWK.10/II/98', 'Jl.Pemuda', 'Tanah Sareal'),
(170, 'Koperasi Pengusaha Peternakan Bogor (SEPAKAT)', '05/KEP/PAD/KWK.1022/X/1998', 'JL. Permuda No.29 Bogor', 'Tanah Sareal'),
(171, 'Koperasi Serba Usaha Kujang', '91/BH/KDK.1022/IV', 'Jl. Jalak no.1', 'Tanah Sareal'),
(172, 'Koperasi Karyawan PT. Askes (Sehati)', '33/BH/KDK.1022/III/2000', 'JL. A Yani No. 62E', 'Tanah Sareal'),
(173, 'KPEK Tansa', '518/28/BH/KANKOP', 'Jl. Kesehatan No.6', 'Tanah Sareal'),
(174, 'Koperasi Pegawai Negeri Mutu Sejahtera', '12/BH/XIII.5/DIPERINDAGKOP', 'Jl. Pemuda No. 29 A', 'Tanah Sareal'),
(175, 'Koperasi Bumi Bhakti Adiguna', '15/KEP/PAD/181.4/929 DIPERINDAGKOP', 'Jl. Jend. A Yani No 41', 'Tanah Sareal'),
(176, 'KJKS As Salam', '42/BH/XIII.5/KANKOP', 'Jl. Bango No.25 Rt.002 Rw.005', 'Tanah Sareal'),
(177, 'Koperasi Serba Usaha Catur Karsa', '27/KEP/PAD/181.4/929-KANKOP', 'Jl. Dadali II No. 19 Bogor', 'Tanah Sareal'),
(178, 'KPEK Mekar Wangi', '518/36/BH/KANKOP', 'Jl. A Yani No.18', 'Tanah Sareal'),
(179, 'Koperasi Pedagang Pasar Kemang', '05/PAD/KDK.1022/XI/2000', 'Jl. Baru Kemang', 'Tanah Sareal'),
(180, 'KPEK Karya Usaha', '518/31/BH/KANKOP', 'Jl. Kukupu', 'Tanah Sareal'),
(181, 'Koperasi Sivitas Akademika \"KOSIVA\" Universitas Nusa bangsa', '06/KEP/PAD/181.4/929 DIPERINDAGKOP', 'Jl. KH. Soleh Iskandar KM.4', 'Tanah Sareal'),
(182, 'Koperasi Citra Sari Makmur', '29/BH/XIII.5/DIPERINDAGKOP', 'Bukit Cimanggu City Blok a.1/46', 'Tanah Sareal'),
(183, 'KPEK Kencana Mandiri', '518/69/BH/KANKOP', 'Jl. Sentarapos Kantor', 'Tanah Sareal'),
(184, 'Koperasi Pondok Pesantren Al Falah', '7/BH/KDK.10/00', 'Pegagan Kidul', 'Tanah Sareal'),
(185, 'Koperasi Pegawai At-Taufiq', '22/BH/XIII.5/02/PERINDAGKOP', 'Jl.Cimanggu Permai I', 'Tanah Sareal'),
(186, 'Koperasi Cibadak Mandiri Sejahtera', '003187/BH/M.KUKM.2/I/2017', 'Jalan Taman Sari Nomor.01, Rt. 003, Rw. 015, Kelurahan. \nCibadak,', 'Tanah Sareal'),
(187, 'Koperasi Mekarwangi Mandiri Sejahtera', '003185/BH/M.KUKM.2/I/2017', 'Jalan K.H Ahmad Sya Yani, Rt. 003, Rw. 014, Kelurahan. \nMekarwangi', 'Tanah Sareal'),
(188, 'Koperasi Mustika Artha Kayumanis', '003184/BH/M.KUKM.2/I/2017', 'Jalan Pool Bina Marga No. 03, Rt. 001, Rw. 005, Kelurahan \nKayumanis', 'Tanah Sareal'),
(189, 'Koperasi As3r Aido Artha', '003940/BH/M.KUKM.2/IV/2017', 'Jalan Haur Jaya II Nomor. D2, Kelurahan. Kebon Pedes', 'Tanah Sareal'),
(190, 'Koperasi Sukaresmi Mandiri Sejahtera', '003202/BH/M.KUKM.2/I/2017', 'Jalan A Yunus Kedung Halang Sentral Nomor.04, Kelurahan.\nSukaresmi', 'Tanah Sareal'),
(191, 'Koperasi Taruna Karya Mandiri', '003186/BH/M.KUKM.2/I/2017', 'Jalan Ramin No.11, rt. 003, Rw. 005, Kelurahan. Sukadamai', 'Tanah Sareal'),
(192, 'Koperasi Kaur Jaya Mandiri', '002631/BH/M.KUKM.2/XI/2016', 'Perumahan Taman Griya Kencana Blok E2/19, Rt.003/Rw.012, \nKelurahan. Kencana', 'Tanah Sareal'),
(193, 'Koperasi Wahana Mitrausaha Tansa', '003188/BH/M.KUKM.2/I/2017', 'Jalan Kesehatan No. 16, Rt.001, Rw. 003, Kelurahan. \nTanah Sareal', 'Tanah Sareal'),
(194, 'Koperasi Kedungjaya Makmur Sejahtera', '003179/BH/M.KUKM.2/I/2017', 'Jalan Singasari Cimanggu Permai, Rt.006, Rw.006, Kelurahan. \nKedungjaya', 'Tanah Sareal'),
(195, 'Koperasi Bondes Sejahtera Mandiri', '003218/BH/M.KUKM.2/I/2017', 'JL. PONDOK RUMPUT NO.40, RT 005, RW 011, KELURAHAN \nKEBON PEDES', 'Tanah Sareal'),
(196, 'KPEK Pelita Sejahtera', '30/BH/KDK.1022/VIII/2000', 'Jl.Raya Cipor Rt 01/02', 'Bogor Barat'),
(197, 'Koperasi Wisata Muslim Indonesia (Kwmi)', '013381/BH/M.KUKM.2/V/2019', 'JL. AIPTU Mimit, GWKP B1/6, RT 003, RW 012', 'Bogor Barat'),
(198, 'KOPERASI JASA USAHA SARANA ANGKUTAN NIAGA', 'AHU-0005808.AH.01.26.TAHUN 2020', 'Jl. KH. RE. Abdullah Bin Nuh', 'Bogor Barat'),
(199, 'KOPERASI PEMASARAN MITRA BUBULAK TEPI SAWAH', 'AHU-0000665.AH.01.29.TAHUN 2022', 'JL. CIFOR M. 450', 'Bogor Barat'),
(200, 'Koperasi Komunitas Muslim Bogor Raya', '005023/BH/M.KUKM.2/VIII/2017', 'Perum Pakuan Regency Cluster Subanglarang C8 / 25, Rukun \nTetangga 005, Rukun Warga 013', 'Bogor Barat'),
(201, 'KPEK Artha Mas', '24/BH/KDK.1022/VI/2000', 'Jl.Raya Curug Mekar No 21', 'Bogor Barat'),
(202, 'KBMT Mitra Muamalah Syariah', '24/BH/XIII.5/DIPERINDAGKOP', 'Jl.KH Abdullah Bin Nuh', 'Bogor Barat'),
(203, 'Koperasi Bisnis Muslim Bogor', '005529/BH/M.KUKM.2/X/2017', 'Jalan Palem Putri II Nomor.29 Taman Yasmin Sektor V, Rukun \nTetangga 001, Rukun Warga 010', 'Bogor Barat'),
(204, 'KOPERASI KONSUMEN AGRO MINA BERDAYA', 'AHU-0014304.AH.01.26.TAHUN 2021', 'JL. KH. R. ABDULLAH BIN NUH NO. 124', 'Bogor Barat'),
(205, 'Koperasi Pegawai NegeriI Kecamatan Bogor Barat', '132/BH/PAD/KWK.10/XI/96', 'Jl. Raya Semplak', 'Bogor Barat'),
(206, 'Primkopabri Wira Dharma', '8221/BH/PAD/KWK.10/II/98', 'Jl. Raya Semplak', 'Bogor Barat'),
(207, 'KPEK Kerta Jaya', '518/08/BH/DIPERINDAGKOP', 'Jl.Raya Semplak No. 357', 'Bogor Barat'),
(208, 'Koperasi Komunitas Sejahtera Berjamaah 999', '005861/BH/M.KUKM.2/X/2017', 'Jalan Raya Semplak Nomor 1001, Rukun Tetangga 002, \nRukun Warga 010', 'Bogor Barat'),
(209, 'Koperasi Putra Perdamaean Pratama', '008126/BH/M.KUKM.2/IV/2018', 'Jalan Raya Semplak, Rt.004/Rw.001 Nomor 1', 'Bogor Barat'),
(210, 'Koperasi Kagama Bogor Raya', '009153/BH/M.KUKM.2/VII/2018', 'Jalan Raya Semplak Nomor 19 RT 002 RW 001', 'Bogor Barat'),
(211, 'KOPERASI SIMPAN PINJAM SINAR KANDAGA BOGOR', 'AHU-0003726.AH.01.26.TAHUN 2020', 'Jl. Raya Semplak No. 68 004/001', 'Bogor Barat'),
(212, 'KOPERASI PRODUSEN KOMUNITAS HIDROPONIK BOGOR RAYA', 'AHU-0005598.AH.01.26.TAHUN 2020', 'Jl. Fajar Indah No. 4', 'Bogor Barat'),
(213, 'Koperasi Mitra Insan Terpadu KOMITE', '011473/BH/M.KUKM.2/XII/2018', 'Perumahan Aglaonema Cyber Residence Blok B 2 No 2 \nRT 006 RW 013', 'Bogor Barat'),
(214, 'Koperasi Pegawai Negeri Wana Usaha', '8989/BH/PAD/KWK.10/VII/96', 'JL. Rasamala Tm. Yasmin', 'Bogor Barat'),
(215, 'KPEK Serumpun', '518/38/BH/KANKOP', 'Jl.Raya Semplak No.24 Rt.01/09', 'Bogor Barat'),
(216, 'KOPERASI PRODUSEN BOGOR DISKUS BERJAYA', 'AHU-0001533.AH.01.26.TAHUN 2020', 'Kp. Pahlawan No. 121 002/017', 'Bogor Barat'),
(217, 'KBMT Darusalam Yasmin', '16/BH/XIII.5/DIPERINDAGKOP', 'Jl.Raflesia Raya Taman Yasmin Sektor 2', 'Bogor Barat'),
(218, 'Koperasi Mitra Danau Toba', '004973/BH/M.KUKM.2/VIII/2017', 'JALAN PAKIS GUNUNG I NOMOR 50, RT 005, RW 009', 'Bogor Barat'),
(219, 'Koperasi Konsumen Solusi Makmur Sejahtera 516', '002549/BH/M.KUKM.2/XI/2016', 'Jalan Rasamala No. 46 RT. 002 RW. 003 Kelurahan \nCurug Mekar', 'Bogor Barat'),
(220, 'Koperasi Karyawan RSU Karya Bhakti', '11511/BH/PAD/KWK.10/III/98', 'Jl.DR.Semeru', 'Bogor Barat'),
(221, 'KOPERASI KONSUMEN KPEK MENTENG', '518/46/BH/KANKOP', 'Bumi Menteng Asri Jl.Medika No 1', 'Bogor Barat'),
(222, 'KJKS Fastabiqul Khoirot', '23/BH/XIII.5/DISPERINDAGKOP', 'Jl. Tentara Pelajar No. 3A', 'Bogor Barat'),
(223, 'KOPERASI JASA BAROCCA TRANS INDO', 'AHU-0000246.AH.01.26.TAHUN 2019', 'Gang Kelor 002/010', 'Bogor Barat'),
(224, 'KOPERASI KONSUMEN PGRI KOTA BOGOR', 'AHU-0014363.AH.01.26.TAHUN 2021', 'JL. MERDEKA NO. 131', 'Bogor Barat'),
(225, 'Koperasi Pegawai Negeri Mandala (SMAN 5)', '8664/BHP/PAD/KWK.10/IV/1996', 'Manunggal No. 22', 'Bogor Barat'),
(226, 'Koperasi Cu Komunitas Tumbuh Bersama', '011838/BH/M.KUKM.2/I/2019', 'JALAN PADASUKA NOMOR 85, RT 001, RW 003', 'Bogor Tengah'),
(227, 'Koperasi Pemasaran Primer Nasional Alumni Perikanan Dan Ilmu Kelautan Institut Pertanian Bogor', 'AHU-0010785.AH.01.26.TAHUN 2021', 'JL. RAYA PAJAJARAN NO. 54', 'Bogor Tengah'),
(228, 'KOPERASI JASA AGRI SOCIO TECHNOPRENEUR', 'AHU-0014362.AH.01.26.TAHUN 2021', 'Gedung Pusat Studi Bisnis Dan Ekonomi Syariah (Ci-Best) Lppm Ipb Kampus Ipb Baranangsiang Jl. Pajajaran Raya No. 1', 'Bogor Tengah'),
(229, 'Koperasi Pegawai Negeri Dewi Sri', '7894/BH/PAD/KWK.10/VII/1996', 'Jl. Cibalagung No 1', 'Bogor Barat'),
(230, 'KBMT Lebah', '518/20/BH/PERINDAGKOP', 'Jl. Keranji Blok V No.20', 'Bogor Barat'),
(231, 'Koperasi Kerta Jaya', '518/08/PAD/PERINDAGKOP', 'Jl. Haji Ali No.15', 'Bogor Barat'),
(232, 'KBMT Wasilah', '75/BH/KDK.1022/V/1999', 'Jl. Paledang No.I Rt 02/01', 'Bogor Barat'),
(233, 'Koperasi Pegawai Negeri Rahardja', 'III/BH/KWK.10/VIII/1996', 'DR. SEMERU', 'Bogor Barat'),
(234, 'Koperasi Pegawai Negeri Mitra Karsa', '7123/BH/PAD/KWK.10/III/1998', 'Jl. Gunung Batu NO.5', 'Bogor Barat'),
(235, 'Koperasi Pegawai Negeri Pusat Pendidikan dan Latihan Kehutanan \ndan Perkebunan Bina Wana', '107/BH/KDK.1022/VIII/1999', 'Jl. Gunung Batu Kotak Pos 141', 'Bogor Barat'),
(236, 'KPEK Gunung Batu (Gunbat Purbasari)', '518/33/BH/KANKOP', 'Jl. Raya Gunung Batu', 'Bogor Barat'),
(237, 'KPEK Sauyanan', '41/BH/KDK.1022/X/2000', 'Jl.Cibalagung No.29', 'Bogor Barat'),
(238, 'Koperasi Pesantren Miftahul Ulum', '69/BH/KDK.1022/XII/2000', 'Jl. Rimba Baru Bojong Menteng Rt 6/4', 'Bogor Barat'),
(239, 'KUB 2010', '14/KEP/PAD/181.4/929.PERINDAGKOP', 'Jl. Babakan Sukamantri No.22 RT.02/07', 'Bogor Barat'),
(240, 'KPEK Pilar Sejahtera Bogor \"KPS\"', '64/BH/KDK.1022XII/2000', 'Jl.Cipor SBJ No.1', 'Bogor Barat'),
(241, 'Koperasi Serba Usaha Karya Bersama (Kayama)', '518/06/BH/perindagkop', 'Jl. Sindang Barang Rt1/2 No.39', 'Bogor Barat'),
(242, 'Koperasi Dwi Dasa Sejahtera', '001430/BH/M.KUKM.2/VI/2016', 'Komplek Meranti No.3 RT.02/02', 'Bogor Barat'),
(243, 'Koperasi Margajaya Maju Sejahtera', '003183/BH/M.KUKM.2/I/2017', 'Jalan Raya Dermaga Km 7, Rt.005, Rw. 002, Kelurahan. \nMargajaya', 'Bogor Barat'),
(244, 'Koperasi Kebajikan Ikamatabagsel Sejahtera', '003003/BH/M.KUKM.2/I/2017', 'JALAN RAYA DRAMAGA KM.7 CLUSTER KENCANA BLOK 1/1,', 'Bogor Barat'),
(245, 'Koperasi Sarasa Sajiwa Bubulak', '003189/BH/M.KUKM.2/I/2017', 'Jalan Griya Wana Karya Nomor.01, Rt.003, Rw. 003, Keluruhan. Bubulak', 'Bogor Barat'),
(246, 'Koperasi Sugih Mukti Pasirjaya', '003193/BH/M.KUKM.2/I/2017', 'Jalan Cibalagung Nomor.01, Kelurahan Pasirjaya', 'Bogor Barat'),
(247, 'Koperasi Mekar Mandiri Sentosa', '003195/BH/M.KUKM.2/I/2017', 'Jalan K.H R Abdullah Bin Nuh Nomor.03, Kelurahan.Curug \nMekar', 'Bogor Barat'),
(248, 'Koperasi Bangkit Mandiri Balumbang Jaya', '003245/BH/M.KUKM.2/I/2017', 'Jalan Balumbang Jaya Nomor 01, Kelurahan Balumbang Jaya', 'Bogor Barat'),
(249, 'Koperasi Panca Amanah Bersama', '003175/BH/M.KUKM.2/I/2017', 'Jalan Pancasan Atas, Rt.001, Rw.006, Kelurahan PAsir Jaya', 'Bogor Barat'),
(250, 'Koperasi Bina Wanita Mandiri', '002942/BH/M.KUKM.2/XII/2016', 'Jalan Curug Mekar Rukun Tetangga 002, Rukun Warga 004, Kelurahan Curug Mekar', 'Bogor Barat'),
(251, 'Koperasi Keswadayaan Masyarakat Kelurahan Semplak', '003182/BH/M.KUKM.2/I/2017', 'Jalan Raya Semplak No. 90, Rt.001, Rw. 004, Kelurahan Semplak', 'Bogor Barat'),
(252, 'Koperasi Gunung Batu Makmur Bersama', '003231/BH/M.KUKM.2/I/2017', 'Jalan Mayjen Ishak Djuarsa, Rt. 005, Rw. 003, Kelurahan. \nGunung Batu', 'Bogor Barat'),
(253, 'Koperasi Ciptagama Usaha Bersama', '003217/BH/M.KUKM.2/I/2017', 'Jalan Siaga No.49 Komp. Pertanian, Rt 005, Rw 003, Kelurahan \nLoji', 'Bogor Barat'),
(254, 'Koperasi Badan Keswadayaan Masyarakat Tidar Sakti', '003192/BH/M.KUKM.2/I/2017', 'Jalan Siaga no.49 Komplek Pertanian, Kelurahan Loji', 'Bogor Barat'),
(255, 'Koperasi Berkah Olah Sampah', '003220/BH/M.KUKM.2/I/2017', 'Jalan Komplek Gizi Nomor.06, Rukun Tetangga.005, Rukun Warga.019, Kelurahan.Menteng', 'Bogor Barat'),
(256, 'Koperasi Pesona Teratai Indah', '002848/BH/M.KUKM.2/XII/2016', 'Jalan Tambakan Nomor.01, Rukun Tetangga.001, Rukun Warga.005, Kelurahan.Situ Gede', 'Bogor Barat'),
(257, 'Koperasi Loji Jaya Mandiri', '003244/BH/M.KUKM.2/I/2017', 'Gang Bambu Kuning, Rt.001, Rw. 002, Kelurahan.Loji', 'Bogor Barat'),
(258, 'Koperasi Asosiasi Bank Benih Dan Teknologi Tani Indonesia', '002676/BH/M.KUKM.2/XI/2016', 'Cilubang Nagrak Rt.001, Rw.004, Kelurahan Situ Gede', 'Bogor Barat'),
(259, 'Koperasi Swadaya Masyarakat Pasir Kuda', '003201/BH/M.KUKM.2/I/2017', 'Jalan Aria Surialaga Nomor. 29, Rukun Tetangga 005, Rukun Warga 003,Kelurahan Pasirkuda', 'Bogor Barat'),
(260, 'Koperasi Melati Cilendek Barat', '003191/BH/M.KUKM.2/I/2017', 'Jalan Brigjen H.Saptadji HAdiprawira No.70, Rt. 001, Rw. 007, Kelurahan. Cilendek Barat', 'Bogor Barat'),
(261, 'Koperasi Pasir Mulia Sejahtera', '003211/BH/M.KUKM.2/I/2017', 'Re. Abdullah No.16, Rt 002, Rw 007, Kelurahan Pasir \nMulya', 'Bogor Barat'),
(262, 'KOPERASI KONSUMEN SAUDAGAR RITEL INDONESIA', 'AHU-0001063.AH.01.26.TAHUN 2019', 'Jl. Anggrek Utama Blok E No. 7, Komp. Sindang Barang Indah', 'Bogor Barat'),
(263, 'Koperasi Pegawai Negeri Warga Husada', '9549/BH/PAD/KWK.10/VII/96', 'Jl. Dr. Semeru', 'Bogor Barat'),
(264, 'KOPERASI KONSUMEN KEBON TALAS KASOHOR', 'AHU-0000429.AH.01.26.TAHUN 2019', 'Jl. Sempur 001/001', 'Bogor Tengah'),
(265, 'KOPERASI JASA AMANAH LPPOM MUI', 'AHU-0011314.AH.01.26.TAHUN 2021', 'GLOBAL HALAL CENTER JL. PEMUDA NO. 5', 'Bogor Tengah'),
(266, 'Koperasi Warga Sukses Ceria', '010219/BH/M.KUKM.2/X/2018', 'JALAN MALABAR NOMOR 10, RT 001, RW 005', 'Bogor Tengah'),
(267, 'KOPERASI PEMASARAN FAHUTAN DUA DELAPAN', 'AHU-0003375.AH.01.26.TAHUN 2020', 'Kampung Pos 006/002', 'Bogor Tengah'),
(268, 'Koperasi Wanita Usaha Mandiri', '48/BH/XII.5?Kankop', 'Jl. Cimanggu Kecil No.15 RT/01/07', 'Bogor Tengah'),
(269, 'Koperasi Pekka Bogor Sejahtera', '011168/BH/M.KUKM.2/XII/2018', 'JALAN CIWARINGIN NOMOR 99, RT 001, RW 009', 'Bogor Tengah'),
(270, 'KOPERASI KONSUMEN MENTARI MASLAHAT BERKEMAJUAN', 'AHU-0008061.AH.01.26.TAHUN 2021', 'JL. MERDEKA NO. 118', 'Bogor Tengah'),
(271, 'KOPERASI KONSUMEN MIRAH JAYA BERKARYA', 'AHU-0010196.AH.01.26.TAHUN 2021', 'Jl Merdeka Nomor 170', 'Bogor Tengah'),
(272, 'Koperasi Konsumen Pemberdayaan dan Kesejahteraan Keluarga', '91/BH/XIII.5/kop', 'Jl. Perintis Kemerdekaan No. 85 RT 001 RW 004', 'Bogor Tengah'),
(273, 'KOPERASI KONSUMEN MAWAR JAYA BOGOR', 'AHU-0006237.AH.01.26.TAHUN 2020', 'Jl. Dr. Semeru No. 14', 'Bogor Tengah'),
(274, 'KOPERASI KONSUMEN BOGOR HEBAT SEJAHTERA', 'AHU-0008046.AH.01.26.TAHUN 2021', 'JL. PANARAGAN KIDUL NO. 18', 'Bogor Tengah'),
(275, 'Koperasi Wanita Muslimat An-nisa Bogor (KMAB)', '47/BH/KDK.1022/X/2000', 'Jl.Ciwaringin Kaum 27 Rt 4/5', 'Bogor Tengah'),
(276, 'Koperasi Pegawai Negeri Kantor Tenaga Kerja (KONAKER)', '518/03//PAD/KANKOP', 'Jl.Ciwaringin No.99', 'Bogor Tengah'),
(277, 'Koperasi Warga Instalasi Listrik (KILAT)', '518/02/PAD/PERINDAGKOP', 'Jl.Merdeka No.116', 'Bogor Tengah'),
(278, 'Koperasi Pegawai Negeri Argo Kencana', '518/02/BH/PERINDAGKOP', 'Jl.Tentara Pelajar No.10', 'Bogor Tengah'),
(279, 'Koperasi Pegawai Negeri Kekar 16 (SMPN 4)', '518/07/BH/PERINDAGKOP', 'JL.Kartini no.16', 'Bogor Tengah'),
(280, 'KOPERASI SIMPAN PINJAM PUSTAKA JAYA BERSAMA BOGOR', 'AHU-0006453.AH.01.26.TAHUN 2020', 'Jalan Ir H Juanda Nomor 20', 'Bogor Tengah'),
(281, 'Koperasi Pegawai Negeri KGB', '388/BH/PAD/KWK.10/X/97', 'Jl. Dewi Sartika', 'Bogor Tengah'),
(282, 'Koperasi Pegawai Negeri Bhakti Hayati', '7517/BH/KWK.10/VII/96', 'Jl. Ir. H. Juanda (Jl. Raya Cibinong)', 'Bogor Tengah'),
(283, 'Koperasi Pegawai Negeri Bersih Sejahtera (Dinas Kebersihan)', '6989/BH/KWK.10/VIII/96', 'Jl. Paledang', 'Bogor Tengah'),
(284, 'Koperasi Pegawai Negeri Eka Wiyata Sejahtera (SMAN 1)', '6058/BH/PAD/KWK.10/IX/96', 'Jl. Ir. H. Juanda', 'Bogor Tengah'),
(285, 'Koperasi Pegawai Negeri Pustaka Jaya Bersama', '725/BH/PAD/KWK.10/IX/1997', 'JL. Ir. H. Juanda No. 20', 'Bogor Tengah'),
(286, 'Koperasi Pegawai Negeri Inspeksi Pajak', '3144/BH/XI-9/12-67', 'Jl.Ir.H. Juanda No.23', 'Bogor Tengah'),
(287, 'Koperasi Karyawan BNI 46', '9783/BH/KWK.10/22', 'Jl. Ir. H. Juanda', 'Bogor Tengah'),
(288, 'Koperasi Karyawan Pos dan Giro', '39/BH/PAD/KWK.10/VII/96', 'Jl.Ir.H.Juanda', 'Bogor Tengah'),
(289, 'Koperasi Pegawai Negeri Biotek LIPI', '8678/BH/PAD/KWK.10/III/96', 'Jl. Ir. H. juanda (Jl. Raya Cibinong)', 'Bogor Tengah'),
(290, 'Koperasi Teratai \" Hotel Salak \"', '518/13/BH/PERINDAGKOP', 'Jl. Ir. H. Juanda No.8', 'Bogor Tengah'),
(291, 'Koperasi Karyawan Citra Pijar PLN Sektor', '518/01/BH/PAD/PERINDAGKOP', 'Jl.Jend.Sudirman No.5 Kel.Pabaton Kec.Bogor Tengah', 'Bogor Tengah'),
(292, 'Koperasi Pegawai Negeri SMPN 2 Bogor KPRI Sawargi', '518/11/BH/PERINDAGKOP', 'Jl.Gedong Sawah IV No.9', 'Bogor Tengah'),
(293, 'Koperasi Pegawai Negeri Sartika \"Bank BRI\"', '518/01/BH/PAD/Perindagkop', 'Jl. Dewi sartika No.6', 'Bogor Tengah'),
(294, 'KPEK Mitra Usaha', '518/04/BH/PERINDAGKOP', 'Jl.Telepon No 02', 'Bogor Tengah'),
(295, 'Koperasi Wanita Kancana', '8540/BH/PAD/KWK.10/VII/96', 'Jl.Ir.H. Juanda', 'Bogor Tengah'),
(296, 'Koperasi Pegawai Negeri Pengadilan Negeri', '8568/BH/PAD/KWK.10/VII/96', 'Jl.Pengadilan', 'Bogor Tengah'),
(297, 'Koperasi Serba Usaha Tani Sejahtra Indonesia', '21/KEP/PAD/181.4/929-Kankop', 'Jl.Babakan Gunung Gede No 5 Rt 001/001', 'Bogor Tengah'),
(298, 'KBMT Sahabat', '43/BH/XIII.5/Kankop', 'Jl Babakan Sari VI No.7 RT.006/005', 'Bogor Tengah'),
(299, 'KOPERASI JASA MEGA ARTHA UTAMA', 'AHU-0013941.AH.01.26.TAHUN 2021', 'JL. SELANG NO. 10', 'Bogor Tengah'),
(300, 'KOPERASI KONSUMEN SERBA USAHA GIRI BHAKTI', '03/518-DISKOP.UKM/I/2007', 'JL. PABATON NO. 18', 'Bogor Tengah'),
(301, 'Primkopad Kodim 0606', '5223/BH/PAD/KWK.10/VI/1997', 'JL. Jendral Sudirman', 'Bogor Tengah'),
(302, 'Koperasi Karyawan Permata Bank', '518/14/BH/PERINDAGKOP', 'Jl. Kapten Muslihat No.17 A', 'Bogor Tengah'),
(303, 'Koperasi Persatuan Pensiunan Bank Bumi Daya (BUDAYA PRIMA)', '518/05/BH/PAD/KANKOP', 'Jl.Ir.H.Juanda No.12', 'Bogor Tengah'),
(304, 'Koperasi Pegawai Negeri Dispenda', '6786/BH/KWK.10/VIII/76', 'Jl. Kapten Muslihat', 'Bogor Tengah'),
(305, 'Koperasi Karyawan Sekar Mandiri AP3i', '11512/BH/KWK.10/VIII/95', 'Jl. Salak', 'Bogor Tengah'),
(306, 'Koperasi Rakyat Indonesia Kujang Surya Jaya', '009447/BH/M.KUKM.2/VIII/2018', 'JALAN BERINGIN, RT 003, RW 008', 'Bogor Utara'),
(307, 'PRIMKOPPPOLWIL BOGOR', '18/BH/KWK.10/II/97', 'JL.KAPTEN MUSLIHAT NO.18', 'Bogor Tengah'),
(308, 'Koperasi Pegawai Negeri Melati', '06/BH/KDK.1022/I/1999', 'Jl.Raya Padjajaran', 'Bogor Tengah'),
(309, 'Koperasi Pegawai Negeri Radiowan', '6200/BH/PAD/KWK.10/IX/96', 'Jl. Pangrango', 'Bogor Tengah'),
(310, 'Koperasi Pondok Pesantren Al-Ghazally', '111/BH/KDK.1022/VIII/99', 'JL. Cempaka No.6', 'Bogor Tengah'),
(311, 'KOPERASI KONSUMEN MAJU SEHAT BERSAMA MAHATMA', '142/BH/KDK.10.5/VIII/2002', 'Jalan Raya Pemda no. 10 RT 02/01', 'Bogor Utara'),
(312, 'KOPERASI KONSUMEN CITRA JAYA SEJAHTERA', 'AHU-0001115.AH.01.26.TAHUN 2019', 'Villa Bogor Indah I Blok G3 No. 23 02/01', 'Bogor Utara'),
(313, 'KOPERASI PRODUSEN JATI DIRI BANGSA', 'AHU-0008114.AH.01.26.TAHUN 2021', 'JL. CENDAWAN BLOK D NO. 10 KOMPLEK PERUM BOGOR INDAH', 'Bogor Utara'),
(314, 'Koperasi Pegawai Republik Indonesia Karya Sejahtera', '9128/BH/KWK.10/22', 'Jl. Abesin', 'Bogor Tengah'),
(315, 'KPEK Kalapa', '518/27/BH/KANKOP', 'Jl. Semboja No.2', 'Bogor Tengah'),
(316, 'Koperasi Pegawai Republik Indonesia Puspita', '518/06/BH/PAD/PERINDAGKOP', 'Jl. Ir. H. Juanda 48', 'Bogor Tengah'),
(317, 'Koperasi Pegawai Negeri ORYZA SATIVA', '194/PAD/HK/KDK.105/VI/2003', 'JL.RIAU NO.3', 'Bogor Tengah'),
(318, 'Koperasi Pegawai Negeri Karsa Mina Sejahtera', '518/05/BH/PERINDAGKOP', 'JL.Sempur No.1', 'Bogor Tengah'),
(319, 'Koperasi Pegawai Negeri BANK BNI CABANG BOGOR', '10322/BH/KWK/10/22', 'JL.IR H JUANDA NO.52', 'Bogor Tengah'),
(320, 'Koperasi Pegawai Negeri Puslitbang Gizi', '11695/BH/KKK.10/XII/1995', 'Jl. Dr. Semeru', 'Bogor Tengah'),
(321, 'Koperasi Pegawai Negeri Penadilan Negeri', '8568/BH/PAD/KWK.10/VII/96', 'JL.Pengadilan', 'Bogor Tengah'),
(322, 'Koperasi Karyawan Unpak', '7741/BH/PAD/KWK.10/V/1997', 'Jl. Pakuan', 'Bogor Tengah'),
(323, 'Koperasi Pegawai Negeri Wana Benih', '9431/BH/KWK.10/22', 'Jl. Pakuan No.2', 'Bogor Tengah'),
(324, 'KPEK Tegal Lega', '518/37/KDK.1022/KANKOP', 'KPP IPB Baranang Siang III/2', 'Bogor Tengah'),
(325, 'Koperasi Keluarga Mandiri', '518/08/BH KANKOP', 'Jl.Bogor Baru Blok A IV No.6', 'Bogor Tengah'),
(326, 'Koperasi Serba Usaha Bina Sejahtera Mandiri', '518/09/BH/PERINDAGKOP', 'Jl.Ciheulet No.116', 'Bogor Tengah'),
(327, 'Koperasi Linkers', '10/BH/XIII5/PERINDAGKOP', 'Jl.Pajajaran IPB Baranang Siang', 'Bogor Tengah'),
(328, 'Koperasi Pegawai Negeri Insan Bangkit [IN BANK]', '17/BH/XIII.5/DIPERINDAGKOP', 'Jl.Padjajaran no 1 gd psp 3', 'Bogor Tengah'),
(329, 'Koperasi Karyawan PN Gas', '8849/BH/PAD/KWK.10/XII/96', 'Jl. MA. Salmun', 'Bogor Tengah'),
(330, 'Koperasi Karyawan Sejati DIPO', '518/01/BH/PERINDAGKOP', 'Jl.Ma Salmun No.2', 'Bogor Tengah'),
(331, 'Koperasi Karyawan PT.Kosma Mitra Sejahtera', '106/BH/KDK.1022/VIII/1999', 'Jl.Sempur Kaler No.10', 'Bogor Tengah'),
(332, 'KPEK Sempur Sejahtera', '518/25/BH/KANKOP', 'Jl.Sempur No.33', 'Bogor Tengah'),
(333, 'Koperasi Serba Usaha Pabaton', '6003/BH/KWK.10/22', 'Jl. Pabaton', 'Bogor Tengah'),
(334, 'Koperasi Karyawan Kereta Api Bogor \"Kopkar KAB\"', '518/60/BH/KANKOP', 'Jl.Nyi Raja Permas No.01', 'Bogor Tengah'),
(335, 'Koperasi Pegawai Negeri Perkasa \"Kantor Kas Negara\"', '7676/BH/PAD/KWK.10/III/98', 'Jl. Ir.H. Juanda', 'Bogor Tengah'),
(336, 'Koperasi Pegawai Negeri Kopasanda (SMPN 1)', '518/15/BH/Kankop', 'Jl. Ir. H. Juanda No.16', 'Bogor Tengah'),
(337, 'Koperasi Pegawai Negeri Karya Sapta MandiriI SMPN 7', '518/03/PAD/PERINDAGKOP', 'Jl.Paledang No.25', 'Bogor Tengah'),
(338, 'Koperasi Karyawan Bank Jabar', '518/06/BH/PAD/PERINDAGKOP', 'Jl.Kapt.Muslihat', 'Bogor Tengah'),
(339, 'KBMT Madani', '01/BH/XIII.5/PERINDAGKOP', 'Jl.Raya Pulo Empang No.42', 'Bogor Tengah'),
(340, 'Koperasi Karyawan Bank Bukopin', '22/KEP/PAD/181.4/929-Kankop', 'Jl Ir Juanda No.36', 'Bogor Tengah'),
(341, 'Koperasi Karyawan Berkah Bersama Kimia Farma', '45/BH/XIII.5/Kankop', 'Jl. Ir Juanda No.30', 'Bogor Tengah'),
(342, 'Koperasi Pertokoan Stasiun (Kopertas)', '26/KEP/PAD/181.4/929-Kankop', 'Jl.Nyi Raja Permas No.21', 'Bogor Tengah'),
(343, 'Koperasi Serba Usaha ASO', '5953/BH/PAD/KWK.10/VII/96', 'Jl. Veteran', 'Bogor Tengah'),
(344, 'Koperasi Karyawan Pakuan Jaya', '49/BH/XIII.5/Kankop', 'Jl.Suryakencana Lt.4 Pasar Bogor', 'Bogor Tengah'),
(345, 'Koperasi Karyawan Akademi Manajemen Kesatuan (AMK)', '518/61/BH/Kankop', 'Jl.Rangga Gading No.1', 'Bogor Tengah'),
(346, 'Koperasi Pegawai Negeri Depag Kota Bogor', '7115/BH/PAD/KWK.10/III/97', 'Jl. Dr. Semeru', 'Bogor Tengah'),
(347, 'Koperasi Karyawan Al-Ghozali', '994/BH/KWK.10/XII/97', 'Jl. Dr. Semeru', 'Bogor Tengah'),
(348, 'Koperasi Saluyu', '120/BH/KDK.1022/IX/1999', 'Jl. Perintis Kemerdekaan No.7', 'Bogor Tengah'),
(349, 'Koperasi Serba Usaha Perintis Kemerdekaan KSU Perinka', '518/09/BH/PERINDAGKOP', 'Jl. Perintis Kemerdekaan no 10', 'Bogor Tengah'),
(350, 'PRIMKOPABRI Semboja Kota Bogor', '02/KEP/PAD/181.4/929-Diperindagkop', 'Jl. Semboja No.6', 'Bogor Tengah'),
(351, 'Koperasi Panaragan Amanah Sejahtera', '003166/BH/M.KUKM.2/I/2017', 'Jalan Panaragan Kidul N0.03, Rt 001, Rw 005, Kelurahan \nPanaragan', 'Bogor Tengah'),
(352, 'Koperasi Mitra Usaha Babakan Pasar', '003165/BH/M.KUKM.2/I/2017', 'Jalan Roda I No.2, Rt 002, Rw 008, Keurahan Babakan Pasar', 'Bogor Tengah'),
(353, 'Koperasi Mitra Keluarga Babakan', '003219/BH/M.KUKM.2/I/2017', 'Jl. Malabar Ujung No.7, Rt 002, Rw 007, Kelurahan Babakan', 'Bogor Tengah'),
(354, 'Koperasi Rereongan Wargi Ciwaringin', '003210/BH/M.KUKM.2/I/2017', 'Jl. Re Martadinata No.40, Rt 001, Rw 011, Kelurahan Ciwaringin', 'Bogor Tengah'),
(355, 'Koperasi Himpunan Alumni Institut Pertanian Bogor', '003249/BH/M.KUKM.2/I/2017', 'Gedung Alumni IPB Lantai 2, Jalan Pajajaran Bogor, Kelurahan. \nTegallega', 'Bogor Tengah'),
(356, 'Koperasi Paguyuban Warga Pabaton', '003224/BH/M.KUKM.2/I/2017', 'JALAN TELEPON NO.02, RT 002, RW 001, KELURAHAN PABATON', 'Bogor Tengah'),
(357, 'Koperasi Tani Mandiri Pangan', '003246/BH/M.KUKM.2/I/2017', 'Batu Hulung, Rt. 002, Rw. 002, Kelurahan. Balumbang Jaya', 'Bogor Tengah'),
(358, 'Koperasi Sempur Mandiri Sejahtera', '003250/BH/M.KUKM.2/I/2017', 'Jalan Sempur No.33, Rt.003, Rw. 001, Kelurahan. Sempur', 'Bogor Tengah'),
(359, 'KOPERASI PEMASARAN UMKM MANDIRI BOGOR', 'AHU-0001305.AH.01.26.TAHUN 2019', 'Jl. Salak No. 22 003/004', 'Bogor Tengah'),
(360, 'Koperasi Konsumen AGRO INOVASI', '64/BH/XII.5/Kankop', 'Jl. Salak No.22 RT 03 RW 04', 'Bogor Tengah'),
(361, 'Koperasi Konsumen Bakti Kitri Mandiri', '007292/BH/M.KUKM.2/II/2018', 'Jalan Papandayan Nomor 25 RT. 001 RW. 003', 'Bogor Tengah'),
(362, 'KOPERASI PRODUSEN GAPURA ALAM NUSANTARA', 'AHU-0008090.AH.01.26.TAHUN 2021', 'Jl. Arimbi Raya No.5', 'Bogor Utara'),
(363, 'KOPERASI KONSUMEN TRIBAKTI SEJAHTERA BOGOR', 'AHU-0009541.AH.01.26.TAHUN 2021', 'Jl. Kresna Raya No.43 A', 'Bogor Utara'),
(364, 'KOPERASI JASA MEDIKA KELUARGA SEJAHTERA', 'AHU-0010341.AH.01.26.TAHUN 2021', 'Jl. Samiaji No. 18', 'Bogor Utara'),
(365, 'KOPERASI SIMPAN PINJAM KAYANA NUSA INDAH', 'AHU-0011958.AH.01.26.TAHUN 2021', 'Jalan Ahmad Adnawijaya Ruko SGS Blok A2 nomor 10', 'Bogor Utara'),
(366, 'KOPERASI KONSUMEN CINTA AKI NINI', 'AHU-0012545.AH.01.26.TAHUN 2021', 'Jl. Raya Pajajaran No. 51', 'Bogor Utara'),
(367, 'Koperasi Sasino Online Bersama (Sober)', '013052/BH/M.KUKM.2/IV/2019', 'Jl. R. Khanafiah, RT 002, RW 015', 'Bogor Utara'),
(368, 'Koperasi Warga Cimahpar Mandiri (Kowaci Mandiri)', '011474/BH/M.KUKM.2/XII/2018', 'JALAN TUMENGGUNG WIRADIREDJA NOMOR 103', 'Bogor Utara'),
(369, 'KOPERASI JASA TAMAN KENARI MANDIRI', 'AHU-0008144.AH.01.26.TAHUN 2021', 'BALAI WARGA PERUMAHAN TAMAN KENARI BLOK B2', 'Bogor Utara'),
(370, 'KOPERASI KONSUMEN KELUARGA KOMUNITAS KRITIS INDONESIA', 'AHU-0005280.AH.01.26.TAHUN 2020', 'Jl. Gagalur No. 19', 'Bogor Utara'),
(371, 'Koperasi Pegawai Negeri Widya Bharana', '8177/BH/PAD/KWK.10/XI/96', 'Jl. Raya Pajajaran', 'Bogor Utara'),
(372, 'Koperasi Solidaritas Sejahtera Bersama (Kssb)', '013678/BH/M.KUKM.2/VI/2019', 'JL. PAJAJARAN NOMOR 217 A, RT 002, RW 011', 'Bogor Utara'),
(373, 'Koperasi Disabilitas Sejahtera Bersama', '011811/BH/M.KUKM.2/I/2019', 'Jalan Kedondong Villa Citra Blok C4 Nomor 05, Rt 002, Rw 005', 'Bogor Utara'),
(374, 'KOPERASI PRODUSEN KOMUNITAS PENGELOLA LIMBAH DAN SAMPAH', 'AHU-0000857.AH.01.26.TAHUN 2019', 'JALAN ARTZIMAR 1 NOMOR 16B 003/010', 'Bogor Utara'),
(375, 'KOPERASI JASA WIRATAMA MUDA MANDIRI', 'AHU-0004691.AH.01.26.TAHUN 2020', 'Jl. Pandu Raya No. 113 B 002/016', 'Bogor Utara'),
(376, 'Koperasi Simpan Pinjam Dan Pembiayaan Syariah Berkah Berlimpah Investama', 'AHU-0016986.AH.01.26.TAHUN 2022', 'Jl. KS Tubun No. 19A', 'Bogor Utara'),
(377, 'Koperasi Minang Saiyo Sakato', '012774/BH/M.KUKM.2/III/2019', 'ARYA WIDURA 8 NO.2', 'Bogor Utara'),
(378, 'KOPERASI JASA MITRA RIAPINDO LESTARI', 'AHU-0010291.AH.01.26.TAHUN 2021', 'PONDOK TAJUR INDAH NO.16/62', 'Bogor Timur'),
(379, 'Koperasi Simpan Pinjam Dewi Lestari Mandiri', '002873/BH/M.KUKM.2/XI/2016', 'Jl. Sukasari III RT 03/01', 'Bogor Timur'),
(380, 'KPEK Citra Pitaloka', '17/KEP/PAD/181.4/929-Diperindagkop', 'Jl.Suka Mulya No. 28 RT 07/III', 'Bogor Timur'),
(381, 'Koperasi Serba Usaha Pedagang Bineka', '37/BH/XII.5/Kankop', 'Jl. Sukasari III RT.02 RW.01', 'Bogor Timur'),
(382, 'KOPERASI KONSUMEN EKALOKASARI BERKAH SEJAHTERA', 'AHU-0012305.AH.01.26.TAHUN 2021', 'Matahari Ekalokasari Bogor, Jl. Siliwangi', 'Bogor Timur'),
(383, 'KPEK Bharana', '54/BH/KDK.1022/X/2000', 'Jl.Riau No.13', 'Bogor Timur'),
(384, 'KOPERASI JASA MITRA PENGEMUDI ONLINE', 'AHU-0010246.AH.01.26.TAHUN 2021', 'JL. PANGERAN ASOGIRI NO. 254', 'Bogor Utara'),
(385, 'KOPERASI KONSUMEN SADULUR MANDIRI SEJAHTERA', 'AHU-0010599.AH.01.26.TAHUN 2021', 'JL. PANGERAN ASSOGIRI BLOK E2 NO. 5', 'Bogor Utara'),
(386, 'KOPERASI KONSUMEN AURUM PEGAWAI POLITEKNIK AKA BOGOR', 'AHU-0010653.AH.01.26.TAHUN 2021', 'JL. PANGERAN SOGIRI NO. 283', 'Bogor Utara'),
(387, 'KOPERASI PRODUSEN ARTA WIJAYA NUSANTARA', 'AHU-0011063.AH.01.26.TAHUN 2021', 'Komplek IPB Baranangsiang 4 Blok C nomor 36', 'Bogor Utara'),
(388, 'Koperasi Konsumen Pemerhati Pembangunan Dan Lingkungan Hidup \nIndonesia', 'AHU-0011133.AH.01.26.TAHUN 2021', 'Jl. Raden Kan\'an Kavling 10', 'Bogor Utara'),
(389, 'KOPERASI PRODUSEN USAHA BERSAMA KATAWIS', 'AHU-0014286.AH.01.26.TAHUN 2021', 'JL. PANGERAN SOGIRI', 'Bogor Utara'),
(390, 'KOPERASI PRODUSEN KAMPUNG BATIK CIBULUH', 'AHU-0010353.AH.01.26.TAHUN 2021', 'Jl. Neglasari I', 'Bogor Utara'),
(391, 'KPEK Melati Putih \"KPM\" (KPEK Melati Putih)', '56/BH/KDK.1022/XI/2000', 'Jl.Parung Benteng I Rt.04/01 Katulampa', 'Bogor Timur'),
(392, 'KOPERASI KONSUMEN BENING MAJU BERSAMA', 'AHU-0001543.AH.01.26.TAHUN 2020', 'JALAN MEGAMENDUNG IV NOMOR 23 04/06', 'Bogor Timur'),
(393, 'KOPERASI PRODUSEN WAHANA AGRI NUSANTARA', 'AHU-0006030.AH.01.26.TAHUN 2020', 'Perum Bukit Asri Ciomas Jalan Cemara 4 Blok A 10 Nomor 27', 'Bogor Timur'),
(394, 'KOPERASI JASA SARANA SELURUH INDONESIA', 'AHU-0008528.AH.01.26.TAHUN 2021', 'JL. GRIYA KATULAMPA BLOK C4 NO. 14', 'Bogor Timur'),
(395, 'KOPERASI JASA KATULAMPA MAKMUR JAYA', 'AHU-0009307.AH.01.26.TAHUN 2021', 'KATULAMPA NO. 90', 'Bogor Timur'),
(396, 'Koperasi Karyawan PT.Unitex', '60878/BH/PAD/KWK.10/XII/96', 'Jl. Raya Wangun', 'Bogor Timur'),
(397, 'KPEK Sindang Arta', '518/67/BH/KANKOP', 'Jl.Muara I/143 Rt 03/02', 'Bogor Timur'),
(398, 'KOPMISO', '518/08/BH/DIPERINDAGKOP/2006', 'WANDUN TENGAH NO.36 B', 'Bogor Timur'),
(399, 'Koperasi Karyawan Nutrifood', '10734/BH/KWK.10/5', 'Jl. Raya Wangun', 'Bogor Timur');
INSERT INTO `koperasi` (`id_koperasi`, `nama_koperasi`, `nomor_bh`, `alamat`, `kecamatan`) VALUES
(400, 'Koperasi Bhakti Sari Bogor \"KPEK Bhakti sari\"', '50/BH/KDK.1022/X/2000', 'Jl.Raya Wangun 332', 'Bogor Timur'),
(401, 'Koperasi Pegawai Negeri Kuntum Mekar', '8655/BH/PAD/KWK.10/XI/96', 'JL.Galagur', 'Bogor Utara');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(3) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama_peg` char(50) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `jk` char(20) NOT NULL,
  `jenis` char(25) NOT NULL,
  `jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama_peg`, `golongan`, `jk`, `jenis`, `jabatan`) VALUES
(1, '197507151993111000', 'Ganjar Gunawan A.P', 'IV/c', 'laki-laki', 'STRUKTURAL', 'KEPALA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(2, '196707091992032000', 'Ni Made Suardani S.E , M.M.', 'IV/b', 'perempuan', 'STRUKTURAL', 'SEKRETARIS DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(3, '197005231997031000', 'Raden Medi Sandora S.Pt., M.Sc., M.S.E', 'IV/a', 'laki-laki', 'STRUKTURAL', 'KEPALA BIDANG USAHA MIKRO, KECIL DAN MENENGAH PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(4, '197002051990111000', 'Ayip Samsul Muarip S.E.,M.Si', 'IV/a', 'laki-laki', 'STRUKTURAL', 'KEPALA BIDANG PROMOSI, KEMITRAAN DAN JASA PERDAGANGAN PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(5, '196805291994032000', 'Kristina Indah Dwi Prasetyowati S.E., M.Si.', 'IV/a', 'perempuan', 'STRUKTURAL', 'KEPALA BIDANG PERINDUSTRIAN PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(6, '197006102007011000', 'Ali Susanto S.Pt., M.Si.', 'III/d', 'laki-laki', 'STRUKTURAL', 'KEPALA BIDANG KOPERASI PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(7, '197505272006041000', 'Mohamad Soleh S.T.,M.A', 'III/d', 'laki-laki', 'STRUKTURAL', 'KEPALA BIDANG PENGEMBANGAN PERDAGANGAN DALAM NEGERI, PERLINDUNGAN KONSUMEN DAN TERTIB NIAGA PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(8, '196906211993032000', 'Hj. Yunita Evilina S.H.,M.A.', 'III/d', 'perempuan', 'STRUKTURAL', 'KASUBAG KEUANGAN PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(9, '197612152007011000', 'Deden Marlina SE,M.Si', 'III/c', 'laki-laki', 'STRUKTURAL', 'KEPALA UPTD METROLOGI LEGAL PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(10, '198204282009011000', 'Amin Riyadi SH.', 'III/b', 'laki-laki', 'STRUKTURAL', 'KASUBAG UMUM DAN KEPEGAWAIAN PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(11, '197911062010012000', 'Nikeu Sylviawati Ridwan S.Si.', 'III/c', 'perempuan', 'STRUKTURAL', 'KEPALA SUB BAGIAN TATA USAHA UPTD METROLOGI LEGAL PADA DINAS KOPERASI, USAHA KECIL, MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR'),
(12, '196904042006041000', 'Sahdi S.Sos., M.Si', 'IV/a', 'laki-laki', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(13, '196411141992032000', 'Dra. Rusmiati', 'IV/a', 'perempuan', 'PELAKSANA', 'PENYUSUN RENCANA INFORMASI PASAR DALAM NEGERI'),
(14, '197101312000031000', 'Hidayat S.T.,M.T.A.', 'IV/a', 'laki-laki', 'JFT', 'PENERA AHLI MADYA'),
(15, '196811181989112000', 'Dra. Hj. Wigati Handayani M.Si.', 'IV/a', 'perempuan', 'JFT', 'PENYULUH PERINDUSTRIAN DAN PERDAGANGAN AHLI MUDA'),
(16, '196410281984111000', 'Sentot Subandono S.E', 'IV/a', 'laki-laki', 'JFT', 'PENERA AHLI MADYA'),
(17, '197108221994032000', 'Ela Rosliana S.Sos.', 'III/d', 'perempuan', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(18, '196708021991031000', 'Karma SE, M.M', 'III/d', 'laki-laki', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(19, '197606042008011000', 'Rachmat Hidayahtul Akbar Asir S.E.', 'III/d', 'laki-laki', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(20, '196611291991031000', 'Tubagus Abbas S.E.', 'III/d', 'laki-laki', 'JFT', 'PENGAWAS KOPERASI AHLI MUDA'),
(21, '196601161996011000', 'Andry S.E.', 'III/d', 'laki-laki', 'JFT', 'PENYULUH PERINDUSTRIAN DAN PERDAGANGAN AHLI MUDA'),
(22, '196903311993032000', 'Dyah Herawati S.P.', 'III/d', 'perempuan', 'JFT', 'ANALIS KEBIJAKAN AHLI MUDA'),
(23, '196509061996011000', 'Syamsul Bahri Harahap S.E.', 'III/d', 'laki-laki', 'JFT', 'PENGAWAS KOPERASI AHLI MUDA'),
(24, '197003201991021000', 'Sinton Marado Oloan Saragih S.T', 'III/d', 'laki-laki', 'JFT', 'PENERA AHLI MUDA'),
(25, '197402021993102000', 'Dede Aminah S.E.', 'III/d', 'perempuan', 'PELAKSANA', 'PENGAWAS INDUSTRI'),
(26, '197310111998032000', 'Susie Sulistiawaty Mudrika SE,M.Si.', 'III/d', 'perempuan', 'JFT', 'PERENCANA AHLI MUDA'),
(27, '196805051989032000', 'Mai Hasanah S.E.', 'III/d', 'perempuan', 'JFT', 'PENGAWAS KOPERASI AHLI MUDA'),
(28, '197304242005011000', 'Andreis Prilesmana Sukanda S.E.', 'III/d', 'laki-laki', 'PELAKSANA', 'PENGAWAS INDUSTRI'),
(29, '198209162006042000', 'Yuyun Wahyuningsih S.E.,M.Si', 'III/d', 'perempuan', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(30, '198006032011012000', 'Neneng Nurhidayah S.E, M.Si.', 'III/c', 'perempuan', 'PELAKSANA', 'BENDAHARA'),
(31, '197101181994032000', 'Rina Dwi Indrawati A.Md.', 'III/c', 'perempuan', 'PELAKSANA', 'VERIFIKATOR DATA LAPORAN KEUANGAN'),
(32, '196703262007012000', 'Endang Tumiarsih S.IP.', 'III/c', 'perempuan', 'PELAKSANA', 'FASILITATOR PERDAGANGAN'),
(33, '196607132007011000', 'Supriyadi S.Sos.', 'III/c', 'laki-laki', 'PELAKSANA', 'PENYULUH USAHA MANDIRI DAN TEKNOLOGI TEPAT GUNA'),
(34, '197706092010012000', 'Irni Yuniar S.Sos., M.Si', 'III/c', 'perempuan', 'PELAKSANA', 'BENDAHARA'),
(35, '197809042010011000', 'Bayu Fitra Fahreza S.Kom,M.Si', 'III/c', 'laki-laki', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(36, '198611072009022000', 'Ratna Wulandari S.IP.,MM', 'III/c', 'perempuan', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(37, '197506262007011000', 'Tedy Sumarsono S.Sos.,M.Si', 'III/c', 'laki-laki', 'JFT', 'ANALIS PERDAGANGAN AHLI MUDA'),
(38, '198206202009011000', 'Risma Santosa.Y S.AP.', 'III/c', 'laki-laki', 'JFT', 'PENGAWAS PERDAGANGAN AHLI MUDA'),
(39, '197106132007012000', 'Sri Hartini S.E.', 'III/b', 'perempuan', 'PELAKSANA', 'PENGELOLA PEMANFAATAN BARANG MILIK DAERAH'),
(40, '198405212010012000', 'Shanti Kameilia SE', 'III/b', 'perempuan', 'PELAKSANA', 'ANALIS SUMBER DAYA MANUSIA APARATUR'),
(41, '197008271994031000', 'Hendra Mintaryana', 'III/b', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR'),
(42, '196604161991032000', 'Elis Siti Aisah', 'III/b', 'perempuan', 'PELAKSANA', 'PRANATA KOPERASI'),
(43, '196501052008011000', 'Supriyadi SE.', 'III/b', 'laki-laki', 'PELAKSANA', 'FASILITATOR PERDAGANGAN'),
(44, '196512051990032000', 'Solihat', 'III/b', 'perempuan', 'PELAKSANA', 'PENGADMINISTRASI UMUM'),
(45, '198403262015022000', 'Siti Julaeha SE.', 'III/b', 'perempuan', 'PELAKSANA', 'PENYUSUN RENCANA INFORMASI PASAR LUAR NEGERI'),
(46, '198012112008011000', 'Deni Andrian S.Ak', 'III/a', 'laki-laki', 'PELAKSANA', 'PENYUSUN PERKEMBANGAN HARGA DAN PENGKAJIAN PASAR'),
(47, '197801082010011000', 'Sumantri S.Ag.', 'III/a', 'laki-laki', 'PELAKSANA', 'FASILITATOR PERDAGANGAN'),
(48, '196901131989031000', 'Rahmadi', 'III/a', 'laki-laki', 'PELAKSANA', 'PENGELOLA PENGEMBANGAN INKUBASI BISNIS DAN WORKSHOP'),
(49, '199206272022031000', 'DEKI KURNIA HADI PERMANA S.Kom', 'III/a', 'laki-laki', 'PELAKSANA', 'PENYULUH USAHA MANDIRI DAN TEKNOLOGI TEPAT GUNA'),
(50, '197510012002121000', 'Firdaus Umamit', 'III/a', 'laki-laki', 'PELAKSANA', 'PENGELOLA DISTRIBUSI DAN PEMASARAN'),
(51, '198202082009011000', 'Rudy Rosadi S.AP.', 'III/a', 'laki-laki', 'PELAKSANA', 'ANALIS PERENCANAAN, EVALUASI DAN PELAPORAN'),
(52, '197002132008011000', 'Didin', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA PRODUKSI'),
(53, '196811162007011000', 'Mulyadi', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR'),
(54, '197204072007012000', 'Emi Rosiyani', 'II/d', 'perempuan', 'PELAKSANA', 'PENGELOLA PAMERAN DAN PERAGAAN'),
(55, '197805122008012000', 'Retno Dwi Hastuti', 'II/d', 'perempuan', 'PELAKSANA', 'PENGELOLA PEMANFAATAN BARANG MILIK DAERAH'),
(56, '196801152007011000', 'Moh. Akmaludin', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA PENGAWASAN'),
(57, '197709202007011000', 'Syafrudin Zulkarnaen', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA KEBIJAKAN KELEMBAGAAN KOPERASI'),
(58, '196712122007011000', 'Supriyatna', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI UMUM'),
(59, '197512062007011000', 'Saeppudin Roni', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA KEUANGAN'),
(60, '196609292007011000', 'Tatang Sunarta', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA PENGEMBANGAN INKUBASI BISNIS DAN WORKSHOP'),
(61, '198206142008011000', 'Asep Nurdin', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA PENGAWASAN'),
(62, '198112292009011000', 'Osep Sutajat', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGELOLA PRODUKSI'),
(63, '196812102007011000', 'Dodi Ginanjar', 'II/d', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR'),
(64, '197607202008011000', 'Ruhendi', 'II/c', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR'),
(65, '197507102010012000', 'Puspita Mulyati', 'II/c', 'perempuan', 'PELAKSANA', 'PENGELOLA PERMODALAN KOPERASI DAN USAHA MIKRO KECIL DAN MENENGAH'),
(66, '197507212007011000', 'R. Muhammad Al Idris', 'II/c', 'laki-laki', 'PELAKSANA', 'PENGELOLA PAMERAN DAN PERAGAAN'),
(67, '197202042014071000', 'Junaedi', 'II/b', 'laki-laki', 'PELAKSANA', 'PENGELOLA PERMODALAN KOPERASI DAN USAHA MIKRO KECIL DAN MENENGAH'),
(68, '197110272014071000', 'Ramdhan Mulyana', 'II/b', 'laki-laki', 'PELAKSANA', 'PENGELOLA PERMODALAN KOPERASI DAN USAHA MIKRO KECIL DAN MENENGAH'),
(69, '196801152007011000', 'Endang', 'II/b', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI UMUM'),
(70, '198509012014072000', 'Retno Setiyani', 'II/b', 'perempuan', 'PELAKSANA', 'VERIFIKATOR DATA LAPORAN KEUANGAN'),
(71, '197309022008011000', 'Edi Mulyadi', 'II/b', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR'),
(72, '197407192007011000', 'Toto', 'I/d', 'laki-laki', 'PELAKSANA', 'PENGADMINISTRASI PENGAMANAN DAN PERLINDUNGAN AKSES PASAR');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(2) NOT NULL,
  `id_ikm` int(3) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `kategori` char(30) NOT NULL,
  `alamat` text NOT NULL,
  `gmbr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_ikm`, `nama_produk`, `kategori`, `alamat`, `gmbr`) VALUES
(1, 54, 'Batik Tradisiku', 'Batik Bogor Kujang Kijang dll', '<p>Jl. Jalak No.2 Tanah Sareal, Kota Bogor 16161</p>\r\n', '959-WhatsApp Image 2022-06-27 at 11.07.18.jpeg'),
(2, 6, 'Khabeesana Craft', 'Anyaman Kertas', '<p>Kp Sindang Sari Rt 02 Rw 11 Kel Tanah Baru Bogor Utara</p>\r\n', '809-240388399_111946427791298_4465166971870860239_ng.jpg'),
(7, 1, 'Agustine Embroidery', 'Home Decor, Crfat & Fashion', '<p>Baranangsiang Indah E5 No.13 Kel. Katulampa Kec. Bogor Timur</p>\r\n', '76923297_182010649634036_3815149917892235601_n.jpg'),
(8, 8, 'Bogor Woodcraft', 'Lampu Tidur, Gantungan Kunci', '<p>Jl. Tegal Lega No.1</p>\r\n', '244773702_171804895130862_4215241077824654269_n.jpg'),
(9, 12, 'Mynoi Gallery', 'Decoupage, Fabric Decoupage, C', '<p>Komp. Baranangsiang Indah Blok B 6 No.11 Bogor</p>\r\n', '52723493_297864034214781_4148980214890716123_n.jpg'),
(10, 20, 'Tyas Alifa Decoration (Mozaik Cermin)', 'Cermin Hias', '<p>Jl. Bukit Cassiavera Raya FF 22 Koramil Kayumanis&nbsp;Bogor</p>\r\n', '285057741_396868149029088_584378960082655808_n.jpg'),
(11, 22, 'Paneupaan Kujang Pajajaran', 'Kujang beberapa jenis dan ukur', '<p>Parung Banteng Rt.04 Rw.01 No.120</p>\r\n', '137382373_1095135644258840_2888152408266758202_n.jpg'),
(12, 23, 'Reisya Flanel', 'Souvenir & Kotak Tissue', '<p>Kp Curug Induk Rt 01 Rw 05 Kel Curug Bobar</p>\r\n', '202794065_4382573961788012_5417281181472810964_n.jpg'),
(13, 24, 'AFW Knife', 'Pisau Adventure', 'Bojong Pesantren Rt 001 RW 003 No 22 Bojongkerta Bosel', '292616336_348732947403963_4233392668967360336_n.jpg'),
(14, 26, 'Rumah Umi 75', 'Home Decor', 'Bogor Baru Blok B5 No.14', '18094979_211647189333116_5789754638156693504_n.jpg'),
(15, 27, 'Salam Rancage', 'Produk daur ulang', 'Jl. P. Ashogiri 150 Kel. Tanah Baru', '141532861_467576377574612_4908722188391187235_n.jpg'),
(39, 0, 'Tri Crochet', 'Sepatu dan sandal rajutan', 'Jl. Rawajaha Rt 04 Rw 03 Kel Situgede', '292280838_486722629883274_8327674125351783888_n.jpg'),
(40, 0, 'Loji Craft', 'Fashion & Craft', 'Jl. Raya Ibrahim Ajie No. 165 Bogor', '291697527_580871216998992_5552176450979102049_n.jpg'),
(41, 0, 'FridAulia Indonesia', 'Fashion & Craft', 'Komplek Bogor Baru Taman Blok A3 No 5 Bogut', '296065292_739510577277843_3988490825655301429_n.jpg'),
(42, 0, 'Aseupan Daun', 'Kriya', 'Taman Tampak Siring TTS 9/11 Sentul City', '272789907_2039749662864443_6415679862253375111_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(2) NOT NULL,
  `tentang` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `tupoksi` text NOT NULL,
  `stuktur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `tentang`, `visi`, `misi`, `tupoksi`, `stuktur`) VALUES
(1, '<hr />\r\n<p>Dinas Koperasi, Usaha Kecil Dan Menengah, Perdagangan Dan Perindustrian&nbsp;merupakan penggabungan dari dua dinas yaitu Dinas Perdagangan dan Perindustrian dengan Dinas Koperasi dan UMKM&nbsp;berdasarkan Peraturan Daerah No.3 tahun 2021 tentang pembentukan dan susunan perangkat daerah Kota Bogor&nbsp;tujuan dasar penggabungan dua dinas tersebut karena tugas serta fungsi kedua dinas terkait masih dalam satu golongan urusan yang sama.&nbsp;</p>\r\n', '<p>&ldquo;Mewujudkan Kota Bogor sebagai Kota Ramah Keluarga&rdquo;.</p>\r\n', '<p>1. Mewujudkan Kota yang Sehat<br />\r\n2.&nbsp;Mewujudkan Kota yang Cerdas<br />\r\n3.&nbsp;Mewujudkan Kota yang Sejahtera</p>\r\n', '<p><strong>Tugas Dinas Koperasi, Usaha Kecil Dan Menengah, Perdagangan Dan Perindustrian Kota Bogor</strong></p>\r\n\r\n<ol>\r\n	<li>Mempunyai tugas membantu Wali Kota melaksanakan Urusan Pemerintahan di bidang perdagangan,&nbsp;perindustrian, koperasi dan UMKM pembantuan yang diberikan kepada Pemerintah Daerah Kota</li>\r\n</ol>\r\n\r\n<p><strong>Fungsi Dinas Koperasi, Usaha Kecil Dan Menengah, Perdagangan Dan Perindustrian Kota Bogor</strong></p>\r\n\r\n<ol>\r\n	<li>Perumusan kebijakan teknis di bidang perdagangan, perindustrian, koperasi dan UMKM</li>\r\n	<li>Pelaksanaan kebijakan teknis di bidang perdagangan,&nbsp;perindustrian, koperasi dan UMKM</li>\r\n	<li>Pelaksanaan administrasi dinas di bidang perdagangan,&nbsp;perindustrian, koperasi dan UMKM</li>\r\n	<li>Pembinaan, evaluasi dan pelaporan pelaksanaan tugas di bidang perdagangan,&nbsp;perindustrian, koperasi dan UMKM</li>\r\n	<li>Pelaksanaan tugas lain yang diberikan oleh Wali Kota sesuai tugas dan fungsinya</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'stuk.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL,
  `online` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2022-08-15', 62, '1660544940');

-- --------------------------------------------------------

--
-- Table structure for table `swalayan`
--

CREATE TABLE `swalayan` (
  `id_gerai` int(4) NOT NULL,
  `nama_gerai` text NOT NULL,
  `jenis_gerai` char(25) NOT NULL,
  `alamat_gerai` text NOT NULL,
  `kecamatan_gerai` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `swalayan`
--

INSERT INTO `swalayan` (`id_gerai`, `nama_gerai`, `jenis_gerai`, `alamat_gerai`, `kecamatan_gerai`) VALUES
(2, 'Superindo (Tajur Trade Mall)', 'Supermarket', 'Jl. Raya Tajur No. 112a, Kel. Muarasari, Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(3, 'H-Hypermarket (Plaza Lippo Elos)', 'Supermarket', 'Jl. Siliwangi No. 123, Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(4, 'D.I.Y (Plaza Lippo Elos)', 'Supermarket', 'Jl. Siliwangi No. 123, Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(5, 'Elektronic City (Plaza Lippo Elos)', 'Supermarket', 'Jl. Siliwangi No. 123, Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(6, 'Superindo (Pahlawan)', 'Supermarket', 'Jl. Pahlawan No. 78 Kel. Bondongan Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(7, 'Sinar Abadi (Pahlawan)', 'Supermarket', 'Jl. Pahlawan Blok Sindang Raya No. 175, Kel. Bondongan Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(8, 'Total  Buah (Sukasari)', 'Supermarket', 'Jl. Raya Pajajaran No. 12 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(9, 'Cellini (Sukasari)', 'Supermarket', 'Jl. Raya Pajajaran No. 25 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(10, 'Giant Ekspres (Pajajaran)', 'Supermarket', 'Jl. Raya Pajajaran No.3D, Kel. Baranangsiang, Kec. Bogor Tim., Kota Bogor', 'Bogor Timur'),
(11, 'Jaya Makmur (Pajajaran)', 'Supermarket', 'Jl. Raya Pajajaran No.50, Kel. Baranangsiang, Kec. Bogor Timur, Kota Bogor', 'Bogor Timur'),
(12, 'Diana Eva Furniture (Pajajaran)', 'Supermarket', 'Jl. Raya Pajajaran No.35, RT.4/RW.11, Kel. Baranangsiang, Kec. Bogor Timur, Kota Bogor', 'Bogor Timur'),
(13, 'Elektronic City  (Botani Square)', 'Supermarket', 'Jl. Raya Pajajaran, Botani Square - Lower Ground 9,, Kel. Tegallega, Kec. Bogor Tengah, Kota Bogor', 'Bogor Tengah'),
(14, 'Robinson Mart (Bogor Square)', 'Supermarket', 'Jl. Sholeh Iskandar, Kel. kedung Jaya, Kec. Tanah Sereal, Kota Bogor, Jawa Barat', 'Tanah Sereal'),
(15, 'Hias  (Botani Square)', 'Supermarket', 'Jl. Botani Square, Kel. Tegallega, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16129', 'Bogor Tengah'),
(16, 'Ramayana (Bogor Square)', 'Supermarket', 'Jl. Sholeh Iskandar, Kel. kedung Jaya, Kec. Tanah Sereal, Kota Bogor, Jawa Barat', 'Tanah Sereal'),
(17, 'Court (Btm)', 'Supermarket', 'Bogor Trade Mal, Lantai LG unit A02-002, Jl Ir. Haji Djuanda no.68, Kel. Paledang, Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(18, 'Court (Bogor Square)', 'Supermarket', 'Jl. Sholeh Iskandar, Kel. kedung Jaya, Kec. Tanah Sereal, Kota Bogor, Jawa Barat', 'Tanah Sereal'),
(19, 'Electronic City (Btm)', 'Supermarket', 'Jl. Ir. Haji Djuanda No.68, Kel. Gudang, Kec. Bogor Tengah, Kota Bogor', 'Bogor Tengah'),
(20, 'Jaya Makmur (Suryakencana)', 'Supermarket', 'Jl. Surya Kencana No.51, Kel. Babakan Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16141', 'Bogor Tengah'),
(21, 'Toko Ngesti (Suryakencana)', 'Supermarket', 'Jl. Surya Kencana No.136, Kel. Gudang, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16123', 'Bogor Tengah'),
(22, 'Toko Ngesti (Pajajaran)', 'Supermarket', 'Jl. Raya Padjadjaran No. 3A-D, Kel. Baranangsiang, Kec. Bogor Timur, Kota Bogor', 'Bogor Timur'),
(23, 'Toko Yoek (Blk Hotel Salak)', 'Supermarket', 'Jl. Gedong Sawah No.7, Kel. Pabaton, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16121', 'Bogor Tengah'),
(24, 'Giant (Sindang Barang)', 'Supermarket', 'Jl. Ibrahim Adjie Kel. Loji, Kec. Bogor Barat, Kota Bogor', 'Bogor Barat'),
(25, 'Toko Cristal', 'Supermarket', 'Jl. Merdeka No.48, Kel. Ciwaringin, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16125', 'Bogor Tengah'),
(26, 'Toko Sagala', 'Supermarket', 'Jl. Merdeka No.46, Kel. Ciwaringin, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16114', 'Bogor Tengah'),
(27, 'Grand Sinar Sari', 'Supermarket', 'Jl. Merdeka No.2, Kel. Ciwaringin, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(28, 'Sinar Sari 1', 'Supermarket', 'Jl. Mayor Oking No.17-81, Kel. Cibogor, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(29, 'Sinar Sari 2', 'Supermarket', 'Jl. Merdeka No.2, Kel. Ciwaringin, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(30, 'Robinson Mart (Jambu Dua)', 'Supermarket', 'L3 , Plaza Jambu Dua , JL. Raya Pajajaran , Kel. Banjar Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(31, 'Sinsa', 'Supermarket', 'Ruko Casablanca No. 1-6, Jl. K S Tubun, Cibuluh, Bogor Utara, Kota Bogor, Jawa Barat 16151', 'Bogor Utara'),
(32, 'Furni Mart ', 'Supermarket', '', ''),
(33, 'Karya Agung ', 'Supermarket', '', ''),
(34, 'Oliver', 'Supermarket', '', ''),
(35, 'Mitra 10', 'Supermarket', 'Jl. Baru - Bogor, Kel. Kedung Badak, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16164', 'Tanah Sereal'),
(36, 'Foodmart (Plaza Lippo Keboen Raya)', 'Supermarket', 'Jl. Malabar 1 No.17, Babakan, Bogor Tengah, Kota Bogor, Jawa Barat 16129', 'Bogor Tengah'),
(37, 'All Fresh', 'Supermarket', 'Jl. Raya Pajajaran No.43, RT.3/RW.11, Bantarjati, Bogor Utara, Kota Bogor, Jawa Barat 16153', 'Bogor Utara'),
(38, 'Depo Bangunan', 'Supermarket', 'Jl. Sholeh Iskandar , Kel. Kedung Badak, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16164', 'Tanah Sereal'),
(39, 'Pt. Home Center Indonesia', 'Supermarket', 'Jl. Pajajaran No. 21, Kel. Sukasari, Kec. Bogor Timur, Kota Bogor', 'Bogor Timur'),
(40, 'Pt. Home Center Indonesia', 'Supermarket', 'Jl. Pajajaran No. 18 RT. 06 RW. 13 Kel. Baranangsiang, Kec. Bogor Timur, Kota Bogor', 'Bogor Timur'),
(41, 'Pt. Ace Hardware Indonesia Tbk', 'Supermarket', 'Jl. Pajajaran No. 121, Kel. Baranangsiang, Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(42, 'Pt. Home Center Indonesia', 'Supermarket', 'Jl. KS. Tubun No. 14 - 16 Kel. Cibuluh, Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(43, 'Pt. Ace Hardware Indonesia Tbk', 'Supermarket', 'Jl. Pajajaran No. 17A, Kel. Bantarjati, Kec. Bogor Utara Kotra Bogor', 'Bogor Utara'),
(44, 'Pt. Indoguna Yasa(Mr. Diy Plaza Indah Bogor)', 'Supermarket', 'Jl. KH. Sholeh Iskandar Kel. Kedung Badak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(45, 'Pt. Niaga Indoguna Yasa (Mr.D.I.Y)', 'Supermarket', 'Jl. Bogor Baru /Ramayana Square Lt. 2 Unit L2 BOO2 Kel. Kedung Jaya Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(46, 'Pt. Patlimatra Kencana Grand Swalayan', 'Supermarket', 'Jl. Surya Kencana No. 102 RT. 01 RW. 09 Kel. Gudang Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(47, 'Pt. Ace Hardware Indonesia Tbk', 'Supermarket', 'Jl. Raya Tajur No. 123, RT. 01 RW. 06 Kel. Tajur Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(48, 'Pt. Home Center Indonesia', 'Supermarket', 'Jl. Raya Tajur No. 123, RT. 01 RW. 06 Kel. Tajur Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(49, 'Superindo (City Plaza)', 'Supermarket', 'Plaza Jembatan Merah Jl. Veteran No. 31, RT. 07 RW. 03 Kel. Panaragan, Kec. Bogor Tengah, Kota Bogor', 'Bogor Tengah'),
(50, 'Superindo (Pajajaran)', 'Supermarket', 'Jl. Raya Pajajaran No. 37 Rt. 04 Rw. 11 Kel. Baranangsiang Kec. Bogor Timur', 'Bogor Timur'),
(51, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Veteran RT. 001 RW. 001 \nKel. Kebon Kalapa Kec. Bogor Tengah ', 'Bogor Tengah'),
(52, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Sawo Jajar No.35 RT. 001 RW. 003\nKel. Pabaton Kec. Bogor Tengah', 'Bogor Tengah'),
(53, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Kebon Pedes No. 14 RT. 005 RW. 003 Kel. Kebon Pedes Kec. Tanah Sareal', 'Tanah Sereal'),
(54, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. KH. Soleh Iskandar RT.001/RW.11 Kel. Kedung Badak Kec. Tanah Sareal ', 'Tanah Sereal'),
(55, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Cimanggu Pahlawan RT. 01 RW. 16\nKel. Ked. Waringin Kec. Tanah Sareal ', 'Tanah Sereal'),
(56, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Taman Cimanggu RT. 01 RW. 03\nKel. Ked Waringin Kec. Tanah Sareal ', 'Tanah Sereal'),
(57, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Boulevard Taman Cimanggu No. 11-16 RT. 001 RW. 012 Kel. Ked \nWaringin Kec. Tanah Sareal ', 'Tanah Sereal'),
(58, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Kayu Manis Cilebut Kp. Pabuaran RT.002 RW.002 Mekar Wangi Kec. Tanah Sareal', 'Tanah Sereal'),
(59, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Kali Murni RT. 003/001 Kel. Kencana Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(60, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Parung Graha Kencana RT.003/006 Kel. Kencana Kec. Tanah Sareal', 'Tanah Sereal'),
(61, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raden Aria Surialaya RT. 006 RW. 003 Kel. Pasirjaya Kec. Bogor Barat', 'Bogor Barat'),
(62, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Perum. Pakuan Regency RT. 003 RW. 002 Kel. Margajaya Kec. Bogor Barat', 'Bogor Barat'),
(63, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Dr. Semeru RT. 01 RW. 01 \nKel. Menteng Kec. Bogor Barat Kota Bogor ', 'Bogor Barat'),
(64, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Mawar No.12 RT.002/RW.005 Kel. Menteng Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(65, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. KH. R. Abdullah Bin Nuh No. 120 RT. 04 RW. 09 Kel. Curug Mekar Kec. Bogor Barat', 'Bogor Barat'),
(66, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Semplak Cemplang RT. 01 RW. 09 Kel. Cilendek Barat Kec. Bogor Barat Kota Bogor\nKel. Cilendek Barat Kec. Bogor Barat', 'Bogor Barat'),
(67, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Brigjend Saptaji Hadi Prawira RT.001/RW.009 Kel.Cilendek Barat Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(68, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Ishak Djuarsa RT. 04 RW. 011 Kel. Loji Kec. Bogor Barat', 'Bogor Barat'),
(69, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim Adjie Rt. 04 Rw. 03 \nKel. Loji Kec. Bogor Barat', 'Bogor Barat'),
(70, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim Adjie Rt. 01 Rw. 04\nKel. Loji Kec. Bogor Barat ', 'Bogor Barat'),
(71, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. H. Encep Nawawi RT. 003 RW. 008 Kel. Bubulak Kec. Bogor Barat', 'Bogor Barat'),
(72, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl.raya Cifor RT. 001 RW. 001 Kel. Bubulak Kec. Bogor Barat', 'Bogor Barat'),
(73, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim adjie RT.004/RW.001 Kel. Sindang barang Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(74, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.KH. Abdullah bin nuh RT.005/001 Kel. Sindang Barang Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(75, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. RE. Soemantadiredja RT.002/012 Kel. Pamoyanan Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(76, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Lawang Gintung RT.006 RW.006 Kel.Batu tulis Kec.Bogor Selatan', 'Bogor selatan'),
(77, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Tajur Rt. 04 Rw. 01 Kel. Pakuan \nKec. Bogor Selatan ', 'Bogor selatan'),
(78, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Tajur RT. 01 RW. 006 Kel. Pakuan Kec. Bogor Selatan', 'Bogor selatan'),
(79, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Tajur Rt. 02 Rw. 07 Kel. Muarasari \nKec. Bogor Selatan ', 'Bogor selatan'),
(80, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Sukabumi Mulya Sari RT.002/010 Kel. Harjasari Kec. Bogor Selatan', 'Bogor selatan'),
(81, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pamoyanan raya No.03 RT. 02 Rw. 01 \nKel. Rangga Mekar Kec. Bogor Selatan ', 'Bogor selatan'),
(82, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Siliwangi No. 52 RT. 01 RW. 13 Kel. Bondongan Kec. Bogor Selatan Bogor Kota', 'Bogor selatan'),
(83, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Kerta Maya RT.003/004 Kel. Kerta Maya Kec. Bogor Selatan', 'Bogor selatan'),
(84, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Achmad Adnawijaya RT. 001 RW. 015 Kel Tegal Gundil Kec. Bogor Utara', 'Bogor Barat'),
(85, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. R.E Martadinata RT. 001 RW. 002 Kel. Tegal Gundil Kec. Bogor Barat', 'Bogor Barat'),
(86, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pangeran Sogiri Rt. 003 Rw. 004\nKel. Tanah Baru Kec. Bogor Utara', 'Bogor Utara'),
(87, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Pemda Rt. 001 Rw. 010\nKel. Kedung Halang Kec. Bogor Utara ', 'Bogor Utara'),
(88, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Pemda Rt. 001 Rw. 010\nKel. Kedung Halang Kec. Bogor Utara ', 'Bogor Utara'),
(89, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Kedung Halang RT. 004 RW.008 Kel. Kedung Halang Kec. Bogor Utara', 'Bogor Utara'),
(90, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Pajajaran No. 99E RT. 02 RW. 03  Kel. Bantarjati\nKec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(91, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Wangun Rt. 002 Rw. 004\nKel. Sindang Sari Kec. Bogor Timur ', 'Bogor Timur'),
(92, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Griya Bogor raya Jl. Venus Rt 02 Rw 012 Kel Katulampa', 'Bogor Timur'),
(93, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Durian Raya No.39 Rt. 07 Rw. 05\nKel. Baranang Siang Kec. Bogor Timur', 'Bogor Timur'),
(94, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Rambutan Raya Rt. 002 Rw. 007\nKel. Baranang Siang Kec. Bogor Timur', 'Bogor Timur'),
(95, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Wangun Atas Rt. 004 Rw. 001\nKel. Sindang Sari Kec. Bogor Timur ', 'Bogor Timur'),
(96, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya tajur Rt 005 Rw 004 kel. Tajur Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(97, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.RE Martadita No.1 RT.003 Rw.005 kel.pabaton kec.bogor tengah', 'Bogor Tengah'),
(98, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.KH.Ahmad syam Kp.Sawah RT.004 RW.006 Kel.Tanah baru Kec.Bogor Utara', 'Bogor Utara'),
(99, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko Villa Bogor Indah 2, Blok BB.1 NO.11 RT. 005 RW. 014 Kel. Kedung Halang Kec. Bogor Utara', 'Bogor Utara'),
(100, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim Adjie RT. 01 RW. 02 Kel. Sindang Barang Kec. Bogor Barat', 'Bogor Barat'),
(101, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Dr.Sumeru No.54/4 RT.001 RW.002 Menteng Kec.Bogor Barat', 'Bogor Barat'),
(102, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Raya Dramaga KM.7 RT.003 RW.002 Kel.Margajaya Kec.Bogor Barat', 'Bogor Barat'),
(103, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Pemuda Dramaga Caringin RT.003 RW.005 Kel.Margajaya Kec.Bogor Barat', 'Bogor Barat'),
(104, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Pahlawan No.150 RT.002 RW.008 Kel.Empang Kec.Bogor Selatan', 'Bogor selatan'),
(105, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Hotel Rancamaya RT.001 RW.003 Kel.Kertamaya Kec.Bogor Selatan', 'Bogor selatan'),
(106, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Raya Tajur RT.002 RW.004 Kel.Pakuan Kec.Bogor Selatan', 'Bogor selatan'),
(107, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Ence Soemantri Diredja No.1 RT.004 RW.008 Kel.Pamoyanan Kec.Bogor Selatan', 'Bogor selatan'),
(108, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'JL.Raya Cipaku Sukawarno RT. 001 RW. 010 Kel. Cipaku Kec. Bogor Selatan', 'Bogor selatan'),
(109, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Pertokoan Perumahan Green Residence Jl. Pangeran Sogiri RT. 07 RW. 01 Kel. Tanah Baru Kec. Bogor Utara', 'Bogor Utara'),
(110, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Mall Orchad Walk Archade GF 2-3 BNR Kel. Mulya Harja Kec. Bogor Selatan', 'Bogor selatan'),
(111, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Pakuan Hill Raya RT. 02 RW. 11 Kel. Genteng Kec. Bogor Selatan', 'Bogor selatan'),
(112, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Sholeh Iskandar RT. 04 RW. 08 Kel. Kedung Jaya Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(113, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Pajajaran No. 19 RT. 03 RW. 06 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(114, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Kp. Sawah RT. 02 RW. 07 Kel. Cilendek Barat Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(115, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko Pajajaran Regency Blok A No. 8 RT. 01 RW. 18 Kel. Katulampa Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(116, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Veteran No. 28 RT. 02 RW. 01 Kel. Kebon Kelapa Kec. Bogor Tengah Kota Bogor ', 'Bogor Tengah'),
(117, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko Villa Bogor Indah Blok E3 No. 11 RT. 02 RW. 12 Kel. Ciparigi Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(118, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. RE Abdullah RT. 01 RW. 07 Kel. Pasir Mulya Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(119, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko Taman Topi Square Jl. Kapten Muslihat RT. 03 RW. 01 Kel. Paledang Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(120, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. K S Tubun RT. 05 RW. 02 Kel. Cibuluh Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(121, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Batu Tulis RT. 03 RW. 05 Kel. Batu Tulis Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(122, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko The Fusion Walk Blok A No. 09 RT. 01 RW. 05 Kel. Pamoyanan Kec. Bogor Selatan', 'Bogor Selatan'),
(123, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Ruko Taman Tirta Cimanggu RT. 06 RW. 13 Kel. MekarWangi Kec. Tanah Sareal', 'Tanah Sereal'),
(124, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim adjie RT. 04 RW. 04 Kel. Sindangbarang Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(125, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Siliwangi No. 72 RT. 05 RW. 04 Kel. Lawanggintung Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(126, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Siliwangi No. 60C RT. 05 RW. 04 Kel. Lawanggintung Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(127, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. DR. Semeru No. 25 RT. 01 RW. 04 Kel. Kebon Kalapa Kec. Bogor Tengah', 'Bogor Tengah'),
(128, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Dramaga Km. 7 RT. 01 RW. 03 Kel. Margajaya  Kec. Bogor Barat Kota Bogor 16116', 'Bogor Barat'),
(129, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Pajajaran No. 29D RT. 01 RW. 05 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(130, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Cibuluh RT. 03 RW. 08 Kel. Cibuluh Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(131, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Surya Kencana No. 187 RT. 01 RW. 02 Kel. Babakan Pasar Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(132, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pajajaran Ruko V. Point RT. 03 RW. 01 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(133, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Sukasari No. 22 RT. 06 RW. 02 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(134, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pilar No. 2 RT. 01 RW. 01 Kel. Bubulak Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(135, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Semplak RT. 03 RW. 01 Kel. Semplak Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(136, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pemuda 39 RT. 02 RW. 06 Kel. Tanah Sareal Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(137, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Merdeka No. 55 RT. 04 RW. 03 Kel. Kebon Kalapa Kec. Bogor Tengah', 'Bogor Tengah'),
(138, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pajajaran No. 20 RT. 05 RW. 04 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(139, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Ciomas No. 15 RT. 01 RW. 05 Kel. Pasir Kuda Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(140, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Letjen Ibrahim Adjie No. 9 RT. 02 RW. 01 Kel. Sindang Barang Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(141, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Villa Bogor Indah 3 Blok AB 1 No. 20 - 22 RT. 06 RW. 15 Kel. Kedunghalang Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(142, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pakuan Ciheuleut No. 21 RT. 04 RW. 11 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(143, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Kolonel Ahmad Syam KPP IPB Baranangsiang 4 No. B83 RT. 03 RW. 10 Kel. Tanah Baru Kec. Bogor Utara', 'Bogor Utara'),
(144, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pangeran Sogiri RT. 02 RW. 04 Kel. Tanah Baru Kec. Bogor Utara', 'Bogor Utara'),
(145, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pajajaran No. 258 RT. 03 RW. 05 Kel. Bantarjati Kec. Bogor Utara', 'Bogor Utara'),
(146, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Merdeka No. 139 RT. 02 RW. 14 Kel. Menteng Kec. Bogor Barat', 'Bogor Barat'),
(147, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Mayjen Ishak Djuarsa RT. 04 RW. 07 Kel. Gunung Batu Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(148, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. RE. Soemintadiredja Bogor Park Resindence RT. 01 RW. 13 Kel. Pamoyanan Kec. Bogor Selatan', 'Bogor selatan'),
(149, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Kios Tower BK, GF 01.02.03,05 Bogor Valley', 'Tanah Sereal'),
(150, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Surya Kencana No. 291 RT. 01 RW. 02 Kel. Babakan Pasar Kec. Bogor Tengah', 'Bogor Tengah'),
(151, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Perintis Kemerdekaan Ruko Blok C No. 10 - 11 RT. 05 RW. 03 Kel. Kebonkalapa Kec. Bogor Tengah', 'Bogor Tengah'),
(152, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Raya Taman Cimanggu RT. 01 RW. 05 Kel. Kedung Waringin Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(153, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Cimanggu Perikanan Darat RT. 02 RW. 16 Kel. Kedung Waringin Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(154, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. A. Yani No. 126 RT. 01 RW. 04 Kel. Tanah Sareal Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(155, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Cibeureum RT. 01 RW. 05 Kel. Mulyaharja Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(156, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. RE. Soemantadiredja RT. 02 RW. 12 Kel. Pamoyanan Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(157, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Siliwangi No. 40 RT. 01 RW. 13 Kel. Bondongan Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(158, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Pabuaran (Perumahan Dharmawangsa Hills) Kel. Pamoyanan, Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(159, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Dr. Semeru RT. 02 RW. 01 Kel. Menteng Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(160, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Kp. Rancamaya RT. 03 RW. 04 Kel. Rancamaya Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(161, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Empang No. 26 Kel. Empang Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(162, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. Ahmad Sobana No. 44 RT. 05 RW.10 Kel. Tegal Gundil Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(163, 'Pt. Indomarco Prismatama (Indomaret)', 'Minimarket', 'Jl. KH. Soleh Iskandar Kp. Cibadak RT 01 RW 12 Kel. Cibadak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(164, 'Cv. Aryo Wibowo', 'Minimarket', 'Jl. Cikaret RT.001/007 Kel. Cikaret Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(165, 'Cv. Cahaya Bintang', 'Minimarket', 'Jl. Bantarkemang RT. 03 RW. 07 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(166, 'Cv. Top Berkah Melimpah', 'Minimarket', 'Jl. Raya Pajajaran No. 121 RT. 03 RW. 04 Kel. Baranangsiang Kec. Bogor Timur', 'Bogor Timur'),
(167, 'Cv. Mira', 'Minimarket', 'Jl. Mandala No. 1 RT. 05 RW. 02 Kel. Ciparigi Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(168, 'Cv. Anugerah', 'Minimarket', 'Bogor Baru BlokA II No. 21 RT. 01 RW. 08 Kel. Tegalgundil Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(169, 'Pt. Multi Karya Prima', 'Minimarket', 'Jl. Pangeran Sogiri No. 81 RT. 05 RW. 02 Kel. Tanah Baru Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(170, 'Cv. Yakusa', 'Minimarket', 'Jl. Raya Tajur No. 287A RT. 01 RW. 07 Kel. Muarasari Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(171, 'Cv. Yakusa', 'Minimarket', 'Perum Mutiara Bogor Raya Blok R 01 No. 1&3 Kel. Katulampa Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(172, 'Cv. Manggis Sejahtera', 'Minimarket', 'Jl. Raya Pahlawan No. 195 RT. 01 RW. 07 Kel. Bondongan Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(173, 'Cv. Wahyu Kusuma', 'Minimarket', 'Jl. Cilebut Raya RT. 01 RW. 03 Kel. Sukaresmi Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(174, 'Cv. Sinar Terang', 'Minimarket', 'Jl. Pandawa Raya No. 13A rt. 05 rw. 15 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(175, 'Cv. Herlambang Utami', 'Minimarket', 'Jl. Padi No. 1 RT. 02 RW. 09 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(176, 'Toko Hansens', 'Minimarket', 'Jl. Jendral Sudirman No. 36 RT. 07 RW. 04 Kel. Pakuan Kec. Bogor Selatan Kota Bogor ', 'Bogor Selatan'),
(177, 'Pt. Kreasi Gaya Pekerti', 'Minimarket', 'Pertokoan Millenium Jl. Pangeran Sogiri No. 26 RT. 05 RW. 03 Kel. Tanah Baru Kec. Bogor Utara', 'Bogor Utara'),
(178, 'Cv. M City', 'Minimarket', 'Jl. Raya Cikaret RT. 02 RW. 05 Kel. Cikaret Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(179, 'Cv. Mega Mitra Usaha', 'Minimarket', 'Bukit Cimanggu City Blok M-2/9 RT. 02 RW. 11 Kel. Cibaak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(180, 'Cv. Budiman Berdikari', 'Minimarket', 'Jl. Raya Cibuluh Kedung Halang RT. 05 RW. 02 Kel. Cibuluh Kec. Bogor Utara', 'Bogor Utara'),
(181, 'Cv. Keluarga Mandiri', 'Minimarket', 'KP. Curug Mekar No. 1 RT. 04 RW. 06 Kel. Curug Mekar Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(182, 'Cv. Legacy Artha Jaya', 'Minimarket', 'JL. KH. Soleh Iskandar No. 31 RT. 01 RW. 04 Kel. Cibadak Kec. Tanah Sareal', 'Tanah Sereal'),
(183, 'Cv. Fortuna Indo Sukses', 'Minimarket', 'Jl. Adnawijaya D2 No. 3 RT. 04 RW. 13 Kel. Tegalgundil Kec. Bogor Utara', 'Bogor Utara'),
(184, 'Hansens Hardja', 'Minimarket', 'Jl. Siliwangi No. 29 RT. 02 RW. 02 Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(185, 'Cv. Kelana Jaya Sejati', 'Minimarket', 'Jl. Raya Sukabumi HE. Sukarna RT. 01 RW. 08 Kel. Harjasari Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(186, 'Cv. Unggul Makmur', 'Minimarket', 'Jl. Bangbarung Raya No. 11 RT. 01 RW. 07 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(187, 'Cv. Sejahtra Utama', 'Minimarket', 'Jl. Mandala No. 1 (Simpang Pomad) RT. 05 RW. 02 Kel. Ciparigi Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(188, 'Cv. Utama Damai', 'Minimarket', 'Jl. Pajajaran Indah V RT. 05 RW. 13 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(189, '(Perseorangan)', 'Minimarket', 'Jl. Ahmad Sobana (Bangbarung Raya) No. 44, RT. 05 RW. 10 Kel. Tegalgundil Kec. Bogor Utara', 'Bogor Utara'),
(190, 'Cv. Tiga Bintang Gemilang', 'Minimarket', 'Jl. Pangeran Sogiri No. 40 RT. 05 RW. 02 Kel. Tanah Baru Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(191, 'Cv. Cahaya Gilang', 'Minimarket', 'BCC Green Land Residence Ruko DD2 No. 21 - 22, Kel. Sukadamai, Kec. Tanah Sareal, Kota Bogor', 'Tanah Sereal'),
(192, 'Cv. Surya Cimanggu', 'Minimarket', 'Bukit Cimanggu Villa Blok A.2 No. 10 - 11 Kel. Cibadak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(193, 'Cv. Genta Usaha Mandiri', 'Minimarket', 'Jl. Boulevard Bogor Nirwana Raya Orchard Walk Blok A.6 Kel. Mulyaharja Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(194, 'Cv. Anugerah Retail', 'Minimarket', 'Jl. Raya Tajur Wangun No. 2 RT. 02 RW. 06 Kel. Harjasari Kec. Bogor Selatan', 'Bogor selatan'),
(195, 'Lamaz Group', 'Minimarket', 'Jl. Taman Malabar No. 20 RT. 01 RW. 04 Kel. Babakan Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(196, 'Cv. Bina Vania Sukses', 'Minimarket', 'Plaza Jambu Dua Triple Decker Lt. 2, Jl. A. Yani No. 1 Kel. Bantar Jati, Kec. Bogor Utara, Kota Bogor', 'Bogor Utara'),
(197, 'Cv. Fortuna Indo Sukses', 'Minimarket', 'Jl. Tumenggung Wiradiredja RT. 03 RW. 07 Kel. Cimahpar Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(198, 'Cv. Cahaya Firdaus, Tbk (Indomaret)', 'Minimarket', 'Perumahan Bukit Mekarwangi Sektor 3 Puri Anggrek, RT. 02 RW. 05 Kel. Mekarwangi Kec. Tanah Sareal', 'Tanah Sereal'),
(199, 'Pt. Indomarco Prismatama', 'Minimarket', 'Jl. Raya Pahlawan No. 106/107 Rt. 01 Rw. 07 Kel. Bondongan Kec. Bogor Selatan Kota Bogor ', 'Bogor Selatan'),
(200, 'Pt. Indomarco Prismatama', 'Minimarket', 'Kp. Rancamaya Rt. 003 Rw. 004 Kel. Rancamaya Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(201, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Sempur No. 52 RT. 01 RW. 03\nKel. Sempur Kec. Bogor Tengah', 'Bogor Tengah'),
(202, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Taman Cimanggu RT. 05 RW. 01\nKel. Ked Waringin Kec. Tanah Sareal ', 'Tanah Sereal'),
(203, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Taman CimangguTengah Blok W-II/ID RT. 04 RW. 09 , Kel. Kedung Waringin Kec. Tanah Sareal', 'Tanah Sereal'),
(204, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Curug Mekar RT. 05 RW. 06 Kel. Curug Mekar Kec. Bogor Barat', 'Bogor Barat'),
(205, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Brigjend Saptaji Hadiprawira RT. 01 RW. 07 Kel. Cilendek Barat Kec. Bogor Barat', 'Bogor Barat'),
(206, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Raya Semplak RT. 01 RW. 10 Kel. SEMPLAK Kec. Bogor Barat', 'Bogor Barat'),
(207, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Semplak Rt. 02 Rw. 07 \nKel. Semplak Kec. Bogor Barat ', 'Bogor Barat'),
(208, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Tajur Rt. 04 Rw. 01 Kel. Pakuan \nKec. Bogor Selatan ', 'Bogor selatan'),
(209, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Tajur Rt. 02 Rw. 07 Kel. Muarasari \nKec. Bogor Selatan ', 'Bogor selatan'),
(210, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Achmad Adnawijaya Rt. 01 Rw. 16\nKel. Tegalgundil Kec. Bogor Utara ', 'Bogor Utara'),
(211, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Tumenggung Wiradiredja RT. 04 RW. 07 Kel. Cimahpar Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(212, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Tanah Baru Cimahpar No. 18, RT. 02 RW. 05 Kel. Tanah Baru Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(213, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Tajur No. 79  Rt 003 Rw 003 kel. Tajur', 'Bogor Timur'),
(214, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Mayjen Ishak Djuarsa RT. 02 RW. 012 Kel. Loji Kec. Bogor Barat', 'Bogor Barat'),
(215, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL.. RE Abdullah No. 28 A RT. 02 RW. 02 Kel. Pasirjaya Kec. Bogor Barat', 'Bogor Barat'),
(216, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Empang/ Pahlawan RT. 03 RW. 011 Kel. Empang Kec. Bogor Selatan', 'Bogor Selatan'),
(217, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Siliwangi No. 60 RT. 05 RW. 04 Kel. Lawanggintung Kec. Bogor Selatan', 'Bogor Selatan'),
(218, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Tegalega Blok A10 RT. 01 RW. 01 Kel. Tegallega Kec. Bogor Tengah', 'Bogor Tengah'),
(219, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Tajur RT. 02 RW. 01 Kel. Tajur Kec. Bogor Timur ', 'Bogor Timur'),
(220, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Achmad Adnawijaya Blok D1 No. 1 RT. 04 RW. 013 Kel. Tegalgundil Kec. Bogor Utara', 'Bogor Utara'),
(221, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Raya Cimanggu RT. 01 RW. 016 Kel. Kedung Waringin Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(222, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'KP. Kencana 2 RT. 01 RW. 09 Kel. Kencana Kec. Tanah Sareal, Kota Bogor', 'Tanah Sereal'),
(223, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Raya Wangun RT. 04 RW. 04 Kel. Sindang Sari, Kec. Bogor Timur Kota Bogor ', 'Bogor Timur'),
(224, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Baranang Siang Indah Blok Q1 No. 21 RT.12 RW. 05 Kel. Katulampa Kec. Bogor Timur , Kota Bogor', 'Bogor Timur'),
(225, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Pasir Kuda No. 01 RT. 01 RW. 05 Kel. Pasir Kuda Kec. Bogor Barat Kota Bogor Barat', 'Bogor Barat'),
(226, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Mayjen Ishak Djuarsa No. 09 RT. 01 RW.10 Kel. Gunung Batu Kec. Bogor Barat', 'Bogor Barat'),
(227, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Muara No. 21 RT. 02 RW. 01 Kel. Pasir Kuda Kec. Bogor Barat ', 'Bogor Barat'),
(228, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. RE Abdullah No. 28A RT. 02 RW. 01 Kel. Pasir Jaya Kec. Bogor Barat', 'Bogor Barat'),
(229, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Pahlawan No. 164 RT. 05 RW. 08 Kel. Empang Kec. Bogor Selatan', 'Bogor selatan'),
(230, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Raya Tajur RT. 04 RW. 06 Kel. Tajur Kec. Bogor Timur ', 'Bogor Timur'),
(231, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'JL. Dr Semeru No. 50 RT. 01 RW. 02 Kel. Menteng Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(232, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pulo Empang No. 60 RT. 01 RW. 05 Kel. Paledang Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(233, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Empang RT. 03 RW. 01 Kel. Empang Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(234, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Tajur RT. 03 RW. 07 Kel. Muarasari Kec. bogor Selatan Kota Bogor', 'Bogor Selatan'),
(235, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. RE. Martadinata No. 1 RT. 03 RW. 05 Kel. Pabaton Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(236, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya KS. Tubun Km. 52 No. 285 RT. 03 RW. 01 Kel. Ciparigi Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(237, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. KH. Abdullah Bin Nuh RT. 01 RW. 01 Kel. Margajaya Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(238, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pandu Raya RT. 01 RW. 13 Kel. Tegalgundil Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(239, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Ruko Hollywood Square Jl. Pangeran Sogiri Blok. C No. 11 RT. 01  RW. 02 Kel. Tanah  Baru Kec. Bogor Utara', 'Bogor Utara'),
(240, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Ahmad Sayani RT. 03 RW. 07 Kel. Mekarwangi Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(241, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Johar Raya Kp. Benda Kaum RT. 02 RW. 04 Kel. Kedung Waringin Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(242, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Pancasan RT. 01 RW. 07 Kel. Pasir Jaya Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(243, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Cifor, Kp. Tambakan No. 33 RT. 01 RW. 05 Kel. Situ Gede Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(244, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Letjen Ibrahim Adjie Sindang Barang RT. 01 RW. 04 Kel. Sindang Barang Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(245, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Pajajaran No. 12 RT. 02 RW. 05 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(246, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. KH. Sholeh Iskandar No. 3 RT. 01 RW. 06 Kel. Kedung Badak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(247, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. KS. Tubun Pangkalan Raya RT. 03 RW. 02 Kel. Cibuluh Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(248, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Dreded Layung Sari RT. 02 RW. 07 Kel. Empang Kec. Bogor Selatan', 'Bogor selatan'),
(249, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Padjajaran No. 17 RT. 03 RW. 05 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(250, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. KS. Tubun RT. 04 RW. 08 Kel. Kedunghalang Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(251, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Bangbarung RT. 05 RW. 06 Kel. Bantarjati Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(252, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Kayu Manis RT. 04 RW. 01 Kel. Kayu Manis Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(253, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. DR. Semeru No. 118 RT. 02 RW. 01 Kel. Menteng Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(254, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Bogor Baru Blok A2 No. 19 RT. 01 RW. 08 Kel. Tegalgundil Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(255, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Cilebut No. 09 RT. 01 RW. 02 Kel. Sukaresmi Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(256, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pandawa Ujung RT. 03 RW. 06 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(257, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Letjend Ibrahim Adjie Sindang Barang RT. 02 RW. 09 Kel. Sindangbarang Kec. Bogor Barat Koata Bogor', 'Bogor Barat'),
(258, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Parung Banteng RT. 03 RW. 01 Kel. Katulampa Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(259, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Wangun No. 412 A&B RT. 05 RW. 01 Kel. Sindangsari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(260, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Kav IPB Baranangsiang Blok A.39 RT. 03 RW. 10 Kel. Tanah Baru Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(261, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Wangun No. 300 RT. 01 RW. 03 Kel. Sindangsari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(262, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Cipaku RT. 01 RW. 10 Kel. Cipaku Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(263, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pandu Raya RT. 01 RW. 15 Kel. Tegal Gundil Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(264, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Gg. H. Burhan No. 1 RT. 02 RW. 03 Kel. Marga Jaya Kec. Bogor Barat ', 'Bogor Barat'),
(265, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya KS. Tubun RT. 03 RW. 03 Kel. Cibuluh Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(266, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Kayu Manis RT. 04 RW. 14 Kp. Situ Asem Kel. Mekarwangi Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(267, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Siliwangi - Sukasari No. 323 RT. 01 RW. 02 Kel. Babakan Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(268, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Pemda RT. 06 RW. 02 Kel. Kedung Halang Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(269, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Raya Pajajaran No. 80 RT. 01 RW. 04 Kel. Tegal Lega Kec. Bogor Tengah', 'Bogor Tengah'),
(270, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Dewi Sartika Kel. Cibogor Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(271, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pajajaran No. 84 RT. 01 RW. 11 Kel. Baranangsiang Kec. Bogor Timur', 'Bogor Timur'),
(272, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Suryakencana No. 103 RT. 04 RW. 06 Kel. Babakan Pasar Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(273, 'Pt. Sumber Alfaria Trijaya (Alfamart)', 'Minimarket', 'Jl. Pabuaran No. 8 RT. 02 RW.         Kel. Pamoyanan Kec. Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(274, 'Cv. Media Tujuh Tiga (Alfamart Pandawa)', 'Minimarket', 'Jl. Pandawa Raya B1 No. 8 RT. 04 RW. 016 Kel. Bantarjati Kec. Bogor Utara', 'Bogor Utara'),
(275, 'Cv. Multi Valatia', 'Minimarket', 'Jl. KH. Soleh Iskandar No. 28 Kel. Cibadak Kec. Tanah Sareal', 'Tanah Sereal'),
(276, 'Pt. Unipar Dasa Pratama', 'Minimarket', 'Jl. Raya Tumenggung Wiradiredja No. 33, RT. 05 RW. 05 Kel. Tanah Baru Kece. Bogor Utara Kota Bogor', 'Bogor Utara'),
(277, 'Cv Adila Christi Industries', 'Minimarket', 'Jl. Pangeran Sogiri No. 299 RT. 05 RW. 11 Kel. Tanah Baru Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(278, 'Cv. Indah Sejati', 'Minimarket', 'Jl. Kresna Raya No. 50F RT. 04 RW. 14 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(279, 'Cv. Alfa Partogi', 'Minimarket', 'Jl. KH. Abdullah Bin Nuh RT. 01 RW. 01 Kel. Bubulak Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(280, 'Cv. Melinda Sukses Sentosa', 'Minimarket', 'Jl. Raya Pemda Kp. Tinggilis RT. 02 RW. 13 Kel. Kedung Halang Kec. Bogor Utara, Kota Bogor', 'Bogor Utara'),
(281, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Raya Pajajaran No. 96 Rt. 02 Rw. 03 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(282, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Raya Pajajaran No. 78 Rt. 06 Rw. 04 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timut'),
(283, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Perum Kiara Residence Rt, 05 Rw. 06 Kel. Curug Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(284, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Raya Tajur Rt. 01 Rw. 02 Kel. Sindang Sari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(285, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl.  Pengadilan No. 27 Rt. 05 Rw. 03 Kel. Pabaton Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(286, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Raya Tajur Rt. 01 Rw. 07 Kel. Muarasari Kec. Bogor Selatan', 'Bogor selatan'),
(287, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Perumahan Bukit Cimanggu Villa City Blok DD2 Kel. Sukadamai Kec. Tanah Sareal ', 'Tanah Sereal'),
(288, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Perdana Raya Rt. 02 Rw. 10 Kel. Kedung Badak Kec. Tanah Sareal', 'Tanah Sereal'),
(289, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Perikanan Barat Gg. H. Soleh Rt. 01 Rw. 06 Kel. Kedung Waringin Kec. Tanah Sareal', 'Tanah Sereal'),
(290, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Soleh Iskandar Rt. 01 Rw. 10 Kel. Kedung Badak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(291, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Kp. Tunggilis Rt. 01 Rw. 13 Kel. Kedung Halang Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(292, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Perum Bumi Menteng Asri Jl. Terapi Raya Rt. 01 Rw. 19 Kel. Menteng Asri Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(293, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Brigjen Saptaji Hadiprawira Rt. 02 Rw. 09 Kel. Cilendek Barat Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(294, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Kencana Raya Rt. 03 Rw. 02 Kel. Kencana Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(295, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Pamoyanan Rt. 03 Rw. 02 Kel. Pamoyanan Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(296, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Rancamaya Rt. 01. Rw. 04 Kel. Rancamaya Kec. Bogor Selatan Kota Bogor', 'Bogor selatan'),
(297, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Curug Indah No. 15 Rt. 05 Rw. 06 Kel. Curug Mekar Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(298, 'Pt. Sumber Alfaria Trijaya, Tbk (Alfamart)', 'Minimarket', 'Jl. Pool Binamarga Rt. 02 Rw. 10 Kel. Kayumanis Kec Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(299, 'Cv. Gsv Food Retail And Services', 'Minimarket', 'Jl. Cilubang (Babakan Lebak) Rt. 01 Rw. 05 Kel. Balumbang Jaya Kota Bogor', 'Bogor Barat'),
(300, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Raya Semplak Rt. 03 Rw. 04 \nKel. Semplak Kec. Bogor Barat ', 'Bogor Barat'),
(301, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Pamoyanan Rt. 03 Rw. 07 \nKel. Pamoyanan Kec. Bogor Selatan ', 'Bogor selatan'),
(302, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Brigjen Saptadji RT. 01 RW. 01 Kel. Semplak Kec. Bogor Barat', 'Bogor Barat'),
(303, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Raya Pasir Kuda RT. 01 RW. 05 Kel. Pasir Kuda Kec. Bogor Barat', 'Bogor Barat'),
(304, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Dr. Semeru RT. 01 RW. 012 Kel. Menteng Kec. Bogor Barat', 'Bogor Barat'),
(305, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Mayjend Ishak Djuarsa RT. 01 RW. 012 Kel. Loji Kec. Bogor Barat', 'Bogor Barat'),
(306, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'JL. Brigjend Saptaji Hadi RT. 01 RW. 09 Kel. Cilendek Kec. Bogor Barat ', 'Bogor Barat'),
(307, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Pertokoan Damara Village Blok A-1 RT. 02 RW. 09 Kel. Ciparigi Kec. Bogor Utara', 'Bogor Utara'),
(308, 'Pt. Midi Utama Indonesia, Tbk (Alfa Midi)', 'Minimarket', 'Jl. Bogor Baru RT. 08 RW. 09 Kel. Tegallega Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(309, 'Pt. Midi Utama Indonesia (Alfamidi) ', 'Minimarket', 'Jl. Kapten Yusuf RT. 05 RW. 04 Kel. Cikaret Kec. Bogor Selatan', 'Bogor selatan'),
(310, 'Pt. Midi Utama Indonesia, Tbk', 'Minimarket', 'Perumahan Bukit Cimanggu City Ruko Blok M1 No. 1-3 RT. 02 RW. 11 Kel. Cibadak, Kec. Tanah Sareal Kota Bogor', 'Tanah Sareal'),
(311, 'Pt. Global Niaga Perkasa (Ceriamart)', 'Minimarket', 'Jl. Barangansiang Indah 2 No. 1 RT. 03 RW. 013 Kel. Baranangsiang Kec. Bogor Timur', 'Bogor Timur'),
(312, 'Pt. Global Niaga Perkasa (Ceriamart)', 'Minimarket', 'JL.RE Soemantadiredja Bogor Park Residence RT. 001 RW. 013 Kel. Pamoyanan Kec. Bogor Selatan', 'Bogor selatan'),
(313, 'Pt. Global Niaga Perkasa (Ceriamart)', 'Minimarket', 'Jl. KH Ahmad Sya`yani RT. 03 RW. 05 Kel. Mekarwangi Kec. Tanah Sareal', 'Tanah Sareal'),
(314, 'Giant Yasmin', 'Hypermarket', 'Jalan KH. Abdullah Bin Nuh Kav. 33 No. 37, Kel. Curugmekar, Kec. Bogor Barat, Kota Bogor, Jawa Barat 16113', 'Bogor Barat'),
(315, 'Giant Botani', 'Hypermarket', 'Jl. Pajajaran Kel. Tegallega\nKec. Bogor Tengah', 'Bogor Tengah'),
(316, 'Ada Swalayan', 'Hypermarket', 'Jl. Raya Pajajaran Blok Babakan No. 31, Kel. Baranangsiang, Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(317, 'Yogya Juction', 'Hypermarket', 'Jl. Sawojajar No.12b, Kel. Pabaton, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16121', 'Bogor Tengah'),
(318, 'Yogya (Plaza Indah Bogor)', 'Hypermarket', 'Jl. KH. Soleh Iskandar RT. 02 RW. 07 \nKel. Kedung Badak Kec. Tanah Sareal ', 'Tanah Sereal'),
(319, 'Carefour', 'Hypermarket', 'Jl. KH. Abdullah Bin Nuh RT. 05 RW. 04 Kel. Cibadak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(320, 'Pt. Catur Mitra Sejati Sentosa (Mitra10)', 'Hypermarket', 'Jl. KH. Sholeh Iskandar No. 08 RT. 04 RW. 09 Kel. Kedungbadak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(321, 'Giant Dermaga', 'Hypermarket', 'Jl. Raya Dramaga No. 14, Kel. Margajaya Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(322, 'Pt. Akur Pratama', 'Hypermarket', 'Jl. KH. Soleh Iskandar, RT. 04 RW. 09 Kel. Kedungbadak Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(323, 'Giant Ekstra Taman Yasmin', 'Hypermarket', 'Jl. KH. Abdullah Bin Nuh Kel. Curug Mekar Kec. Bogor Barat, Kota Bogor', 'Bogor Barat'),
(324, 'Giant Ekstra Pajajaran', 'Hypermarket', 'Jl. Raya Pajajaran RT. 04 RW. 11 Kel. Baranangsiang Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(325, 'Ramayana Tajur', 'Department Store', 'Jl. Raya Tajur RT.02/RW.02, Sindangsari, Bogor, Kel. Muarasari, Kec. Bogor Sel., Kota Bogor, Jawa Barat 16146', 'Bogor selatan'),
(326, 'Matahari (Plaza Lippo Elos)', 'Department Store', 'Lippo Plaza Bogor, Lt. UG, 1-2, Jalan Siliwangi No. 123, Kel. Sukasari, Kec. Bogor Timur, Kota Bogor, Jawa Barat 16142', 'Bogor Timur'),
(327, 'Ananda', 'Department Store', 'Jl. Veteran No.176, RT.7/RW.3, Kel. Panaragan, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16125', 'Bogor Tengah'),
(328, 'Ramayana (Plaza Jambu Dua)', 'Department Store', 'FL. 4, Plaza Jambu Dua, JL. Raya Pajajaran, Bantarjati, 16153 Bogor,, Indonesia, Kel. Bantarjati, Kec. Bogor Utara, Kota Bogor', 'Bogor Utara'),
(329, 'Ramayana (Btm)', 'Department Store', 'Jl. Ir. H. Juanda No.1, Ramayana Bogor Trade Mall, Kel. Paledang, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16122', 'Bogor Tengah'),
(330, 'Tren Shop', 'Department Store', 'Jl. Ir. Haji Djuanda No.76, Kel. Gudang, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16123', 'Bogor Tengah'),
(331, 'Ria Busana 1 (Btm)', 'Department Store', 'Jl. Ir. Haji Djuanda No.74, Kel. Gudang, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16123', 'Bogor Tengah');
INSERT INTO `swalayan` (`id_gerai`, `nama_gerai`, `jenis_gerai`, `alamat_gerai`, `kecamatan_gerai`) VALUES
(332, 'Ria Busana 2 (Btm)', 'Department Store', 'Jl. Ir. Haji Djuanda No.72, Gudang, Bogor Tengah, Kota Bogor, Jawa Barat 16123', 'Bogor Tengah'),
(333, 'Ria Busana (Dpn Plaza Bogor)', 'Department Store', 'Plaza Bogor, Jl. Surya Kencana No.16, Kel. Babakan Ps., Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16131', 'Bogor Tengah'),
(334, 'Ria Busana (Dpn Dewi Sartika)', 'Department Store', 'Jl. Dewi Sartika No.52A, Kel. Pabaton, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(335, 'Matahari (Kapten Muslihat)', 'Department Store', 'Jl. Kapten Muslihat Jl. Paledang, Kel. Pabaton, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16122', 'Bogor Tengah'),
(336, 'Toko Terang', 'Department Store', 'Jl. Mantarena No.17, Kel. Panaragan, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16125', 'Bogor Tengah'),
(337, 'Matahari (Btw)', 'Department Store', 'Jl. Veteran No.27, Kel. Panaragan, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16125', 'Bogor Tengah'),
(338, 'Meita', 'Department Store', 'Jl. Merdeka No.39-41, Kb. Klp., Bogor Tengah, Kota Bogor, Jawa Barat 16125', 'Bogor Tengah'),
(339, 'Ria Busana (Samping Pgb)', 'Department Store', 'Gang Cemara, Kel. Ciwaringin, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(340, 'Shangrila', 'Department Store', 'Jl. Merdeka Kel. Ciwaringin\nKec. Bogor Tengah', 'Bogor Tengah'),
(341, 'Ramayana (Plaza Dewi Sartika)', 'Department Store', 'Jalan Dewi Sartika No.1, Kel. Pabaton, Kec. Bogor Tengah, Kota Bogor, Jawa Barat 16124', 'Bogor Tengah'),
(342, 'V\'s ', 'Department Store', 'Jl. Perintis Kemerdekaan Kel. Kebon kelapa Kec. Bogor Tengah', 'Bogor Tengah'),
(343, 'Boink', 'Department Store', 'Jl. A. Yani Blok Pr 1 No.96, RT.5/RW.2, Kel. Cibuluh, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16151', 'Bogor Utara'),
(344, 'Ramayana/Robinson ', 'Department Store', 'Jl. KH. Soleh Iskandar Kel. Ked Waringin \nKec. Tanah Sareal ', 'Tanah Sereal'),
(345, 'Pt. Matahari Putra Prima, Tbk', 'Department Store', 'Lippo Plaza Keboen Raya Bogor, Jl. Raya Pajajaran No. 27 RT. 01 RW. 04 Kel. Babakan Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(346, 'Pt. Ramayana Lestari Sentosa, Tbk.', 'Department Store', 'Jl. Surya Kencana No. 3 Plaza Pasar Baru  Bogor', 'Bogor Tengah'),
(347, 'Pt. Matahari Putra Prima, Tbk', 'Department Store', 'Jl. Gajah Mada No. 19-26', ''),
(348, 'Pt. Matahari Putra Prima, Tbk', 'Department Store', 'Jl. Dr. Semeru No. 19 Kel. Kebon Kalapa Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(349, 'Pt. Lazarus Citra Indah', 'Department Store', 'Jl. Raya Pajajaran Kel. Tegallega Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(350, 'Pt. Akur Pratama (Yogya Dept Store)', 'Department Store', 'Jl. Raya Dramaga Km. 7 RT. 03 RW. 02 Kel. Marga Jaya Kec. Bogor Barat Kota Bogor', 'Bogor Barat'),
(351, 'Pt. Akur Pratama (Yogya Dept Store)', 'Department Store', 'Jl. Jenderal Sudirman, No. 11-13, RT : 002, RW : 003, Kel : Pabaton, Kec : Bogor Tengah', 'Bogor Tengah'),
(352, 'Lottemart', 'Perkulakan', 'Jalan KH Sholeh Iskandar, Kel. Kedung Waringin, Cibadak, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16164', 'Tanah Sereal'),
(353, 'Bogor Trade World', 'Pusat Perbelanjaan', 'Jl. IR. H. Djuanda No. 68 Kel. Paledang Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(354, 'Lippo Plaza Ekalokasari', 'Pusat Perbelanjaan', 'Jl. Siliwangi, Kel. Sukasari Kec. Bogor Timur Kota Bogor', 'Bogor Timur'),
(355, 'Tajur Trade Mall', 'Pusat Perbelanjaan', 'Jl. Raya Tajur No. 112A Kel. Muara Sari Kecamatan Bogor Selatan Kota Bogor', 'Bogor Selatan'),
(356, 'Botani Square', 'Pusat Perbelanjaan', 'Jl. Raya Pajajaran No. 3 Kel. Tegallega Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(357, 'Lippo Plaza Koboen Raya', 'Pusat Perbelanjaan', 'Jl. Pajajaran No. 27 RT. 01 RW. 04 Kel. Babakan Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(358, 'Plaza Jambu Dua', 'Pusat Perbelanjaan', 'Jl. Jend. Ahmad Yani No. 1 RT. 02 RW. 05 Kel. Bantarjati Kec. Bogor Utara Kota Bogor', 'Bogor Utara'),
(359, 'Plaza Indah Bogor', 'Pusat Perbelanjaan', 'Jl. Sholeh Iskandar Kel. Kedung Badak Kec. Tanah Sareal', 'Tanah Sereal'),
(360, 'Bogor Square', 'Pusat Perbelanjaan', 'Jl. KH. Sholeh Iskandar No. 121 Kel. Kedung Jaya Kec. Tanah Sareal Kota Bogor', 'Tanah Sereal'),
(361, 'Transmart Yasmin', 'Pusat Perbelanjaan', 'Jl. KH. Abdullah Bin Nuh RT. 05 RW. 04 Kel. Cibadak, Kec. Tanah Sareal, Kota Bogor', 'Tanah Sereal'),
(362, 'Pusat Grosir Bogor', 'Pusat Perbelanjaan', 'Jl. Perintis Kemerdekaan Kel. Kebon Kelapa Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(363, 'Bogor Trade World', 'Pusat Perbelanjaan', 'Jl. Veteran No. 27 Kel. Panaragan Kecamatan Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(364, 'Plaza Dewi Sartika', 'Pusat Perbelanjaan', 'Jl. Dewi Sartika Kel. Cibogor Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(365, 'Citty Plaza Bogor', 'Pusat Perbelanjaan', 'Jl. Mantarena No. 09 RT. 02 RW. 03 Kel. Panaragan Kec. Bogor Tengah Kota Bogor', 'Bogor Tengah'),
(366, 'Boxies 123', 'Pusat Perbelanjaan', 'Jl. Raya Tajur No. 123 Kel. Tajur Kec. Bogor Timur', 'Bogor Timur');

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kelurahan` char(30) NOT NULL,
  `kecamatan` char(30) NOT NULL,
  `produk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id`, `nama`, `alamat`, `kelurahan`, `kecamatan`, `produk`) VALUES
(1, 'Dapur Hijau', 'Komplek Balitro No. 36 RT 03 RW 20 Kel. Menteng', 'Menteng', 'Bogor Barat', 'Minuman Kunyit Asem'),
(2, 'Sila Tea House', 'Baranangsiang Indah Jl. Jatiluhur VII Blok G2/26 Kel. Katulampa', 'Baranangsiang', 'Bogor Timur', 'Teh'),
(3, 'Kareema Chips', 'Kp. Bantar Peuteuy RT 02/04 No. 1 Kel. Tajur', 'Tajur', 'Bogor Timur', 'Keripik Tempe'),
(4, 'Qircha', 'Jl. A. Yani Gg. Karet I RT 04/01 No. 1 Kel. Tanah Sareal', 'Tanah Sareal', 'Tanah Sareal', 'Keripik Pisang'),
(5, 'Madu Hutan Multiflora', 'Komplek Sindangbarang Grande No 32 Kel. Sindangbarang', 'Sindangbarang', 'Bogor Barat', 'Madu'),
(6, 'Wita Raharja', 'Jl. Anggrek No. 1 RT 002/004 Kel. Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Rempah - rempah'),
(7, 'Kelipik Picang Bogor', 'Jl. Dekeng RT 3/3 Kel. Genteng', 'Genteng', 'Bogor Selatan', 'Keripik Pisang'),
(8, 'Umiku', 'Vila Bogor Indah Blok CC3/9 RT 06 RW 13 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Asinan Buah'),
(9, 'Harmony', 'Jl. Tunjung Biru No. 61 Villa Duta Kel. Baranangsiang', 'Baranangsiang', 'Bogor Timur', 'Keripik Sayur'),
(10, 'Rumah Rendang Gepuk', 'Vila Citra Bantarjati Blok A8 No. 6 kel. Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Rendang'),
(11, 'DWS 212', 'Jl. Palem  Putri II/29 Taman Yasmin sektor V Kel. Curug ', 'Curug', 'Bogor Barat', 'Pempek Goreng '),
(12, 'PD. Karta', 'Baranangsiang Indah BV/23 RT 06 RW 05 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Manisan Kolang kaling'),
(13, 'Kondang Indah Jaya', 'Kp. Cikondang RT 2 RW 4 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Keripik Pisang'),
(14, 'Serut Kentang Menantu', 'Baranangsiang Indah Blok I-3 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Keripik Kentang'),
(15, 'Aylani Food', 'Pakuan Hill Cluster Livistona B21 Kel. Genteng', 'Genteng', 'Bogor Selatan', 'Kue Kering'),
(16, 'D & D', 'Kp. Bantar Peuteuy RT 02/02 No. 30 Kel. Tajur', 'Tajur', 'Bogor Timur', 'Keripik Kentang Kering'),
(17, 'Sehat Prima Lestari', 'Jl. Cilebut Timur Kp. Sugih No. 4 RT 01/02 Kel. Sukaresmi', 'Sukaresmi', 'Tanah Sareal', 'Minuman Sari Kurma'),
(18, 'De\'moe Cakes', 'Vila Bogor Indah 3 Blok BA3 No. 22 Kel. Kedunghalang', 'Kedunghalang', 'Bogor Utara', 'Kue Kering'),
(19, 'Dapoer Tenies', 'Vila Bogor Indah 3 Blok AB3 No. 2 - 3 Kel. Kedunghalang', 'Kedunghalang', 'Bogor Utara', 'Keripik Kentang Balado'),
(20, 'Morale Cookies', 'Jl. Mekar Saluyu No. 17 Kel. Cilendek Barat', 'Cilendek Barat', 'Bogor Barat', 'Kue Kering'),
(21, 'Gave\"s Cake', 'Jl. Ring Road Lingkar Utara Ruko Yasmin sektor VI No. 168 Kel. Curug Mekar', 'Curugmekar', 'Bogor Barat', 'Kue Kering'),
(22, 'D\'wie Crispy', 'Vila Citra Bantarjati Blok A5 No. 3 Kel. Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Keripik Paru'),
(23, 'Dapur Al-Rasyid', 'Kp. Babakan Baru RT 02 RW 14  No. 143 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Coklat'),
(24, 'Depfoods', 'Kp. Pamoyanan RT 03 RW 02 No. 1 Kel. Ranggamekar', 'Ranggamekar', 'Bogor Selatan', 'Minuman Serbuk Jahe'),
(25, 'Dapur Sundanese Bogor', 'Jl. Kol. Enjo Martadisastra RT 4/1 No. 13 Kel. Kedung Badak', 'Kedung Badak', 'Tanah Sareal', 'Keripik Jamur '),
(26, 'CV. Alya Madina', 'Jl. Ama Sandi No. 32 RT 04/08 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Cireng'),
(27, 'Bumi Keraton', 'Kebun Raya Residence Jl. Tanjung Raya Blok M No. 13 Kel. Pasir Kuda', 'Pasir Kuda', 'Bogor Barat', 'Lapis Keraton'),
(28, 'Sukses Sejahtera', 'Komp. IPB Baranangsiang III Blok I - 3', 'Baranangsiang', 'Bogor Timur', 'Minumal serbuk bekatul'),
(29, 'Minuman Tradisional Bu Dokter', 'Bukit Bogor Raya i - 18 Kel. Cimahpar', 'Cimahpar', 'Bogor Utara', 'Minuman kunyit asam'),
(30, 'Pastry Bogor', 'Jl. Mesjid II Blkng No. 4 Kel. Empang', 'Empang', 'Bogor Selatan', 'Kue kering'),
(31, 'Nu Teteh', 'Vila Bogor Indah Blok CC7 No. 2 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Keripik Kentang'),
(32, 'Macya Nusantara', 'Kp. Tunggilis No. 16 RT 04 RW o2 Kel. Kedunghalang', 'Kedunghalang', 'Bogor Utara', 'Minuman serbuk teh'),
(33, 'CV. Bandoe', 'Komp. Haji Jl. Jarona A2 No. 14 Kel. Cimahpar', 'Cimahpar', 'Bogor Utara', 'Kue Kering'),
(34, 'Warung Sari Rosa', 'Jl. Lolongok Timur RT 02 RW 05 No. 36 Kel. Empang', 'Empang', 'Bogor Selatan', 'Kue Biji Ketapang'),
(35, 'Kiliwawi Global Sejahtera', 'Parahyangan Regency Blok 6 No. 6 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Minuman Sayur'),
(36, 'B \"Rizzoles\"', 'Jl. Pahlawan Gg. Apu No. 10 RT 02 RW 09 Kel. Bondongan', 'Bondongan', 'Bogor Selatan', 'Risoles Goreng'),
(37, 'Rumah Kue Mpoeq', 'Taman Cimanggu Utara Blok X6 No. 8 Kel. Kedung Waringin', 'Kedung Waringin', 'Tanah Sareal', 'Bolu'),
(38, 'CV. Aruziki', 'Vila Bogor Indah Blok F3 No. 36 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Mochi'),
(39, 'PT. Berkah Ala Nabi', 'Jl. Cikaso Blok B5 No. 3 Perum Bogor Baru Kel. Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Madu'),
(40, 'Rachyati', 'Jl. Dadali II No. 15 Kel. Tanah Sareal', 'Tanah Sareal', 'Tanah Sareal', 'Ikan balita goreng  (baby fish)'),
(41, 'Dapur Kang Nunu', 'Ciwaringin Kaum Gg. Asem No. 1 Kel. Ciwaringin', 'Ciwaringin', 'Bogor Tengah', 'Sambal'),
(42, 'Kue Pia Dua Apel', 'Jl. Abesin No. 14 RT 01 RW 04 Kel. Pabaton', 'Pabaton', 'Bogor Tengah', 'Kue Pia'),
(43, 'Cendana', 'BNR Cluster Cendana XII No. 12 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Minuman Gula Asam'),
(44, 'Ayana Pastry n Cake', 'Jl. Raya Cipaku No. 15 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Roti'),
(45, 'D\'RenggO', 'Kp. Cimanengah RT 02/05 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Cireng'),
(46, 'KWT Sereh Wangi', ' Sukamanah No. 46 RT 01/01 Kel. Genteng', 'Genteng', 'Bogor Selatan', 'Jipang Bihun'),
(47, 'Argafood', 'Jl. Cendrawasih No. 42 Jayatunggal Kel. Batutulis', 'Batutulis', 'Bogor Selatan', 'Minyak/ Lemak  Ayam (Chicken Fat)'),
(48, 'Raraos', 'Jl. Cikaret No. 1 RT 01/05 Kel. Cikaret', 'Cikaret', 'Bogor Selatan', 'Brownis'),
(49, 'Ar Fish', 'Komp. Perikanan Blok B7 RT 02/03 Kel. Cikaret', 'Cikaret', 'Bogor Selatan', 'Keripik Kulit Ikan Patin'),
(50, 'UKI Corp.', 'Bukit Cimanggu City R3A/ 33-34 Kel. Mekarwangi', 'Mekarwangi', 'Tanah Sareal', 'Selai Buah'),
(51, 'Le Jardin', 'Taman Yasmin sektor 3 Jl. Culan Raya No. 6 Kel. Curug Mekar', 'Curugmekar', 'Bogor Barat', 'Keripik Kentang'),
(52, 'MAS Food', 'Kedung Badak Baru Jl. Sempurna No. 6 Kel. Kedung Badak', 'Kedung Badak', 'Tanah Sareal', 'Sagu Mutiara'),
(53, 'Miseke', 'Vila Bogor Indah Blok F2 No. 6 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Jus Buah'),
(54, 'Harviant', 'Bantarjati Kaum RT 03/12 Kel. Bantarjati', 'Bantarjati', 'Bogor Utara', 'Kue Kering'),
(55, 'SILAPMON', 'Kp. Pasir RT 4 RW 7 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Kue/ Keik ( Cake)'),
(56, 'Nunky Bakery', 'Baranangsiang Indah Blok B7 No. 13 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Roti'),
(57, 'Dapur Cahaya', 'Kp. Legok Muncang RT 01/15 No. 9 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Telor Gabus'),
(58, 'Bunda Rosma', 'Kp. Legok Muncang RT 01/15 No. 7 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Keripik Umbi'),
(59, 'UD. Alur Boga Sejahtera', 'Jl. Siliwangi No. 156 Kel. Batutulis', 'Batutulis', 'Bogor Selatan', 'Roti dan Pastry \"Meal Corner\"'),
(60, 'Citra Pratama Mandiri', 'Gang Pasama Cimanggu Rt 01 Rw 01 Kel.Kedung Jaya', 'Kedung Jaya', 'Tanah Sareal', 'Sambel '),
(61, 'Moreenga Pangan Global', 'Jl Taman Kencana No 03 Ruang TBI 1 Kel Babakan', 'Babakan', 'Bogor Tengah', 'Premiks Kue Cepat Saji'),
(62, 'Escora', 'Perum Bumi Citra Kencana A3/2 Kel.Kencana', 'Kencana', 'Tanah Sareal', 'Teh,Kopi,Coklat Kecil Shake'),
(63, 'KUWEH RENJAH', 'Bukit Cimanggu City A1 No 3 Kel Cibadak', 'Cibadak', 'Tanah Sareal', 'Kue Kering (Crispy Wafelle)'),
(64, 'DR Snack', 'Bumi Indra Pasta 2 Jl Drapada 7 No 23 Kel Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Pangsit Kulit Lumpia'),
(65, 'PD Sumber Barokah', 'Jl Sinangling (Villa Duta) Gang Masjid Rt 05 Rw 06 No 31', 'Baranangsiang', 'Bogor Timur', 'Cuka Makan (Mix 29)'),
(66, 'CV Nutrima Sehat Alami', 'JL Kavling Panorama 5 No 85 Rt 05 Kel Sindang Barang Bogor', 'Sindangbarang', 'Bogor Barat', 'Madu Klanceng Gelas'),
(67, 'Mitra Boga Sejahtera', 'Jl Sinarsari Raya No.2 Rt 2/Rw 5 Kel.Sindang Barang Bogor', 'Sindangbarang', 'Bogor Barat', 'Seblak Instan'),
(68, 'MadamDam', 'Perum Muara Asri Jl Dewi Sri 5 No A 15 Kel Pasir Kuda Bogor', 'Pasir Kuda', 'Bogor Barat', 'Kolang Kaling'),
(69, 'CV makmur pangan lestari', 'JL Sadane No 93 Kel Empang Bogor Selatan', 'Empang', 'Bogor Selatan', 'Seblak Instan'),
(70, 'Loli Fob', 'Jl Tarumanegara 1 No 7 Montecarlo Paknal Kec Cipaku', 'Cipaku', 'Bogor Selatan', 'Arum Manis'),
(71, 'Djadi Sari', 'Kp Sumur Wangi Perumahan Betro Rt 03/Rw 07', 'Kayu Manis', 'Tanah Sareal', 'Tahu'),
(72, 'Viandefod', 'Taman Tirta Cimanggu C5/11A Kel MekarWangi', 'Mekarwangi', 'Tanah Sareal', 'Kue Kering'),
(73, 'Mamicha Foods', 'Jl R Kosasih Rt 01/Rw 08 No 24B Kel Cikaret', 'Cikaret', 'Bogor Selatan', 'Coklat '),
(74, 'Avie Cookies', 'Jl. Sedap Malam 1 No. 21 Taman Yasmin Kel. Curug Mekar', 'Curugmekar', 'Bogor Barat', 'Abon Telur'),
(75, '', '', '', '', ''),
(76, 'Nelita Fatma (KAK Bross)', 'Perum Bukit Kayumanis Blok O No. 16 Rt 03/12 Kayumanis Tanah Sareal, Bogor', 'Kayu Manis', 'Tanah Sareal', 'Kerajinan'),
(77, 'CoEy craft', 'Sindang rasa RT 05 RW 06', 'Sindangrasa', 'Bogor Timur', 'kerajinan'),
(78, 'Quenha Food', 'Perum Ciluar Asri Blok D7 No. 5 kel. Ciluar', 'Ciluar', 'Bogor Utara', 'Kue kering'),
(79, 'Wedang Leluhur', 'Jl Pahlawan Gang Apu Rt 02/Rw 09 Kel Bondongan', 'Bondongan', 'Bogor Selatan', 'Minuman Beraroma'),
(80, 'PD Nira Lestari Makmur', 'Jl IPB 1 Komplek PLN No 9 Rt 02/04 Kel Loji', 'Loji', 'Bogor Barat', 'Gula Aren/Gula Kelapa'),
(81, 'Hills Food', 'Perumahan Cikaret Hijau Blok A No 8 Rt 02/11 Kel Cikaret', 'Cikaret', 'Bogor Selatan', 'Sirup Buah'),
(82, 'Myrna\'s Cake & Pastry', 'Komp Danau Bogor Raya Blok B3 No 11', 'Katulampa', 'Bogor Timur', 'Pastry+Isi'),
(83, 'CV CHANDRA SUNSHINE \nGEMILANG', 'Perumahan GreenWood KA 3 No 8 Bukit Cimanggu City Kel Kencana', 'Kencana', 'Tanah Sareal', 'Sayur Kering'),
(84, 'UZHI KRIPS', 'Jl Cibeureum Gg Dukuh Rt 01/04 Kel Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Keripik Umbi'),
(85, 'RR Snack', 'Jl Ciharashas Gg Pertanian No 16 Rt 05/01 Kel Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Kremes Ubi'),
(86, 'Rafi Snack', 'Lembur Sawah RT 03/02 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Rempeyek'),
(87, 'Bakpia Jogjaku', 'Kebon Anggrek Bawah RT 05/02 kel. Tanah Sareal', 'Cibadak', 'Tanah Sareal', 'Bakpia'),
(88, 'Vinni Cake', 'Pondok Rumput Gg. Ikan Mas RT 04 RW 05 Kel. Kebon Pedes', 'Kebon Pedes', 'Tanah Sareal', 'Kue Kering'),
(89, 'F & B Bakery', 'Gg. Mbah Dalem RT 03/13 Kel. Kedung Badak', 'Kedung Badak', 'Tanah Sareal', 'Donat'),
(90, 'Poetri\'s Cookies', 'Bogor Raya Permai Blok FC6 No. 10', 'Curug', 'Bogor Barat', 'Abon Ayam serundeng'),
(91, 'Bintang Mas Foods', 'Pancagalih RT 001 RW 003 Kel. Loji', 'Loji', 'Bogor Barat', 'Mie Seblak Instan'),
(92, 'Mapalo 254 ', 'Jl. M. Ishak Djuarsa  99 RT 02 RW 12 No. 254 Kel. Loji', 'Loji', 'Bogor Barat', 'Manisan Pala'),
(93, 'Ahza Cookies', 'Jl. Sedane Blk No. 25 RT 05 RW 02 Kel. Empang', 'Empang', 'Bogor Selatan', 'Kue Kering'),
(94, 'Ummi Zie', 'Jl. Pekojan No. 10 Kel. Empang', 'Empang', 'Bogor Selatan', 'Bumbu Serbuk'),
(95, 'Flowers Snack', 'Taman Pajajaran Blok A4 No. 17 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Kerupuk'),
(96, 'TOGA NUSANTARA JAYA', 'Jl. SBJ Kp. Semplak RT 02/03 Kel. Bubulak', 'Bubulak', 'Bogor Barat', 'Teh'),
(97, 'Teh Yani', 'Jl. Dr. Semeru Gg. Kelor No. 36 RT 07 RW 06 Kel. Menteng ', 'Menteng', 'Bogor Barat', 'Keripik Kulit Lumpia'),
(98, 'Firma Nasrullah', 'Kp. Ciranjang RT 002 RW 003 No. 86 Kel. Pamoyanan', 'Pamoyanan', 'Bogor Selatan', 'Keripik Singkong'),
(99, 'Ala Om Eo', 'Cluster Tita Nirwana No. 127 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Saos Masakan'),
(100, 'Wina Snack', 'Kp. Babakan Baru RT 04/14 No. 173 Kel. Cipaku', 'Cipaku', 'Bogor Selatan', 'Keripik Kentang'),
(101, 'Berkat Bumi Indonesia', 'Jl. Sempur Kaler No. 56 Kel. Sempur', 'Sempur', 'Bogor Tengah', 'Rempah - rempah'),
(102, 'Dapur Dize', 'Mantarena Lebak RT 003/002 No. 41 Kel. Panaragan', 'Panaragan', 'Bogor Tengah', 'Manisan Belimbing Wuluh'),
(103, 'Dapur Keju', 'Perumahan Bumi Kencana Permai Jl. Mahoni 5 Blok F No. 4 RT 05/10 Kel. Kencana', 'Kencana', 'Tanah Sareal', 'Kerupuk Keju'),
(104, 'Kushermayanti', 'Jl. Layungsari I Gg. Melati IV No.31 RT 7/17 Kel. Empang', 'Empang', 'Bogor Selatan', 'Minuman Buah'),
(105, 'Nuri Fauziah', 'Bubulak Gg. Lurah No. 64 RT 001/001 Kel. Kebon Pedes', 'Kebon Pedes', 'Tanah Sareal', 'Makaroni Goreng'),
(106, 'Nuke Sriwahyuningsih', 'Komp. Baranangsiang Indah Blok E6/15 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Cabe Bubuk'),
(107, 'Budi Santosa', 'Vila Bogor Indah Blok GG 1 No. 30 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Kopi Bubuk'),
(108, 'Widy Yuzianti', 'Blok K1 No. 1 Taman Cimanggu Kel. Kedung Waringin', 'Kedung Waringin', 'Tanah Sareal', 'Manisan Kolang kaling'),
(109, 'Sukarsih', 'RT 02 RW 05 No. 14 Kel. Kebon Pedes', 'Kebon Pedes', 'Tanah Sareal', 'Minuman kunyit asem'),
(110, 'Bahari Efendi Siregar', 'Jl. Janaka V No. 7 RT 03 RW 15 Kel. Tegalgundil', 'Tegal Gundil', 'Bogor Utara', 'Minuman Buah'),
(111, 'Sulaeman', 'Jl. RE Soemantadireja Gg. Amil RT 4 RW 7 Kel. Pamoyanan', 'Pamoyanan', 'Bogor Selatan', 'Rempah - rempah'),
(112, 'Rukman', 'Kp. Babakan RT 04 RW 09 Kel. Cimahpar', 'Cimahpar', 'Bogor Utara', 'Roti'),
(113, 'Sianitri R. Marlies', 'Pajajaran Regency Blok N2 RT 003 RW 018 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Kue Kering'),
(114, 'Yeni Roswati', 'Kp. Anyar RT 04/04 Kel. Tegalgundil', 'Tegal Gundil', 'Bogor Utara', 'Kue Kering'),
(115, 'Rudi', 'Perumahan De Botanica Blok C No. 14 Kel. Cimahpar', 'Cimahpar', 'Bogor Utara', 'Kopi Bubuk'),
(116, 'Amin', 'Kp. Sawah RT 05 RW 06 Kel. Tanah Baru', 'Tanah Baru', 'Bogor Utara', 'Cuka Makan'),
(117, 'Ahmad Junaedi', 'Kp. Muara RT 02 RW 02 Kel. Sindang Rasa', 'Sindangrasa', 'Bogor Timur', 'Keripik Pisang'),
(118, 'Iwan Widoyoko', 'Vila Bogor Indah I Blok F3 No. 36 Kel. Ciparigi', 'Ciparigi', 'Bogor Utara', 'Keripik Tempe'),
(119, 'Mutia Umar', 'Jl. Pajajaran No. 21 Kel. Bantarjati', 'Bantarjati', 'Bogor Utara', 'Roti'),
(120, 'Rosye', 'Taman Pajajaran Blok A3 No. 17 Kel. Katulampa', 'Katulampa', 'Bogor Timur', 'Asinan Buah'),
(121, 'Rima Rachmawati', 'Jl. Ardio Gg. V  No. 18 RT 4 RW 05 Kel. Cibogor', 'Cibogor', 'Bogor Tengah', 'Stik Kulit Kebab'),
(122, 'yanah Nurhasanah', 'Gang musholla RT 1 RW 3. Loji sindangbarang', 'Sindangbarang', 'Bogor Barat', 'Ayam geprek'),
(123, 'Inah', 'Jl. Azimar ll kawung luwuk No:15 rt 07/rw01.kel tegal gundil.kec.bogor utara', 'Tegal Gundil', 'Bogor Utara', 'Kue basah'),
(124, 'Rina Andriana ', 'kertamaya rt 01/06 bogor selatan', 'Kertamaya', 'Bogor Selatan', 'Dalgona drink'),
(125, 'Mintarsih', 'Jl. Dr semeru gg kelor rt 02 rw 10 kel menteng', 'Menteng', 'Bogor Barat', 'Brownies, kue pengantin, kue ulangbtahun, kue keri'),
(126, 'Sri Sumarti', 'Jl. Kebon Jukut RT.03 RW.01 Kel. Babakan Pasar Boteng', 'Babakan Pasar', 'Bogor Tengah', 'Kuliner Mie Ayam Ijo'),
(127, 'Ela Solihah', 'Jln.Pondok Rumput GG.Ikan Mas No.9 Rt.4/Rw.5 Kel.Kebon Pedes ,Kec.Tansa', 'Kebon Pedes', 'Tanah Sareal', 'Aneka kue kering & kue basah'),
(128, 'Cahaya Ningsih', 'Kp legok Muncang rt01/15 kelurahan cipaku_ kecamatan Bogor selatan', 'Cipaku', 'Bogor Selatan', 'Makanan kering'),
(129, 'Irma Herawati', 'Jl. muara kidul rt4/11 kel. pasir jaya Bogor Barat', 'Pasir Jaya', 'Bogor Barat', 'Makanan kering'),
(130, 'Dewi apriliana', 'kp.sawah rt 02 rw 06 kel.tanah baru', 'Tanah Sareal', 'Tanah Sareal', 'Kerupuk, dodol buah'),
(131, 'Lilis Marliah', ' Jl. Raya Cilendek baru gg makam rt4/3 Bogor barat', 'Cilendek Barat', 'Bogor Barat', 'Makanan kering'),
(132, 'Ida farida', 'Kp.legok muncang rt03rw15 KeL.cipaku.bog.sel', 'Cipaku', 'Bogor Selatan', 'Kripik pisang,kripik singkong,krioik kentang,krioi'),
(133, 'Ivon andriani', 'Gg.  Mesjid rt 01 rw 02 kel.  Cilendek timur kec.  Bogor barat kota Bogor', 'Cilendek Timur', 'Bogor Barat', 'Jamu kesehatan'),
(134, 'frida Hanum Purba', 'Kp Juana no 1 rt 05 rw 08 Kel Keb Pedes', 'Kebon Pedes', 'Tanah Sareal', 'Aneka kue kering pepes dn buntil'),
(135, 'Rosliansyah', 'Jl. Pondok Rumput Gg nila no 29 RT 03 RW 11 Kel kebon pedes kec tanah Sareal Bogor', 'Kebon Pedes', 'Tanah Sareal', 'Bubur bayi dan cilok Bogor'),
(136, 'Mutiah Jauhari', 'Jl. Cendawan Blok C 8 Ciparigi Bogor Utara ', 'Ciparigi', 'Bogor Utara', 'Jus Herbal'),
(137, ' Dewi Ulfah Wardani', 'Kompleks Bogor Baru blok D6 no.4. Kelurahan Tegallega. Bogor.', 'Tegallega', 'Bogor Tengah', 'Bawang Goreng'),
(138, 'Zakiah Albaar', 'perum graha cahaya sakti rt 06/05 blok c 37 ciparigi bogor utara', 'Ciparigi', 'Bogor Utara', 'aneka kue kering dan basah'),
(139, 'Teni Susilawati  ', 'jl sedane no 38/rt05/012', 'Empang', 'Bogor Selatan', 'cireng isi, pempek dos, cikok goang.'),
(140, 'Siti Nurjanah', 'Kp marga Bhakti RT 03 RW 09 Kel kertamaya', 'Kertamaya', 'Bogor Selatan', 'Makanan ringan aneka kripik & pangsit'),
(141, 'Ardi setiawan', 'Jl.lolongok tengah no.46 Rt.03/Rw.13 kel.empang kec.bogor selatan kota bogor', 'Empang', 'Bogor Selatan', 'Kopi kemasan botol'),
(142, 'Misbah', 'Kp.margabhakti rt/rw 02/02\nKel.kertamaya', 'Kertamaya', 'Bogor Selatan', 'Pangsit bawang'),
(143, 'Hervyana Suherman', 'Jl.gunung gadung\nKp.genteng RT.01/06 no.28', 'Genteng', 'Bogor Selatan', 'Cake n cookies'),
(144, 'Desi yulianti', 'jl gunung gadung kp genteng rt 01 rw 06.Bogor selatan', 'Genteng', 'Bogor Selatan', 'Makanan(kue\" basah,kering,kue tart dll)'),
(145, 'Ani kusliani', 'Jl.batutulis gg balekambang no 64 RT 03 RW 04', 'Batutulis', 'Bogor Selatan', 'Makanan cireng isi'),
(146, 'Yuliani', 'Situ beureum rt02/01 kel. Bojong kerta  ', 'Bojong Kerta', 'Bogor Selatan', 'Usus krispy,keripik singkong'),
(147, 'ABDUL HAMID ASKAR', 'jl. lolongok gg tengah/jambrut no. 17 rt 5 rw 13 empang - bogor', 'Empang', 'Bogor Selatan', 'roti cane, mamol, sambosa'),
(148, 'Yuyun Yuniarsih Sulaeman', 'Jl. Rancamaya RT 001 RW 001. No.172', 'Rancamaya', 'Bogor Selatan', 'Minuman'),
(149, 'Yuyun Suhartini', 'Kp girangsari rt 05 rw 08 kel harjasari', 'Harjasari', 'Bogor Selatan', 'Kue kue basah. Cake ultah, cake pengantin'),
(150, 'Randy Octavian', 'Jl. Batutulis gg Lurah Rt 03 Rw 04 no. 91', 'Batutulis', 'Bogor Selatan', 'Rempeyek'),
(151, 'Endang Budiarti yunita', 'Jln.batutulis GG.dalam 2. No57 RT 2. RW 8', 'Batutulis', 'Bogor Selatan', 'Kue basah, makanan matang'),
(152, 'EAH HOLIAH', 'Kp.sawah bera RT001/004 kelurahan pamoyanan', 'Pamoyanan', 'Bogor Selatan', 'Aneka Snack/Sentul&kripik'),
(153, 'Sriastuti', 'Jerokuta Kaum RT.002/015\nKelurahan Bondongan Kecamatan Bogor Selatan Kota Bogor', 'Bondongan', 'Bogor Selatan', 'Kue, Masakan'),
(154, 'Hasbullah', 'Bogor selatan mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Sendal sepatu'),
(155, 'Eem', 'DS RANCAMAYA RT02 RW01 BOGOR SELATAN', 'Rancamaya', 'Bogor Selatan', 'Produksi kue rangginang dan ranggining '),
(156, 'Siti mariam', 'Cikaret jln raden kosasih rt 01 rw 08', 'Cikaret', 'Bogor Selatan', 'donat..sagon bakar'),
(157, 'Kurniati', 'Jln. Marha bhakti RT 01/01 cogreg- kertamaya ', 'Kertamaya', 'Bogor Selatan', 'Cake, bakery dan catering'),
(158, 'Indriyani septiana', 'Jln raya Tajur no 17 RT 01/06 ,Pakuan Bogor selatan', 'Pakuan', 'Bogor Selatan', 'Aneka keripik'),
(159, 'Heni Ratna suminar', 'Kampung dukuh Jawa RT 03/06\nCikaret', 'Cikaret', 'Bogor Selatan', 'Makanan'),
(160, 'Dian Andriani', 'Jl. Lawang gintung rt 3/7 bogor', 'Lawanggintung', 'Bogor Selatan', 'Kue basah'),
(161, 'Suryani', 'Sukajadi rt01/20', '', '', 'Makanan ringan'),
(162, 'H.Elis tarmini', 'jl Rancamaya GG,Dodol RT 002/010', 'Rancamaya', 'Bogor Selatan', 'Makanan Dodol'),
(163, 'Ade Rohayati', 'Kp gandok rt01/rw05 kel pakuan.bgr sel.', 'Pakuan', 'Bogor Selatan', 'Aneka peyek kacang/ krispy jamur./buah2 segar.'),
(164, 'Yati rosmiyati', 'Kp sawah rt04/07 Kelurahan tanah baru kecamatan bogor utara', 'Tanah Baru', 'Bogor Utara', 'Makanan'),
(165, 'Susilawati', 'Jl.  Ereng 2 no.  7, rt.  04 rw.  07.bantarjati', 'Bantarjati', 'Bogor Utara', 'Rempeyek'),
(166, 'derryrizantika', 'perumahan tanah baru jl teratai b 57a rt 02 rw 08 tanah baru bogor utara', 'Tanah Baru', 'Bogor Utara', 'makanan'),
(167, 'SITI AISYAH', 'kp.sindangsari rt 01 rw 02.Tanahbaru.', 'Tanah Baru', 'Bogor Utara', 'kuliner/kue kering'),
(168, 'Purwanto', 'Jl.pemda kedunghalang RT01/RW01 NO18, KEL.kedununghalang, Kec.Bogor Utara Kota.Bogor\nPrv: Jawa barat Kode pos:16158', 'Kedunghalang', 'Bogor Utara', 'Jajanan/makanan'),
(169, 'R.mulyaningsih', 'Jl. Raden Khanafiah rt01/05 kelas Cimahpar kec bogor utara', 'Cimahpar', 'Bogor Utara', 'Manisan buah,cilok kotak'),
(170, 'Tri Udayani', 'Jln: Palayu Ujung rt 02 rw 12 Kel. Tegal Gundil', 'Tegal Gundil', 'Bogor Utara', 'Telur gabus keju'),
(171, 'ANI SURYANI', 'BANTARJATI LEBAK RT01/08NO.31.KEL.BANTARJATI. KEC. BOGOR UTARA. BOGOR KOTA', 'Bantarjati', 'Bogor Utara', 'KUE KERING'),
(172, 'Imas Masriah', 'Villa bogor indah blok e 3 no 3', 'Ciparigi', 'Bogor Utara', 'Kue dan minuman'),
(173, 'Dian Novitasari', 'Jl palayu ujung no 44 rt 2 rw 12 no 44', 'Tegal Gundil', 'Bogor Utara', 'Keripik singkong oven dan bawang goreng krekes'),
(174, 'Mohamad yuliadi', 'Kp. Pangkalan Raya\nRt/Rw. 001/002\nKel/Desa. Cibuluh', 'Cibuluh', 'Bogor Utara', 'Donat'),
(175, 'Fitrianty anwar', 'Jalan tasmania 5 ujung no 37 rt.5 rw.8', 'Tanah Baru', 'Bogor Utara', 'Pempek'),
(176, 'Ida Laila', 'Ceger rt 01/rw 13 ,Tegal Gundil ,Bogor utara', 'Tegal Gundil', 'Bogor Utara', 'Minuman serbuk instan jahe merah'),
(177, 'Ujang Rahman', 'Jln.batara kp bubulak RT 03 RW 03', 'Bubulak', 'Bogor Barat', 'Makanan ringan'),
(178, 'Rusmiati', 'Diluar jln sukaraja rt02/rw01', 'Cimahpar', 'Bogor Utara', 'Makana/snack'),
(179, 'Moh rosidi', 'Jl.raya pemda-kedung halang-bogor ', 'Kedunghalang', 'Bogor Utara', 'Martabak manis & telor'),
(180, 'Nurlaely Agustin', 'Kp. Cibuluh RT O1 RW 08 Kel Cibuluh Kec Bogor Utara Kota Bogor', 'Cibuluh', 'Bogor Utara', 'Kuliner/makanan ringan'),
(181, 'Daryono', 'Jl panaragan kidul rt05 rw05', 'Panaragan', 'Bogor Tengah', 'Kue basah/ bika ambon'),
(182, 'Nasrul Hayati', 'Jl. Ardio 6 no. 18, Cibogor', 'Cibogor', 'Bogor Tengah', 'Makanan/Kuliner'),
(183, 'Yeti Minarsih', 'Kp. Cincau RT 004 RW 009 No. 3 Kel. Gudang Kec. Bogor Tengah Kota Bogor-Jawa Barat 16123.', 'Gudang', 'Bogor Tengah', 'Lontong isi oncom, daging & sayur ayam.  Bolu Pisa'),
(184, 'Fifi afriyani', 'Gg. Rante Kp. Baru rt 03 rw 13 Kel. Gunungbatu Kec. Bogoe Barat Kota Bogor', 'Bubulak', 'Bogor Barat', 'Kripik & Pangsit Bayam'),
(185, 'Herlisa Rahayu', 'Ciheuleut Pakuan no 219 rt. 04 rw. 06 Kel. Tegallega kec. Bogor tengah Kota Bogor', 'Tegallega', 'Bogor Tengah', 'Makanan ( bolen)'),
(186, 'Rita Artha Kesuma', 'Perumahan Ciluar Asri Blok A3 No. 15, Jl. Parkit 1 Bogor', 'Ciluar', 'Bogor Utara', 'Gado gado,ketoprak, Pecel Madiun dan Bumbu Pecel M'),
(187, 'Hendrik firdian', 'Lebak kantin rt01/05 ke.sempur', 'Sempur', 'Bogor Tengah', 'Kue tradisional dodongkal'),
(188, 'Rafael', 'Kp.cincau RT 04/RW 09 no 7', 'Gudang', 'Bogor Tengah', 'rogut, tahu isi, bala-bala udang, semar mendem, ma'),
(189, 'Euis Fajarwati', 'jl. Raya semplak gg. H. Ali rt 02 rw 06 no. 30 bogor barat kota bogor', 'Semplak', 'Bogor Barat', 'kue'),
(190, 'Putri Annisa', 'Jln.abesin RT 01 RW 03', 'Cibogor', 'Bogor Tengah', 'Kue kering ,kue basah'),
(191, 'Nurwulan Suci Kurnianti', 'Babakan sukamantri no.69 rt.1 rw.7 kel.pasir kuda kec.bogor barat bogor 16119', 'Pasir Kuda', 'Bogor Barat', 'Kue kering dan minuman susu jelly'),
(192, 'Orance Leon', 'GG makam RT 05 RW 05 Cilendek barat', 'Cilendek Barat', 'Bogor Barat', 'Kripik balado _chesetik _kue cucur'),
(193, 'Eko sularto', 'Panaragan kidul rt06/rw05. kelurahan panaragan.', 'Panaragan', 'Bogor Tengah', 'Bawang goreng'),
(194, 'Indra Yusnardi Mulia', 'Ciwaringin Tanah Sewa Rt05/Rw01 No.23 Gg.madrasah Bogor', 'Ciwaringin', 'Bogor Tengah', 'Brownies and Cakes'),
(195, 'JUBAEDAH', 'Kapling tegal gundil rt 04/18', 'Tegal Gundil', 'Bogor Utara', 'Makanan'),
(196, 'Sopiah ', 'Jl.gedong seng Sindang barang Loji no.78 RT 03/05 kel.loji kec.bogor barat kota Bogor ', 'Loji', 'Bogor Barat', 'Keripik Singkong '),
(197, 'yeni roswati', 'kp anyar rt 04 rw 04\nkel tegal gundil\nkec Bogor utara', 'Tegal Gundil', 'Bogor Utara', 'kuliner'),
(198, 'Atang sanjaya', 'Jln. Ciremai ujung. Bantarjati kaum Rt05/010.Bogor', 'Bantarjati', 'Bogor Utara', 'Makanan'),
(199, 'Yuyun nuspiya', 'Kp cincau RT 05 RW 09 kelurahan gudang kecamatan Bogor tengah', 'Gudang', 'Bogor Tengah', 'Gorengan/ makanan kering'),
(200, 'metty rusmetti', 'jl.merdeka gg.cemara rt.3 rw.4 , bogor tengah', 'Ciwaringin', 'Bogor Tengah', 'kue kering dan kue basah'),
(201, 'Sulistyandari', 'Sempur lama rt 02 rw 02 kel sempur kec bogor tengah', 'Sempur', 'Bogor Tengah', 'Jajan pasar'),
(202, 'Yani Masdjud', 'Pancagalih RT 01/03 Kel.Loji Bogor', 'Loji', 'Bogor Barat', 'Makanan'),
(203, 'Dadan hamdani', 'Kebon manggis munjul rt.01 RW.04 kelurahan.paledang kec.bogor tengah pos.16133', 'Paledang', 'Bogor Tengah', 'Dodongkal,kue ali,wingko babat,wajit ketan'),
(204, 'Yani prihatini', 'Jln abesin GG Karim rt01/03 nmr42 KRL cibogor ', 'Cibogor', 'Bogor Tengah', 'Makanan'),
(205, 'Siti komara', 'Jl.Dharma Bhakti RT.2/RW.6 kel.curug Bogor Barat kota bogor', 'Curug', 'Bogor Barat', 'Camilan makanan ringan'),
(206, 'Sri rahayu', 'Gg mesjid cilendek timur rt 01 rw 02 bogor', 'Cilendek Timur', 'Bogor Barat', 'Peyek'),
(207, 'Dewi Komala', 'Kp.Cincau, gang Eli Sadikin. rt 03/8 no. 4 Bogor 16123', 'Gudang', 'Bogor Tengah', 'kue kering'),
(208, 'siti dwi lestari', 'babakan fakultas rt 06 rw 04 no.23', 'Babakan', 'Bogor Tengah', 'makanan ringan'),
(209, 'asnawati', 'Jln tambakan rt01/05 situ gede', 'Situgede', 'Bogor Barat', 'coklat taleusnyi'),
(210, 'Yani mulyani', 'Gang kondang kp cibuluh rt03 rw 08', 'Cibuluh', 'Bogor Utara', 'Brownis'),
(211, 'Hilman cahyadi', 'Jl.Batara Kp.Rambay Rt.03/05 Kel.Ciluar Kec.Bogor Utara', 'Ciluar', 'Bogor Utara', 'Aneka keripik'),
(212, 'Endang Purwati', 'Jl.Ciremei ujung no.29 Rt.01/02 kelurahan Bantarjati atas 16153', 'Bantarjati', 'Bogor Utara', 'Puding'),
(213, 'Irma herawati', 'Jl. Muara kidul rt2/11kel. Pasir jaya', 'Pasir Jaya', 'Bogor Barat', 'Makanan'),
(214, 'melawati', 'jalan cifor kampung rawajaha rt 02 rw 03 kelurahan situgede ', 'Situgede', 'Bogor Barat', 'aneka minuman serbuk '),
(215, 'Dhani Hakim', 'Jalan abesin no.14 rt/rw 01/04 kel pabaton kec bogor tengah kota bogor', 'Pabaton', 'Bogor Tengah', 'Kue kering'),
(216, 'Saripah', 'Kedunghalang talang rt2 rw8 desa kedung halang kecamatan bogor utara', 'Kedunghalang', 'Bogor Utara', 'Bolu pisang imut'),
(217, 'Ragil rahmat hambali', 'Kp. Bebek rt 02/ rw 10', 'Kedunghalang', 'Bogor Utara', 'Tahu bandung'),
(218, 'Pitri yulianingsih', 'Jln.Raya agustailor kp.balubur rt.003 rw.005 kel.muarasari kec.bogor selatan', 'Muarasari', 'Bogor Selatan', 'Pangsit biji mangga'),
(219, 'Imam mulyana', 'Jl kp buntar rt 001/ 08 kel muarasari', 'Muarasari', 'Bogor Selatan', 'Cireng isi aneka rasa'),
(220, 'M Amril Syahbagja', 'Jl Pahlawan Gg mesjid Rt 03/09 Kel Empang Kec Bogor Selatan No 1', 'Empang', 'Bogor Selatan', 'Produksi olahan dan toko daging ayam'),
(221, 'Lilis suryani', 'Kp neglasari rt 1 rw 4 kel cibuluh kec bogor utara', 'Cibuluh', 'Bogor Utara', 'Peyek'),
(222, 'Ai Siti Fatimah', 'Kp.Bojong Kidul RT.006 RW.002', 'Bojong Kerta', 'Bogor Selatan', 'Makanan Ringan'),
(223, 'Djiyem', 'Jl. Mandala no. 26 rt 01/09 Ciparigi', 'Ciparigi', 'Bogor Utara', 'Pempek non palembang'),
(224, 'Siti nurjanah', 'Jln batara rambay rt 01 rw05', 'Ciluar', 'Bogor Utara', 'Ketan bakar'),
(225, 'M amril syahbagja', 'Jl pahlawan gg mesjid rt 03/09 kel empang kec bogor selatan no 1', 'Empang', 'Bogor Selatan', 'Produk olahan dan toko daging ayam'),
(226, 'Ade suparman', 'Kp bubulak rt 01 rw 03', 'Bubulak', 'Bogor Barat', 'Ikan lele'),
(227, 'Hamzah', 'JL.Lolongok barat Rt04 Rw13', 'Empang', 'Bogor Selatan', 'Talam Jagung'),
(228, 'DIAN NURLIANA', 'kp Cibuluh RT 003/003', 'Cibuluh', 'Bogor Utara', 'Makanan'),
(229, 'Agustira', 'Bojong kidul RT 06 RW 02', 'Bojong Kerta', 'Bogor Selatan', 'Makanan ringan'),
(230, 'Rita Sahara', 'Kp karamat Rt3 /1.kelurahan panaragan', 'Panaragan', 'Bogor Tengah', 'Kuliner(Crispy Rebon) '),
(231, 'Teti meilani', 'Ciwaringin tanah sewa rt05/rw01', 'Ciwaringin', 'Bogor Tengah', 'Frozen food'),
(232, 'Yana', 'Kp. Cincau No. 7 RT 004 RW 009 Kel. Gudang Kec. Bogor Tengah 16123 Kota Bogor, Jawa Barat', 'Gudang', 'Bogor Tengah', 'Roti Panada, Roghut, Risoles, Tahu isi, Bala-bala '),
(233, 'Julaiha ardiansyah', 'Kp. Padabeunghar rt04/09', '', '', 'Usaha lomie dan kue cubit'),
(234, 'Inawaty', 'Graha grande j21 kel.sukaresmi kec.tanah sareal', 'Tanah Sareal', 'Tanah Sareal', 'Lauk ungkep frozen food & cake '),
(235, 'M.Hasan Iskandar', 'jl.kebon pedes gg.blender rt 005/009', 'Kebon Pedes', 'Tanah Sareal', 'gorengan'),
(236, 'Isna Husnaida', 'Jln.kol.enjo.martadisastra rt 02 rw 12 no 21 ', 'Kedung Badak', 'Tanah Sareal', 'Kue basah dan kue kering'),
(237, 'Marlia pratiwi', 'Perum.bukit kayu manis blok AA no.12b RT 03. RW 12 kelurahan kayumanis \nkecamatan tanah Sareal Bogor 16169', 'Kayu Manis', 'Tanah Sareal', 'Roti'),
(238, 'Sri inayati', 'Ko.bulak amah rt03/06 Kel.mekarwangi', 'Mekarwangi', 'Tanah Sareal', 'Makanan ringan'),
(239, 'Henny rodiah', 'Jln.raya pondok rumput no 37', 'Kebon Pedes', 'Tanah Sareal', 'Kue basah n nasi box'),
(240, 'Ruri Rubianti', 'Jl Pesantren GG Garuda 2 no 10 RT 03 RW 07', 'Kedung Waringin', 'Tanah Sareal', 'Cemilan, Kue basah dan kering '),
(241, 'Nuraena', 'Cimanggu lamping rt 01/03', 'Kedung Jaya', 'Tanah Sareal', 'Herbal'),
(242, 'Aisah', 'Cimanggu Barata GG Kamboja RT 02 RW 04 no58', 'Kedung Jaya', 'Tanah Sareal', 'Rempeyek'),
(243, 'Wijayanti', 'Situpete Rt 03 Rw 06 sukadamai', 'Sukadamai', 'Tanah Sareal', 'Tempe'),
(244, 'Evy rahmawati', 'Kedung halang sentral jln kelurahanjembatan 1.rt01/rw 04 no 13', 'Kedunghalang', 'Bogor Utara', 'Prodak frozen'),
(245, 'Warsyh', 'Jlan raya Cilebut jembatan dua.kedung halang wesel rt03/03 klur: Sukaresmi kec: tanah Sareal kota Bogor', 'Sukaresmi', 'Tanah Sareal', 'Makanan(abon ikan tongkol)'),
(246, 'Susana Reni Sintasari', 'Perumahan Bukit Kayu Manis Blok E no 1 rt 06 rw 12', 'Kayu Manis', 'Tanah Sareal', 'Ayam Bakar'),
(247, 'Siti Markonah', 'Cimanggu Amil No. 130 RT 07/09 Kel.  Kedung Badak, Kec.  Tanah Sareal,  Bogor', 'Kedung Badak', 'Tanah Sareal', 'Froozen food/ Bakso No MSG & Pengawet'),
(248, 'Abad Badrussalam', 'Jalan Bubulak RT 04 RW 06 Kelurahan Kebon Pedes', 'Kebon Pedes', 'Tanah Sareal', 'Kue Basah'),
(249, 'WAWAN SARBINI', 'Cilibende RT.03 RW.02', '', '', 'KUE DAN ROTI'),
(250, 'Agus kusman', 'Jl. Kebonmanggis rt.02/04.paledang bogor', 'Paledang', 'Bogor Tengah', 'Keripik pangsit guren'),
(251, 'Zainul Mu\'min', 'Jl.Cimanggu no.10 Rt.01-Rw.03 Kel.Kedung Jaya kec.Tansa Bogor(Ada Saung Mila - samping Toko Hijau Daun)', 'Kedung Jaya', 'Tanah Sareal', 'Soto daging, minuman dan bibit tanaman unggul'),
(252, 'Enden Supriatini', 'Jl.ahmad Yani GG.karet 1 RT.2 RW.1 no.24 Bogor kel.tanah Sareal kec.tanah sareal', 'Tanah Sareal', 'Tanah Sareal', 'Risol frozen'),
(253, 'Anik Sundari', 'Jl.A yani gg karet 1 rt03/01 Tanah sareal Tanah sareal kota bogor', 'Tanah Sareal', 'Tanah Sareal', 'Ayam gprek'),
(254, 'Achmad Suhaemi', 'Kebon Pedes No. 20 RT 05 RW 09 Kel. Kebon Pedes ', 'Kebon Pedes', 'Tanah Sareal', 'Minuman Susu Segar'),
(255, 'Endang Rusdi', 'Bukit Kayumanis Blok. D No.15 \nKel. Kayumanis \nKec.Tanah sareal \nKota Bogor', 'Kayu Manis', 'Tanah Sareal', 'Kacang Mede'),
(256, 'Sigit purnama', 'Panaragan kidul Rt 06 RW 05 ', 'Panaragan', 'Bogor Tengah', 'Susu olahan'),
(257, 'Asep Saepudin', 'Cimanggu Gg.Mortir Rt.05/Rw.03 No.46', 'Kedung Waringin', 'Tanah Sareal', 'Kue Tradisonal Kering Dan Basah'),
(258, 'Novita Indriyani', 'cimanggu lamping Rt01 Rw 03 no. 8 Kelurahan kedung waringin kecamatan tanah sareal . Bogor 16163', 'Kedung Waringin', 'Tanah Sareal', 'makanan'),
(259, 'Fanny Kartina Cahya', 'Cibuluh rt.7/3 kel. Kedung badak', 'Kedung Badak', 'Tanah Sareal', 'Kue kering dan kue basah'),
(260, 'Nenah sukaesih', 'Jl. Kol. Enjo Martadisastra rt05/12 kelurahan kedung badak', 'Kedung Badak', 'Tanah Sareal', 'Kuliner'),
(261, 'Jumiati', 'Kp.rawajati RT 01 RW 08 kelurahan mekar wangi kecamatan tanah Sareal kota Bogor', 'Mekarwangi', 'Tanah Sareal', 'Jual nasi uduk'),
(262, 'Yanti', 'Kp.masjid RT02 RW07 kelurahan mekar wangi kecamatan kota bogor', 'Mekarwangi', 'Tanah Sareal', 'Makanan ringan'),
(263, 'Yanti Kusnawati', 'Cimanggu gg mesjid RT 01 RW 06 desa Kedung jaya kecamatan Tanah sareal Bogor', 'Kedung Jaya', 'Tanah Sareal', 'Frozen food kue basah & bakso'),
(264, 'Lovine Bherlyan', 'Gardenia Residence kav.5 jl.cimanggu wates rt.01 rw,06, sukadamai tanah sareal kota bogor', 'Sukadamai', 'Tanah Sareal', 'Makanan'),
(265, 'Solahudin', 'Kp Pabuaran rt 002/003', '', '', 'Ayam ungkep'),
(266, 'Irun suswendarwati', 'Muara kidul rt 04/11 kel pasirjaya kec bogor barat kota bogor', 'Pasir Jaya', 'Bogor Barat', 'Kerupuk oncom'),
(267, 'CUCUP RUHIYAT', 'Jl. Bojong Neros Kelurahan, RT.01/RW.07, Kel Curug, Kec. Bogor Barat, Kota Bogor, Jawa Barat 16113', 'Curug', 'Bogor Barat', 'TEMPE'),
(268, 'Siti Rochmah', 'Siti Rochmah', '', '', 'Tasmacram dan sandal'),
(269, 'Santi Rohanah', 'Bojong Menteng RT 005/006 Kel .pasir kuda', 'Pasir Kuda', 'Bogor Barat', 'Abon ikan patin '),
(270, 'Ike rustika', 'Sukaresmi rt 04/04 klrh sukaresmi kcm tanah sareal', 'Sukaresmi', 'Tanah Sareal', 'Aneka kue basah'),
(271, 'Nuryati', 'Kukupu RT.002/009', 'Cibadak', 'Tanah Sareal', 'Produk Kecantikan'),
(272, 'Nuryati', 'Kp kukupu RT 02 RW 09 kel.cibadak kec.tanah Sareal kota bogor', 'Cibadak', 'Tanah Sareal', 'Kuliner/cattring'),
(273, 'Pramita Caroline', 'Sindangrasa rt.02/06 no.201 gunung batu, bogor barat', 'Sindangbarang', 'Bogor Barat', 'Aneka Pempek dan Jamu Kunyit Asem'),
(274, 'Septiva Herlin Artati', 'Jln. Panorama Asri 3, No. 111 Kav. Panorama Rt. 03/05. Kel. Sindang Barang, Bogor Barat. Kota Bogor.', 'Sindangbarang', 'Bogor Barat', 'Bumbu racik'),
(275, 'Bima sakti prakoso', 'Sindang barang pengkolan rt007/rw004.bogor barat', 'Sindangbarang', 'Bogor Barat', 'Food '),
(276, 'Leni Kristina', 'Dramaga..G.g.H.Burhan Rt01/03..margajaya.. Bogor barat', 'Margajaya', 'Bogor Barat', 'Bolu gulung.. Bolu tape.. Dimsum'),
(277, 'Aini Azizah', 'Sindangbarang bendungan no17 rt02 rw02', 'Sindangbarang', 'Bogor Barat', 'Ramuan herbal siap minum'),
(278, 'Dedi', 'Loji Rt 02 Rw 03 Pancagalih', 'Loji', 'Bogor Barat', 'Mie ayam/toge goreng'),
(279, 'Sri Eko Handayani', 'Jln babakan sukamantri mo 39 rt 02 Rw 07', 'Babakan', 'Bogor Tengah', 'Aneka Kue '),
(280, 'Subadiyah ', 'Jln cifor kp batuhulung rt 01 rw 06', 'Bubulak', 'Bogor Barat', 'Es YOGHURT '),
(281, 'Titik Rahmawati', '\nJl. Pinus Gg. Murai Rt 03/05 No.28 Kel. Situgede Kec. Bogor Barat\nBogor\nJawa Barat 16115\nIndonesia', 'Situgede', 'Bogor Barat', 'Jambrong crispy,rebon kering,teri kering'),
(282, 'Dian Veronica Suy', 'Taman Pajajaran Blok B 1 No. 14 Kel. Katulampa Kec. Bogor Timur Kota Bogor', 'Katulampa', 'Bogor Timur', 'Kue Kering, Brownies, Roti, Donat'),
(283, 'Riyanti', 'Sukasari 3 RT 3 RW 1 no 26 B', 'Sukasari', 'Bogor Timur', 'Baso dan baslok'),
(284, 'Siti zakiatul rokhmah', 'Ciheuleut rt 04 rw 09 no.34 baranangsiang bogor timur 16143, kota bogor', 'Baranangsiang', 'Bogor Timur', 'Emping jagung,racikan kopi dan racikan teh'),
(285, 'IANATUL MUSTAQFIROH', 'Kp Bantar Peuteuy RT 02/04 no 31 Tajur Bogor Timur', 'Tajur', 'Bogor Timur', 'Kripik tempe'),
(286, 'Wati widiawati', 'Parung banteng rt 02 rw 02 no 2', 'Katulampa', 'Bogor Timur', 'Kue basah dan kue kering'),
(287, 'Nina rahmawati', 'Jl parung banteng rt 03/02', 'Katulampa', 'Bogor Timur', 'Kuliner'),
(288, 'Ambar LK Dharmaputra', 'Jl.Bina Marga no.13', 'Baranangsiang', 'Bogor Timur', 'Kuliner'),
(289, 'Indra Dharmaputra', 'Jl.Bina Marg no 13.Bogor', 'Baranangsiang', 'Bogor Timur', 'Kue Basah'),
(290, 'M Dudi Juliansyah', 'Bantar Kemang RT 05 RW 07\nBaranangsiang', 'Baranangsiang', 'Bogor Timur', 'roti Cane'),
(291, 'Hidayat', 'Katulampa Rt.05 Rw.09 kel.katulampa kec.Bogor Timur', 'Katulampa', 'Bogor Timur', 'Manisan pala'),
(292, 'Putri ananda salsabila', 'Lebak kantin rt01/05 no 27 kelurahan Sempur kota Bogor ', 'Sempur', 'Bogor Tengah', 'Pengolahan gula'),
(293, 'Yuyun Hertanthi', 'Jl. Skip No 177 RT 001 RW 007 Kel. Lawanggintung Kec. Bogor Selatan Kota Bogor 16134', 'Lawanggintung', 'Bogor Selatan', 'Pempek, tekwan, dimsum'),
(294, 'Putri Handayani', 'Perum. Bumi citra kencana blok A3 no.9 rt.02 rw.07 kel. Kencana kec. Tanah sareal bogor', 'Kencana', 'Tanah Sareal', 'Minuman susu'),
(295, 'Budi saputra', 'Kp. Muara tegal rt.02/rw.01 no.100 kelurahan sindangrasa kecamatan bogor kota bogor', 'Sindangbarang', 'Bogor Timur', 'Makanan'),
(296, 'Nasir supono', 'Jl.menteng gg.buntu RT.01/02 no.3', 'Menteng', 'Bogor Barat', 'Kueh basah'),
(297, 'Siti Nurma ', 'Sindang barang pengkolan Rt 001 Rw 004 No 21 kelurahan Sindang barang \nkecamatan bogor barat kota bogor ', 'Sindangbarang', 'Bogor Barat', 'Aneka Brownies dan kue basah '),
(298, 'Henky Hendrawan ', 'Jl Menteng Gg Pala no 28, RT.02 /RW.02, Bogor 16111 ', 'Menteng', 'Bogor Barat', 'Kukis, rangginang, kacang, bipang, ropay'),
(299, 'Siti Rochmah', 'Sindang barang pengkolan RT 001 RW 004 no 18a kelurahan Sindang barang \nkecamatan Bogor barat kota bogor', 'Sindangbarang', 'Bogor Barat', 'Ayam geprek '),
(300, 'Aisyah Dewi pamungkas', 'Kp muara RT 01/03 kelurahan Sindang rasa kec bogor timur kota bogor', 'Sindangrasa', 'Bogor Timur', 'Bolen dan roti'),
(301, 'AGUS PRAYOGA', 'Jl. Kedelai 9 Komplek IPB Baranangsiang Bogor 16143', 'Baranangsiang', 'Bogor Timur', 'Kopi'),
(302, 'Sri Mulyati', 'Dramaga Loceng RT.002 RW.004', 'Margajaya', 'Bogor Barat', 'Kue Bolu'),
(303, 'Firmansyah Hadi H ( Ratu Rizqi NF)', 'Cilubang RT.003 RW.003 No.11', 'Balungbangjaya', 'Bogor Barat', 'Kentang Mustopa'),
(304, 'Junengsih', 'Jl.Raya Dermaga No.27 RT.003 RW.002', '', '', 'Salad Buah,Kue Kering,'),
(305, 'Rika Aprilia', 'Semplak RT.001 RW.003', 'Semplak', 'Bogor Barat', 'Minuman'),
(306, 'Bambang Budianto ( dewi widuri) ', 'Semplak RT.003 RW.010', 'Semplak', 'Bogor Barat', 'Aneka Kue'),
(307, 'Insan Nurhadian \n( ganti jadi eka rusdian) ', 'Jl.Rante RT.004 RW.007', '', '', 'Audio Bambu'),
(308, 'Nurbani Yulivia', 'Jl.Curug Mekar RT.002 RW.004 No.5', 'Curugmekar', 'Bogor Barat', 'Yogurt,Pempe dll.'),
(309, 'Ratna Suminar', 'Cibalagung RT.001 RW.003', 'Pasir Kuda', 'Bogor Barat', 'Crispy Rol,Roti Pastry..'),
(310, 'Nurwulan Suci K', 'Babakan Sumantri RT.001 RW.007', 'Pasir Kuda', 'Bogor Barat', 'Kue Kering'),
(311, 'Naimah', 'Babakan Sumantri RT.003 RW.007', 'Pasir Kuda', 'Bogor Barat', 'Makanan Bipang'),
(312, 'Siti Rahmawati', 'Cilendek Timur RT.002 RW.003 No.47', 'Cilendek Timur', 'Bogor Barat', 'Keripik Singkong,Kue '),
(313, 'Nurwulan Suci K', 'Babakan Sumantri RT.001 RW.007', 'Pasir Kuda', 'Bogor Barat', 'Kue Kering'),
(314, 'Naimah', 'Babakan Sumantri RT.003 RW.007', 'Pasir Kuda', 'Bogor Barat', 'Makanan Bipang'),
(315, 'Siti Rahmawati', 'Cilendek Timur RT.002 RW.003 No.47', 'Cilendek Timur', 'Bogor Barat', 'Keripik Singkong,Kue '),
(316, 'Nurhayati', 'Cilubang Tonggoh RT.002 RW.010', 'Balungbangjaya', 'Bogor Barat', 'Keripik Singkong.'),
(317, 'Titik Rahawati', 'Jl.Pinus Raya Gg.Murai RT.003 RW.006', 'Situgede', 'Bogor Barat', 'Olahan Ikan Asin'),
(318, 'Dina Andriani', 'Kp.Rawa Jaha RT.003 RW.003', 'Situgede', 'Bogor Barat', 'Pempek'),
(319, 'Fauzi Bahri', 'Kavling Panorama Jl.Panorama 2B Ni.5', 'Sindangbarang', 'Bogor Barat', 'Cake,Aneka Jajanan Pasar'),
(320, 'Ida Nurlijati', 'Jl.Raya Sindangbarang RT.001 RW.003', 'Sindangbarang', 'Bogor Barat', 'Cake,Aneka Jajanan Pasar'),
(321, 'Andriani', 'Kp.Karya Bhakti RT.003 RW.004', 'Cilendek Barat', 'Bogor Barat', 'Makanan dan Minuman'),
(322, 'Mochammed F', 'Gg.Makah RT.03 RW.05', 'Cilendek Barat', 'Bogor Barat', 'Cilok'),
(323, 'Irma Herawati', 'Jl.Muara Kidul RT.004 RW.011', 'Pasir Jaya', 'Bogor Barat', 'Kerupuk Tahu'),
(324, 'Fitri Dianawati', 'Jl.Cibalagung No.21f', 'Pasir Jaya', 'Bogor Barat', 'Kue Basah'),
(325, 'Warsih Komala Sari \n( agung nugroho)', 'Komp.Selakopi Hijau Blok D No.14', 'Cilendek Barat', 'Bogor Barat', 'Frozer Food'),
(326, 'Dwi Afriyani', 'Kp.Pagentongan RT.004 RW.006', 'Loji', 'Bogor Barat', 'Kripik Talas'),
(327, 'Cicah', 'Gg.Palem RT.004 RW.011 Loji', 'Loji', 'Bogor Barat', 'Makanan Ringan'),
(328, 'Elsa Mulyawati', 'Jl.Terapi Iic Blok BC No.30 RT.01 RW.17', 'Menteng', 'Bogor Barat', 'Kue'),
(329, 'Zulfikar', 'Jl. RE. Sumantadireja  warung pari RT.04/01 Kel. Pamoyanan ', 'Pamoyanan', 'Bogor Selatan', 'Simping'),
(330, 'Eneng Kurniasih', 'Kp. Bojong RT.02/02 Kelurahan Pamoyanan', 'Pamoyanan', 'Bogor Selatan', 'Kuliner'),
(331, 'Ratna Wijayanti', 'Jl. Layungsari I. No. 50 RT.08/17 Kelurahan Empang', 'Empang', 'Bogor Selatan', 'Roti dan Kue'),
(332, 'Iis Setiawati', 'Jl. Layungsari 3 RT.07/18 N0. 10 Kelurahan Empang', 'Empang', 'Bogor Selatan', 'Opak ketan,Stik Uli dan Manisan '),
(333, 'Mega Santi', 'Jerokuta kidul RT.03/20 kelurahan Empang', 'Empang', 'Bogor Selatan', 'Makanan'),
(334, 'Shinta Febriyana', '', '', '', 'Sosis'),
(335, 'Nuryati', 'Bojong Kidul RT.4/2 Kel. Bojong Kerta', 'Bojong Kerta', 'Bogor Selatan', 'Jipang dan Kripik'),
(336, 'Agustiara', 'Bojong Kidul RT.06/04 kel. Bojong Kerta', 'Bojong Kerta', 'Bogor Selatan', 'Kripik'),
(337, 'Heti Herawati', 'Jl. Skip. Gedung 7 No. 133 RT. 004/001 Kel. Lawanggintung', 'Lawanggintung', 'Bogor Selatan', 'Aneka Kue Kering, Weding Cake, Birthday, Kue Balok'),
(338, 'Acih Sutarsih', 'Jl. Raya Tajur Biotrop no. 37 A Kel. Pakuan', 'Pakuan', 'Bogor Selatan', 'Pepes Ikan dan Masakan'),
(339, 'Nunung Nurhayati', 'Tajur RT.01/06 Kel. Pakuan', 'Pakuan', 'Bogor Selatan', 'Makanan'),
(340, 'Neneng Supriati', 'Jl. Raya Tajur Biotrop RT.04/05 Kel. Pakuan', 'Pakuan', 'Bogor Selatan', 'Pakaian'),
(341, 'Novi Laksanawati', 'jalan dekeng Atas No. 18 RT.03/03 Kel. Genteng', 'Genteng', 'Bogor Selatan', 'Minuman'),
(342, 'Nuni Nurshintani', '', '', '', 'Jajanan Tradisional'),
(343, 'Rohman', 'Jl. Rancamaya No. 1 RT.01/08 Kel. Rancamaya', 'Rancamaya', 'Bogor Selatan', 'Ayam Geprek dan Ayam Bakar'),
(344, 'Musa Darusman', 'Margabhakti RT.01/02 Kelurahan Kertamaya', 'Kertamaya', 'Bogor Selatan', 'Jahe Instan'),
(345, 'Katma', 'Margabhakti RT.01/02 Kelurahan Kertamaya', 'Kertamaya', 'Bogor Selatan', 'Pangsit /Makanan Ringan '),
(346, 'Setiawati Pujiastuti', 'Kp. Rawajamu RT.005/004 Kelurahan Muarasari', 'Muarasari', 'Bogor Selatan', 'Catering'),
(347, 'Aria Tripati Karsana', 'Cibeureum No. 25 RT.07/05 kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Pempek (Makanan)'),
(348, 'Benny', 'BNR Cluster Bukit Nirwana RT.05/12 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'Baso'),
(349, 'Siti Suryani Lulu Ilmaknun', 'Jl. Drs. Saleh Danasasmita RT.003/007  Kelurahan Batutulis', 'Batutulis', 'Bogor Selatan', 'Cireng'),
(350, 'ATON KOMARIAH', 'SUKASARI 3 RT 06/RW 01', 'Sukasari', 'Bogor Timur', 'KUE BASAH DAN KERING'),
(351, 'BRAM', 'Jl. Bantar Kemang RT 05/07/BARANGSIANG', 'Baranangsiang', 'Bogor Timur', 'Pempek'),
(352, 'BUDI LESTARI ', 'Kp. Bantar Peuteuy RT 02/04/TAJUR', 'Tajur', 'Bogor Timur', 'Aneka Kue Basah dan Kering'),
(353, 'DADIH SUPRIANUDIN\n(DIWAKILKAN ESIH)', 'Wangun Cibalok RT 04/06/Sindangsari', 'Sindangsari', 'Bogor Timur', 'Parfum dan Frozen Food'),
(354, 'DESI HERAWATI', 'Kp. Bantar Peuteuy RT 01/02/TAJUR', 'Tajur', 'Bogor Timur', 'Bahan Makanan dan Makanan Kue'),
(355, 'DEVI DWI OKTAVIANI', 'Jl. Mawar 4 No. 14 RT 001/006 Sindangsari', 'Sindangsari', 'Bogor Timur', 'Aneka Cake'),
(356, 'DEWI ROSITA\n(DIWAKILKAN SASMITA)', 'Bantar Kemang RT 05/07/BARANANGSIANG', 'Baranangsiang', 'Bogor Timur', 'Keripik Tempe'),
(357, 'ENENG HASANAH', 'JL.SUKAMULYA RT 05/RW 03', 'Sukasari', 'Bogor Timur', 'Kue Cake'),
(358, 'ETI SUHERTI', 'SUKASARI 3 RT 03/RW 01', 'Sukasari', 'Bogor Timur', 'MANISAN PALADANG, ES KUL KUL DAN PRODUK FOZEN FOOD'),
(359, 'EVA DWISARI', 'BSI Blok E No. 15 RT 02/06/KATULAMPA', 'Katulampa', 'Bogor Timur', 'Kripik Kentang Mustofa Terincang'),
(360, 'FITRI WAHYUNI', 'Wangun Tengah RT 04/03/Sindangsari', 'Sindangsari', 'Bogor Timur', 'Aneka Kripik'),
(361, 'FITRIANI', 'Kp. Cikeas Rt 001/003', '', '', 'Keripik Pisang, Tahu Crispy dan macam-macam kue bo'),
(362, 'HANI INTAN', 'SUKASARI 3 RT 06/RW 01', 'Sukasari', 'Bogor Timur', 'MAKANAN BASAH DAN IKAN BAKAR'),
(363, 'ITA ROSITA', 'Kmp. Maura Rt.03 Rw.03 ', 'Pasir Jaya', 'Bogor Barat', 'Nasi uduk Cup'),
(364, 'IYOM ROMLAH', 'SUKASARI 3 RT 03/RW 01', 'Sukasari', 'Bogor Utara', 'EMPAL DAGING SAPI, POPRON, PANGSIT'),
(365, 'KHAIRUNNISA\n(DIWAKILKAN KODRIYAH)', 'Jl. Melati 3 No. 13', '', 'Bogor Timur', 'Susu kurma, hantaran, hias mahar, wall decor'),
(366, 'LUCIANA YUNITYA', 'Kmp. Maura Rt.01 Rw.03 No. 43 D', '', 'Bogor Timur', 'Pembuatan Hijab dan Kue basah'),
(367, 'MELANI (NO. REK a/n  MOH IRWAN)', 'Sirnagalih RT 02/021/KATULAMPA', 'Katulampa', 'Bogor Timur', 'Baso Aci'),
(368, 'MIA HADIATI', '', '', '', 'KUE BASAH dan Kering'),
(369, 'NINA RAHMAWATI', 'Jl. Parung Banteng RT 03/02/KATULAMPA', 'Katulampa', 'Bogor Timur', 'Kue Basah dan Kering'),
(370, 'NURHAYATI', 'Kp. Pasir RT 03/07/KATULAMPA', 'Katulampa', 'Bogor Timur', 'Sayuran Hidroponik, Dimsum Dll'),
(371, 'RETNO HANDAYANI', 'GG. Baledesa RT 001/005/TAJUR', 'Tajur', 'Bogor Timur', 'Frozen Food & Sambel Kemasan Cookies'),
(372, 'SITI ROMLAH', 'TAJUR', 'Tajur', 'Bogor Timur', 'Aneka Kue Bolu, Dimsum'),
(373, 'SUHARTATI', 'SUKASARI 3 RT 06/RW 01', 'Sukasari', 'Bogor Timur', 'KUE BASAH DAN KERING'),
(374, 'SUHERNI ( NO.REK a/n MUHAMAD NAZAMUDIN)', '', '', '', 'Makanan'),
(375, 'TITIN YULIANTINA', 'Kp. Bantar Peuteuy RT 02/02/TAJUR', 'Tajur', 'Bogor Timur', 'MAKANAN'),
(376, 'WATI. W', 'Parung Banteng RT 02/02/KATULAMPA', 'Katulampa', 'Bogor Timur', 'KUE BASAH dan Kering'),
(377, 'YANI MARYANI', 'Wangun Atas RT 06/01/Sindangsari', 'Sindangsari', 'Bogor Timur', 'Aneka Kue Basah'),
(378, 'NOVI   NUR AENI', 'JL.PANARAGAN KIDUL No.3 RT.02/05  KEL.PANARAGAN', 'Panaragan', 'Bogor Tengah', 'ROTI TAWAR'),
(379, 'ADE RATNASARI', 'TEGAL MANGGAH RT.02/03 No.53 KEL.TEGALLEGA', 'Tegallega', 'Bogor Tengah', 'KUE DAN MASAKAN'),
(380, 'YULIA  DEWI ANANDARI', 'TEGAL MANGGAH RT.02/03 KEL.TEGALLEGA', 'Tegallega', 'Bogor Tengah', 'AYAM GEPREK'),
(381, 'SYARIFAH MARYANI', 'TEGAL MANGGAH JL.DANAU LIMBOTO DALAM No.33 KEL.TEGALLEGA', 'Tegallega', 'Bogor Tengah', 'MOCHI'),
(382, 'GALIH PUJIATI', 'LEBAKSARI RT.02/09 KEL.PALEDANG', 'Paledang', 'Bogor Tengah', 'MAKANAN RINGAN'),
(383, 'JAMAL ANJASMARA', 'LEBAKSARI RT.03/09 KEL.PALEDANG', 'Paledang', 'Bogor Tengah', 'IKAN CUPANG,GAPPY'),
(384, 'NOVITA HANDAYANI', 'ABESIN GG,MESJID No.42 RT.01/04 KEL.CIBOGOR', 'Cibogor', 'Bogor Tengah', 'PENTOL KUAH PEDES PROZZEN'),
(385, 'NURMA LUSIA NINGSIH', 'CIWARINGIN TANAH SEWA GG.MADRASAH No.23 RT.05/01 KEL.CIBOGOR', 'Cibogor', 'Bogor Tengah', 'KUE ULANG TAHUN DAN BOLU'),
(386, 'ARDIANA', 'JL.ARDIO II (DEPAN GAPURA ARDIO)  KEL.CIBOGOR', 'Cibogor', 'Bogor Tengah', 'MAKANAN DAN MINUMAN'),
(387, 'DEDE IYUT IKMANAH', 'KP.CINCAU RT.05/09 KEL.GUDANG', 'Gudang', 'Bogor Tengah', 'KUE BASAH'),
(388, 'SITI SALMA DINIAH', 'KP.CINCAU RT.03/09 KEL.GUDANG', 'Gudang', 'Bogor Tengah', 'KUE TART, KUE BOLU'),
(389, 'SUHERTANTI', 'KP.CINCAU No.5 RT.05/09 KEL.GUDANG', 'Gudang', 'Bogor Tengah', 'COOKIES'),
(390, 'PUTRI ANANDA SALSABILA', 'LEBAK KANTIN RT.01/05 No.27 KEL.SEMPUR', 'Sempur', 'Bogor Tengah', 'GULA AREN CETAK, GULA AREN SEMUT'),
(391, 'ANAS JAMHARI', 'GG. TARMIJI NO.119 RT.03/06 KEL. CIBOGOR', ' Cibogor', 'Bogor Tengah', 'MAKANAN'),
(392, 'JASMINE RIANA SUPRIYATNA', 'KOMP BPT RW.06  KEL.BABAKAN', 'Babakan', 'Bogor Tengah', 'MINUMAN DAN MAKANAN /PUDING'),
(393, 'NGASMI', 'KEBON KOPI RT.02/06 KEL. KEBON KELAPA', ' Kebon Kelapa', 'Bogor Tengah', 'KERIPIK SINGKONG DAN CATHERING'),
(394, 'ATI SUDIARTI', 'GG. KEPATIHAN VII NO.42 RT.03/01 KEL. KEBON KELAPA', ' Kebon Kelapa', 'Bogor Tengah', 'PUDING SEMANGKA DAN KUE BASAH'),
(395, 'ROHMAN', 'Jl. Rancamaya No. 1 RT.01/08 Kel. Rancamaya', 'Rancamaya', 'Bogor Selatan', 'AYAM GEPREK DAN AYAM BAKAR'),
(396, 'ERNAWATI', 'BNR Cluster Bukit Nirwana RT.05/12 Kel. Mulyaharja', 'Mulyaharja', 'Bogor Selatan', 'MINUMAN DAN LULUR'),
(397, 'RIMA RACHMAWATI', 'JL. ARDIO V No. 18 KEL. CIBOGOR', 'Cibogor', 'Bogor Tengah', 'MAKANAN RINGAN'),
(398, 'KRISSHINTYA DEWI', 'JL ABIYASA RAYA N0.12 KEL. BANTARJATI', 'Bantarjati', 'Bogor Utara', 'MAKANAN BASAH'),
(399, 'NITA TORASIA', 'PULO EMPANG NO 318 RT03 RW05 KEL. PALEDANG', ' Paledang', 'Bogor Tengah', 'SAMBEL PECEL MADIUN'),
(400, 'SRI SUMARTI', 'JL KEBON JUKUT RT03 RW01 NO.70 KEL. BABAKAN PASAR', ' Babakan Pasar', 'Bogor Tengah', 'KULINER'),
(401, 'IDA FARDIA', 'KP. PARUNG JAMBU RT04 RW10 KEL. EMPANG', 'Empang', 'Bogor Selatan', 'MAKANAN'),
(402, 'DIAN NURLIANA', 'KP CIBULUH RT03 RW03 KEL. CIBULUH BOGOR UTARA', 'Cibuluh', 'Bogor Utara', 'KULINER'),
(403, 'Vera nastiti', 'Jl.Cilendek Timur No.134', 'Cilendek Timur', 'Bogor Barat', ''),
(404, 'Anisah sunarsih', 'Sindang barang pilar 1 RT/RW: 002/006 ', 'Sindangbarang', 'Bogor Barat', ''),
(405, 'Muchtar Lubis', '', '', '', ''),
(406, 'Julianti (Maulidia Zahrani Ardiyah)', 'Kp. Rancamaya RT 002/001 Kel. Rancamaya', 'Rancamaya', 'Bogor Selatan', ''),
(407, 'SARINAWATI', 'Kp. Nagrog RT 01/09 No. 14 Pamoyan', 'Pamoyanan', 'Bogor Selatan', ''),
(408, 'SRI NURMULNYANTI', 'KAMP.BABAKAN  NO.130 RT.05/09 KEL.CIMAHPAR', 'Cimahpar', 'Bogor Utara', 'BAWANG GORENG'),
(409, 'KHASANAH (SITI SUKAESIH)', 'JL.R.HANAFIAH NO.32 RT.04/07  KEL.CIMAHPAR', 'Cimahpar', 'Bogor Utara', 'PANGSIT MOKAF & PANGSIT UBI UNGU'),
(410, 'SUKARNO', 'KP.TUNGGILIS NO.65 RT.04/13 KEL.KEDUNG HALANG', 'Kedunghalang', 'Bogor Utara', 'KRUPUK OPAK DAN RENGINAN'),
(411, 'DWI RAHARJO', 'PONDOK AREN RT.02/07 KEL.CILUAR', 'Ciluar', 'Bogor Utara', 'SEPATU KULIT'),
(412, 'HALIMAH (ENI YUARNI)', 'KP.RAMBAY  RT.01/06 KEL.CILUAR', 'Ciluar', 'Bogor Utara', 'MANISAN '),
(413, 'M.NUR HAMID', 'KP.BABAKAN RT.04/02 KEL.CILUAR', 'Ciluar', 'Bogor Utara', 'BARANG SETENGAH JADI (TEMPE)'),
(414, 'SRI NURHAYATI', 'KP.SAWAH RT.03/07 KEL.TANAH BARU ', 'Tanah Baru', 'Bogor Utara', 'ANEKA KUE BASAH'),
(415, 'NUR EVIYANTI', 'PERUMAHAN TAZMANIA JL.TAZMANI 3 NO.14 RT.08/05 KEL. TANAH BARU', 'Tanah Baru', 'Bogor Utara', 'KUE KERING'),
(416, 'YANI MULYANI', 'KP.CIBULUH RT.03/08', 'Cibuluh', 'Bogor Utara', 'KUE'),
(417, 'NUR HASANAH ', 'cemplang baru blok c no.14', 'Cilendek Barat', 'Bogor Barat', 'BROWNIS'),
(418, 'ARSIH PARMIATI', 'JL PALEM PUTRI 3 NO.31TAMAN YASMIN SEKTOR 5', 'Curugmekar', 'Bogor Barat', 'BUMBU INSTANT');
INSERT INTO `umkm` (`id`, `nama`, `alamat`, `kelurahan`, `kecamatan`, `produk`) VALUES
(419, 'RATNA KOMALASARI', 'KOMP.BBR NO.101 RT 03 RW 08 CIPAKU BOGOR SELATAN', 'Cipaku', 'Bogor Selatan', 'MINUMAN BOBA'),
(420, 'ENI HANDAYANI S ', 'CIPAKU NO.12 RT 05 RW 06 CIPAKU', 'Cipaku', 'Bogor Selatan', 'CATERING COOKIES AND SNACK'),
(421, 'WINDI YUNAWATI', 'JL RAYA TAJUR GG.BABADAK NO.37 RT 005 RW 004', 'Sindangrasa', 'Bogor Timur', 'MAKANAN'),
(422, 'AAN ANDRIYANI', 'CILENDEK TIMUR RT 005 RW 008', 'Cilendek Timur', 'Bogor Barat', 'KACANG UMPET DAN ANEKA '),
(423, 'HENI SRI', 'BOJONG KIDUL RT 06 RW 02', 'Bojong Kerta', 'Bogor Selatan', 'SERBUK JAHE MERAH'),
(424, 'YANNY', 'JL CILUBANG NAGRAK NO.10 RT 01 RW 04', 'Balungbangjaya', 'Bogor Barat', 'ROTI DAN CAKE'),
(425, 'DIANA ROSALINA', 'VILA BOGOR INDAH 2 CC11 NO.33 ', 'Kedunghalang', 'Bogor Utara', 'KUE SEMPRONG'),
(426, 'PRAMITA CAROLINE', 'SINDANGRASA GG.RANTE RT 02 RW 06 NO.201 ', 'Sindangrasa', 'Bogor Timur', 'KERAJINAN TANGAN'),
(427, 'HETI HERNAWATI', 'SKIP GEDUNG TUJUH NO.133', 'Lawanggintung', 'Bogor Selatan', 'KUE BALOK BUNSBUNS'),
(428, 'AINIADZIZAH', '', '', '', 'MINUMAN HERBAL'),
(429, 'DERITA LUMBANTOBING', 'MUTIARA BOGOR RAYA BLOK G7 17 K', 'Katulampa', 'Bogor Timur', 'ANEKA KUE KERING,BOLEN,BROWNIS'),
(430, 'MELINA', 'JL.JAMBU ORI III NO.15 TAMAN YASMIN ', 'Curugmekar', 'Bogor Barat', 'MAKANAN'),
(431, 'Yeni Fitriyani', 'Bukit Kayumanis Blok BD no 10 rt04 rw12', 'Kayu Manis', 'Tanah Sareal', 'Baso'),
(432, 'Dedeh', 'Kp. Situpete No.2 Rt/Rw 01/06 Kel. Sukadamai, Kec. Tanah Sareal, Kota Bogor', 'Sukadamai', 'Tanah Sareal', 'Minuman'),
(433, 'Aty amyana', 'Pondok rumput gg cupang no 28', 'Kebon Pedes', 'Tanah Sareal', 'Akar kelapa wijen ,kue basah '),
(434, 'Indras grassyantie', 'Jl raya jasmin rt005/rw004', 'Curugmekar', 'Bogor Barat', 'Rambak kulit ikan(Rakukan), ayam jengking, bebek n'),
(435, 'Wina hayu handayani', 'Jalan kolonel enjo martadisastra rt2 rw 5 no.57', 'Kedung Badak', 'Tanah Sareal', 'Reseller, jual aneka frozen food'),
(436, 'Massuani', 'vila mutiara bogor blok e5 no 18a', 'Mekarwangi', 'Tanah Sareal', 'kue kering'),
(437, 'Khutik musfariana', 'Cimanggu bharata rt06 rw 04 no 76', 'Kedung Badak', 'Tanah Sareal', 'Frozen food '),
(438, 'Babar Sapartinah', 'Jln cendana 1 no 2 cimanggu asri', 'Kedung Waringin', 'Tanah Sareal', 'Kue kering dan abon telur'),
(439, 'Heni nuraini', 'Bumi kencana permai blok G5 no.5 rt05 rw010', 'Kencana', 'Tanah Sareal', 'Kripik pelepah pisang'),
(440, 'Ratna Maryani ', 'Jl. Raharja 8 Kedung Badak Baru Bogor', 'Kedung Badak', 'Tanah Sareal', 'Gudegjogja, Banana Loaf, Roasted Chicken, Black Ga'),
(441, 'Agatha Margalia', 'taman sari persada cluster orchid c 6 no.8', 'Cibadak', 'Tanah Sareal', 'Tahu Aci'),
(442, 'Surani', 'Jalan bubulak pondok rumput rt 06 rw 01 kelurahan kebon pedes kecamatan tanah sareal kota bogor', 'Kebon Pedes', 'Tanah Sareal', 'Bandeng Presto'),
(443, 'Nurlailah', 'Vila Mutiara Bogor Blok C 3 No 9 Mekarwangi Tanah Sareal Bogor', 'Mekarwangi', 'Tanah Sareal', 'Pempek Sayur dan buah'),
(444, 'Irmawaty Pane', 'Taman Yasmin Sektor 5. Jln. Palem Raja 3 No. 2, Curugmekar Bogor Barat', 'Curugmekar', 'Bogor Barat', 'Buah2 an'),
(445, 'Ekha Aryani', 'Kedung badak rt 07 rw 02 no 33 kel. Kedung badak kec. Tanah sareal Bogor 16164', 'Kedung Badak', 'Tanah Sareal', 'Aneka kue kue, nasi box, tumpeng '),
(446, 'Surjati', 'Kebon pedes gang juana 2 no 1 rt 05/rw 08 kel.kebon peses kec.tanah sareal bgr', 'Kebon Pedes', 'Tanah Sareal', 'Aneka macam kue kering'),
(447, 'Yuli ', 'Bukit kayu manis Rt 03/12 kel kayumanis kec tanah sareal Kota Bogor', 'Kayu Manis', 'Tanah Sareal', 'Masakan ,cake,salad buah '),
(448, 'Rianasari', 'Jl Tumapel, Cimanggu Permai', 'Mekarwangi', 'Tanah Sareal', 'Makanan/kue/snack'),
(449, 'Muhammad Farchan', 'Kp. Kebon Kelapa Rt.02 Rw.03 Kencana Tanah Sareal ', 'Kencana', 'Tanah Sareal', 'Bakso');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama` char(25) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'dwianti', 'kadis1', '12345'),
(2, 'zehanara syaqila', 'mika', 'lupalupa123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikm`
--
ALTER TABLE `ikm`
  ADD PRIMARY KEY (`id_ikm`);

--
-- Indexes for table `ikmm`
--
ALTER TABLE `ikmm`
  ADD PRIMARY KEY (`id_ikmm`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarr`
--
ALTER TABLE `komentarr`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `koperasi`
--
ALTER TABLE `koperasi`
  ADD PRIMARY KEY (`id_koperasi`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `swalayan`
--
ALTER TABLE `swalayan`
  ADD PRIMARY KEY (`id_gerai`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_file` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ikm`
--
ALTER TABLE `ikm`
  MODIFY `id_ikm` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `ikmm`
--
ALTER TABLE `ikmm`
  MODIFY `id_ikmm` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `komentarr`
--
ALTER TABLE `komentarr`
  MODIFY `id_komen` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `koperasi`
--
ALTER TABLE `koperasi`
  MODIFY `id_koperasi` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `swalayan`
--
ALTER TABLE `swalayan`
  MODIFY `id_gerai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
