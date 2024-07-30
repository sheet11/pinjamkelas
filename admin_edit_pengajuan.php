
<!-- <?php 
		include 'koneksi.php';

	$data=mysqli_query($koneksi,"select * from meminjam where kode_pinjam='$_GET[kode_pinjam]'");
	$a=mysqli_fetch_array($data);	
?>
 -->
<?php
// Display selected user data based on id
// Getting id from url
$kode = $_GET['kode_pinjam'];
 
// Fetech user data based on id
$data = mysqli_query($koneksi, "SELECT * FROM meminjam WHERE kode_pinjam=$kode");
 
while($a = mysqli_fetch_array($data))
{
    $nama = $a['nama_peminjam'];
    $instansi = $a['instansi_peminjam'];
    $ruang = $a['nama_ruang'];
    $kegiatan = $a['nama_kegiatan'];
    $mulai = $a['start_date'];
    $selesai = $a['end_date'];
    $status = $a['status'];
    $jumlah = $a['jumlah_mahasiswa'];
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
 
  <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker({locale: 'id'});
                $('#datetimepicker2').datetimepicker({
                    locale: 'id',
                    useCurrent: false //Important! See issue #1075
                });
                $("#datetimepicker1").on("dp.change", function (e) {
                    $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
                });
                $("#datetimepicker2").on("dp.change", function (e) {
                    $('#datetimepicker1').data("DateTimePicker").maxDate(e.date);
                });
            });
  </script>

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
        <h2>Form Edit Pengajuan Peminjaman Ruangan</h2><br>
        <h3>Poltekkes Kemenkes Bengkulu</h3><br><br>
    </div>
    <div class="col-sm-2">
    </div>
  </div>
</div>

<div class="col-md-12 daftar">
  <div class="col-sm-3"></div>
	<div class="col-md-6 form">
		<form method="post" action="admin_prosespinjam.php">
			<input type="hidden" name="kode_pinjam" value="<?php echo $_GET['kode_pinjam']; ?>">

            <div class="form-group">
		    	<label>Nama Peminjam</label>
                <input type="text" class="form-control" placeholder="Masukkan Nama Peminjam" value="<?php echo $nama; ?>" name="nama" required autocomplete="off" >
            </div>


            <div class="form-group">
          <label>Nama Instansi</label>
          <input type="text" class="form-control" placeholder="Masukkan Nama Instansi" value="<?php echo $instansi; ?>" name="instansi" required autocomplete="off">
        </div>

			<div class="form-group">
		    	<label>Nama Ruangan</label>
                <input type="text" class="form-control" readonly name="ruang"  value="<?php echo $ruang; ?>">
			</div>

            <div class="form-group">
		    	<label>Nama Kegiatan</label>
		    	<input type="text" class="form-control" placeholder="Masukkan Nama Kegiatan" value="<?php echo $kegiatan; ?>" name="kegiatan" required autocomplete="off">
		  	</div>


            <div class="form-group">
		    	<label>Waktu Mulai Meminjam</label>
		    	<div class='input-group date' id='datetimepicker1'>
                    <input type='text' placeholder="Tentukan Tanggal dan Jam Mulai Kegiatan" value="<?php echo $mulai; ?>" name="mulai" class="form-control" autocomplete="off" onkeydown="event.preventDefault()"/>
                    <span class="input-group-addon calicon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>


            <div class="form-group">
		    	<label>Waktu Selesai Meminjam</label>
		    	<div class='input-group date' id='datetimepicker2'>
                    <input type='text' placeholder="Tentukan Tanggal dan Jam Selesai Kegiatan" value="<?php echo $selesai; ?>" name="selesai" class="form-control" autocomplete="off" onkeydown="event.preventDefault()"/>
                    <span class="input-group-addon calicon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>    
		  	</div>

            <div class="form-group">
                <label>Jumlah Mahasiswa</label>
                <input type="text" class="form-control" placeholder="Masukkan Nama Instansi" value="<?php echo $jumlah; ?>" name="jumlah" required autocomplete="off">
            </div>

          
            <div class="form-group">
                <label>Status Peminjaman</label>
                <div class='input-group'>
                    <select class="form-control" name="status">
                        <option>---Pilih---</option>
                        <option <?php if ($status == 'Disetujui') { echo 'selected'; }?> value="Disetujui">Disetujui</option>
                        <option <?php if ($status == 'Diajukan') { echo 'selected'; }?> value="Diajukan">Diajukan</option>
                        <option <?php if ($status == 'Batal') { echo 'selected'; }?> value="Batal">Batal</option>
                        <option <?php if ($status == 'Selesai') { echo 'selected'; }?> value="Selesai">Selesai</option>
                    </select>
                </div>    
            </div>

            <br>
            
              <input type="submit" value="Update" name="update" class="btn btnacc">
            
            <br><br>
		</form>
	</div>
  <div class="col-sm-3"></div>
</div>

<br>
<br>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript" src="js/moment.js"></script>
        <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
        <script type="text/javascript">
            $(function () {
                $('.date').datetimepicker({
                    format: 'YYYY-MM-DD HH:mm'
                });
            });
        </script>

</body>
</html>


<!-- <aside class="right-side">
    <section class="content-header">
    	<div class="container-fluid" style="margin:10px;">
			<form method="post" name="edit_pengajuan" action="admin_prosespinjam.php" enctype="multipart/form-data">	
				<table width="100%" border="0" class="table table-hover">
					<input type="hidden" name="kode_pinjam" value="<?php echo $_GET['kode_pinjam']; ?>">
					
					<tr>
						<td class="info" colspan="3"><b>Edit Peminjaman</b></td> 
					</tr>

					<tr>
						<td>Nama Mahasiswa</td>
					</tr>
					<tr> 
						<td><input type="text" placeholder="Nama Peminjam" name="nama" required="yes" class="form-control" value="<?php echo $nama; ?>"></td>
					</tr>
					
					<tr>
						<td>instansi_peminjam</td>
					</tr>
					<tr> 
						<td><input type="text" placeholder="instansi peminjam" name="instansi" class="form-control" value="<?php echo $instansi; ?>"></td> 
					</tr>


					<tr>
						<td>nama_ruang</td>
					</tr>
					<tr>
						<td><input type="text" placeholder="nama ruang" name="ruang" class="form-control" value="<?php echo $ruang; ?>"></td> 
					</tr>


					<div class="form-group">
		    	<tr><td><label>Waktu Mulai Meminjam</label></td></tr>
		    	<div class='input-group date' id='datetimepicker1'>
                    <td><input type='text' placeholder="Tentukan Tanggal dan Jam Mulai Kegiatan" name="mulai" class="form-control" autocomplete="off" value="<?= $mulai ?>" onkeydown="event.preventDefault()"/>
                    <span class="input-group-addon calicon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    </td>
                </div>
            </div>


            <div class="form-group">
		    	<tr><td>Waktu Selesai Meminjam</td></tr>
		    	<div class='input-group date' id='datetimepicker2'>
		    		<td>
                    <input type='text' placeholder="Tentukan Tanggal dan Jam Selesai Kegiatan" name="selesai" class="form-control" autocomplete="off" value="<?= $selesai ?>" onkeydown="event.preventDefault()"/>
                    <span class="input-group-addon calicon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    </td>
                </div>    
		  	</div>

					<tr>
						<td><input type="submit" name="update" value="Update" class="btn btn-danger">
							<input type="reset" name="submit" value="Hapus" class="btn btn-success"></td>
					</tr>
				</table>
			</form>
		</div>
	</section>
</aside> -->
