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
	$limit = 100;
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
                                <h2>UMKM</h2>
                              <?php
							   
							  echo "<a href=laporan.php>
					<button class='btn btn-danger btn-xs'><i class='fa fa-print'></i></button></a><br><br>";
				
							  ?>
							  
				<form action="go.php" method="POST" >
					<input type='text' value="" placeholder="Input Nama Usaha" name="qcari" required="required">
					<input type='submit' name='cari' value="Cari" class="btn btn-custon-two btn-danger"><br>
				</form>
                
                <table><tr>
<td>Pencarian Data per Kecamatan<img src='foto/logo0.JPG'></td>
<td><form action="hasil.php" method="POST" name="kecamatan" >
<select name='kecamatan'>
<option value='Bogor Barat'>Bogor Barat</option>
<option value='Bogor Timur'>Bogor Timur</option>
<option value='Bogor Utara'>Bogor Utara</option>
<option value='Bogor Selatan'>Bogor Selatan</option>
<option value='Bogor Tengah'>Bogor Tengah</option>
<option value='Tanah Sareal'>Tanah Sareal</option>
</select></td><td></td><td><img src='foto/logo0.JPG'><input type='submit' name='caribt' value="Cari"  class="btn btn-custon-two btn-danger"></td></form></tr></table><br>
                            </div>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
                                <thead>
									<tr>
										<th>No</th>
										<th>Nama Usaha</th>
										<th>Alamat</th>
										<th>Kelurahan</th>
										<th>Kecamatan</th>
										<th>Produk</th>
										<th colspan='1'>Aksi</th>
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
											<td><?php echo $row['id'];; ?></td>
											<td><?php echo $row['nama']; ?></td>
											<td><?php echo $row['alamat']; ?></td>
											<td><?php echo $row['kelurahan']; ?></td>
											<td><?php echo $row['kecamatan']; ?></td>
											<td><?php echo $row['produk']; ?></td>
										 <?php
										 
												echo"<td><a href=\"edit-umkm.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												
												
										 
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
        </body>
								</html>
								<?php
								include ('footer.php');
								?>