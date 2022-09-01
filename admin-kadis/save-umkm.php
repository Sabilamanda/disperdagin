
						<?php
								  include "koneksi.php";
								  //error_reporting(0);
								  if (isset($_POST['tambah'])){
								    $id				= $_POST['id']; // diketik user dikasih disini
									$nama			= $_POST['nama'];
									$alamat	        = $_POST['alamat'];
									$kelurahan		= $_POST['kelurahan'];
									$kecamatan		= $_POST['kecamatan'];
									$produk			= $_POST['produk'];


								  
								  //simpan data ke database
								  $SQL = "INSERT INTO umkm Values('$id','$nama','$alamat','$kelurahan','$kecamatan','$produk')";
								  mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal");
								  echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='umkm.php'</script>";
								  }
							?>	

						