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
	$limit = 7;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "artikel";
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Artikel Dinkukmdagin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
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
                        <li>
                            <a href="home.php">
								   <i class="fa big-icon fa-home icon-wrap"></i>
								   <span class="mini-click-non">Home</span>
								</a>
                            
                        </li>
                        <li>
                            <a href="admin.php" aria-expanded="false"><i class="fa fa-users"></i> <span class="mini-click-non">Admin</span></a>                            
                        </li>							
						
						<li>
                            <a href="profil.php" aria-expanded="false"><i class="fa fa-television sub-icon-mg"></i> <span class="mini-click-non">Profil</span></a>                            
                        </li>
						
						<li><a class="has-arrow" data-toggle="collapse" data-target="#Charts" href="#"><i class="fa fa-bookmark icon-wrap sub-icon-mg"></i> <span class="mini-click-non">Pusat Media </span></a>
						<ul class="collapse dropdown-header-top">
						 <li><a href="galeri.php" aria-expanded="false"><i class="fa fa-file-image-o sub-icon-mg"></i> <span class="mini-click-non">Galeri</span></a></li>														
						 <li><a href="artikel.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Artikel</span></a></li>
						 <li><a href="berita.php" aria-expanded="false"><i class="fa fa-square sub-icon-mg"></i> <span class="mini-click-non">Berita</span></a></li>
						</ul>
						</li>
						
						<li>
                            <a href="bidang.php" aria-expanded="false"><i class="fa fa-table sub-icon-mg"></i> <span class="mini-click-non">Bidang</span></a>                            
                        </li>
						
						<li>
                            <a href="dokumen.php" aria-expanded="false"><i class="fa fa-file-pdf-o sub-icon-mg"></i> <span class="mini-click-non">Dokumen</span></a>                            
                        </li>
						
						<li>
                            <a href="produk.php" aria-expanded="false"><i class="fa fa-bolt sub-icon-mg"></i> <span class="mini-click-non">Produk</span></a>                            
                        </li>
						
						<li><a class="has-arrow" data-toggle="collapse" data-target="#Charts" href="#"><i class="fa fa-bookmark icon-wrap sub-icon-mg"></i> <span class="mini-click-non">Data </span></a>
						<ul class="collapse dropdown-header-top">
						 <li><a href="koperasi.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data Koperasi</span></a></li>														
						 <li><a href="umkm.php" aria-expanded="false"><i class="fa fa-th sub-icon-mg"></i> <span class="mini-click-non">Data Umkm</span></a></li>					 
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
                                                <li class="nav-item"><a href="home.php" class="nav-link">Home</a>
                                                </li>
                                                <li class="nav-item"><a href="produk.php" class="nav-link">Produk</a>
                                                </li>
                                                <li class="nav-item"><a href="koperasi.php" class="nav-link">Koperasi</a>
                                                </li>
                                                <li class="nav-item"><a href="umkm.php" class="nav-link">Umkm</a>
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
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        
                    </div>
                </div>
            </div>
            <!-- Mobile Menu end -->
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="home.php">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Artikel</span>
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
                                <h2>ARTIKEL</h2>
                              
                            </div>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
							<?php
								echo "<a href=tambah-artikel.php>
								<button type='button' class='btn btn-primary'><i class='fa fa-plus'></i> Tambah Artikel</button>
									</a><br><br>";?>
                                <thead>
									<tr>
										<th>No</th>
										<th>Judul</th>
										<th>Penulis</th>
										<th>Deskripsi</th>
										<th>Gambar</th>
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
											<td><?php echo $row['id_artikel'];; ?></td>
											<td><?php echo $row['judul']; ?></td>
											<td><?php echo $row['penulis']; ?></td>
											<td><?php echo $row['deskripsi']; ?></td>
											<td><img src="artikel/<?php echo $row['gambar'] ?>" alt="" width="50px" height="50px"></td>
										 <?php
										 
												echo"<td><a href=\"edit-artikel.php?id=$row[0]\"><button class='btn btn-primary btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-artikel.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
													<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
														
										 
										 ?>
										</tr>
										<?php 
									}
											echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;". pagination($tabel,$limit,$page);
		}

									?>
								</tbody>
								</table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
										
                </div>
            </div>
        </div>
        <!-- Single pro tab End-->
        <!-- Single pro tab review Start-->
        <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    
                </div>
            </div>
        </div>
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                            <p>Copyright &copy; 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
                        </div>
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
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
</body>

</html> 