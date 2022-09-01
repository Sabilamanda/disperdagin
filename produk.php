<?php
	include ('header.php');
	?>
	
<html>
<title>Halaman Produk DINKUKMDAGIN</title>
<body>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Produk</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">
        <div class="row">
		<?php
			include "koneksi.php";
			$data = mysqli_query($koneksi, "select * from produk");
			while($row=mysqli_fetch_array($data)){
		
		?>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up">
              <div class="member-img">
                <img src="admin-disperdagin/foto/produk/<?php echo $row['gmbr'];?>" class="img-fluid" style="width:300px; height:200px" alt="">
              </div>
			 
              <div class="member-info">
                <h4><?php echo $row['nama_produk'];?></h4>
				<i class="bi bi-tags"></i>
                       <h6><?=$row['kategori'];?></h6>
                <p><?php echo $row['alamat'];?></p>
				  
				  
                  <a href="admin-disperdagin/foto/produk/<?php echo $row['gmbr'];?>" data-gallery="portfolioGallery" class="portfolio-lightbox">
				  <i class="bx bx-move"></i></a>
              </div>
            </div>
          </div>

		<?php
				}
			?>
        </div>

      </div>
    </section><!-- End Our Team Section -->

  </main><!-- End #main -->

 </body>
								</html>
								<?php
								include ('footer.php');
								?>