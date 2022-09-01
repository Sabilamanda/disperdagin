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
?><!DOCTYPE html>
<?php
	include ('header.php');
	?>
	<html>

<head>
    <title>Halaman Agenda Kegiatan</title>
	<link href="pagination.css" rel="stylesheet" type="text/css" />
	<link href="B_blue.css" rel="stylesheet" type="text/css" />
	
	
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
                                <h2>AGENDA KEGIATAN</h2>
                              
                            </div>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
							<?php
								echo "<a href=tambah-artikel.php>
								<button type='button' class='btn btn-custon-two btn-danger'><i class='fa fa-plus'></i> Tambah Agenda</button>
									</a><br><br>";?>
                                <thead>
									<tr>
										<th>No</th>
										<th>Tanggal</th>
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
									$no=1;
									while($row=mysqli_fetch_array($data)){
										?>
										<tr>
											<td><?php echo $no; ?></td>	
											<td><?php echo $row['tanggal']; ?></td>	
											<td><?php echo $row['judul']; ?></td>
											<td><?php echo $row['penulis']; ?></td>
											<td><?php echo $row['deskripsi']; ?></td>
											<td><img src="artikel/<?php echo $row['gambar'] ?>" alt="" width="50px" height="50px"></td>
										 <?php
										 
												echo"<td><a href=\"edit-artikel.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-artikel.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
													<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
														
										 
										 ?>
										</tr>
										<?php 
										$no++;
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