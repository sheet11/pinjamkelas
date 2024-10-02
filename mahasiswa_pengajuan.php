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
  <title>Pengajuan | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="css/bootstrap-datetimepicker.css" />
  <link href="./style.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>


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
      if (isset($_GET['pengajuan'])) {
        $kp = $_GET['kode_pinjam'];
        $sr = $_GET['nama_ruang'];
        $st = 'Selesai';
        $sp = 'Tersedia';

        mysqli_query($koneksi, "UPDATE meminjam set nama_ruang='$sr', status='$st' where kode_pinjam='$kp'");
        mysqli_query($koneksi, "UPDATE ruangan set status_pinjam='$sp' where nama_ruang='$sr'");
      ?>
        <script type="text/javascript">
          alert('Peminjaman telah diperbarui menjadi : <?= $status; ?>');
          header("location:mahasiswa_pengajuan.php");
        </script>
      <?php } ?>
      <?php 
        include "koneksi.php";
        $nama = $_SESSION['nama'];
        $dat = mysqli_query($koneksi, "SELECT * FROM meminjam WHERE nama_peminjam='$nama' AND (status='Diajukan' OR status='Disetujui')");
        $r = mysqli_fetch_array($dat);

        if ($r == null) { ?>
        <!-- <?php var_dump($r) ?> -->
        <div class="text-center" style="margin-top: 155px;">
            <h3 class="">Peminjaman sudah selesai atau peminjaman di tolak, silahkan cek pengajuan sebelumnya di riwayat peminjaman </h3>
            <a href="./riwayat_peminjaman.php"><button class="btn btn-primary">Riwayat peminjaman</button></a>
        </div>
        <div class="text-center">
            <h3 class="text-center">Jika peminjaman belum di ajukan silahkan ajukan terlebih dahulu </h3>
            <a href="./user_peminjaman_ruangan.php"><button class="btn btn-primary">Peminjaman</button></a>
        </div>
          
        <?php } else { ?>
    </div>
    <br><br>
    <div class="row content">
      <div class="col-sm-1"></div>
      <div class="col-sm-10">
        <div class="table-responsive">
          <table class="table" style="width:100%">

            <?php
            include 'koneksi.php';
            $nama = $_SESSION['nama'];
            $data = mysqli_query($koneksi, "SELECT * FROM meminjam WHERE nama_peminjam='$nama' AND (status='Diajukan' || status='Disetujui')");
            while ($d = mysqli_fetch_array($data)) { ?>
              <tr>
                <th>Nama Peminjam</th>
                <td>: <?php echo $d['nama_peminjam']; ?></td>
              </tr>

              <tr>
                <th>Mata Kuliah</th>
                <td>: <?php echo $d['matkul']; ?></td>
              </tr>
              <tr>
                <th>Dosen</th>
                <td>: <?php echo $d['dosen']; ?></td>
              </tr>
              <tr>
                <th>Waktu Pelaksanaan</th>
                <td>: <?php echo $d['start_date'] ?></td>
              </tr>
              <tr>
                <th>Waktu Selesai</th>
                <td>: <?php echo $d['end_date']; ?></td>
              </tr>
              <tr>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th>Ruang yang di Acc</th>
                <td></td>
              </tr>
              <tr>
                <th>Nama Ruang</th>
                <td>: <?php echo $d['nama_ruang']; ?></td>
              </tr>
              <tr>
                <th>Status</th>
                <td>: <?php if ($d['status'] == 'Disetujui') {
                        echo "<span class='badge hijau'>Disetujui</span>";
                      } elseif ($d['status'] == 'Diajukan') {
                        echo "<span class='badge kuning'>Diajukan</span>";
                      } elseif ($d['status'] == 'Batal') {
                        echo "<span class='badge merah'>Batal</span>";
                      } else {
                        echo "<span class='badge biru'>Selesai</span>";
                      } ?></td>
              </tr>
              <?php if ($d['nama_ruang'] == !null) { ?>
                <tr>
                  <th><a href="mahasiswa_pengajuan.php?pengajuan&kode_pinjam=<?php echo $d['kode_pinjam'] ?>&nama_ruang=<?php echo $d['nama_ruang'] ?>"><button onclick="return confirm('Anda yakin ingin menyelesaikan peminjaman?');" class="btn btn-success"> Selesaikan </button></a></th>
                </tr>                
              <?php }else{} ?>
            <?php } ?>
            <tbody>
            </tbody>
          </table>
          <!-- <script type="text/javascript">
      $(document).ready(function () {
    $('#pengajuan').DataTable();
});
    </script> -->
        </div>
      </div>
      <div class="col-sm-1"></div>
    </div>
    <?php } ?>                 
    <!-- <div class="row content">
      <div class="col-md-3"></div>
      <div class="col-md-6 text-center"><a target="_blank" href="export_excel.php" class="btn btn-success">EXPORT KE EXCEL</a></div>
      <div class="col-md-3"></div>
    </div> -->
  </div>
</body>

</html>

<script>
  // function tombol() {
  //   let text = 'Apakah anda yakin ingin menyelesaikan peminjaman?';
  //   if (confirm(text) == true){
  //     text = '';
  //   }else{
  //     text = '';
  //   }
  //   document.getElementById("demo").innerHTML = text;
  // }
</script>

<style type="text/css">
  .but {
    border-spacing: 5px;
    margin-top: 5px;
    padding-right: 24.5px;
  }

  th {
    width: 20%;
  }

  .thead {
    background-color: white;
  }

  table {
    border-collapse: collapse;
    background-color: white;
  }

  .but {
    border-spacing: 5px;
    margin-top: 5px;
    padding-right: 24.5px;
  }

  .merah {
    background-color: red;
  }

  .biru {
    background-color: blue;
  }

  .kuning {
    background-color: orange;
  }

  .hijau {
    background-color: green;
  }

  .btn {
    border-radius: 4px;
  }
</style>