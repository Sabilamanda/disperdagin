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
          <h2>Izin Usaha Mikro Kecil (IUMK)</h2>
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
                <a href="#">Pentingnya Izin Usaha Mikro Kecil (IUMK)</a>
              </h2>


              <div class="entry-content">
                <p align="justify">
                 Usaha Mikro Kecil (UMK) memiliki kontribusi besar terhadap Produk Domestik Bruto (PDB) di Indonesia sebesar 60,34% pada tahun 2017. Selain menjadi penggerak ekonomi di Indonesia, UKM juga menjadi penyerap tenaga kerja yang paling efektif, terbukti serapan tenaga kerja tahun 2017 sebesar 97,22%, sehingga bisa mengurangi jumlah angka pengangguran yang ada saat ini.
				 Pemerintah telah menetapkan Peraturan Presiden Nomor 98 tahun 2014  tentang perizinan untuk usaha mikro dan kecil yang bertujuan untuk memberikan kepastian hukum dan sarana pemberdayaan bagi Pelaku Usaha Mikro dan Kecil (PUMK) dalam mengembangkan usahanya. Selain itu, dalam pengurusan prosedur IUMK setelah keluar PERPRES menjadi lebih sederhana, mudah, dan cepat sehingga menguntungkan bagi pelaku usaha.
				</p>
				<br>
				<div class="entry-img">
				<center>
                <img src="assets/img/mekanisme.png" alt="" class="img-fluid" width="480px" height="440px" >
              </div>
				
                <p>
                   <strong>Syarat Mengurus Izin Usaha Mikro Kecil (IUMK)
					Dalam pelaksanaanya, sebelum mengurus surat IUMK, pelaku usaha harus memenuhi beberapa syarat berikut ini :</strong>
					<p><ol><li>Melampirkan surat pengantar dari RT atau RW terkait lokasi usaha.</li>
					<li>Memiliki Kartu Tanda Penduduk (KTP) setempat.</li>
					<li>Memiliki Kartu Keluarga.</li>
					<li>Melampirkan Pas Photo berwarna ukuran 4x6 cm 2 lembar.</li>
					<li>Mengisi formulir IUMK yang telah tersedia. <td>
					<a href="contoh.html" target="_blank"><button> Formulir </button></a></td></li>
					<br>
					<p> <strong>Pelaksanaan Penerbitan IUMK</strong>
						<p><ol><li>Penerbitan naskah IUMK oleh Camat yang telah mendapatkan pendelegasian kewenangan dari Bupati/Walikota.</li>
						<li>Diterbitkan paling lambat 1 hari kerja sejak pendaftaran diterima, lengkap dan benar.</li>
						<li>Dapat dicabut apabila Pelaku Usaha Mikro Kecil (PUMK) melanggar ketentuan perundang-undangan.</li>
						<li>Tidak dikenakan biaya, retribusi, dan/atau pungutan lainnya.
					</P>
					</p>
                </p>

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