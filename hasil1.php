<?php
	include ('header.php');
	?>

    <section id="contact" class="contact">
      <div class="container">
	  
<?php
			if(isset($_POST['search']))
			{
				$kata_cari = $_POST['cari'];
				
				
				include "koneksi.php";
			$perintah_sql = "select * from koperasi where nama_koperasi like '%$kata_cari%'";
							

			$hasil_query = mysqli_query($koneksi,$perintah_sql);
									//while($row=mysqli_fetch_array($data)){
			
			//$perintah_sql="select * from koperasi where nama_koperasi like '%$kata_cari%'";
			
			
			$jumlah_data= mysqli_num_rows($hasil_query);
			
		if ($jumlah_data<=0)
		{
					echo "<h3><font color='red'>Data tidak ditemukan</font></h3> <br><br>";
			}
			

			echo " <table id='dynamic-table' class='table table-striped table-bordered table-hover'>";
		echo"<thead>";
	  echo "<tr>";
	  
	  echo "<th> No</th>";
	  echo "<th> Nama Koperasi</th>";
	  echo "<th> Nomor Badan Hukum</th>";
	  echo "<th> Alamat</th>";	  
	  echo "<th> Kecamatan</th>";	 
	  
	  echo "</tr>";
	  		echo"</thead>";

	  //ini untuk menampilkan data tabel yang di db
	  
	   while($row=mysqli_fetch_array($hasil_query))
	  {
		echo"<tbody>";
		echo"<tr>";
	?>
	<tr>
											<td><?php echo $row['id_koperasi'];; ?></td>
											<td><?php echo $row['nama_koperasi']; ?></td>
											<td><?php echo $row['nomor_bh']; ?></td>
											<td><?php echo $row['alamat']; ?></td>											
											<td><?php echo $row['kecamatan']; ?></td>											
										 <?php
										 
										 
		echo"</tr>";
		echo"</tbody>";
		
		}
		echo"</table>";
										}
		  
		  
		  ?>
										<?php 
									
											
									?>
								</tbody>
								</table>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
	
	
	<!-- ======= Footer ======= -->
  <footer id="footer">

     <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Disperdagin</h3>
            <p>Jl. Dadali No.4, RT.03/RW.06, Tanah Sareal, Kec. Tanah<br>
			   Sereal, Kota Bogor, Jawa Barat 16161 <br></p>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Beranda</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Kegiatan</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Bidang</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Galeri</a></li>
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

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Flattern</span></strong>. All Rights Reserved
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