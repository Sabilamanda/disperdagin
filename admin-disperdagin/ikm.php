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
	$tabel = "ikm";
?><!DOCTYPE html>
<?php
	include ('header2.php');
	?>
	<html>

<head>
    <title>Halaman IKM</title>
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
                                <h2>IKM</h2>
                              <?php
							   echo "<a href=tambah-ikm.php>
					<button type='button' class='btn btn-custon-two btn-danger'><i class='fa fa-plus'></i> Tambah Ikm</button>
				</a><br><br>";
							    echo "<a href=laporanikm.php>
					<button class='btn btn-danger btn-xs'><i class='fa fa-print'></i></button></a><br><br>";
							  ?>
							  
				<form action="go1.php" method="POST" >
					<input type='text' value="" placeholder="Input Nama Usaha" name="qcari" required="required">
					<input type='submit' name='cari' value="Cari" class="btn btn-custon-two btn-danger"><br>
				</form> 
<table><tr>
<td>Pencarian Data per Kecamatan<img src='foto/logo0.JPG'></td>
<td><form action="hasil3.php" method="POST" name="kecamatan" >
<select name='kecamatan'>
<option value='Bogor Barat'>Bogor Barat</option>
<option value='Bogor Timur'>Bogor Timur</option>
<option value='Bogor Utara'>Bogor Utara</option>
<option value='Bogor Selatan'>Bogor Selatan</option>
<option value='Bogor Tengah'>Bogor Tengah</option>
<option value='Tanah Sereal'>Tanah Sereal</option>
</select></td><td></td><td><img src='foto/logo0.JPG'><input type='submit' name='caribt' value="Cari"  class="btn btn-custon-two btn-danger"></td></form></tr></table><br>				
                            </div><br>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
                                <thead>
									<tr>
										<th>No</th>
										<th>Nama Usaha</th>
										<th>Nama Pemilik</th>
										<th>Alamat</th>
										<th>Kecamatan</th>
										<th>Jenis Usaha</th>
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
											<td><?php echo $row['id_ikm']; ?></td>
											<td><?php echo $row['nama_toko']; ?></td>
											<td><?php echo $row['nama_pemilik']; ?></td>
											<td><?php echo $row['alamat']; ?></td>
											<td><?php echo $row['kecamatan']; ?></td>
											<td><?php echo $row['jns_usaha']; ?></td>
										 <?php
										 
												echo"<td><a href=\"edit-ikm.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-ikm.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
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
		<h2>Grafik Data IKM Perdaerah</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="demika"></canvas>
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
		var ctx = document.getElementById("demika").getContext('2d');
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
		<h2>Grafik Data IKM Pertahun</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="oktavia"></canvas>
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
		var ctx = document.getElementById("oktavia").getContext('2d');
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