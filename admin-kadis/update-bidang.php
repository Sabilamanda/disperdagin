<?php

								include "koneksi.php";

								if($koneksi){
									
								  $id			= $_POST['id']; // diketik user dikasih disini
								  $sekretariat	= $_POST['sekretariat'];
								  $koperasi		= $_POST['koperasi'];
								  $umkm			= $_POST['umkm'];
								  $industri		= $_POST['industri'];
								  $promija		= $_POST['promija'];
								  $ppdnpktn		= $_POST['ppdnpktn'];
								  $metro		= $_POST['metro'];
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE bidang SET sekretariat='$sekretariat', koperasi='$koperasi', umkm='$umkm', industri='$industri', promija='$promija', ppdnpktn='$ppdnpktn', metro='$metro' WHERE id_bidang='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data bidang gagal");
								  echo "<script language='javascript'>
								  alert('Data admin Berhasil Diubah');document.location='bidang.php'</script>";
								  
								}
			  
								  
							?>