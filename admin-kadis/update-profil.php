<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

	// membuat variabel untuk menampung data dari form
				$id				= $_POST['id']; // diketik user dikasih disini
				$tentang		= $_POST['tentang'];
				$visi			= $_POST['visi'];				
				$misi			= $_POST['misi'];
				$tupoksi 		= $_POST['tupoksi'];
				$stuktur		= $_FILES['stuktur']['name'];
 
  //cek dulu jika merubah gambar produk jalankan coding ini
  if($stuktur != "") {
    $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload 
    $x = explode('.', $stuktur); //memisahkan nama file dengan ekstensi yang diupload
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['stuktur']['tmp_name'];   
   
    $nama_gambar_baru = $stuktur; //menggabungkan angka acak dengan nama file sebenarnya
    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {
                  move_uploaded_file($file_tmp, 'foto/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                      
                    // jalankan query UPDATE berdasarkan ID yang produknya kita edit
                    $query  = "UPDATE profil SET tentang = '$tentang', visi = '$visi', misi = '$misi', tupoksi = '$tupoksi', stuktur = '$nama_gambar_baru'";
                    $query .= "WHERE id_profil = '$id'";
                    $result = mysqli_query($koneksi, $query);
                    // periska query apakah ada error
                    if(!$result){
                        die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
                    } else {
                      //tampil alert dan akan redirect ke halaman index.php
                      //silahkan ganti index.php sesuai halaman yang akan dituju
                      echo "<script>alert('Data Profil berhasil diubah.');window.location='profil.php';</script>";
                    }
              } else {     
               //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                  echo "<script>alert('Ekstensi gambar yang boleh hanya jpg jpeg atau png.');window.location='edit-profil.php';</script>";
              }
    } else {
      // jalankan query UPDATE berdasarkan ID yang produknya kita edit
      $query  = "UPDATE profil SET tentang = '$tentang', visi = '$visi', misi = '$misi', tupoksi = '$tupoksi'";
      $query .= "WHERE id_profil = '$id'";
      $result = mysqli_query($koneksi, $query);
      // periska query apakah ada error
      if(!$result){
            die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
      } else {
        //tampil alert dan akan redirect ke halaman index.php
        //silahkan ganti index.php sesuai halaman yang akan dituju
          echo "<script>alert('Data Profil berhasil diubah.');window.location='profil.php';</script>";
      }
    }
