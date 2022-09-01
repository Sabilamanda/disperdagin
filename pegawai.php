<?php
	include ('header.php');
	?>
<html>
<head>
<title>Halaman Pegawai Dinas</title>
 </head>
<body>
 
 <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Profil</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Pegawai</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	<br><br>
	<!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">
		<div class="row">
		<body style="text-align:left">
		<center>
 <strong><h2>Data Pegawai DINKUKMDAGIN</h2></strong><br><br> 
 <table id="user" class="table table-bordered table-striped x-editor-custom">
  <tr>
   <th>No</th>
   <th>NIP</th>
   <th>Nama Pegawai</th>
   <th>Golongan</th>
   <th>Jabatan</th>
   <th>Foto</th>
  </tr>
  
  <?php
  $konek = mysqli_connect("localhost","root","");
  $database = mysqli_select_db($konek, "daginn");  
  
  $no = 1;
  $data = mysqli_query($konek,"select * from pegawai");
  while($r = mysqli_fetch_array($data)){
   $id_pegawai = $r['id_pegawai'];
   $nip = $r['nip'];
   $nama_peg = $r['nama_peg'];
   $golongan =  $r['golongan'];
   $jabatan = $r['jabatan'];
   $foto = $r['foto']
        ?>
  <tr><td><?php echo $no++; ?></td>
   <td><?php echo $nip; ?></td>
   <td><?php echo $nama_peg; ?></td>
   <td><?php echo $golongan; ?></td>
   <td><?php echo $jabatan; ?></td>
   <td><?php echo $foto; ?></td>
  </tr>
  <?php 
  }
  ?>
 </table> 
 

           
		</div><!-- End Blog Page -->
</section><!-- End Blog Section -->			
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