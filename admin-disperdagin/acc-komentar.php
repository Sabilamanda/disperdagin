<?php
	include "koneksi.php";
	
	$id=$_GET['id_komentar'];
	
	$query=mysqli_query($koneksi, "update komentar set status_komentar ='1' where id_komentar='$id'")
	or die(mysqli_connect_error());
	
	if($query){
		echo "<script>alert('komentar Di Publish');
		window.location.href='komentar.php';
		</script>";
	}
	?>