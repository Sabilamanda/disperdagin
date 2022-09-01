<?php
ob_start();
session_start();
	  include "koneksi.php";
	  /*sertakan kodingan di bawah ini untuk setiap halaman admin*/
	  /*session_start();
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION[['user']) 
	  || !isset($_SESSION['passwd'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?
      }else{
      ?>*/
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION['username']) || !isset($_SESSION['password'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?php
      }else{
      ?><?php
	//get the function
	include_once('function.php');

	$page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
	//$limit untuk menentukan banyaknya baris halaman dalam tabel
	$limit = 50;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "swalayan";
?><!DOCTYPE html>
<?php
	include ('header2.php');
	?>
	<html>

<head>
    <title>Halaman Swalayan</title>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
	<link href="pagination.css" rel="stylesheet" type="text/css" />
		<link href="B_red.css" rel="stylesheet" type="text/css" />


        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-t-15 mg-b-30">
            <div class="container-fluid">
                <div class="row">
				
																							
                     <div class="x-editable-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="x-editable-list">
                            <div class="alert-title">
                                <h2>TOKO SWALAYAN</h2>
                              <?php
							   echo "<a href=tambah-swalayan.php>
					<button type='button' class='btn btn-custon-two btn-danger'><i class='fa fa-plus'></i> Tambah Swalayan</button>
				</a><br><br>";
							    echo "<a href=laporanswalayan.php>
					<button class='btn btn-danger btn-xs'><i class='fa fa-print'></i></button></a><br><br>";
							  ?>
							  
				<form action="go3.php" method="POST" >
					<input type='text' value="" placeholder="Input Nama Gerai" name="qcari" required="required">
					<input type='submit' name='cari' value="Cari" class="btn btn-custon-two btn-danger"><br>
				</form> 
<table><tr>
<td>Pencarian Data per Kategori<img src='foto/logo0.JPG'></td>
<td><form action="hasil4.php" method="POST" name="jenis_gerai" >
<select name='jenis_gerai'>
<option value='Minimarket'>Minimarket</option>
<option value='Supermarket'>Supermarket</option>
<option value='Hypermarket'>Hypermarket</option>
<option value='Department Store'>Department Store</option>
<option value='Perkulakan'>Perkulakan</option>
<option value='Pusat Perbelanjaan'>Pusat Perbelanjaan</option>
</select></td><td></td><td><img src='foto/logo0.JPG'><input type='submit' name='caribt' value="Cari"  class="btn btn-custon-two btn-danger"></td></form></tr></table><br>				
                            </div><br>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
                                <thead>
									<tr>
										<th>No</th>
										<th>Nama Gerai</th>
										<th>Jenis</th>
										<th>Alamat</th>
										<th>Kecamatan</th>
										<th colspan='2'>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php 
									include "koneksi.php";
								   $perintah_sql = "select * from $tabel LIMIT $startpoint , $limit";

									$data = mysqli_query($koneksi,$perintah_sql);
									while($row=mysqli_fetch_array($data)){
										?>
										<tr>
											<td><?php echo $row['id_gerai']; ?></td>
											<td><?php echo $row['nama_gerai']; ?></td>
											<td><?php echo $row['jenis_gerai']; ?></td>
											<td><?php echo $row['alamat_gerai']; ?></td>
											<td><?php echo $row['kecamatan_gerai']; ?></td>
										 <?php
										 
												echo"<td><a href=\"edit-swalayan.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-swalayan.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
													<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
										 
										 ?>
										</tr>
										 <?php
      }
	  echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;". pagination($tabel,$limit,$page);
	  }
      ?>
								</tbody>
								</table><br>
								<hr />
			<div class="product-sales-area mg-tb-30">
            <div class="container-fluid">
                <div class="row">
				
                        <div class="product-sales-chart">
                            <div class="portlet-title">
                                <div class="row">
				<center>
		<h2>Grafik Data Toko Swalayan</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="mygrafik"></canvas>
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
		var ctx = document.getElementById("mygrafik").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Bogor Barat", "Bogor Timur", "Bogor Utara", "Bogor Selatan", "Bogor Tengah", "Tanah Sereal"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_bogorbarat = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='bogor barat'");
					echo mysqli_num_rows($jumlah_bogorbarat);
					?>, 
					<?php 
					$jumlah_bogortimur = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='bogor timur'");
					echo mysqli_num_rows($jumlah_bogortimur);
					?>, 
					<?php 
					$jumlah_bogor_utara = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='bogor utara'");
					echo mysqli_num_rows($jumlah_bogor_utara);
					?>, 
					<?php 
					$jumlah_bogor_selatan = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='bogor selatan'");
					echo mysqli_num_rows($jumlah_bogor_selatan);
					?>,
					<?php 
					$jumlah_bogor_tengah = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='bogor tengah'");
					echo mysqli_num_rows($jumlah_bogor_tengah);
					?>,
					<?php 
					$jumlah_tanah_sereal = mysqli_query($koneksi,"select * from swalayan where kecamatan_gerai='tanah sereal'");
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
				
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				
				<div class="product-sales-area mg-tb-30">
            <div class="container-fluid">
                <div class="row">
				
                        <div class="product-sales-chart">
                            <div class="portlet-title">
                                <div class="row">
				<center>
		<h2>Grafik Kategori Toko Swalayan</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="mika"></canvas>
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
		var ctx = document.getElementById("mika").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Supermarket", "Minimarket", "Hypermarket", "Department Store", "Perkulakan", "Pusat Perbelanjaan"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_supermarket = mysqli_query($koneksi,"select * from swalayan where jenis_gerai='supermarket'");
					echo mysqli_num_rows($jumlah_supermarket);
					?>, 
					<?php 
					$jumlah_minimarket = mysqli_query($koneksi,"select * from swalayan where jenis_gerai='minimarket'");
					echo mysqli_num_rows($jumlah_minimarket);
					?>, 
					<?php 
					$jumlah_hypermarket = mysqli_query($koneksi,"select * from swalayan where jenis_gerai='hypermarket'");
					echo mysqli_num_rows($jumlah_hypermarket);
					?>, 
					<?php 
					$jumlah_department_store = mysqli_query($koneksi,"select * from swalayan where jenis_gerai='department store'");
					echo mysqli_num_rows($jumlah_department_store);
					?>,
					<?php 
					$jumlah_perkulakan= mysqli_query($koneksi,"select * from swalayan where jenis_gerai='perkulakan'");
					echo mysqli_num_rows($jumlah_perkulakan);
					?>,
					<?php 
					$jumlah_pusat_perbelanjaan = mysqli_query($koneksi,"select * from swalayan where jenis_gerai='pusat perbelanjaan'");
					echo mysqli_num_rows($jumlah_pusat_perbelanjaan);
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
				
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				
				
                        </div>
                    </div>
                </div>
            </div>
        </div>
										
                </div>
            </div>
        </div>
        </body>
								</html>
								<?php
								include ('footer.php');
								?>