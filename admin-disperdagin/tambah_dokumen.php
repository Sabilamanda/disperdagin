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
	  document.location='dokumen.php'</script><?php
      }else
      ?>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home Dinas Perdagangan dan Perindustrian</title>
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
                        <li>
                            <a class="has-arrow" href="admin.php" aria-expanded="false"><i class="fa fa-television sub-icon-mg"></i> <span class="mini-click-non">Admin</span></a>
                            
                        </li>												 												
						
						 <li>
                            <a class="has-arrow" href="galeri.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Galeri</span></a>
                            
                        </li>
						
						<li>
                            <a class="has-arrow" href="artikel.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Artikel</span></a>
                            
                        </li>				
						
						<li>
                            <a class="has-arrow" href="dokumen.php" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">Data Dokumen</span></a>
                            
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
<html>
<body>
<title> Halaman Tambah Dokumen </title>      
 <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                                    <!-- Basic table card start -->
										       <div class="page-body">

                                            <div class="col-sm-20">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Tambah Dokumen</h5>

                                                        <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>

                                                            <div class="card-header-right">
                                                                <i class="icofont icofont-spinner-alt-5"></i>
                                                            </div>

                                                        </div>
                                                        <div class="card-block">


                               <form name="save-dokumen" class="form-horizontal style-form" method="post" action="save-dokumen.php" enctype="multipart/form-data" >

             
																<div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nama Dokumen</label>
                                                                <div class="col-sm-10">
                                                                 <input type="text" id="form-field-1" class="form-control" name="nama_file"  required/>
                                                                </div>
                                                                </div>
			
															    <div class="form-group row">
                                                                    <label class="col-sm-2 col-form-label">Dokumen</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="file" id="form-field-1" class="form-control" name="file" required/>
                                                                    </div>
                                                                </div>
                     


																   <div class="form-group">
                              <div class="col-sm-12">
                                &nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  
								  
								  <input type="submit" name="tambah" value="tambah" class="btn btn-inverse btn-round" required>
								  <input type="reset" name="reset"value="Reset" class="btn btn-inverse btn-round">
								   <?php
					echo "<a href=dokumen.php>
					<button type='button' class='btn btn-inverse btn-round'>Back</button>
				</a> <br><br><br>";
				?>
                              </div>
							  </div>

						  </form>
                                                                </div>
                                                                <!-- Basic Form Inputs card end -->
                                                                <!-- Input Grid card start -->
                                                                 <!-- Input Grid card end -->
                                                                <!-- Input Validation card start -->
                                                                                <!-- Input Validation card end -->
                                                                                <!-- Input Alignment card start -->
                                                                                     <!-- Input Alignment card end -->
                                                                                </div>

                                                                        </div>

                                    <!-- Basic table card end -->

                                            <!-- Email Sent End -->
                                            <!-- Data widget start -->
                                               <!-- Data widget End -->

                                            </div>
                                        </div>
                                    </div>

                                    <div id="styleSelector">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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