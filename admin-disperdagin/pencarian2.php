<?php
ob_start();
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
	  	include "koneksi.php";

	  session_start();
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
	$limit = 2;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "warga";
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Kelurahan Ciwaringin</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link href="pagination.css" rel="stylesheet" type="text/css" />
		<link href="B_blue.css" rel="stylesheet" type="text/css" />
		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
<link rel="icon" type="text/css" href="foto/logo.png"/>
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="index.html" class="navbar-brand">
						<small>
							
							APLIKASI SURAT KETERANGAN DOMISILI WARGA
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation" width="50pt">
					
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				
&nbsp;&nbsp;
				<ul class="nav nav-list">
				<li class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="assets/images/avatars/logo.png"  width="100pt"  align="center"></i><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<b>Kelurahan Ciwaringin</b><br><br>
						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="home.php">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> Home </span>
						</a>
						<b class="arrow"></b>
					</li>
					<li>
						<a href="admin.php">
								&nbsp <i class="ace-icon glyphicon glyphicon-user"></i>
								&nbsp <span class="menu-text"> Admin </span>
						</a>
						<b class="arrow"></b>
					</li>

						<li>
						<a href="warga.php">
								&nbsp <i class="menu-icon fa fa-list"></i>
								&nbsp <span class="menu-text"> Data Warga </span>
						</a>
						<b class="arrow"></b>
					</li>
					<li>
						<a href="pejabat.php">
								&nbsp <i class="menu-icon fa fa-list"></i>
								&nbsp <span class="menu-text"> Data Pejabat </span>
						</a>
						<b class="arrow"></b>
					</li>
						
						
				<li class="">
						<a href="cetak-laporan.php">
							&nbsp <i class="ace-icon fa fa-print  align-top bigger-125 icon-on-right "></i>
							&nbsp<span class="menu-text">&nbsp Cetak Laporan </span>
						</a>

						<b class="arrow"></b>
					</li>
					
					<li class="active">
						<a href="search.php">
							&nbsp <i class="ace-icon glyphicon glyphicon-search"></i>
							<span class="menu-text"> &nbsp &nbsp Search </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="logout.php">
								&nbsp <i class="ace-icon fa fa-power-off"></i>
								&nbsp <span class="menu-text">&nbsp Logout</span>
						</a>
						<b class="arrow"></b>
					</li>
						
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>


			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="search.php">Search</a>
							</li>
							
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							
						</div><!-- /.nav-search -->
					</div>



						
							
							<div class="page-content">
						<div class="row">
					
														
									
		<?php
	  include "koneksi.php";
	  $perintah_sql = "select * from $tabel LIMIT $startpoint , $limit";
	  
	  mysql_select_db($nama_db,$koneksi) or die ("gagal memilih database!");
	  $hasil_query = mysql_query ($perintah_sql, $koneksi) or die
	  ("gagal memproses query");
	  
	  $jumlah_data= mysql_num_rows($hasil_query);
	  $no=1;
	  ?>
      
	  
	  
	  <div class="row">
          <div class="col-md-12">
		
            <div class="card">
              <div class="card-body">
			  
<h3>Pencarian Data</h3>
	<form action="" method="POST" >
	<input type='text' value="" placeholder="Input NIK" name="qcari" required="required">
	<input type='submit' name='cari' value="Cari"  class="btn btn-purple btn-sm"><br>
</form><br>
			  

		  <?php
		  if(isset($_POST['cari']))
		  {
			$qcari=$_POST['qcari'];
			
			
			include "koneksi.php";
			$perintah_sql="select * from warga where Nik like '%$qcari%'";
			mysql_select_db($nama_db, $koneksi) or die ("Gagal memilih database!");
				  
			$hasil_query=mysql_query ($perintah_sql,$koneksi) or die ("Gagal memproses query");
			
			$jumlah_data= mysql_num_rows($hasil_query);
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
	  
	   while($row=mysql_fetch_array($hasil_query))
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

			</div>
		</div>
	  </div>
	  </div>
	  
	 

	  
									
					 </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->

								<div class="space-12"></div>

								
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			
				$( "#datepicker" ).datepicker({
					showOtherMonths: true,
					selectOtherMonths: false,
					//isRTL:true,
			
					
					/*
					changeMonth: true,
					changeYear: true,
					
					showButtonPanel: true,
					beforeShow: function() {
						//change button colors
						var datepicker = $(this).datepicker( "widget" );
						setTimeout(function(){
							var buttons = datepicker.find('.ui-datepicker-buttonpane')
							.find('button');
							buttons.eq(0).addClass('btn btn-xs');
							buttons.eq(1).addClass('btn btn-xs btn-success');
							buttons.wrapInner('<span class="bigger-110" />');
						}, 0);
					}
			*/
				});
			
			
				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));
			
				$( "#id-btn-dialog1" ).on('click', function(e) {
					e.preventDefault();
			
					var dialog = $( "#dialog-message" ).removeClass('hide').dialog({
						modal: true,
						title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='ace-icon fa fa-check'></i> jQuery UI Dialog</h4></div>",
						title_html: true,
						buttons: [ 
							{
								text: "Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							},
							{
								text: "OK",
								"class" : "btn btn-primary btn-minier",
								click: function() {
									$( this ).dialog( "close" ); 
								} 
							}
						]
					});
			
					/**
					dialog.data( "uiDialog" )._title = function(title) {
						title.html( this.options.title );
					};
					**/
				});
			
			
				$( "#id-btn-dialog2" ).on('click', function(e) {
					e.preventDefault();
				
					$( "#dialog-confirm" ).removeClass('hide').dialog({
						resizable: false,
						width: '320',
						modal: true,
						title: "<div class='widget-header'><h4 class='smaller'><i class='ace-icon fa fa-exclamation-triangle red'></i> Empty the recycle bin?</h4></div>",
						title_html: true,
						buttons: [
							{
								html: "<i class='ace-icon fa fa-trash-o bigger-110'></i>&nbsp; Delete all items",
								"class" : "btn btn-danger btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
							,
							{
								html: "<i class='ace-icon fa fa-times bigger-110'></i>&nbsp; Cancel",
								"class" : "btn btn-minier",
								click: function() {
									$( this ).dialog( "close" );
								}
							}
						]
					});
				});
			
			
				
				//autocomplete
				 var availableTags = [
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"
				];
				$( "#tags" ).autocomplete({
					source: availableTags
				});
			
				//custom autocomplete (category selection)
				$.widget( "custom.catcomplete", $.ui.autocomplete, {
					_create: function() {
						this._super();
						this.widget().menu( "option", "items", "> :not(.ui-autocomplete-category)" );
					},
					_renderMenu: function( ul, items ) {
						var that = this,
						currentCategory = "";
						$.each( items, function( index, item ) {
							var li;
							if ( item.category != currentCategory ) {
								ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
								currentCategory = item.category;
							}
							li = that._renderItemData( ul, item );
								if ( item.category ) {
								li.attr( "aria-label", item.category + " : " + item.label );
							}
						});
					}
				});
				
				 var data = [
					{ label: "anders", category: "" },
					{ label: "andreas", category: "" },
					{ label: "antal", category: "" },
					{ label: "annhhx10", category: "Products" },
					{ label: "annk K12", category: "Products" },
					{ label: "annttop C13", category: "Products" },
					{ label: "anders andersson", category: "People" },
					{ label: "andreas andersson", category: "People" },
					{ label: "andreas johnson", category: "People" }
				];
				$( "#search" ).catcomplete({
					delay: 0,
					source: data
				});
				
				
				//tooltips
				$( "#show-option" ).tooltip({
					show: {
						effect: "slideDown",
						delay: 250
					}
				});
			
				$( "#hide-option" ).tooltip({
					hide: {
						effect: "explode",
						delay: 250
					}
				});
			
				$( "#open-event" ).tooltip({
					show: null,
					position: {
						my: "left top",
						at: "left bottom"
					},
					open: function( event, ui ) {
						ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
					}
				});
			
			
				//Menu
				$( "#menu" ).menu();
			
			
				//spinner
				var spinner = $( "#spinner" ).spinner({
					create: function( event, ui ) {
						//add custom classes and icons
						$(this)
						.next().addClass('btn btn-success').html('<i class="ace-icon fa fa-plus"></i>')
						.next().addClass('btn btn-danger').html('<i class="ace-icon fa fa-minus"></i>')
						
						//larger buttons on touch devices
						if('touchstart' in document.documentElement) 
							$(this).closest('.ui-spinner').addClass('ui-spinner-touch');
					}
				});
			
				//slider example
				$( "#slider" ).slider({
					range: true,
					min: 0,
					max: 500,
					values: [ 75, 300 ]
				});
			
			
			
				//jquery accordion
				$( "#accordion" ).accordion({
					collapsible: true ,
					heightStyle: "content",
					animate: 250,
					header: ".accordion-header"
				}).sortable({
					axis: "y",
					handle: ".accordion-header",
					stop: function( event, ui ) {
						// IE doesn't register the blur when sorting
						// so trigger focusout handlers to remove .ui-state-focus
						ui.item.children( ".accordion-header" ).triggerHandler( "focusout" );
					}
				});
				//jquery tabs
				$( "#tabs" ).tabs();
				
				
				//progressbar
				$( "#progressbar" ).progressbar({
					value: 37,
					create: function( event, ui ) {
						$(this).addClass('progress progress-striped active')
							   .children(0).addClass('progress-bar progress-bar-success');
					}
				});
			
				
				//selectmenu
				 $( "#number" ).css('width', '200px')
				.selectmenu({ position: { my : "left bottom", at: "left top" } })
					
			});
		</script>
	</body>
</html>
<?php } ?>