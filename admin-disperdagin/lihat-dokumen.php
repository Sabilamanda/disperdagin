<html>

<head>
    <title>Halaman Dokumen</title>
<?php
				  include "koneksi.php";
				  //mengambil id yang di klik untuk di edit
				  $file_id=$_GET['file_id'];
				  
				  
				  $perintah_sql="select * from file where file_id=$file_id";

				  $data = mysqli_query($koneksi,$perintah_sql);
				  $row=mysqli_fetch_array($data);
						

				  $file=$row['file'];


//memanggil file example.pdf yang berada di folder bernama file
$filePath = 'dokumen/'.$file ;
//Membuat kondisi jika file tidak ada
if (!file_exists($filePath)) {
    echo "The file $filePath does not exist";
    die();
}
//nama file untuk tampilan
$name=$row['name'];
header('Content-type:application/pdf');
header('Content-disposition: inline; name="'.$name.'"');
header('content-Transfer-Encoding:binary');
header('Accept-Ranges:bytes');
//membaca dan menampilkan file
readfile($filePath);
?>
</head>
</html>