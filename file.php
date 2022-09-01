<?php
	include ('header.php');
	?>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Dokumen</h2>
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

   <table id="user" class="table table-bordered table-striped x-editor-custom">

											  <thead>
												<tr class="table-active">
												  <th>No</th>
												  <th>Dokumen</th>
												  <th>Aksi</th>
												</tr>
											</thead>
											
      <tbody>
	      <?php 
				include "admin-disperdagin/koneksi.php";
				$batas = 10;
				$halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
				$halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;	

				$previous = $halaman - 1;
				$next = $halaman + 1;
				
				$data = mysqli_query($koneksi,"select * from file");
				$jumlah_data = mysqli_num_rows($data);
				$total_halaman = ceil($jumlah_data / $batas);

				$data_berita = mysqli_query($koneksi,"select * from file limit $halaman_awal, $batas");
				$nomor = $halaman_awal+1;
				while($row = mysqli_fetch_array($data_berita)){
					?>
       <tr>
          <td><?php echo $nomor++; ?></td>
         <td><?php echo $row['file']; ?></td>
          <td>
				<a href="Download-file.php?id=<?php echo $row['file_id']; ?>" target="_blank"><button> Download </button></a> 
              
          </td>
      </tr>
  
         
		 
		 
      <?php
       
      }
      ?>
 
    </tbody>
  

                                                </table>
												<br>
	<nav>
			<ul class="pagination justify-content-center">
				<li class="page-item">
					<a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$previous'"; } ?>>Previous</a>
				</li>
				<?php 
				for($x=1;$x<=$total_halaman;$x++){
					?> 
					<li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
					<?php
				}
				?>				
				<li class="page-item">
					<a  class="page-link" <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>>Next</a>
				</li>
			</ul>
		</nav>
</div>
      </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">

<div class="footer-top">
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4"><strong>DINAS KOPERASI USAHA KECIL DAN MENENGAH PERDAGANGAN DAN PERINDUSTRIAN KOTA BOGOR</strong>
  <br><br>
          <p><strong>Alamat</strong><li>Jl. Dadali No.4, RT.03/RW.06, Tanah Sareal, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16161</li>
                <li>Jl. Dadali II No.3, RT.01/RW.05, Tanah Sareal, Kec. Tanah Sereal, Kota Bogor, Jawa Barat 16161</li>
                <li>Jl. Ciremai Ujung No.202, Kel. Bantar Jati Kec. Bogor Utara</li>
                <li>Jl. Raya Tajur No.52 Kota Bogor, Jawa Barat </li></p>
          <p><strong>Jam Pelayanan</strong>&nbsp;&nbsp;Senin - Jumat : 08.00 - 16.00 WITA</p>
          
         
        </div>
        <div class="col-md-4">&nbsp;</div>
        <div class="col-md-4">
          <strong>Email</strong>
          <ul>
              <li>indagbogorkota04@gmail.com</li>
			  </ul>
          <strong>Telepon</strong>
          <ul>
            <li>0251-8338-788</li>

          </ul>
          </br></br>
              <strong>Media Sosial</strong>
              <ul>
                <li>
                  <a href="https://www.instagram.com/dinas_kukmdagin_kotabogor/" target="_blank" class="social-link"> 
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-instagram" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <rect x="4" y="4" width="16" height="16" rx="4"></rect>
                    <circle cx="12" cy="12" r="3"></circle>
                    <line x1="16.5" y1="7.5" x2="16.5" y2="7.501"></line>
                  </svg>
                  </a>
                  <a href="https://www.instagram.com/dinas_kukmdagin_kotabogor/" target="_blank" class="social-link"> 
                  Instagram
                  </a>
                </li>
                <li>
                  <a href="https://www.youtube.com/channel/UCyRRIXTbPAUXSY-XFvitcPw" target="_blank" class="social-link">
                  <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-youtube" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <rect x="3" y="5" width="18" height="14" rx="4"></rect>
                    <path d="M10 9l5 3l-5 3z"></path>
                  </svg>              
                  </a>
                  <a href="https://www.youtube.com/channel/UCyRRIXTbPAUXSY-XFvitcPw" target="_blank" class="social-link">
                  YouTube
                  </a>
                </li>
              </ul>

            </div>
            </div>
        </div>
      </footer>    </section>
    </div>

    <div class="container d-md-flex py-4">

<div class="me-md-auto text-center text-md-start">
  <div class="copyright">
    &copy; Copyright <strong><span>Demika</span></strong>. All Rights Reserved
  </div>
  <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/ -->
    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
  </div>
</div>
<div class="social-links text-center text-md-right pt-3 pt-md-0">
  <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
  <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
  <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
  <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
  <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
</div>
</div>
    
<script>
 $(document).ready(function() {
  $('#example').DataTable( {
    dom: 'Bfrtip',
    buttons: [
    'colvis'
    ]
  } );
} );
</script>
</body>
</html>