<!-- <?php
// include database connection file
include_once("koneksi.php");
 
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['update']))
{	
    $kode = $_POST['kode_pinjam'];
    
    $nama=$_POST['nama'];
    $instansi=$_POST['instansi'];
    $ruang=$_POST['ruang'];
    $ket=$_POST['keterangan'];
        
    // update user data
    $result = mysqli_query($koneksi, "UPDATE meminjam SET keterangan='$ket', instansi_peminjam='$instansi', nama_ruang='$ruang' WHERE kode_pinjam=$kode");
    
    // Redirect to homepage to display updated user in list
    var_dump($ket);

} ?> -->

<?php
// Display selected user data based on id
// Getting id from url
$kode = $_GET['kode_pinjam'];
 
// Fetech user data based on id
$data = mysqli_query($koneksi, "SELECT * FROM meminjam WHERE kode_pinjam=$kode");
 
while($user_data = mysqli_fetch_array($data))
{
    $nama = $user_data['nama_peminjam'];
    $instansi = $user_data['instansi_peminjam'];
    $ruang = $user_data['nama_ruang'];
    $kegiatan = $user_data['nama_kegiatan'];
    $ket = $user_data['keterangan'];
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pengajuan | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="css/bootstrap-datetimepicker.css" />
  <link href="./style.css" type="text/css" rel="stylesheet">
 
<style>
    
</style>
</head>

<body>
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Menu Utama</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="kontak.html">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 text-center backtop">
        <br><br><br><br>
        <a href="./admin_pengajuan.php"><button class="btn backbutton1"><span class="glyphicon glyphicon-menu-left"></span> Kembali</button></a>
    </div>
    <div class="col-sm-8 text-center">
        <br><br><br><br>
        <h2>Form Edit Keterangan Batal Pengajuan Peminjaman Ruangan</h2><br>
        <h3>Poltekkes Kemenkes Bengkulu</h3><br><br>
    </div>
    <div class="col-sm-2">
    </div>
  </div>
</div>

<div class="col-md-12 daftar">
  <div class="col-sm-3"></div>
	<div class="col-md-6 form">
		<form method="post" action="admin_keterangan.php">
			<input type="hidden" name="kode_pinjam" value="<?php echo $_GET['kode_pinjam']; ?>">

            <div class="form-group">
		    	<label>Nama Peminjam</label>
                <input type="text" class="form-control" placeholder="Masukkan Nama Peminjam" value="<?php echo $nama; ?>" name="nama" readonly required autocomplete="off" >
            </div>


            <div class="form-group">
          <label>Nama Instansi</label>
          <input type="text" class="form-control" placeholder="Masukkan Nama Instansi" readonly value="<?php echo $instansi; ?>" name="instansi" required autocomplete="off">
        </div>

			<div class="form-group">
		    	<label>Nama Ruangan</label>
                <input type="text" class="form-control" readonly name="ruang"  value="<?php echo $ruang; ?>">
			</div>

            <div class="form-group">
		    	<label>Nama Kegiatan</label>
		    	<input type="text" class="form-control" placeholder="Masukkan Nama Kegiatan" value="<?php echo $kegiatan; ?>" name="kegiatan" readonly required autocomplete="off">
		  	</div>

		  	<div class="form-group">
		    	<label>Keterangan</label>
		    	<div class='input-group date' id='datetimepicker2'>
		    		<textarea type="text" placeholder="Keterangan" name="keterangan" class="form-control" value="<?php echo $ket; ?>"></textarea>  
                    <span class="input-group-addon calicon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>    
		  	</div>

            <br>
            
              <input type="submit" value="Update" name="update" class="btn btnacc">
            
            <br><br>
		</form>
	</div>
  <div class="col-sm-3"></div>
</div>
<br><br>


</body>
</html>

<!-- <html>
<head>	
    <title>Edit User Data</title>
</head>
 
<body>
    <a href="index.php">Home</a>
    <br/><br/>
    
    <form name="update_user" method="post" action="admin_Keterangan.php">
        <table border="0">
            <tr> 
                <td>Nama Peminjam</td>
                <td><input type="text" name="nama" value=<?php echo $nama;?>></td>
            </tr>
            <tr> 
                <td>Instansi</td>
                <td><input type="text" name="instansi" value=<?php echo $instansi;?>></td>
            </tr>
            <tr>
                <td>Ruang</td>
                <td><input type="text" name="ruang" value=<?php echo $ruang;?>></td>
            </tr>
            <tr>
            	<td>Keterangan</td>
            	<td><textarea type="text" placeholder="Keterangan" name="keterangan" class="form-control" value="<?php echo $ket; ?>"></textarea>
            		</td>
            </tr>
            <tr>
                <td><input type="hidden" name="kode_pinjam" value=<?php echo $_GET['kode_pinjam'];?>></td>
                <td><input type="submit" name="update" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
</html>
 -->