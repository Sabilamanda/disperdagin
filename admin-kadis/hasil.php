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
	$tabel = "umkm";
?><!DOCTYPE html>
<?php
	include ('header2.php');
	?>
	<html>

<head>
    <title>Halaman UMKM</title>

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
							  <a href="umkm.php">
					<button type='button' class='btn btn-custon-two btn-danger'>Kembali Ke Data UMKM</button>
				</a><br><br>
				    <a href=laporan.php>
					<button class='btn btn-danger btn-xs'><i class='fa fa-print'></i></button></a><br><br>
	<br>
			  

		 <?php
		  if(isset($_POST['caribt']))
		  {
			
			
			//include "koneksi.php";
			//$kecamatan = $_POST['kecamatan'];
			//$perintah_sql = "select * from umkm where kecamatan like '%$kecamatan%'";
			
			
			include "koneksi.php";
			$kecamatan = $_POST['kecamatan'];
			$perintah_sql = "select * from umkm where kecamatan like '%$kecamatan%'";
							

			$hasil_query = mysqli_query($koneksi,$perintah_sql);
									//while($row=mysqli_fetch_array($data)){
			
			//$perintah_sql="select * from umkm where Kecamatan like '%$qcari%'";
			
			
			$jumlah_data= mysqli_num_rows($hasil_query);
			
		if ($jumlah_data<=0)
		{
					echo "<h3><font color='red'>Data tidak ditemukan</font></h3> <br><br>";
			}
			

			echo " <table id='dynamic-table' class='table table-striped table-bordered table-hover'>";
		echo"<thead>";
	  echo "<tr>";
	  
	  echo "<th> No</th>";
	  echo "<th> Nama Usaha</th>";
	  echo "<th> Alamat</th>";
	  echo "<th> Kelurahan</th>";
	  echo "<th> Kecamatan</th>";
	  echo "<th> Produk</th>";
	  echo "<td colspan=3 align='center'>Aksi</td>";
	  
	  echo "</tr>";
	  		echo"</thead>";

	  //ini untuk menampilkan data tabel yang di db
	  
	   while($row=mysqli_fetch_array($hasil_query))
	  {
		echo"<tbody>";
		echo"<tr>";
	?>
	
	
		<tr>
											<td><?php echo $row['id'];; ?></td>
											<td><?php echo $row['nama']; ?></td>
											<td><?php echo $row['alamat']; ?></td>
											<td><?php echo $row['kelurahan']; ?></td>
											<td><?php echo $row['kecamatan']; ?></td>
											<td><?php echo $row['produk']; ?></td>
										 <?php
										 
												echo"<td><a href=\"edit-umkm.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-umkm.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
													<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
												
										 
		echo"</tr>";
		echo"</tbody>";
		
		}
		echo"</table>";
										}
		  
		  
		  ?>
										<?php 
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
                            <p>Copyright &copy; 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
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