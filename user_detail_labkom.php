

<!DOCTYPE html>
<html lang="en">
<head>
  <title>List Jadwal | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="./style.css" type="text/css" rel="stylesheet"> 
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap.min.css">
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
        <li class="active"><a href="./index.php">Menu Utama</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 text-center backtop">
        <br><br><br><br>
        <a href="./index.php"><button class="btn backbutton1"><span class="glyphicon glyphicon-menu-left"></span> Kembali</button></a>
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
                <!-- <th>Jam Pengajuan</th> -->
                <th>Waktu Pelaksanaan</th>
                <th>Waktu Selesai</th>
                <th>Status</th>
                <th>Juml Mhs</th>
                <th>Ket</th>
              </tr>
            </thead>

          <tbody>

    <?php 
		include 'koneksi.php';
    
		$data = mysqli_query($koneksi,"select * from meminjam where id_ruang='101' order by start_date desc");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $d['nama_peminjam']; ?></td>
        <td><?php echo $d['instansi_peminjam']; ?></td>
				<td><?php echo $d['nama_ruang']; ?></td>
        <td><?php echo $d['nama_kegiatan']; ?></td>
        <!-- <td><?php echo $d['tgl_pinjam'] ?></td> -->
        <td><?php echo $d['start_date'] ?></td>
				<td><?php echo $d['end_date']; ?></td>
        <td>
          <?php if($d['status'] == 'Disetujui'){
            echo "<span class='badge hijau'>Disetujui</span>";
          }elseif ($d['status'] == 'Diajukan') {
            echo "<span class='badge kuning'>Diajukan</span>";
          }elseif ($d['status'] == 'Batal') {
            echo "<span class='badge merah'>Batal</span>";
          }else{
            echo "<span class='badge biru'>Selesai</span>";
          } ?>
          </td>
        <td><?php echo $d['jumlah_mahasiswa']; ?></td>
        <td><?php echo $d['keterangan']; ?></td>		
			</tr>
			<?php 
		}
	?>
    </tbody>
    </table>
    <script type="text/javascript">
      $(document).ready(function () {
    $('#pengajuan').DataTable();
    "ordering": false
});
    </script>
    </div>
    </div>
    <div class="col-sm-1"></div>
</div>

  <div class="row content">
    <div class="col-md-3"></div>
      <div class="col-md-6 text-center"><a target="_blank" class="btn btn-success">Unit Teknologi Informasi Poltekkes Kemenkes Bengkulu</a></div>
    <div class="col-md-3"></div>  
  </div>
</div>
</body>
</html>

<style type="text/css">
.merah{
  background-color: red;
}
.biru{
  background-color: blue;
}
.kuning{
  background-color: orange;
}
.hijau{
  background-color: green;
}

</style>