<?php session_start() ?>
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

  <script type="text/javascript">
    $(function() {
      $('#datetimepicker1').datetimepicker({
        locale: 'id'
      });
      $('#datetimepicker2').datetimepicker({
        locale: 'id',
        useCurrent: false //Important! See issue #1075
      });
      $("#datetimepicker1").on("dp.change", function(e) {
        $('#datetimepicker2').data("DateTimePicker").minDate(e.date);
      });
      $("#datetimepicker2").on("dp.change", function(e) {
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
        <a href="./menu_mahasiswa.php"><button class="btn backbutton1"><span class="glyphicon glyphicon-menu-left"></span> Kembali</button></a>
      </div>
      <div class="col-sm-8 text-center">
        <br><br><br><br>
        <h2>Form Pengajuan Peminjaman Kelas</h2><br>
        <h3>Poltekkes Kemenkes Bengkulu</h3><br><br>
      </div>
      <div class="col-sm-2">
      </div>
    </div>
  </div>

  <?php
  include "koneksi.php";
  $nama = $_SESSION['nama'];
  $data = mysqli_query($koneksi, "SELECT * FROM meminjam WHERE nama_peminjam='$nama' AND status='Diajukan' OR status='Disetujui'");
  $d = mysqli_fetch_array($data);

  if ($d = null) { ?>
    <div class="text-center">
      <h3 class="text-center">Peminjaman sudah di ajukan silahkan cek menu pengajuan </h3>
      <a href="./mahasiswa_pengajuan.php"><button class="btn btn-primary">Pengajuan</button></a>
    </div>
  <?php } else {
    // echo $d['status']; ?>
    <div class="col-md-12 daftar">
      <div class="col-sm-3"></div>
      <div class="col-md-6 form">
        <form method="post" action="user_peminjaman_aksi.php">

          <div class="form-group">
            <label>Nama Peminjam</label>
            <input type="text" value="<?php echo $_SESSION['nama']; ?>" class="form-control" placeholder="Masukkan Nama Peminjam" name="nama_peminjam" required autocomplete="off" disabled>
          </div>
          <div class="form-group">
            <label>Mata Kuliah</label>
            <input type="text" class="form-control" placeholder="Masukkan Nama Mata Kuliah" name="matkul" required autocomplete="off">
          </div>
          <div class="form-group">
            <label>Nama Dosen</label>
            <input type="text" class="form-control" placeholder="Masukkan Nama Dosen" name="dosen" required autocomplete="off">
          </div>

          <!-- <div class="form-group">
		    <label>Nama Dosen</label>      
        <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker form-control" name="dosen">
        <option value="">---Pilih Dosen---</option>
        <?php include "koneksi.php";
        $query = mysqli_query($koneksi, "SELECT * FROM dosen ");
        while ($row = mysqli_fetch_array($query)) {
          echo "<option value='$row[nama_dosen]'>$row[nama_dosen]</option>";
        } ?></select>
        </div>   -->

          <input type="hidden" name="tgl_pinjam" value="<?php
                                                        date_default_timezone_set("Asia/Jakarta");
                                                        echo date("d-m-Y H:i"); ?>" />
          <!-- echo date_default_timezone_get();  -->
          <div class="form-group">
            <label>Waktu Mulai Meminjam</label>
            <div class='input-group date' id='datetimepicker1'>
              <input type='datetime-local' placeholder="Tentukan Tanggal dan Jam Mulai Kegiatan" name="start_date" class="form-control" autocomplete="off" onkeydown="event.preventDefault()" />
              <span class="input-group-addon calicon">
                <span class="glyphicon glyphicon-calendar"></span>
              </span>
            </div>
          </div>
          <div class="form-group">
            <label>Waktu Selesai Meminjam</label>
            <div class='input-group date' id='datetimepicker2'>
              <input type='datetime-local' placeholder="Tentukan Tanggal dan Jam Selesai Kegiatan" name="end_date" class="form-control" autocomplete="off" onkeydown="event.preventDefault()" />
              <span class="input-group-addon calicon">
                <span class="glyphicon glyphicon-calendar"></span>
              </span>
            </div>
          </div>

          <div class="form-group">
            <div class="input-group">
              <label>Jumlah Mahasiswa</label>
              <input type="number" class="form-control" placeholder="Jumlah Mahasiswa" name="jumlah_mahasiswa" required autocomplete="off">
              <span class="input-group-addon">
                <span>Mahasiswa</span>
              </span>
            </div>
          </div>
          <br>
          <input type="submit" value="AJUKAN" name="submit" class="btn btnacc">
          <br><br>
        </form>
      </div>
      <div class="col-sm-3"></div>
    </div>
    <br><br>
  <?php } ?>

</body>

</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript">
  $(function() {
    $('.date').datetimepicker({
      format: 'YYYY-MM-DD HH:mm'
    });
  });
</script>
<style>
  /* Chrome, Safari, Edge, Opera */
  input::-webkit-outer-spin-button,
  input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
  }

  /* Firefox */
  input[type=number] {
    -moz-appearance: textfield;
  }

  .inputnum {
    padding-top: -12px;
  }
</style>