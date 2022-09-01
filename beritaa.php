<?php
	include ('header.php');
	?>
<html>
<head>
<title>Berita Dinas</title>
<body>
 
 <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Pusat Media</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Berita</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	<br><br>
	<!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">
		<div class="row">

          <div class="col-lg-8 entries">
	
            <div class="row">
			<?php
         
						include "admin-disperdagin/koneksi.php";
						$halaman        = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
						$halaman_awal   = ($halaman > 1) ? ($halaman * 3) - 3 : 0;
						$sebelum        = $halaman - 1;
						$setelah        = $halaman + 1;
						$data = mysqli_query($koneksi,"select * from beritaa");
						$jumlah_data    = mysqli_num_rows($data);
						$total_halaman  = ceil($jumlah_data / 3);
						$data = mysqli_query($koneksi,"select * from beritaa");
						$data_berita  = mysqli_query($koneksi, "select * from beritaa limit $halaman_awal, 3");
						$nomor          = $halaman_awal + 1;
						while($dt=mysqli_fetch_array($data_berita)){
										
					?>
					 <article class="entry">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="single-blog">
                  <div class="single-blog-img">
                    <a href="detail-beritaa.php">
                       <img src="admin-disperdagin/foto/beritaa/<?=$dt['gmbr'];?>" style="width:700px; height:400px" alt="">
                    </a>
                  </div>
                  <div class="blog-meta">     
					
                        <i class="bi bi-tags"></i>
                       <?=$dt['kategori'];?>
                      
                  </div>
                  <div class="blog-text">
                    <h4>
                      <a href="#">  <?=substr($dt['judul_brt'], 0, 60)?> . . .</a>
                    </h4>
                     <p><?=substr($dt['isi'], 0, 300)?> . . .</p>
                  </div>
                  <span>
                    <a href="detail-beritaa.php?id_beritaa=<?=$dt['id_beritaa']?>" class="btn btn-light btn-block" role="button">Baca Selengkapnya</a>
                   <br><br>
				  </span>
                </div>
              </div>
			 </article><!-- End blog entry -->
            
			<?php }?>
			<!-- End single blog -->
              <div class="blog-pagination">
                <ul class="pagination">
                   <li class="page-item">
                <a  class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$sebelum'"; } ?> >Previous</a>
              <li class="page-item">
            <?php
                for($x = 1; $x <= $total_halaman; $x++){
            ?>
             <li class="page-item">
			 <a  href="?halaman=<?php echo $x ?>"class="page-link"> <?php echo $x; ?></a></li>
            <?php
               }
            ?>
              <li class="page-item">
                <a <?php  if($halaman < $total_halaman) { echo "href='?halaman=$setelah'"; } ?> class="page-link">Next</a>
            </li>
                </ul>
              </div>
            </div>       
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
                  <li><a href="#">Bahan Pokok</a></li>
                  <li><a href="#">UMKM</a></li>
                  <li><a href="#">Produk</a></li>
                </ul>
              </div><!-- End sidebar categories-->
			  <h3 class="sidebar-title">Berita Terkini</h3>
              <div class="sidebar-item recent-posts">
			  <?php
						
						include "koneksi.php";
						$data = mysqli_query($koneksi,"select * from beritaa order by kategori DESC limit 4");
						while($dt=mysqli_fetch_array($data)){
										
					?>
                <div class="post-item clearfix">
                  <div class="post-img">				
                           <img src="admin-disperdagin/foto/beritaa/<?=$dt['gmbr'];?>" style="width: 100px; height:60px" alt="">                      						
					  </div>
                 <div class="pst-content">
                        <h4><a href="detail-beritaa.php?id_beritaa=<?=$dt['id_beritaa']?>"><?=substr($dt['judul_brt'], 0, 50)?> . . .</a></h4>
                      </div>
                </div>
					<?php }?>
					<!-- End single post -->
                
			  
            </div><!-- End sidebar -->
			</div><!-- End blog sidebar -->
        </div> 
		</div><!-- End Blog Page -->
</section><!-- End Blog Section -->			
	
  </main><!-- End #main -->
      </body>
								</html>
								<?php
								include ('footer.php');					
								?>