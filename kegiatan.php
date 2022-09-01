<?php
	include ('header.php');
	?>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Agenda Kegiatan</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
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
          	echo "<b><center></b></center>"; 
						include "admin-disperdagin/koneksi.php";
						$data = mysqli_query($koneksi,"select * from artikel");
						while($dt=mysqli_fetch_array($data)){
										
					?>

          <div class="col-lg-4 col-md-6 mb-4 mt-lg-0">
            <div class="box" data-aos="fade-left">
                <img src="admin-disperdagin/artikel/<?=$dt['gambar'];?>" width="350px" height="200px"><br>
				<span class="date-type">
                    <i class=""></i><?=$dt['tanggal'];?>
                  </span>
                <br>
				<h5><?=substr($dt['judul'], 0, 30)?> . . .</h5>

                <p><?=substr($dt['deskripsi'], 0, 150)?> . . .</p>
			  

              <div class="btn-wrap">
                <a href="detail-artikel.php?id_artikel=<?=$dt['id_artikel']?>" 
				class="btn btn-custon-four btn-danger">Selengkapnya</a>
              </div>
            </div>
          </div>
          	<?php }?>

              
            </article><!-- End blog entry -->

            

            
			

          </div><!-- End blog entries list -->
<!-- ======= Our Clients Section ======= -->
    <!-- End Our Clients Section -->
          <!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->

  </body>
								</html>
								<?php
								include ('footer.php');
								?>