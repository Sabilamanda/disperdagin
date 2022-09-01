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
                <a href="#">Izin Pembukaan Kantor Cabang Koperasi Simpan Pinjam</a>
              </h2><br>
			  <div class="entry-img">
				<center>
                <img src="assets/img/cara.png" alt="" class="img-fluid" width="490px" height="450px" >
              </div>
              <div class="entry-content">
				<strong><h3>Dasar Hukum</h3></strong>
				<hr />
				<ol>
					<li>Undang-Undang Nomor 25 Tahun 1992 tentang Perkoperasian</li>
					<li>Peraturan Pemerintah Nomor 24 Tahun 2018 tentang Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik.</li>
					<li>Peraturan Presiden Nomor 62 Tahun 2015 tentang Kementerian Koperasi dan Usaha Kecil dan Menengah</li>
					<li>Peraturan Menteri Koperasi dan Usaha Kecil dan Menengah Republik Indonesia Nomor 15/PER/M.KUKM/IX/2015 tentang Usaha Simpan Pinjam Oleh Koperasi</li>
					<li>Peraturan Menteri Koperasi dan Usaha Kecil dan Menengah Republik Indonesia Nomor1 l/PER/M.KUKM/XII/2017 tentang Pelaksanaan Kegiatan Usaha Simpan Pinjam dan Pembiayaan Syariah Oleh Koperasi</li>
				</ol>
				<strong><h3>Persyaratan</h3></strong>
				<hr />
				<ol>
					<li>Surat permohonan (bermeterai).</li>
					<li>Memiliki Izin Operasional pembukaan Kantor Cabang</li>
					<li>Daftar hadir Rapat Pembentukan Koperasi</li>
					<li>Kantor Cabang telah melaksanakan kegiatan usaha simpan pinjam paling sedikit 6 (enam) bulan</li>
					<li>Mempunyai anggota paling sedikit 20 (dua puluh) orang di daerah yang akan dibuka Jaringan Pelayanannya</li>
					<li>Memiliki laporan keuangan Kantor Cabang yang bersangkutan dalam 1 (satu) tahun terakhir</li>
					<li>Memiliki persetujuan pembukaan Kantor Cabang Pembantu dari bupati/wali kota setempat jika tidak memiliki Kantor Cabang pada kabupaten/kota setempat</li>
					<li>Memiliki rencana kerja Kantor Cabang Pembantu paling sedikit 1 (satu) tahun</li>
					<li>Memiliki daftar nama dan riwayat hidup calon pimpinan dan daftar nama calon karyawan Kantor Cabang Pembantu</li>
					<li>calon kepala cabang pembantu wajib memiliki sertifikat kompetensi</li>
				</ol>
				<strong><h3>Biaya</h3></strong>
				<hr />
				<p>Tidak Di kenakan Biaya (Gratis)</p>
				<strong><h3>Prosedur</h3></strong>
				<hr />
				<ol>
					<li>Persyaratan Izin Usaha dan Izin Operasional sebagai Komitmen yang harus dipenuhi sebelum Izin Usaha simpan pinjam koperasi diterbitkan.</li>
					<li>Pemenuhan Komitmen (sesuai persyaratan) yang disampaikan berupa dokumen dalam bentuk hardcopy.</li>
					<li>Koperasi melalui kuasa pengurus melakukanPendaftaran untuk memperoleh izin dengan cara mengakses lamanOSS untuk mendapatkan Nomor Induk Berusaha.</li>
					<li>Cara mengakses laman OSS) dilakukan dengan cara memasukkan nomorpengesahan badan hukum koperasi</li>
					<li>Koperasi melakukan pendaftaran dengan mengisi formsebagaimana tercantum dalam laman OSS</li>
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