<?php
	include ('header.php');
	?>
	
<html>
<title>Halaman Galeri DINKUKMDAGIN</title>
<body>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Foto</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">
        <div class="row portfolio-container">
		
        <?php
			include "koneksi.php";
			$data = mysqli_query($koneksi, "select * from galeri");
			while($row=mysqli_fetch_array($data)){
		
		?>
          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="admin-disperdagin/galeri/<?php echo $row['gambar'];?>" style="width:600px; height:250px" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><?php echo $row['judul'];?></h4>

                  <a href="admin-disperdagin/galeri/<?php echo $row['gambar'];?>" data-gallery="portfolioGallery" class="portfolio-lightbox">
				  <i class="bx bx-plus"></i></a>
                  <a href="galeri-details.php?id=<?php echo $row['id'];?>" class="portfolio-details-lightbox" data-glightbox="type: external" title="Details Gambar"><i class="bx bx-link"></i></a>
                
              </div>
            </div>
          </div>

         

			<?php
				}
			?>
	</div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

 </body>
								</html>
								<?php
								include ('footer.php');
								?>