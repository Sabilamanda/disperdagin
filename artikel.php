<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Artikel SkinCare</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <style>
  .float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#25d366;
	color:#FFF;
	border-radius:50px;
	text-align:center;
  font-size:30px;
  z-index:100;
}

.my-float{
	margin-top:16px;
}
  </style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <a href="https://api.whatsapp.com/send?phone=6285817908343&text=" class="float" target="_blank">
  <i class="fa fa-whatsapp my-float"></i>
  </a>

  <!-- =======================================================
  * Template Name: Eterna - v4.6.0
  * Template URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">demika.oktavia@gmail.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+62 858 1790 8343</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
        <div class="container">
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> 
                <span class="navbar-toggler-icon"></span>
          </button>  
		  
          <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
          <li class="nav-item" ><a href="index.php"><span align="center">Home</span></a></li>
          <li class="dropdown"><a href="#" id="navbarDropdownMenuLink"><span>Profil</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="visimisi.php">Visi dan Misi Kota Bogor</a></li>
			  <li><a href="organisasi.php">Stuktur Organisasi</a></li>
			 </ul>
          <li><a class="active" href="artikel.php">Kegiatan</a></li>
		  <li class="dropdown"><a href="#" id="navbarDropdownMenuLink"><span>Bidang</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="umpeg.php">Kasubag Umum dan Kepegawaian</a></li>
			  <li><a href="renlap.php">Kasubag Keuangan</a></li>
			  <li><a href="laporan.php">Kasubag Perencanaan dan Pelaporan</a></li>
			  <li><a href="promija.php">Promosi dan Kemitraan Jasa</a></li>
			  <li><a href="niaga.php">Tertib Niaga</a></li>
			  <li><a href="sarkomdag.php">Sarana Komoditi Perdagangan</a></li>
			 </ul>
          <li><a href="pricing.html">Pricing</a></li>
          <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li><a href="contact.php">Kontak</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="home.php">Home</a></li>
          <li>Artikel</li>
        </ol>
        <h2>Artikel SkinCare</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">
			<?php
          	echo "<b><center></b></center>"; 
						include "admin-disperdagin/koneksi.php";
						$data = mysqli_query($koneksi,"select * from artikel");
						while($dt=mysqli_fetch_array($data)){
										
					?>

          <div class="col-lg-4 col-md-6 mb-4 mt-lg-0">
            <div class="box" data-aos="fade-left">
                <img src="admin-disperdagin/artikel/<?=$dt['gambar'];?>" width="350px" height="200px">
                <br><br>
				<h5><?=substr($dt['judul'], 0, 30)?> . . .</h5>

                <p><?=substr($dt['deskripsi'], 0, 100)?> . . .</p>
			  

              <div class="btn-wrap">
                <a href="detail-artikel.php?id_artikel=<?=$dt['id_artikel']?>" 
				class="btn-buy">Selengkapnya</a>
              </div>
            </div>
          </div>
          	<?php }?>

              
            </article><!-- End blog entry -->

            

            <div class="blog-pagination">
              <ul class="justify-content-center">
				<li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
              </ul>
            </div>

          </div><!-- End blog entries list -->

          <div class="col-lg-3">

            <div class="sidebar">

              <h2 class="sidebar-title">Search</h2>
              <div class="sidebar-item search-form">
                <form action="">
                  <input type="text">
                  <button type="submit"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->

              <h3 class="sidebar-title">Categories</h3>
              <div class="sidebar-item categories">
                <ul>
                  <li><a href="#">Perawatan Wajah <span>(25)</span></a></li>
                  <li><a href="#">Perawatan Tubuh <span>(12)</span></a></li>
                  <li><a href="#">Treatment Mata <span>(5)</span></a></li>
                  <li><a href="#">Perawatan Rambut <span>(22)</span></a></li>
                </ul>
              </div><!-- End sidebar categories-->

              <h3 class="sidebar-title">Popular</h3>
              <div class="sidebar-item recent-posts">
                <div class="post-item clearfix">
                  <img src="assets/img/blog/pop1.jpg" alt="">
                  <h4><a href="blog-single.html">6 Cara Merawat Wajah Pria, Hal yang Harus..</a></h4>
                  <time datetime="2020-01-01">Jan 1, 2021</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog/pop2.jpg" alt="">
                  <h4><a href="blog-single.html">Tak Cukup Skincare, Minuman Kolagen Bisa Ban..</a></h4>
                  <time datetime="2020-01-01">Jan 3, 2021</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog/pop3.jpg" alt="">
                  <h4><a href="blog-single.html">Skincare dengan Hidrasi Air Mineral Terbaru..</a></h4>
                  <time datetime="2020-01-01">Jan 1, 2020</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog/pop4.jpg" alt="">
                  <h4><a href="blog-single.html">Manfaat Mentimun untuk Kesehatan Kul..</a></h4>
                  <time datetime="2020-01-01">Jan 1, 2020</time>
                </div>

              </div><!-- End sidebar recent posts-->

              
              <div class="sidebar-item tags">
                
              </div><!-- End sidebar tags-->

            </div><!-- End sidebar -->

          </div><!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h4>Our article</h4>
            <p>Movement. Inspiration. Style. Life. Culture.</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Galeri</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Artikel</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Demika Oktaviani <br>
              Bogor 1408<br>
              <strong>Phone:</strong> +62 858 1790 8343<br>
              <strong>Email:</strong> demika.oktaviani@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>About Artikel Skincare</h3>
            <p>Skincare adalah serangkaian perawatan kulit yang dapat merawat kesehatan dan kecantikan kulit Anda. 
			   Tak cukup dari dalam dengan makanan yang Anda konsumsi, merawat kulit juga bisa dilakukan dari luar.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Eterna</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>