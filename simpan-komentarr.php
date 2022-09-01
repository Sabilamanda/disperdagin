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

        $nama_komen=input($_POST["nama_komen"]);
        $email_komen=input($_POST["email_komen"]);
        $pekerjaan=input($_POST["pekerjaan"]);
        $tlp=input($_POST["tlp"]);
        $pesan=input($_POST["pesan"]);
		

        //Query input menginput data kedalam tabel 
        $sql="insert into komentarr (nama_komen,email_komen,pekerjaan,tlp,pesan) values
        ('$nama_komen','$email_komen','$pekerjaan','$tlp','$pesan')";
        //Mengeksekusi/menjalankan query 
        $hasil=mysqli_query($koneksi,$sql);
     

         //Kondisi apakah berhasil atau tidak dalam mengeksekusi query diatas
        if ($hasil) {
            header("Location:contact.php?halaman=contact&id=$id_komen&komentar=berhasil");
        }
        else {
            header("Location:contact.php?halaman=berita&id=$id_komen&komentar=gagal");

        }
        
    }
?>