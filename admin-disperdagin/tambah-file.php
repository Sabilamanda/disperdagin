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
<title> Halaman Tambah Dokumen</title> 

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
                                    <h1>TAMBAH DATA DOKUMEN</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="card-block">


                               <form name="save-file" class="form-horizontal style-form" method="post" action="save-file.php" enctype="multipart/form-data" >

             
																
															    <div class="form-group row">
                                                                    <label class="col-sm-2 col-form-label">Dokumen</label>
                                                                    <div class="col-sm-10">
                                                                        <input type="file" id="form-field-1" class="form-control" name="file" required/>
                                                                    </div>
                                                                </div>
                     


																   <div class="form-group">
                              <div class="col-sm-12">
                                &nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  
								  
								  <input type="submit" name="tambah" value="Tambah" class="btn btn-custon-two btn-danger" required>
								  <input type="reset" name="reset"value="Reset" class="btn btn-custon-two btn-danger">
								   <?php
					echo "<a href=dokumen.php>
					<button type='button' class='btn btn-custon-two btn-danger'>Back</button>
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
        </div>
        </body>
			</html>
			<?php
			include ('footer.php')
			?>