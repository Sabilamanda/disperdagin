
						<?php
								  include "koneksi.php";
								  //error_reporting(0);
								  if (isset($_POST['tambah'])){
								  $id=$_POST['id_admin']; // diketik user dikasih disini
								  $nama=$_POST['nama'];
								  $username=$_POST['username'];
								  $password=$_POST['password'];


								  
								  //simpan data ke database
								  $SQL = "INSERT INTO admin Values('$id','$nama','$username','$password')";
								  mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal");
								  echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='admin.php'</script>";
								  }
							?>	

						