	<?php
			include "koneksi.php";
			if(isset($_POST['tambah']))
			{
				$id				= $_POST['id_pegawai']; // diketik user dikasih disini
				$nip			= $_POST['nip'];
				$nama_peg		= $_POST['nama_peg'];
				$golongan		= $_POST['golongan'];
				$jk	  			= $_POST['jk'];
				$jenis	        = $_POST['jenis'];
				$jabatan		= $_POST['jabatan'];
				$foto			= $_FILES['foto']['nama'];

				$SQL = "INSERT INTO pegawai VALUES('$id','$nip','$nama_peg','$golongan','$jk','$jenis','$jabatan','$foto')";
				mysqli_query ($koneksi,$SQL) or die ("proses insert data gagal, silahkan masukan ulang kembali");
				echo "<script language='javascript'>alert('Data Berhasil Ditambah');document.location='pegawai.php'</script>";
			}
	?>