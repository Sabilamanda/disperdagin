<?php
    if (isset($_POST['form_komentar'])) {
        //Include file koneksi, untuk koneksikan ke database
        include 'koneksi.php';
        
        //Fungsi untuk mencegah inputan karakter yang tidak sesuai
        function input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $id_berita=input($_POST["id_berita"]);
        $nama=input($_POST["nama"]);
        $email=input($_POST["email"]);
        $isi_komentar=input($_POST["isi_komentar"]);
        $status_komentar=input($_POST["status_komentar"]);
		

        //Query input menginput data kedalam tabel 
        $sql="insert into komentar (id_berita,nama,email,isi_komentar,status_komentar) values
        ('$id_berita','$nama','$email','$isi_komentar','$status_komentar')";
        //Mengeksekusi/menjalankan query 
        $hasil=mysqli_query($koneksi,$sql);
     

         //Kondisi apakah berhasil atau tidak dalam mengeksekusi query diatas
        if ($hasil) {
            header("Location:berita.php?halaman=berita&id=$id_berita&komentar=berhasil");
        }
        else {
            header("Location:berita.php?halaman=berita&id=$id_berita&komentar=gagal");

        }
        
    }
?>