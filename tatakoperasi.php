<?php
	include ('header.php');
	?>
<html>
<head>
<title>Halaman Pelayanan</title>

 </head>
<body>
 
 <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Pendirian Koperasi</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Pelayanan</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	<br><br>
	<!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">
		<div class="row">
		<body style="text-align:left">
 <div class="col-lg-8 entries">

            <article class="entry entry-single">

              <h2 class="entry-title">
                <a href="#">Tata Cara Pendirian Koperasi</a>
              </h2><br>
			  <div class="entry-img">
				<center>
                <img src="assets/img/koperasi.png" alt="" class="img-fluid" width="480px" height="440px" >
              </div>
              <div class="entry-content">
                <p align="justify">
                <strong>Rapat pembentukan koperasi oleh pendiri koperasi paling sedikit 9 orang untuk koperasi primer atau 3 koperasi berbadan hukum untuk koperasi sekunder 
				(Peraturan Pemerintah Nomor 7 Tahun 2021).</strong>
				</p>				
				<p><strong>Membahas tentang materi rancangan anggaran dasar koperasi. Hasil Rapat Pembentukan Koperasi dituangkan dalam Berita Acara (BA) berisi tentang :</strong></p>
				<ol>
					<li>Pengurus dan Pengawas Koperasi dan masa jabatannya</li>
					<li>Wilayah keanggotaan koperasi</li>
					<li>Visi dan misi koperasi</li>
					<li>Jenis koperasi</li>
					<li>Usaha koperasi sesuai Klasifikasi Baku Lapangan Usaha Indonesia (KBLI)</li>
					<li>Modal usaha awal</li>
					<li>Nama (terdiri dari 3 kata setelah frasa koperasi dan jenis koperasi serta belum pernah digunakan oleh koperasi lainnya)</li>
					<li>Alamat koperasi</li>
					<li>Kesepakatan lain yang perlu ditulis dalam BA.</li>
					<li>Dalam rapat pembentukan dapat dilakukan penyuluhan tentang perkoperasian oleh Kementrian Koperasi dan UKM dan/atau Dinas Provinsi, Dinas Kabupaten/Kota sesuai 
						wilayah keanggotaannya (Peraturan Kementrian Koperasi dan UKM Nomor 9 Tahun 2018).</li>
				</ol>
				<p><strong>Kelengkapan pembuatan Akta Pendirian Koperasi terdiri dari :</strong>
				<ol>
					<li>Surat Kuasa Pendiri Koperasi</li>
					<li>Berita Acara Rapat Pembentukan Koperasi</li>
					<li>Daftar hadir Rapat Pembentukan Koperasi</li>
					<li>FC KTP dan KK Pengurus dan Pengawas Koperasi</li>
					<li>FC bukti penyetoran modal ke Bank Pemerintah</li>
					<li>Rencana awal kegiatan usaha koperasi</li>
					<li>Kelengkapan pendukung lainnya</li>
					<li>Untuk koperasi sekunder harus ditambah dokumen</li>
					<li>Hasil berita acara rapat pendirian dan surat kuasa koperasi primer dan/atau koperasi sekunder untuk pendirian koperasi sekunder</li>
					<li>Keputusan pengesahan badan hukum koperasi primer dan/atau sekunder calon anggota koperasi sekunder; dan</li>
					<li>Koperasi primer dan/atau sekunder calon anggota melampirkan Nomor Pokok Wajib Pajak (NPWP) aktif</li>
					<li>Kelengkapan tambahan bagi Koperasi Simpan Pinjam atau koperasi yang memiliki unit simpan pinjam</li>
					<li>Rencana kerja paling singkat 3 tahun</li>
					<li>Admintrasi dan pembukuan</li>
					<li>Nama dan Riwayat hidup calon pengelola</li>
					<li>Daftar sarana kerja</li>
				</ol>
				<p><strong>Pengesahan Akta Pendirian Koperasi oleh Menteri Hukum dan HAM melalui Sistem Administrasi Badan Hukum (Peraturan Menteri Hukum dan HAM Nomor 14 Tahun 2019).</strong>
				<ol>
					<li>Kelengkapan Permohonan Pengesahan Akta Pendirian Koperasi terdiri lain</li>
					<li>Surat Kuasa Pendiri Koperasi kepada Notaris</li>
					<li>Persetuan nama pemakaian nama koperasi dari Menteri Hukum dan HAM</li>
					<li>Akta Pendirian Koperasi dari Notaris</li>
					<li>Kelengkapan pendukung lainnya.</li>
				</ol>	
              </div>

            </article><!-- End blog entry -->
			
			

          </div><!-- End blog entries list -->
 
	<div class="col-lg-4">

            <div class="sidebar">
              <div class="sidebar-item search-form">
                <form method="POST" action="cari.php">
                  <input type="text" name="cari" id="search-text">
                  <button class="button" type="submit" name="search"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->
			   <h3 class="sidebar-title">Kategori</h3>
              <div class="sidebar-item categories">
                <ul>
                  <li><a href="bahan-pokok.php">Bahan Pokok</a></li>
                  <li><a href="umkm1.php">UMKM</a></li>
                  <li><a href="kerajinan.php">Kerajinan</a></li>
                </ul>
              </div><!-- End sidebar categories-->
			  <h3 class="sidebar-title">Berita Terkini</h3>
              <div class="sidebar-item recent-posts">
			  <?php
						
						include "koneksi.php";
						$data = mysqli_query($koneksi,"select * from berita order by kategori DESC limit 5");
						while($dt=mysqli_fetch_array($data)){
										
					?>
                <div class="post-item clearfix">
                  <div class="post-img">				
                           <img src="admin-disperdagin/foto/berita/<?=$dt['foto'];?>" style="width:90px; height:60px" alt="">                      						
					  </div>
                 <div class="pst-content">
                        <h4><a href="detail-berita.php?id_berita=<?=$dt['id_berita']?>"><?=substr($dt['judul_berita'], 0, 40)?> . . .</a></h4>
                      </div>
                </div>
					<?php }?>
					<!-- End single post -->
                
			  
            </div><!-- End sidebar -->
			</div><!-- End blog sidebar -->
        </div> 
           
		</div><!-- End Blog Page -->
</section><!-- End Blog Section -->			
	<!-- ======= Our Clients Section ======= -->
     <section id="clients" class="clients">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Link <strong>Terkait</strong></h2>
        </div>

        <div class="row no-gutters clients-wrap clearfix" data-aos="fade-up">

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://kemenkopukm.go.id/" target="_blank"><img src="assets/img/kukm.png">
					</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://www.kemendag.go.id/id/" target="_blank"><img src="assets/img/dagang.png">
				</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://kemenperin.go.id/" target="_blank"><img src="assets/img/tri.png">
				  </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://disperindag.kotabogor.go.id/" target="_blank"><img src="assets/img/kota.png">
					</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="http://kumkm.kotabogor.go.id/new/" target="_blank"><img src="assets/img/kotaa.png">
					</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://pasarpakuanjaya.co.id/" target="_blank"><img src="assets/img/psrr.png">
					</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://kotabogor.go.id/" target="_blank"><img src="assets/img/logo.png">
				  </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="https://opendata.jabarprov.go.id/id" target="_blank"><img src="assets/img/open.png">
				  </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Our Clients Section -->
  </main><!-- End #main -->
      </body>
								</html>
								<?php
								include ('footer.php');					
								?>