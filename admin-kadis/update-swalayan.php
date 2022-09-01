<?php

								include "koneksi.php";

								if($koneksi){
        }
									
								  $id			= $_POST['id_gerai']; // diketik user dikasih disini
								  $nama_gerai	= $_POST['nama_gerai'];
								  $jenis_gerai	= $_POST['jenis_gerai'];
								  $alamat_gerai	= $_POST['alamat_gerai'];
								  $kecamatan_gerai	= $_POST['kecamatan_gerai'];							
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE swalayan SET id_gerai='$id', nama_gerai='$nama_gerai', jenis_gerai='$jenis_gerai', alamat_gerai='$alamat_gerai', kecamatan_gerai='$kecamatan_gerai' WHERE id_gerai='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data komentar gagal");
								  echo "<script language='javascript'>
								  alert('Data komentar Berhasil Diubah');document.location='swalayan.php'</script>";
								  
							
			  
								  
							?>