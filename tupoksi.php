<?php
	include ('header.php');
	?>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Profil</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Tupoksi</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= About Us Section ======= -->
    <section id="about-us" class="about-us">
      <div class="container">
		<div class="row">          
		 <div class="section-headline text-center">
           <h2><strong>TUGAS POKOK DAN FUNGSI - DINAS KOPERASI, USAHA KECIL DAN MENENGAH, PERDAGANGAN DAN PERINDUSTRIAN</strong></h2>
         </div>         
        </div>
		<br><br>
        <div class="row">
		<!-- single-well start-->
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="well-left">
              <div class="single-well">
                <a href="#">
                  <img src="assets/img/bgrr.png" width="450px" height="400px" alt="">
				 
				  </table>
                </a>
              </div>
            </div>
          </div>
          <!-- single-well end-->
		  <?php
			include "koneksi.php";
			$data = mysqli_query($koneksi,"select * from profil limit 1");
			while($row=mysqli_fetch_array($data)){
				
				?>
          <div class="col-md-6 col-sm-6 col-xs-12">
		  
            <div class="well-middle">
              <div class="single-well">               
                <p>
                 <?php echo $row['tupoksi'];?> 
				 </p>
                  </div>
            </div>
          </div>
			<?php
			}
		    ?>

            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Our Team Section ======= -->
    <!-- End Our Team Section -->

    <!-- ======= Our Skills Section ======= -->
    <!-- End Our Skills Section -->

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