<?php 
  session_start();
  include "koneksi.php";
  if (empty($_SESSION['username'] && $_SESSION['password'])) {
    header("location:cek_login_mhs.php");
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>[Mahasiswa] Menu | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="./style.css" type="text/css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>
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
        <li class="active"><a href="menu_mahasiswa.php">Menu Mahasiswa</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./logout.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>





<div class="container-fluid text-center">
	<br><br><br><br>
	<h2>Menu Mahasiswa Peminjaman Kelas</h2><br>
	<h3>Poltekkes Kemenkes Bengkulu</h3><br><br>

  <a href="user_peminjaman_ruangan.php" class="btn btn-lg"><span class="badge"></span><br><span class="glyphicon glyphicon-tower"></span><br>Peminjaman</a>
  <a href="./mahasiswa_pengajuan.php" class="btn btn-lg"><span class="badge"></span><br><span class="glyphicon glyphicon-folder-open"></span><br>Pengajuan</a>
  <a href="riwayat_peminjaman.php" class="btn btn-lg"><span class="badge"></span><br><span class="glyphicon glyphicon-calendar"></span><br>Riwayat Peminjaman</a>
</div>
</body>
</html>