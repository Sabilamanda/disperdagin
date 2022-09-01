<!DOCTYPE html>
<html>
<head>
 <title>Data IKM</title>
</head>
<body>
 <style type="text/css">
 body{
 font-family: sans-serif;
 }
 table{
 margin: 20px auto;
 border-collapse: collapse;
 }
 table th,
 table td{
 border: 1px solid #3c3c3c;
 padding: 3px 8px;

 }
 a{
 background: blue;
 color: #fff;
 padding: 8px 10px;
 text-decoration: none;
 border-radius: 2px;
 }

    .tengah{
        text-align: center;
    }
 </style>
 <table>
 <tr>
 <th>No</th>
 <th>Nama Usaha</th>
 <th>Nama Pemilik</th>
 <th>Alamat</th>
 <th>Jenis Usaha</th>
 </tr>
 <?php 
 // koneksi database
 $koneksi = mysqli_connect("localhost","root","","daginn");

 // menampilkan data pegawai
 $data = mysqli_query($koneksi,"select * from ikm");
 while($d = mysqli_fetch_array($data)){
 ?>
 <tr>
 <td style='text-align: center;'><?php echo $d['id_ikm'] ?></td>
 <td><?php echo $d['nama_toko']; ?></td>
 <td><?php echo $d['nama_pemilik']; ?></td>
 <td><?php echo $d['alamat']; ?></td>
 <td><?php echo $d['jns_usaha']; ?></td>
 </tr>
 <?php 
 }
 ?>
    </table>
    <script>
 window.print();
 </script>
</body>
</html>