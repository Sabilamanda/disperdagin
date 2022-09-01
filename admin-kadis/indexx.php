<html>
<head>
	<title>MEMBUAT GRAFIK DARI DATABASE MYSQL DENGAN PHP DAN CHART.JS - www.malasngoding.com</title>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
</head>
<body>
	<style type="text/css">
	body{
		font-family: roboto;
	}
 
	table{
		margin: 0px auto;
	}
	</style>
 
 
	<center>
		<h2>MEMBUAT GRAFIK DARI DATABASE MYSQL DENGAN PHP DAN CHART.JS<br/>- www.malasngoding.com -</h2>
	</center>
 
 
	<?php 
	include 'koneksi.php';
	?>
 
	<div style="width: 800px;margin: 0px auto;">
		<canvas id="myChart"></canvas>
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
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Bogor Barat", "Bogor Timur", "Bogor Utara", "Bogor Selatan", "Bogor Tengah", "Tanah Sereal"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_bogorbarat = mysqli_query($koneksi,"select * from umkm where kecamatan='bogor barat'");
					echo mysqli_num_rows($jumlah_bogorbarat);
					?>, 
					<?php 
					$jumlah_bogortimur = mysqli_query($koneksi,"select * from umkm where kecamatan='bogor timur'");
					echo mysqli_num_rows($jumlah_bogortimur);
					?>, 
					<?php 
					$jumlah_bogor_utara = mysqli_query($koneksi,"select * from umkm where kecamatan='bogor utara'");
					echo mysqli_num_rows($jumlah_bogor_utara);
					?>, 
					<?php 
					$jumlah_bogor_selatan = mysqli_query($koneksi,"select * from umkm where kecamatan='bogor selatan'");
					echo mysqli_num_rows($jumlah_bogor_selatan);
					?>,
					<?php 
					$jumlah_bogor_tengah = mysqli_query($koneksi,"select * from umkm where kecamatan='bogor tengah'");
					echo mysqli_num_rows($jumlah_bogor_tengah);
					?>,
					<?php 
					$jumlah_tanah_sareal = mysqli_query($koneksi,"select * from umkm where kecamatan='tanah sareal'");
					echo mysqli_num_rows($jumlah_tanah_sareal);
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
</body>
</html>