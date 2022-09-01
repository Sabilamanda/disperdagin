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
	$tabel = "ikm";
?><!DOCTYPE html>
<?php
	include ('header2.php');
	?>
	<html>

<head>
    <title>Halaman Cari IKM</title>



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
                              <h2>Data IKM</h2>
							  <?php
							   echo "<a href=ikm.php>
					<button type='button' class='btn btn-custon-two btn-danger'>Kembali ke IKM</button>
				</a><br><br>";
							  ?>
							</div>							  

		  <?php
		  if(isset($_POST['cari']))
		  {
			$qcari=$_POST['qcari'];
			
			
			include "koneksi.php";
			$perintah_sql="select * from ikm where nama_toko like '%$qcari%'";
				  
			$hasil_query=mysqli_query($koneksi,$perintah_sql) ;
			$jumlah = mysqli_num_rows($hasil_query);
			if ($jumlah<=0)
			{
				echo "<h3><font color='red'>Data tidak ditemukan</font></h3>";
			}
			else {
			echo " <table id='dynamic-table' class='table table-striped table-bordered table-hover'>";
		echo"<thead>";
	  echo "<tr>";
	  
	  echo "<th> No</th>";
	  echo "<th> Nama Usaha</th>";
	  echo "<th> Nama Pemilik</th>";
	  echo "<th> Alamat</th>";
	  echo "<th> Jenis Usaha</th>";
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
											<td><?php echo $row['id_ikm']; ?></td>
											<td><?php echo $row['nama_toko']; ?></td>
											<td><?php echo $row['nama_pemilik']; ?></td>
											<td><?php echo $row['alamat']; ?></td>
											<td><?php echo $row['jns_usaha']; ?></td>																						
											
												<?php
												echo"<td><a href=\"edit-ikm.php?id=$row[0]\"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a></td>";
												echo"<td><a href=\"delete-ikm.php?id=$row[0]\"onclick=\"return confirm('Anda yakin akan menghapus data ini?')\">
													<button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>";
												
												
		echo"</tr>";
		echo"</tbody>";
		
		}
		echo"</table>";
			
			}
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