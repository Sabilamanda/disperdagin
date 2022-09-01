
						<?php
								  include "koneksi.php";
								  //error_reporting(0);
								  if (isset($_POST['tambah'])){
								    $id				= $_POST['id_koperasi']; // diketik user dikasih disini
									$nama			= $_POST['nama_koperasi'];
									$nomor_bh		= $_POST['nomor_bh'];
									$alamat	        = $_POST['alamat'];									
									$kecamatan		= $_POST['kecamatan'];									


								  
								  //simpan data ke database
								  $SQL = "INSERT INTO koperasi Values('$id','$nama','$nomor_bh','$alamat','$kecamatan')";
								  mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal");
								  echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='koperasi.php'</script>";
								  }
							?>	

						