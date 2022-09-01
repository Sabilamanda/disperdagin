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
          <h2>Fasilitasi Pendaftaran Halal MUI</h2>
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
                <a href="#">Fasilitasi Pendaftaran Halal MUI</a>
              </h2>
			  <br>

              <div class="entry-content">
				<div class="entry-img">
				<center>
                <img src="assets/img/halal.jpeg" alt="" class="img-fluid" width="380px" height="340px" >
              </div>
				
                <p><strong>Persyaratan </strong>
				   <p><strong>Syarat:</strong></p>
					<ol>
					<li>Membawa identitas diri (KTP);</li>
					<li>Membawa Surat Permohonan Pendaftaran Halal MUI</li>
					</ol>
					<br>
					<p> <strong>Prosedur :</strong>
					<ol>
					<li>Pemohon datang langsung dengan membawa persyaratan pendaftaran</li>
					<li>Petugas meneliti kelengkapan administrasi berkas permohonan</li>
					<li>Petugas membuat Surat Pengantar</li>
					<li>Petugas mengirimkan Surat Pengantar dan kelengkapan pengajuan merek ke LPPOM MUI Provinsi Jawa Barat</li>
					<li>Petugas mengundang LPPOM MUI Provinsi Jawa Barat dan pemohon untuk melaksanakan sosialisasi tentang tata cara dan ketentuan pengajuan sertifikat halal</li>
					<li>Petugas mendampingi pengisian formulir pendaftaran</li>
					<li>Mendampingi LPPOM MUI Provinsi Jawa Barat dalam pengecekan ke lokasi produksi milik pemohon</li>
					<li>Membukukan dan mencatat</li>
					</ol>
					<p> <strong>Jangka waktu penyelesaian</strong>
					<ol>
					<li>Proses penyelesaian dalam fasilitasi pendaftaran merek dilakukan setelah pemohon dinyatakan memenuhi persyaratan yang telah ditentukan</li>
					<li>Waktu penyelesaian dilaksanakan paling lambat 7 (tujuh) hari kerja sejak diterimanya permohonan</li>
					</ol>
					<p> <strong>Biaya/tarif</strong>
					<ol>
					<li>Surat Keterangan binaan Dinkukmdagin</li>
					<li>Surat Pengantar Dinas</li>
					<li>Bukti Pendaftaran Merek</li>
					</ol>
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