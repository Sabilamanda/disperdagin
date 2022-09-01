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
include ('header2.php');
?>       
	<html>
<body>
<title> Halaman Edit IKM </title>


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
                                    <h1>EDIT DATA IKM</h1>
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
				  
				  
				  $perintah_sql="select * from ikm where id_ikm=$id";

				  $data = mysqli_query($koneksi,$perintah_sql);
				  $row=mysqli_fetch_array($data);
						
				 			  
				  
								  $id_ikm=$row['id_ikm']; // diketik user dikasih disini
								  $nama_toko=$row['nama_toko'];
								  $nama_pemilik=$row['nama_pemilik'];
								  $alamat=$row['alamat'];
								  $kecamatan=$row['kecamatan'];
								  $jns_usaha=$row['jns_usaha'];
				  
				  
				  ?>
				  	
	  <form name="update-ikm" class="form-horizontal style-form" method="post" action="update-ikm.php" enctype="multipart/form-data">
                           <form class="form-horizontal" role="form">
									
									<input name="id_ikm" value="<?php echo "$id_ikm"; ?>" hidden />								
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama Usaha</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$nama_toko";?>" class="form-control" name="nama_toko"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama Pemilik</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$nama_pemilik";?>" class="form-control" name="nama_pemilik"  required/>
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
                                                                <label class="login2 pull-right pull-right-pro">Kecamatan</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$kecamatan";?>" class="form-control" name="kecamatan"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Jenis Usaha</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" value="<?php echo "$jns_usaha";?>" class="form-control" name="jns_usaha"  required/>
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
					echo "<a href=ikm.php>
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
								include ('footer.php');
								?>