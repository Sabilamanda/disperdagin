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
	$tabel = "profil";
?><!DOCTYPE html>
<?php
	include ('header.php');
	?>
<html>

<head>
    <title>Halaman Profil</title>


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
                                <h2>PROFIL</h2>                              
                            </div>
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
                                <thead>
									<tr>
										<th>No</th>
										<th>Tentang Dinas</th>
										<th>Visi</th>
										<th>Misi</th>
										<th>Tupoksi</th>
										<th>Stuktur Organisasi</th>
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
											<td><?php echo $row['id_profil'];; ?></td>
											<td><?php echo $row['tentang']; ?></td>
											<td><?php echo $row['visi']; ?></td>
											<td><?php echo $row['misi']; ?></td>
											<td><?php echo $row['tupoksi']; ?></td>
											<td><img src="foto/<?php echo $row['stuktur'] ?>" alt="" width="50px" height="50px"></td>
										 <?php
										 
												echo"<td><a href=\"edit-profil.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
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