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
	$limit = 10;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "produk";
?><!DOCTYPE html>
<?php
	include ('header.php');
	?>
	<html>

<head>
    <title>Halaman Produk</title>
	<link href="pagination.css" rel="stylesheet" type="text/css" />
	<link href="B_blue.css" rel="stylesheet" type="text/css" />
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

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
                                <h2>PRODUK</h2>
                              
                            </div>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
							
									
                                <thead>
									<tr>
										<th>No</th>
										<th>Nama Usaha</th>
										<th>Kategori</th>
										<th>Alamat</th>									
										<th>Foto Produk</th>
										<th colspan='1'>Aksi</th>
									</tr>
								</thead>

							<tbody>
									<?php 
									$no = 1;
								    $perintah_sql = "select * from $tabel LIMIT $startpoint , $limit";

									$data = mysqli_query($koneksi,$perintah_sql);
									while($row=mysqli_fetch_array($data)){
										?>
										<tr>
											<td><?php echo $no; ?></td>
											<td><?php echo $row['nama_produk']; ?></td>
											<td><?php echo $row['kategori']; ?></td>
											<td><?php echo $row['alamat']; ?></td>											
											<td><img src="foto/produk/<?php echo $row['gmbr'] ?>" alt="" width="50px" height="50px"></td>
										 <td>
											  <a href="detail-produk.php?id=<?php echo $row['id_produk']; ?>"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-eye'></i></button></a></td>											 
										</tr>
										</tr>
										 <?php
        $no++; //untuk nomor urut terus bertambah 1
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