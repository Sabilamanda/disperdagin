<?php

								include "koneksi.php";

								if($koneksi){
									// ID, USERNAME, PASSWORD yang diedit oleh user
									$id				= $_POST['id_koperasi']; // diketik user dikasih disini
									$nama_koperasi	= $_POST['nama_koperasi'];
									$nomor_bh       = $_POST['nomor_bh'];
									$alamat 		= $_POST['alamat'];
									$kecamatan		= $_POST['kecamatan'];
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE koperasi SET id_koperasi='$id', nama_koperasi='$nama_koperasi', nomor_bh='$nomor_bh', alamat='$alamat', kecamatan='$kecamatan' WHERE id_koperasi='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data umkm gagal");
								  echo "<script language='javascript'>
								  alert('Data umkm Berhasil Diubah');document.location='koperasi.php'</script>";
								  
								}
			  
								  
							?>