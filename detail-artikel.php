<?php
include "admin-disperdagin/koneksi.php";
if(isset($_GET['id_artikel'])){
    $id_artikel=$_GET['id_artikel'];
}
else {
    die ("Error. No ID Selected!");    
}
?>
<?php
	include ('header.php');
	?>
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Detail Kegiatan</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li><a href="kegiatan.php">Kegiatan</a></li>
            <li>Detail Kegiatan</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Single Section ======= -->
   <?php
						$data = mysqli_query($koneksi,"select * from artikel where id_artikel='$id_artikel'");
						while($dt=mysqli_fetch_array($data)){
										
					?>
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-12 entries">

            <article class="entry entry-single">

              <div class="entry-img">			 
              </div>

              <h2 class="entry-title">
                <?=$dt['judul'];?>
              </h2>

              <div class="entry-meta">
                <ul>
				  <li><i class="bi bi-clock"></i></li> <?=$dt['tanggal'];?>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i><a href="#">Oleh : <?=$dt['penulis'];?></a></li>
                </ul>
              </div>
						<center><img src="admin-disperdagin/artikel/<?=$dt['gambar'];?>" width="800px" height="600px" class="img-fluid"></center>

              <div class="entry-content">
                <br><p align="justify">
                 <?= wordwrap($dt['deskripsi'], 500, "<p>");?>
                 
                </p> 

              </div>

              <div class="entry-footer">
                
              </div>

            </article><!-- End blog entry -->

            
            </div><!-- End blog author bio -->

            <!-- End blog comments -->

          </div><!-- End blog entries list -->

          <!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Single Section -->
<?php }?>
  </main><!-- End #main -->
  </body>

  </html>
								<?php
								include ('footer.php');
								?>