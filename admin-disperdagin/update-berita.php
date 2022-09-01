<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

	// membuat variabel untuk menampung data dari form
				$id				= $_POST['id']; // diketik user dikasih disini
				$judul_berita	= $_POST['judul_berita'];
				$kategori		= $_POST['kategori'];				
				$isi			= $_POST['isi'];
				$foto			= $_FILES['foto']['name'];
 
  //cek dulu jika merubah gambar produk jalankan coding ini
  if($foto != "") {
    $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload 
    $x = explode('.', $foto); //memisahkan nama file dengan ekstensi yang diupload
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['foto']['tmp_name'];   
   
    $nama_gambar_baru = $foto; //menggabungkan angka acak dengan nama file sebenarnya
    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {
                  move_uploaded_file($file_tmp, 'foto/berita/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                      
                    // jalankan query UPDATE berdasarkan ID yang produknya kita edit
                    $query  = "UPDATE berita SET judul_berita = '$judul_berita', kategori = '$kategori', isi = '$isi', foto = '$nama_gambar_baru'";
                    $query .= "WHERE id_berita = '$id'";
                    $result = mysqli_query($koneksi, $query);
                    // periska query apakah ada error
                    if(!$result){
                        die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
                    } else {
                      //tampil alert dan akan redirect ke halaman index.php
                      //silahkan ganti index.php sesuai halaman yang akan dituju
                      echo "<script>alert('Data Berita berhasil diubah.');window.location='berita.php';</script>";
                    }
              } else {     
               //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                  echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='edit-berita.php';</script>";
              }
    } else {
      // jalankan query UPDATE berdasarkan ID yang produknya kita edit
      $query  = "UPDATE berita SET judul_berita = '$judul_berita', kategori = '$kategori', isi = '$isi'";
      $query .= "WHERE id_berita = '$id'";
      $result = mysqli_query($koneksi, $query);
      // periska query apakah ada error
      if(!$result){
            die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
      } else {
        //tampil alert dan akan redirect ke halaman index.php
        //silahkan ganti index.php sesuai halaman yang akan dituju
          echo "<script>alert('Data Berita berhasil diubah.');window.location='berita.php';</script>";
      }
    }
