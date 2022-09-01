<?php
	include ('header.php');
	?>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Berita</h2>
          <ol>
            <li><a href="berita.php">Berita</a></li>
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">
	  
<?php
			if(isset($_POST['search']))
			{
				$kata_cari=$_POST['cari'];
				
				
				include "admin-disperdagin/koneksi.php";
				$data = mysqli_query($koneksi, "SELECT * FROM berita where judul_berita like '%$kata_cari%' ");
			$cek = mysqli_num_rows($data);
			echo "		<p align='center' ><font color='#fc3003' size='+2'><b> Hasil Pencarian Berita<b></font></p>";
			if (empty($cek)){
			echo "<p align='center' ><font color='black'><b> Berita Tidak Tersedia<b></font></p>";
			}
			
		else{
		$data = mysqli_query($koneksi, "SELECT * FROM berita where judul_berita like '%$kata_cari%' ");
		}
							//echo "<p><center> Data ditemukan  </center></p><br><br>";
							
		echo " <table id='dynamic-table' class='table table-striped table-hover'>";
		echo"<thead>";
		echo"<tr>";
		
				//echo "<th> Foto</th>";
				//echo "<th> Judul Berita </th>";
				
				echo "</tr>";
						echo"</thead>";
						
				//ini untuk menampilkan data tabel yang di db
				
				while($dt=mysqli_fetch_array($data)){
					
					echo"<tbody>";
					echo"<tr>";
					
					?>
					<td>
					<img src="admin-disperdagin/foto/berita/<?php echo $dt['foto'];?>" width="100px" height="80px"></td>
					<td><a href="detail-berita.php?id_berita=<?=$dt['id_berita']?>" ><?php echo "$dt[1]";?></a></td>
					<?php
					
				}
			echo"</tr>";
			
			
			
			}

		?>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
	</div>
	</div>
  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>