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
	$limit = 3;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "warga";
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home Admin SKU Ciwaringin</title>
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
                <a href="home.php"><img class="main-logo" src="img/logo/logo3.jpg" width="120px" alt="" /></a>
                <strong><img src="img/logo/logosn.png" alt="" /></strong>
            </div>
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li>
                            <a class="has-arrow" href="home.php">
								   <i class="fa big-icon fa-home icon-wrap"></i>
								   <span class="mini-click-non">Home</span>
								</a>
                            
                        </li>
                        <li class='active'>
                            <a class="has-arrow" href="admin.php" aria-expanded="false"><i class="fa fa-television sub-icon-mg"></i> <span class="mini-click-non">Admin</span></a>
                            
                        </li>
						
						 <li>
                            <a class="has-arrow" href="warga.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Warga</span></a>
                            
                        </li>
						
						 
						
						 <li>
                            <a class="has-arrow" href="pejabat.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Pejabat</span></a>
                            
                        </li>
						
						 <li>
                            <a class="has-arrow" href="laporan.php" aria-expanded="false"><i class="fa big-icon fa-files-o icon-wrap"></i> <span class="mini-click-non">Cetak Laporan</span></a>
                            
                        </li>
						
						 <li>
                            <a class="has-arrow" href="pencarian.php" aria-expanded="false"><i class="fa fa-search"></i> <span class="mini-click-non">Pencarian Data</span></a>
                            
                        </li>
						
						 <li>
                            <a class="has-arrow" href="logout.php" aria-expanded="false"><i class="fa fa-search"></i> <span class="mini-click-non">logout</span></a>
                            
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
                                                <li class="nav-item"><a href="admin.php" class="nav-link">Home</a>
                                                </li>
                                                <li class="nav-item"><a href="warga.php" class="nav-link">Warga</a>
                                                </li>
                                                <li class="nav-item"><a href="usaha.php" class="nav-link">Usaha</a>
                                                </li>
                                                <li class="nav-item"><a href="laporan.php" class="nav-link">Laporan</a>
                                                </li>
												<li class="nav-item"><a href="pencarian.php" class="nav-link">Pencarian</a>
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
                              <h2>Pencarian Data</h2>
	<form action="" method="POST" >
	<input type='text' value="" placeholder="Input No KTP Warga" name="qcari" required="required">
	<input type='submit' name='cari' value="Cari"  class="btn btn-purple btn-sm"><br>
</form><br>
			  

		  <?php
		  if(isset($_POST['cari']))
		  {
			$qcari=$_POST['qcari'];
			
			
			include "koneksi.php";
			$perintah_sql="select * from warga where no_ktp like '%$qcari%'";
				  
			$hasil_query=mysqli_query($koneksi,$perintah_sql) ;
			echo " <table id='dynamic-table' class='table table-striped table-bordered table-hover'>";
		echo"<thead>";
	  echo "<tr>";
	  
	  echo "<th> No</th>";
	  echo "<th> NIK</th>";
	  echo "<th>Nama</th>";
	  echo "<th> Tempat Lahir</th>";
	  echo "<th> Tanggal Lahir</th>";
	  echo "<th>Jenis Kelamin</th>";
	  echo "<th> Kewarganegaraan</th>";
	  echo "<th> Agama</th>";
	  echo "<th>Pekerjaan</th>";
	  echo "<th> Alamat KTP</th>";
	  echo "<th> Alamat Sekarang</th>";
	  echo "<th> Tanggal Domisili</th>";
	  echo "<td colspan=3 align='center'>Aksi</td>";
	  
	  echo "</tr>";
	  		echo"</thead>";

	  //ini untuk menampilkan data tabel yang di db
	  
	   while($row=mysqli_fetch_array($hasil_query))
	  {
		echo"<tbody>";
		echo"<tr>";
	?>
	
	<td align='center'> <?php echo "$row[0]"; ?></td>
	
	<?php
	
		echo"<td>$row[1]</td>";
		echo"<td>$row[2]</td>";
		echo"<td>$row[3]</td>";
		echo"<td>$row[4]</td>";
		echo"<td>$row[5]</td>";
		echo"<td>$row[6]</td>";
		echo"<td>$row[7]</td>";
		echo"<td>$row[8]</td>";
		echo"<td>$row[9]</td>";
		echo"<td>$row[10]</td>";
		echo"<td>$row[11]</td>";
		
		echo"<td><a href=\"edit-warga.php?id=$row[0]\"><button class='btn btn-primary btn-xs'>
		         <i class='fa fa-pencil'></i></button></a></td>";
		echo"<td><a href=\"delete-warga.php?id=$row[0]\"onclick=\"return konfirmasi('".$row[0]."')\">
				<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
		echo"<td><a href=\"print-warga.php?id=$row[0]\"><button class='btn btn-primary btn-xs'>
		         <i class='fa fa-print'></i></button></a></td>";
		echo"</tr>";
		echo"</tbody>";
		
		}
		echo"</table>";
			
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
                        <div class="footer-copy-right">
                            <p>Copyright &copy; 2018 <a href="https://colorlib.com/wp/templates/">widya nuramalia</a> 065115042</p>
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
<?php } ?>