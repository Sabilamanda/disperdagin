<?php
	include ('header.php');
	?>
	
<html>
<head>
<title>Halaman Data IKM Dinkukmdagin</title>
<!-- datatable style -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" src="chartjs/Chart.js"></script>

<!-- jquery -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<style type="text/css">
		body {
			font-size: 15px;
			color: #343d44;
			font-family: "segoe-ui", "open-sans", tahoma, arial;
			padding: 0;
			margin: 0;
		}
		table {
			margin: auto;
			font-family: "Lucida Sans Unicode", "Lucida Grande", "Segoe Ui";
			font-size: 12px;
		}

		h1 {
			margin: 25px auto 0;
			text-align: center;
			text-transform: uppercase;
			font-size: 17px;
		}

		table td {
			transition: all .5s;
		}
		
		/* Table */
		.data-table {
			border-collapse: collapse;
			font-size: 14px;
			min-width: 537px;
		}

		.data-table th, 
		.data-table td {
			border: 1px solid #e1edff;
			padding: 7px 17px;
		}
		.data-table caption {
			margin: 7px;
		}

		/* Table Header */
		.data-table thead th {
			background-color: #508abb;
			color: #FFFFFF;
			border-color: #6ea1cc !important;
			text-transform: uppercase;
		}

		/* Table Body */
		.data-table tbody td {
			color: #353535;
		}
		.data-table tbody td:first-child,
		.data-table tbody td:nth-child(4),
		.data-table tbody td:last-child {
			text-align: right;
		}

		.data-table tbody tr:nth-child(odd) td {
			background-color: #f4fbff;
		}
		.data-table tbody tr:hover td {
			background-color: #ffffa2;
			border-color: #ffff0f;
		}

		/* Table Footer */
		.data-table tfoot th {
			background-color: #e5f5ff;
			text-align: right;
		}
		.data-table tfoot th:first-child {
			text-align: left;
		}
		.data-table tbody td:empty
		{
			background-color: #ffcccc;
		}
	</style>
	
</head>
<body>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>IKM</h2>
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
		<h1><strong>Data IKM<br>Dinas Koperasi Usaha Kecil dan Menengah Perdagangan dan Perindustrian Kota bogor</strong></h1>
		<br><br><br>
		
		<table id="table_id" border=1 class="display">
		
        <?php
			include "koneksi.php";
			$data = mysqli_query($koneksi, "select * from umkm");
			while($row=mysqli_fetch_array($data)){
		
		?>
          <thead>
			<tr>
				<th>No</th>
				<th>Nama Usaha</th>
				<th>Nama Pemilik</th>
				<th>Alamat</th>
				<th>Jenis Usaha</th>
			</tr>
		</thead>
		<tbody>
		<?php 
		$no = 1;
		$data = mysqli_query($koneksi,"select * from ikm");
		while($row=mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $row['nama_toko']; ?></td>
				<td><?php echo $row['nama_pemilik']; ?></td>
				<td><?php echo $row['alamat']; ?></td>
				<td><?php echo $row['jns_usaha']; ?></td>
			</tr>
			<?php 
		}
		?>
		</tbody>
		</table>
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<!-- fungsi datatable -->
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>

	</div>
      </div>
    </section><!-- End Portfolio Section -->
	
	<center>
		<h2>Grafik Data IKM Perdaerah</h2>
	</center>
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="myChartkop"></canvas>
	</div>
 
	<br/>
	<br/>
 
	<table border="1">
		<thead>
									
		</thead>
		<tbody>
			
		</tbody>
	</table>
 
 
	<script>
		var ctx = document.getElementById("myChartkop").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Bogor Barat", "Bogor Timur", "Bogor Utara", "Bogor Selatan", "Bogor Tengah", "Tanah Sereal"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_bogorbarat = mysqli_query($koneksi,"select * from ikm where kecamatan='bogor barat'");
					echo mysqli_num_rows($jumlah_bogorbarat);
					?>, 
					<?php 
					$jumlah_bogortimur = mysqli_query($koneksi,"select * from ikm where kecamatan='bogor timur'");
					echo mysqli_num_rows($jumlah_bogortimur);
					?>, 
					<?php 
					$jumlah_bogor_utara = mysqli_query($koneksi,"select * from ikm where kecamatan='bogor utara'");
					echo mysqli_num_rows($jumlah_bogor_utara);
					?>, 
					<?php 
					$jumlah_bogor_selatan = mysqli_query($koneksi,"select * from ikm where kecamatan='bogor selatan'");
					echo mysqli_num_rows($jumlah_bogor_selatan);
					?>,
					<?php 
					$jumlah_bogor_tengah = mysqli_query($koneksi,"select * from ikm where kecamatan='bogor tengah'");
					echo mysqli_num_rows($jumlah_bogor_tengah);
					?>,
					<?php 
					$jumlah_tanah_sereal = mysqli_query($koneksi,"select * from ikm where kecamatan='tanah sereal'");
					echo mysqli_num_rows($jumlah_tanah_sereal);
					?>
					],
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)'
					],
					borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
	
	<center>
		<h2>Grafik Data IKM Pertahun</h2>
	</center>
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="oktaviaa"></canvas>
	</div>
 
	<br/>
	<br/>
 
	<table border="1">
		<thead>
									
		</thead>
		<tbody>
			
		</tbody>
	</table>
 
 
	<script>
		var ctx = document.getElementById("oktaviaa").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["2019", "2020", "2021", "2022"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_2019 = mysqli_query($koneksi,"select * from ikmm where tahunn='2019'");
					echo mysqli_num_rows($jumlah_2019);
					?>, 
					<?php 
					$jumlah_2020 = mysqli_query($koneksi,"select * from ikmm where tahunn='2020'");
					echo mysqli_num_rows($jumlah_2020);
					?>, 
					<?php 
					$jumlah_2021 = mysqli_query($koneksi,"select * from ikmm where tahunn='2021'");
					echo mysqli_num_rows($jumlah_2021);
					?>, 
					<?php 
					$jumlah_2022 = mysqli_query($koneksi,"select * from ikmm where tahunn='2022'");
					echo mysqli_num_rows($jumlah_2022);
					?>
					],
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)'
					],
					borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>

  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  <footer id="footer">

     <div class="footer-top">
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

 </body>
								</html>
								<?php
			}
			?>
								