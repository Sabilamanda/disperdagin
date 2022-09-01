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
<title> Halaman Edit Dokumen</title> 


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
                                    <h1>EDIT DATA DOKUMEN</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                 		  <?php
									  include "koneksi.php";
									  //mengambil id yang di klik untuk di edit
									  $id=$_GET['file_id'];
									  
									  
									  $perintah_sql="select * from file where file_id=$id";

									  $data = mysqli_query($koneksi,$perintah_sql);
									  $row=mysqli_fetch_array($data);
											
												  
									  
													$file_id=$row['file_id']; // data dapat dari database

													$file=$row['file'];
													
											  ?>
				  
                                                    <form name="update-dokumen" class="form-horizontal style-form" method="POST" action="update-dokumen.php" enctype="multipart/form-data">
                                                               
												               
															 
															   <input name="file_id" value="<?php echo "$file_id"; ?>" hidden />
															   
																
																
																 <div class="form-group row">
                                                                    <label class="col-sm-2 col-form-label">Dokumen</label>
                                                                    <div class="col-sm-10">
																		<input type="file" class="form-control" id="form-field-1" name="file">
																		 <i style="float: left;font-size: 11px;color: red">Abaikan jika tidak merubah dokumen</i>
                                                                    </div>
																	</div>
																
															
															
                                                                  </div>
																	  
																   <div class="form-group">
                              <div class="col-sm-12">
								  &nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <input type="submit" name="edit" value="Edit" class="btn btn-inverse btn-round" required>
								  <input type="reset" name="reset"value="Reset" class="btn btn-inverse btn-round">
								   <?php
					echo "<a href=dokumen.php>
					<button type='button' class='btn btn-inverse btn-round'>Back</button>
				</a> <br><br><br>";
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
            </div>
        </div>
        </body>
			</html>
			<?php
			include ('footer.php')
			?>