<?php 
// koneksi database
include 'koneksi.php';
session_start();
 
if(isset($_POST['submit'])){

// menangkap data yang di kirim dari form
$nama_peminjam = $_SESSION['nama'];
$matkul = $_POST['matkul'];
$dosen = $_POST['dosen'];
$start_date = $_POST['start_date'];
$tgl_pinjam = $_POST['tgl_pinjam'];
$end_date = $_POST['end_date'];
$status = 'Diajukan';
$jumlah_mahasiswa = $_POST['jumlah_mahasiswa'];
$color = '#28a745';
 
// menginput data ke database
$update = mysqli_query($koneksi,"INSERT into meminjam (nama_peminjam, matkul, dosen, tgl_pinjam, start_date, end_date, status, jumlah_mahasiswa, color) VALUES ('$nama_peminjam', '$matkul', '$dosen', '$tgl_pinjam', '$start_date', '$end_date', '$status', '$jumlah_mahasiswa','$color') ");
// echo var_dump($nama_peminjam,$matkul, $dosen, $start_date, $tgl_pinjam, $end_date, $status, $jumlah_mahasiswa, $color);
// mengalihkan halaman kembali ke index.php

if($update){
  
    echo 'Data berhasil di simpan! ';  //Pesan jika proses simpan sukses
    echo '<a href="peminjaman.php?">Kembali</a>'; //membuat Link untuk kembali ke halaman edit
    header("location:menu_mahasiswa.php");
   }else{
    
    echo 'Gagal menyimpan data! ';  //Pesan jika proses simpan gagal
    echo '<a href="user_peminjaman_ruangan.php">Kembali</a>'; //membuat Link untuk kembali ke halaman edit
    
   }

}
   
?>