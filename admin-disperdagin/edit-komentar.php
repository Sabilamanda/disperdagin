<?php
ob_start();
session_start();
	  include "koneksi.php";
	  /*sertakan kodingan di bawah ini untuk setiap halaman admin*/
	  /*session_start();
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION[['user']) 
	  || !isset($_SESSION['passwd'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?
      }else{
      ?>*/
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION['username']) || !isset($_SESSION['password'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?php
      }else
      ?>


<?php
include ('header.php');
?>       
	<html>
<body>
<title> Halaman Edit Komentar </title> 



        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-t-15 mg-b-30">
            <div class="container-fluid">
                <div class="row">
								
                     <div class="x-editable-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    
					<div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline12-list">
                            <div class="sparkline12-hd">
                                <div class="main-sparkline12-hd">
                                    <h1>EDIT DATA KOMENTAR</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                          
											  <?php
											  include "koneksi.php";
											  										  
													$query =mysqli_query ($koneksi, "select * from berita join komentar on berita.id_berita = komentar.id_berita");
													$row = mysqli_fetch_array($query);
													
												$id_komentar=$row['id_komentar'];	
												$nama=$row['nama'];
												$email=$row['email'];
												$judul_berita=$row['judul_berita'];
												$isi_komentar=$row['isi_komentar'];
												$id_berita=$row['id_berita'];

											?>
				  
				  
	  <form name="update-komentar" class="form-horizontal style-form" method="post" action="update-komentar.php" enctype="multipart/form-data">
                           <form class="form-horizontal" role="form">
									
									<div class="form-group">
										<input name="id_komentar" value="<?php echo $id_komentar; ?>" type="hidden" class="form-control">
										<input name="id_berita" value="<?php echo $id_berita; ?>" type="hidden" class="form-control">
									</div>									 									 
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$nama";?>" class="form-control" name="nama"  placeholder="Masukan nama" required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Email</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$email";?>" class="form-control" name="email" placeholder="Masukan email"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Berita</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$judul_berita";?>" class="form-control" name="judul_berita"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Isi Komentar</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<script type="text/javascript" src="ckeditor/ckeditor.js"></script>	
																				  <textarea class="ckeditor" id="ckeditor" name="isi_komentar" >
																				  <?php echo "$isi_komentar" ?>
																				  </textarea></div>
                                                        </div>
                                     </div>									 
									 					
									</div>
									
									
									
									
							   <div class="form-group">
                              <div class="col-sm-10">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <input type="submit" name="edit" value="Edit" class="btn btn-primary" required>
								  <input type="reset" name="reset"value="Reset" class="btn btn-primary">
								   <?php
					echo "<a href=komentar.php>
					<button type='button' class='btn btn-primary'>Back</button>
				</a> <br><br><br>";
				?>
                              </div>
							  </div>
							  
	  </form>
	  <?php
    if (isset($_POST['simpan_edit'])) {
        //Include file koneksi, untuk koneksikan ke database
        include '../../config/koneksi.php';
        
        //Fungsi untuk mencegah inputan karakter yang tidak sesuai
        function input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        $id_komentar=input($_POST["id_komentar"]);
        $nama=input($_POST["nama"]);
        $email=input($_POST["email"]);
        $isi_komentar=input($_POST["isi_komentar"]);
        $id_berita=input($_POST["id_berita"]);
        $status_komentar=input($_POST["status_komentar"]);


        //Query input menginput data kedalam tabel anggota
        $sql="update komentar set
        nama='$nama',
        email='$email',
        isi_komentar='$isi_komentar',
        id_berita='$id_berita',
        status_komentar='$status_komentar'
        where id_komentar=$id_komentar";

        //Mengeksekusi/menjalankan query 
        $hasil=mysqli_query($kon,$sql);


        //Kondisi apakah berhasil atau tidak dalam mengeksekusi query diatas
        if ($hasil) {
            header("Location:../komentar.php?halaman=komentar&edit=berhasil");
        }
        else {
            header("Location:../komentar.php?halaman=komentar&edit=gagal");;

        }
        
    }
    ?>
	  
	  
										  
										  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
					
                </div>
            </div>
        </div>
										
                </div>
            </div>
        </div>
        </body>
			</html>
			<?php
			include ('footer.php')
			?>