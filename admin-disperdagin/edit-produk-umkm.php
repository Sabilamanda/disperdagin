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
<title> Halaman Edit Produk </title>


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
                                    <h1>EDIT DATA PRODUK</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                          
										  <?php
				  include "koneksi.php";
				  //mengambil id yang di klik untuk di edit
				  $id=$_GET['id'];
				  
				  
				  $perintah_sql="select * from umkm1 where id_umkm=$id";

				  $data = mysqli_query($koneksi,$perintah_sql);
				  $row=mysqli_fetch_array($data);
						
				 			  
								  $id=$row['id_umkm']; // diketik user dikasih disini
								  $nama_produk=$row['nama_produk'];
								  $kategori=$row['kategori'];
								  $alamat=$row['alamat'];
								  $gmbr=$row['gmbr'];
				  
				  
				  ?>
				  	
	  <form name="update-produk" class="form-horizontal style-form" method="post" action="update-produk-umkm.php" enctype="multipart/form-data">
                           <form class="form-horizontal" role="form">
									
									 <input name="id" value="<?php echo "$id"; ?>" hidden />									
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama Produk</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$nama_produk";?>" class="form-control" name="nama_produk"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Kategori</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$kategori";?>" class="form-control" name="kategori"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Alamat</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<script type="text/javascript" src="ckeditor/ckeditor.js"></script>	
																				  <textarea class="ckeditor" id="ckeditor" name="alamat" >
																				  <?php echo "$alamat" ?>
																				  </textarea>
                                                            </div>
                                                        </div>
                                     </div>
									
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Gambar</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<img src="foto/produk/<?php echo "$gmbr"; ?>" style="width: 120px;float: left;margin-bottom: 5px;" required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									<div class="form-group-inner">
														<div class="row">
                                                         <label class="col-sm-3 col-form-label"></label>
                                                           <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															   <input type="file" class="form-control"  id="form-field-1" name="gmbr">
															   <i style="float: left;font-size: 11px;color: red">Abaikan jika tidak merubah gambar</i>
														   </div>
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
					echo "<a href=produk-umkm.php>
					<button type='button' class='btn btn-primary'>Back</button>
				</a> <br><br><br>";
				?>
                              </div>
							  </div>
							  
	  </form>
										  
										  
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