<?php
// Tentukan path yang tepat ke mPDF
$nama_dokumen='Daftar_seleksi_calon_siswa'; //Beri nama file PDF hasil.
define('_MPDF_PATH','mpdf60/'); // Tentukan folder dimana anda menyimpan folder mpdf
include(_MPDF_PATH . "mpdf.php"); // Arahkan ke file mpdf.php didalam folder mpdf
$mpdf=new mPDF('utf-8', 'A4', 10.5, 'arial'); // Membuat file mpdf baru
 
//Memulai proses untuk menyimpan variabel php dan html
ob_start();
?>


<?php

//mulai implementasikan kodingan disini
				include "koneksi.php";
				  
				  
				echo "<table cellpadding=2 cellspacing=0 >";
				
			echo "</tr>";
			echo "<tr><td colspan='2'><img src='foto/kopp.png'  width='800px' align='left'></td></tr>";
			echo "<tr><td align='center'><br><u><h3>SURAT KETERANGAN USAHA</h3></u></td><br></tr></table>";
			
			//mengambil id yang di klik untuk di edit
				  $id=$_GET['id'];
				  
				  //menyeleksi data id yang di klik oleh user=id pada database
				  include "koneksi.php";
								   $perintah_sql="select * from umkm where id='$id'";

									$data = mysqli_query($koneksi,$perintah_sql);
				  
				  //disini tidka menggunakan while karena hanya mengambil 1 data yang akan di edit
				  
				  $row=mysqli_fetch_array($data);
				  $id=$row['id']; 
								  $nama=$row['nama'];
								  $alamat=$row['alamat'];
								  $kelurahan=$row['kelurahan'];
								  $kecamatan=$row['kecamatan'];
								  $produk=$row['produk'];
								  
								  
								  
			echo "<br>";
			echo "<table>
			<tr><td><img src='foto/logo4.JPG' width='60px'>Nama</td><td>$dari</td></tr> 
			<tr><td><img src='foto/logo4.JPG' width='60px'>Alamat</td><td>$no</td></tr>
			<tr><td><img src='foto/logo4.JPG' width='60px'>Kelurahan</td><td>$tglsurat</td></tr>
			<tr><td><img src='foto/logo4.JPG' width='60px'>Kecamatan</td><td>$diterima</td></tr>
			<tr><td><img src='foto/logo4.JPG' width='60px'>Produk</td><td>$hal</td></tr>
			</table>";
		

 ?>
   
</table>
 
<?php
 
$mpdf->setFooter('{PAGENO}');
//penulisan output selesai, sekarang menutup mpdf dan generate kedalam format pdf
$html = ob_get_contents(); //Proses untuk mengambil hasil dari OB..
ob_end_clean();
//Disini dimulai proses convert UTF-8, kalau ingin ISO-8859-1 cukup dengan mengganti $mpdf->WriteHTML($html);
$mpdf->WriteHTML(utf8_encode($html));
$mpdf->Output($nama_dokumen.".pdf" ,'I');
exit;
?>