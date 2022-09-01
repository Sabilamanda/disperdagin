<?php
include "admin-disperdagin/koneksi.php";
if(isset($_GET['id'])){
    $id=$_GET['id'];
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
          <h2>Detail Galeri</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="galeri.php">Galeri</a></li>
            <li>Detail Galeri</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <?php
		$data = mysqli_query($koneksi, "select * from galeri where id='$id'");
		while($dt=mysqli_fetch_array($data)){
										
			?>
	
	<section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="entry-img">
                  <img src="admin-disperdagin/galeri/<?=$dt['gambar'];?>" width="1000px" height="800px" alt="" class="img-fluid">
                </div>
				
				

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>
		  
		  <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Informasi terkait Gambar</h3>
              <ul>
                <li><?=$dt['judul'];?></li>
                <p> <?= wordwrap($dt['isi'], 400, "<p>");?></p>
              </ul>
            </div>
           
          </div>

          

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
	
	<?php }?>

  </main><!-- End #main -->

  </html>
								<?php
								include ('footer.php');
								?>