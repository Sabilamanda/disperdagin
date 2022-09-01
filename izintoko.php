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
          <h2>Rekomendasi IUTM</h2>
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
                <a href="#">Rekomendasi Izin Usaha Toko Modern (IUTM)</a>
              </h2>
              <div class="entry-content">
				<strong><h3>Persyaratan</h3></strong>
				<hr />
				<ol>
					<li>Surat Permohonan Rekomendasi Izin Usaha Toko Modern (IUTM) kepada Kepala Dinas Koperasi Usaha Kecil dan Menengah Perdagangan dan Perindustrian Kota Bogor</li>
					<li>Fotocopy Kartu Tanda Penduduk</li>
					<li>Surat persetujuan/Rekomendasi Titik Lokasi IUTM</li>
					<li>Fotocopy Izin Prinsip</li>
					<li>Rekomendasi tata Ruang dari Dinas Perumahan Rakyat, Kawasan Permukiman dan Lingkungan Hidup Kota Bogor</li>
					<li>Fotocopy NPWP</li>
					<li>Fotocopy Akta Pendirian Perusahaan dan Perubahannya serta pengesahannya</li>
					<li>Fotocopy Surat Izin Gangguan/HO</li>
					<li>Dokumen Hasil Analisa Dampak Sosial Ekonomi atau Rekomendasi analisa mengenai Dampak Lingkungan (AMDAL) atau UKL/UPL, dan ANDALALIN, kecuali Minimarket</li>
					<li>Fotocopy Izin Mendirikan Bangunan (IMB)</li>
					<li>Rekomendasi tata Ruang dari Dinas Perumahan Rakyat, Kawasan Permukiman dan Lingkungan Hidup Kota Bogor</li>
					<li>Surat pernyataan kesanggupan penggunaan tenaga kerja daerah</li>
					<li>Surat pernyataan kesanggupan melaksanakan dan mematuhi ketentuan yang berlaku</li>
					<li>Surat permohonan ditandatangani di atas materai yang cukup oleh pemilik atau penanggungjawab perusahaan</li>
				</ol>
				<strong><h3>Sistem Mekanisme dan Prosedur</h3></strong>
				<hr /><br>
				<div class="entry-img">
				<center>
                <img src="assets/img/tim/DIAGRAM.png" alt="" class="img-fluid" width="490px" height="450px" >
              </div>
				<ol>
					<li>Petugas Registrasi menerima dokumen permohonan Rekomendasi Izin Usaha Toko Modern (IUTM)</li>
					<li>Petugas pemeriksa melakukan pemeriksaan berkas permohonan. Apabila belum memenuhi persyaratan, berkas dikembalikan untuk dilengkapi</li>
					<li>Petugas pemeriksa melakukan survei ke lapangan untuk melihat kesesuaian dengan data yang disampaikan</li>
					<li>Pejabat penilai kelayakan membuat surat rekomendasi berdasarkan hasil survei lapangan</li>
					<li>Surat rekomendasi ditandatangani oleh Kepala Dinas</li>
					<li>Pemohon menerima Surat Rekomendasi IUTM</li>
				</ol>
				<strong><h3>Biaya / Tarif</h3></strong>
				<hr />
				<p>Tidak Di Pungut Biaya (Gratis)</p>
				<strong><h3>Waktu Penyelesaian</h3></strong>
				<hr />
				2 Hari 	
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