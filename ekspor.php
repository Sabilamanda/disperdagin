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
          <h2>Syarat Menjadi Eksportir</h2>
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
                <a href="#">Syarat Menjadi Eksportir</a>
              </h2><br>
			  <div class="entry-img">
				<center>
                <img src="assets/img/Ekspor.jpg" alt="" class="img-fluid" width="480px" height="440px" >
              </div>
              <div class="entry-content">				
				<p><strong>Untuk menjadi sebuah Perusahaan ekspor harus memenuhi ketentuan-ketentuan sebagai berikut:</strong></p>
				<ol>
					<li>Badan Hukum, dalam bentuk :</li>
					<ol type='a'>
					<li>CV (Commanditaire Vennotschap)</li>
					<li>Firma</li>
					<li>PT (Perseroan Terbatas)</li>
					<li>Persero (Perusahaan Perseroan)</li>
					<li>Perum (Perusahaan Umum))</li>
					<li>Perjan (Perusahaan Jawatan)</li>
					<li>Koperasi</li>
					</ol>
					<li>Memiliki NPWP (Nomor Wajib Pajak)</li>
					<li>Mempunyai salah satu izin yang dikeluarkan oleh Pemerintah seperti:</li>
					<ol type='a'>
					<li>Surat Izin Usaha Perdagangan (SIUP) dari Dinas Perdagangan</li>
					<li>Surat Izin Industri dari Dinas Perindustrian</li>
					<li>Izin Usaha Penanaman Modal Dalam Negeri (PMDN) atau Penanaman Modal Asing (PMA) yang dikeluarkan oleh Badan Koordinasi Penanaman Modal (BKPM)</li>
					</ol>
					<li>Eksportir ini dapat diklasifikasikan menjadi:</li>
					<li>Eksportir Produsen, dengan syarat:</li>
					<ol type='a'>
					<li>Sebagai Eksportir Produsen dalam upaya memperoleh legalitasnya seyogyanya memenuhi persyaratan yang ditetapkan yaitu mengisi formulir isian yang disediakan oleh Dinas Perindag di Pemerintah Daerah Kabupaten/Kota atau Propinsi, dan Instansi teknis yang terkait.</li>
					<li>Memiliki Izin Usaha Industri</li>
					<li>Memiliki NPWP</li>
					<li>Memberikan Laporan realisasi ekspor kepada Dinas Perindag atau instansi dan pejabat yang ditunjuk (secara berkala setiap tiga bulan) yang disyahkan oleh Bank Devisa dengan melampirkan surat pernyataan seperti: tidak terlibat tunggakan pajak, tidak terlibat tunggakan perbankan, tidak terlibat masalah kepabeanan.</li>
					</ol>
					<li> Eksportir Bukan Produsen, dengan syarat:</li>
					<ol type='a'>
					<li>Sebagai Eksportir bukan Produsen untuk memperoleh legalitas seyogyanya memenuhi persyaratan yang ditetapkan, yaitu mengisi formulir isian yang disediakan oleh Dinas Perindag di Pemerintah Daerah Kabupaten/Kota atau Propinsi dan Instansi teknis yang terkait</li>
					<li>Memiliki Surat Izin Usaha  Perdagangan</li>
					<li>Memiliki NPWP</li>
					<li>Memberikan Laporan realisasi ekspor kepada Dinas Perindag atau instansi/pejabat yang ditunjuk (setiap tiga bulan) yang disyahkan oleh Bank Devisa dengan melampirkan surat pernyataan seperti tidak terlibat tunggakan pajak, tidak terlibat tunggakan perbankan, tidak terlibat masalah kepabeanan</li>
					</ol>
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