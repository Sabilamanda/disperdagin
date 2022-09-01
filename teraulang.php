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
          <h2>Pelayanan Tera Ulang</h2>
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
                <a href="#">Standar Pelayanan Minimal Metrologi</a>
              </h2><br>
			  <div class="entry-img">
				<center>
                <img src="assets/img/tim/4.jpg" alt="" class="img-fluid" width="480px" height="440px" >
              </div>
              <div class="entry-content">
			   <p align="justify">
                <strong>STANDAR PELAYANAN MINIMAL TERA / TERA ULANG UTTP
				UPTD METROLOGI LEGAL DINAS KOPERASI USAHA KECIL DAN MENENGAH PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR</strong>
				</p>
				<strong><h3>Tera Ulang</h3></strong>
				<hr />
				<p align="justify">
                 Peraturan Pemerintah Nomor 2 Tahun 1985 tentang Wajib dan Pembebasan untuk Ditera dan/ atau Ditera Ulang serta Syarat-Syarat bagi Alat-alat Ukur, Takar, Timbang dan Perlengkapannya (UTTP), 
				 dimana pada BAB II Pasal 2 disebutkan bahwa UTTP yang secara langsung atau tidak langsung digunakan atau disimpan dalam keadaan siap pakai untuk keperluan menentukan hasil pengukuran, penakaran atau penimbangan untuk usaha wajib ditera dan ditera ulang. Selanjutnya berdasarkan Permendag 
				 Nomor 08/M-DAG/PER/3/2010 tentang Alat-alat Ukur, Takar, Timbang dan Perlengkapannya (UTTP) yang Wajib Ditera dan Ditera Ulang.</p>
				<strong><h3>PELAYANAN TERA / TERA ULANG</h3></strong>
				<h3>Persyaratan Pelayanan</h3>
				<hr />
				<ol>
					<li>Surat Permohonan Tera / Tera Ulang</li>
					<li>Untuk Permohonan Tera Ulang, SKHP tahun sebelumnya</li>
				</ol>
				<h3>Waktu Pelayanan</h3>
				<hr />
				<p> - Waktu Penyelesaian Pelayanan : 5 ( Lima ) Hari Kerja</p>
				<h3>Tarif / Biaya</h3>
				<hr />
				<ol>
				<li>Biaya Sesuai dengan Perda No 11 Tahun 2018 Tentang Retribusi Pelayanan Tera dan Tera Ulang</li>
				<li>Biaya Pengangkutan Standar, Jasa Reparatir/Teknisi</li>
				</ol>
				<h3>Produk)</h3>
				<hr />
				<ol>
				<li>Tera/ Tera Ulang UTTP</li>
				<li>SKHP (Surat Keterangan Hasil Pengujian)</li>
				</ol>
				<h3>Dasar Hukum</h3>
				<hr />
				<ol>
				<li>Undang-undang Nomor 2 Tahun 1981 tentang Metrologi Legal</li>
				<li>Peraturan Pemerintah Nomor 2 Tahun 1985 tentang Wajib dan Pembebesan untuk di Tera/Tera Ulang serta syarat-syarat bagi alat- alat ukur timbang takar dan perlengkapan</li>
				<li>PP No. 10 Tahun 1987 tentang Satuan turunan, Satuan tambahan, dan Satuan lain yang berlaku</li>
				<li>Permendag No. 125 Tahun 2018 tentang Tanda Tera</li>
				<li>Permendag No. 115 Tahun 2018 Tentang Unit Metrologi Legal</li>
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