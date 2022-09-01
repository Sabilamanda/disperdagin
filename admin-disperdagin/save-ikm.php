
						<?php
								  include "koneksi.php";
								  //error_reporting(0);
								  if (isset($_POST['tambah'])){	
									$id				= $_POST['id_ikm']; // diketik user dikasih disini
									$nama_toko		= $_POST['nama_toko'];
									$nama_pemilik	= $_POST['nama_pemilik'];
									$alamat	        = $_POST['alamat'];
									$kecamatan      = $_POST['kecamatan'];
									$jns_usaha		= $_POST['jns_usaha'];


								  
								  //simpan data ke database
								  $SQL = "INSERT INTO ikm Values('$id','$nama_toko','$nama_pemilik','$alamat','$kecamatan','$jns_usaha')";
								  mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal");
								  echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='ikm.php'</script>";
								  }
							?>	

						