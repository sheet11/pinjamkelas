<?php 
  session_start();

  include "koneksi.php";
  if (empty($_SESSION['username'] && $_SESSION['password'])) {
    header("location:cek_login.php");
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>[Admin] Pengajuan | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="./style.css" type="text/css" rel="stylesheet"> 
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./fonts/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./fonts/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap.min.js"></script>
    
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
        <li class="active"><a href="./menu_mahasiswa.php">Menu Mahasiswa</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./logout.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 text-center backtop">
        <br><br><br><br>
        <a href="./menu_mahasiswa.php"><button class="btn backbutton1"><span class="glyphicon glyphicon-menu-left"></span> Kembali</button></a>
    </div>
    <?php 
    if(isset($_GET['proses'])){
      $kp=$_GET['kode_pinjam'];
      $st=$_GET['status'];

      switch ($st) {
        case '1':
          $status='Disetujui';
          $color='#FF0000';
          break;
        case '2':
          $status='Selesai';
          $color='#0000FF';
          break;
        case '3':
          $status='Batal';
          $color='#000';
          break;
      }

      mysqli_query($koneksi,"UPDATE meminjam set status='$status',color='$color' where kode_pinjam='$kp'");
      ?>
      <script type="text/javascript">
        alert('Peminjaman telah diperbarui menjadi : <?=$status;?>');
        header("location:admin_pengajuan.php");
      </script>
      <?php
    }
    ?>
  </div>


  <div class="row content">
    <div class="col-sm-1"></div>
      <div class="col-sm-10">
        <div class="table-responsive">
          <table class="table table-bordered table-hover" id="pengajuan" style="width:100%">
            <thead class="text-center">

              <tr>
                <th>Nama Peminjam</th>
                <th>Instansi</th>
                <th>Nama Ruang</th>
                <th>Kegiatan</th>
                <th>Jam Pengajuan</th>
                <th>Waktu Pelaksanaan</th>
                <th>Waktu Selesai</th>
                <th>Status</th>
              </tr>
            </thead>

    <tbody>

    <?php 
		include 'koneksi.php';
    
		$data = mysqli_query($koneksi,"select * from meminjam order by kode_pinjam desc");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $d['nama_peminjam']; ?></td>
        <td><?php echo $d['instansi_peminjam']; ?></td>
				<td><?php echo $d['nama_ruang']; ?></td>
        <td><?php echo $d['nama_kegiatan']; ?></td>
        <td><?php echo $d['tgl_pinjam'] ?></td>
        <td><?php echo $d['start_date'] ?></td>
				<td><?php echo $d['end_date']; ?></td>
        <td><?php echo $d['status']; ?></td>
			</tr>
    <?php } ?>
    </tbody>
    </table>
    <script type="text/javascript">
      $(document).ready(function () {
    $('#pengajuan').DataTable();
});
    </script>
    </div>
    </div>
    <div class="col-sm-1"></div>
</div>

  <div class="row content">
    <div class="col-md-3"></div>
      <div class="col-md-6 text-center"><a target="_blank" href="export_excel.php" class="btn btn-success">EXPORT KE EXCEL</a></div>
    <div class="col-md-3"></div>  
  </div>
</div>
</body>
</html>

<style type="text/css">
.but{
  border-spacing: 5px;
  margin-top: 5px;
  padding-right: 24.5px;
}
</style>
