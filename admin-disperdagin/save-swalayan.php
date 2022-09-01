
						<?php
								  include "koneksi.php";
								  //error_reporting(0);
								  if (isset($_POST['tambah'])){	
									$id				= $_POST['id_gerai']; // diketik user dikasih disini
									$nama_gerai		= $_POST['nama_gerai'];
									$jenis_gerai	= $_POST['jenis_gerai'];
									$alamat_gerai	= $_POST['alamat_gerai'];
									$kecamatan_gerai= $_POST['kecamatan_gerai'];


								  
								  //simpan data ke database
								  $SQL = "INSERT INTO swalayan Values('$id','$nama_gerai','$jenis_gerai','$alamat_gerai','$kecamatan_gerai')";
								  mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal");
								  echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='swalayan.php'</script>";
								  }
							?>	

						