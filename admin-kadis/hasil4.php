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
	$tabel = "swalayan";
?><!DOCTYPE html>
<?php
	include ('header2.php');
	?>
	<html>

<head>
    <title>Halaman Swalayan</title>


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
							  <a href="swalayan.php">
					<button type='button' class='btn btn-custon-two btn-danger'>Kembali Ke Data Toko Swalayan</button>
				</a><br><br>
	<br>
			  

		 <?php
		  if(isset($_POST['caribt']))
		  {
			
			
			//include "koneksi.php";
			//$kecamatan = $_POST['kecamatan'];
			//$perintah_sql = "select * from koperasi where kecamatan like '%$kecamatan%'";
			
			
			include "koneksi.php";
			$jenis_gerai = $_POST['jenis_gerai'];
			$perintah_sql = "select * from swalayan where jenis_gerai like '%$jenis_gerai%'";
							

			$hasil_query = mysqli_query($koneksi,$perintah_sql);
									//while($row=mysqli_fetch_array($data)){
			
			//$perintah_sql="select * from ikm where Kecamatan like '%$qcari%'";
			
			
			$jumlah_data= mysqli_num_rows($hasil_query);
			
		if ($jumlah_data<=0)
		{
					echo "<h3><font color='red'>Data tidak ditemukan</font></h3> <br><br>";
			}
			

			echo " <table id='dynamic-table' class='table table-striped table-bordered table-hover'>";
		echo"<thead>";
	  echo "<tr>";
	  
	  echo "<th> No</th>";
	  echo "<th> Nama Gerai</th>";
	  echo "<th> Jenis</th>";
	  echo "<th> Alamat</th>";
	  echo "<th> Kecamatan</th>";
	  echo "<td colspan=2 align='center'>Aksi</td>";
	  
	  echo "</tr>";
	  		echo"</thead>";

	  //ini untuk menampilkan data tabel yang di db
	  
	   while($row=mysqli_fetch_array($hasil_query))
	  {
		echo"<tbody>";
		echo"<tr>";
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
       </body>
								</html>
								<?php
								include ('footer.php');
								?>