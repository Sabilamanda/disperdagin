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
	  document.location='login.php'</script><?
      }else{
      ?>*/
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION['username']) || !isset($_SESSION['password'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='login.php'</script><?php
      }else{
      ?><?php
	//get the function
	include_once('function.php');

	$page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
	//$limit untuk menentukan banyaknya baris halaman dalam tabel
	$limit = 2;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "`admin`";
?>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Halaman Utama DINKUMDAGIN</title>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
	<script type="text/javascript" src="chartjs/Chart.js"></script>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/logodagin1.png">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
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
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="home.php"><img class="main-logo" src="img/logo/lgo.png" width="120px" alt="" /></a>
                <strong><img src="img/logo/logosn.png" alt="" /></strong>
            </div>
			
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li class="active">
                            <a href "home.php">
								   <i class="fa big-icon fa-home icon-wrap"></i>
								   <span class="mini-click-non">Home</span>
							</a></li>
                        <li>
                            <a href="admin.php" aria-expanded="false"><i class="fa fa-users"></i> <span class="mini-click-non">Admin</span></a>                            
                        </li>							
						
						<li>
                            <a href="user.php" aria-expanded="false"><i class="fa fa-users"></i> <span class="mini-click-non">User</span></a>                            
                        </li>
						
						<li>
                            <a href="profil.php" aria-expanded="false"><i class="fa fa-television sub-icon-mg"></i> <span class="mini-click-non">Profil</span></a>                            
                        </li>
						
						<li>
                            <a href="pegawai.php" aria-expanded="false"><i class="fa fa-square sub-icon-mg"></i> <span class="mini-click-non">Data Pegawai</span></a>                            
                        </li>
						
						<li><a class="has-arrow" data-toggle="collapse" data-target="#Charts" href="#"><i class="fa fa-bookmark icon-wrap sub-icon-mg"></i> <span class="mini-click-non">Pusat Media </span></a>
						<ul class="collapse dropdown-header-top">
						 <li><a href="galeri.php" aria-expanded="false"><i class="fa fa-file-image-o sub-icon-mg"></i> <span class="mini-click-non">Galeri</span></a></li>
						 <li><a href="produk.php" aria-expanded="false"><i class="fa fa-bolt sub-icon-mg"></i> <span class="mini-click-non">Produk</span></a></li>
						 <li><a href="artikel.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Agenda</span></a></li>
						 <li><a class="has-arrow" data-toggle="collapse" data-target="#Charts" href="#"><i class="fa fa-square sub-icon-mg"></i> <span class="mini-click-non">Berita</span></a>
						 <ul>
						 <li><a href="berita.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Berita</span></a></li>
						 <li><a href="komentar.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Komentar</span></a></li>
						</ul>
						</li>
						</ul>
						</li>
						
						<li>
                            <a href="bidang.php" aria-expanded="false"><i class="fa fa-table sub-icon-mg"></i> <span class="mini-click-non">Bidang</span></a>                            
                        </li>
						
						<li>
                            <a href="komentarr.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Komentar Pengaduan</span></a>                            
                        </li>
						
						<li>
                            <a href="dokumen.php" aria-expanded="false"><i class="fa fa-file-pdf-o sub-icon-mg"></i> <span class="mini-click-non">Dokumen</span></a>                            
                        </li>
						
  						<li><a class="has-arrow" data-toggle="collapse" data-target="#Charts" href="#"><i class="fa fa-bookmark icon-wrap sub-icon-mg"></i> <span class="mini-click-non">Data </span></a>
						<ul class="collapse dropdown-header-top">                                     
						 <li><a href="koperasi.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data Koperasi</span></a></li>														
						 <li><a href="umkm.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data UMKM</span></a></li>
						 <li><a href="ikm.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data IKM</span></a></li>
						 <li><a href="swalayan.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data Toko Swalayan</span></a></li>
						 </ul>
						</li>
						
						<li>
                            <a href="logout.php" aria-expanded="false"><i class="fa fa-lock author-log-ic"></i> <span class="mini-click-non">Logout</span></a>                            
                        </li>						
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <div class="header-top-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper">
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
													<i class="fa fa-bars"></i>
												</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                        <div class="header-top-menu tabl-d-n">
                                            <ul class="nav navbar-nav mai-top-nav">
                                            
                                                <li class="nav-item"><a href="produk.php" class="nav-link">Produk</a>
                                                </li>
                                                <li class="nav-item"><a href="koperasi.php" class="nav-link">Koperasi</a>
                                                </li>
                                                <li class="nav-item"><a href="umkm.php" class="nav-link">UMKM</a>
                                                </li>
												<li class="nav-item"><a href="ikm.php" class="nav-link">IKM</a>
                                                </li>
												<li class="nav-item"><a href="swalayan.php" class="nav-link">Toko Swalayan</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                        <div class="header-right-info">
                                            <ul class="nav navbar-nav mai-top-nav header-right-menu">                                                                                             
                                                <li class="nav-item">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
															<i class="fa fa-user adminpro-user-rounded header-riht-inf" aria-hidden="true"></i>
															<span class="admin-name">Admin</span>
															<i class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
														</a>
                                                    <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">                                                     
                                                        <li><a href="index.php"><span class="fa fa-lock author-log-ic"></span>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </li>                                               

                                                    <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">                                                        
                                                        <div class="tab-content custom-bdr-nt">                                                            
                                                            <div id="Projects" class="tab-pane fade">
                                                                <div class="projects-settings-wrap">                                                                                                                                        
                                                                </div>
                                                            </div>                                                           
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu start -->            
            <!-- Mobile Menu end -->
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">                                        
                                    </div>                                  									
                                </div>
								<br><div class="col-12 col-xl-8 mb-4 mb-xl-0">
								<h3 style="color:#FFFFFF;" class="font-weight-bold">Selamat Datang di Halaman Admin DINKUKMDAGIN Kota Bogor</h3>								
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="content mt-3">
		 <?php
include ('koneksi.php');
?>
		 
		 <?php

$get1= mysqli_query($koneksi,"select * from galeri");
$count1 = mysqli_num_rows($get1);

$get2= mysqli_query($koneksi,"select * from artikel");
$count2 = mysqli_num_rows($get2);

$get3= mysqli_query($koneksi,"select * from file");
$count3 = mysqli_num_rows($get3);

$get4= mysqli_query($koneksi,"select * from berita");
$count4 = mysqli_num_rows($get4);

$get5= mysqli_query($koneksi,"select * from umkm");
$count5 = mysqli_num_rows($get5);

$get6= mysqli_query($koneksi,"select * from ikm");
$count6 = mysqli_num_rows($get6);

$get7= mysqli_query($koneksi,"select * from koperasi");
$count7 = mysqli_num_rows($get7);

$get8= mysqli_query($koneksi,"select * from swalayan");
$count8 = mysqli_num_rows($get8);
?>
		
        <div class="section-admin container-fluid">
            <div class="row admin text-center">
                <div class="col-md-12">
                    <div class="row">
					
					<a href="galeri.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
							<div class="panel-left pull-left green">
                                <i class="fa fa-file-image-o sub-icon-mg fa-3x"></i> 																	
                            </div>
					</a>					
                               <div class="panel-right">
							<h3>GALERI</h3>
                             <h3><?=$count1;?>

                            </div> 								
                                <div class="row vertical-center-box vertical-center-box-tablet">                                  
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar bg-green"></div>
                                </div>
                            </div>
                        </div>
						
					<a href="artikel.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
							<div class="panel-left pull-left blue">
                                <i class="fa fa-file sub-icon-mg fa-3x"></i>								
								</div>
					</a>							
                               <div class="panel-right">
							<h3>AGENDA</h3>
                             <h3><?=$count2;?>

                            </div>
                                <div class="row vertical-center-box vertical-center-box-tablet"></div>
                                <div class="progress progress-mini">
                                    <div style="width: 38%;" class="progress-bar progress-bar-danger bg-red"></div>
                                </div>
                            </div>
                        </div>																
						
					<a href="dokumen.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
							<div class="panel-left pull-left red">
                                <i class="fa fa-folder sub-icon-mg fa-3x"></i>                               
                            </div>
					</a>
								<div class="panel-right">
							<h3>DOKUMEN</h3>
                             <h3><?=$count3;?>

                            </div>                                
                                <div class="row vertical-center-box vertical-center-box-tablet"></div>
                                <div class="progress progress-mini">
                                    <div style="width: 60%;" class="progress-bar bg-blue"></div>
                                </div>
                            </div>
                        </div>
						
						<a href="berita.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
							<div class="panel-left pull-left brown">
                                <i class="fa fa-tags sub-icon-mg fa-3x"></i>
                            </div>
						</a>
                                <div class="panel-right">
							<h3>BERITA</h3>
                             <h3><?=$count4;?>

                            </div>
                                <div class="row vertical-center-box vertical-center-box-tablet"></div>
                                <div class="progress progress-mini">
                                    <div style="width: 60%;" class="progress-bar bg-purple"></div>
                                </div>
                            </div>
                        </div>
						
						
                    </div>
                </div>
            </div>
        </div><br><br><br>
		
		 <div class="section-admin container-fluid">
            <div class="row admin text-center">
                <div class="col-md-12">
                <br><br><div class="row">
				
				 <a href="umkm.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
							<div class="panel-left pull-left green">
                                <i class="fa fa-th sub-icon-mg fa-3x"></i> 																	
                            </div>
					</a>					
                               <div class="panel-right">
							<h3>UMKM</h3>
                             <h3><?=$count5;?>

                            </div> 								
                                <div class="row vertical-center-box vertical-center-box-tablet">                                  
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar bg-red"></div>
                                </div>
                            </div>
                        </div>
						
						<a href="ikm.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
							<div class="panel-left pull-left green">
                                <i class="fa fa-th sub-icon-mg fa-3x"></i> 																	
                            </div>
					</a>					
                               <div class="panel-right">
							<h3>IKM</h3>
                             <h3><?=$count6;?>

                            </div> 								
                                <div class="row vertical-center-box vertical-center-box-tablet">                                  
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar bg-purple"></div>
                                </div>
                            </div>
                        </div>
						
						<a href="koperasi.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
							<div class="panel-left pull-left green">
                                <i class="fa fa-th sub-icon-mg fa-3x"></i> 																	
                            </div>
					</a>					
                               <div class="panel-right">
							<h3>KOPERASI</h3>
                             <h3><?=$count7;?>

                            </div> 								
                                <div class="row vertical-center-box vertical-center-box-tablet">                                  
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar bg-green"></div>
                                </div>
                            </div>
                        </div>
						
						<a href="swalayan.php">
                        <div class="col-md-3 col-sm-12 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-15">
							<div class="panel-left pull-left green">
                                <i class="fa fa-th sub-icon-mg fa-3x"></i> 																	
                            </div>
					</a>					
                               <div class="panel-right">
							<h3>SWALAYAN</h3>
                             <h3><?=$count8;?>

                            </div> 								
                                <div class="row vertical-center-box vertical-center-box-tablet">                                  
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar bg-yellow"></div>
                                </div>
                            </div>
                        </div>
						
				</div>
            </div>
        </div>
		<br>	

		<div class="product-sales-area mg-tb-30">
            <div class="container-fluid">
                <div class="row">
				
                        <div class="product-sales-chart">
                            <div class="portlet-title">
                                <div class="row">
				<center>
		<h2>Grafik Data UMKM</h2>
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
		<h2>Grafik Data IKM</h2>
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
		<h2>Grafik Data KOPERASI</h2>
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
					$jumlah_bogorbarat = mysqli_query($koneksi,"select * from koperasi where kecamatan='bogor barat'");
					echo mysqli_num_rows($jumlah_bogorbarat);
					?>, 
					<?php 
					$jumlah_bogortimur = mysqli_query($koneksi,"select * from koperasi where kecamatan='bogor timur'");
					echo mysqli_num_rows($jumlah_bogortimur);
					?>, 
					<?php 
					$jumlah_bogor_utara = mysqli_query($koneksi,"select * from koperasi where kecamatan='bogor utara'");
					echo mysqli_num_rows($jumlah_bogor_utara);
					?>, 
					<?php 
					$jumlah_bogor_selatan = mysqli_query($koneksi,"select * from koperasi where kecamatan='bogor selatan'");
					echo mysqli_num_rows($jumlah_bogor_selatan);
					?>,
					<?php 
					$jumlah_bogor_tengah = mysqli_query($koneksi,"select * from koperasi where kecamatan='bogor tengah'");
					echo mysqli_num_rows($jumlah_bogor_tengah);
					?>,
					<?php 
					$jumlah_tanah_sareal = mysqli_query($koneksi,"select * from koperasi where kecamatan='tanah sareal'");
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
		<h2>Grafik Data TOKO SWALAYAN</h2>
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
				
				
				
               
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                            <p>Copyright &copy; 2022 Demikaoktvn.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	

    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="js/morrisjs/raphael-min.js"></script>
    <script src="js/morrisjs/morris.js"></script>
    <script src="js/morrisjs/morris-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
</body>

</html>
<?php
      }
?>