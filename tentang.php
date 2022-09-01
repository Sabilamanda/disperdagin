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
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= About Us Section ======= -->
    <section id="clients" class="clients">
      <div class="container">
<center>
        <?php
			include "koneksi.php";
			$data = mysqli_query($koneksi,"select * from profil limit 1");
			while($row=mysqli_fetch_array($data)){
				
				?>
          <div class="col-md-6 col-sm-6 col-xs-12">		  
            <div class="well-middle">
              <div class="single-well">
                <a href="#">
                  <h2 class="sec-head"><p align="center">SEKILAS DINAS</p></h2>
                </a>
				<a href="#">
                  <img src="assets/img/bgrr.png" width="450px" height="400px" alt="">
				 
				 
                </a>
                <p>
                 <?php echo $row['tentang'];?> 
				 </p>
                  </div>
            </div>
          </div>
			<?php
			}
		    ?>  

      </div>
    </section><!-- End About Us Section -->

    <!-- End Our Team Section -->

    <!-- ======= Our Skills Section ======= -->
    <!-- End Our Skills Section -->

     <!-- ======= Portfolio Section ======= -->
     <section id="portfolio" class="portfolio">
      <div class="container">
		<div class="row portfolio-container" data-aos="fade-up">

    <div class="col-lg-4 col-md-6 portfolio-item filter-app">
		<center><iframe width="350" height="200" src="https://www.youtube.com/embed/q7S6WAC5zgk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center> 
		</div>

    <div class="col-lg-4 col-md-6 portfolio-item filter-app">
		 <center><iframe width="350" height="200" src="https://www.youtube.com/embed/8kAIwxIk-Lg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>
		</div>

    <div class="col-lg-4 col-md-6 portfolio-item filter-app">
     <center><iframe width="350" height="200" src="https://www.youtube.com/embed/dsPCg7XPyak" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>
		 </div>

      </div>
    </section><!-- End Portfolio Section -->


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
              <a href="https://jabarprov.go.id/" target="_blank"><img src="assets/img/jabar.png">
					</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <a href="http://solusi.kotabogor.go.id/" target="_blank"><img src="assets/img/tim/solusii.png">
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