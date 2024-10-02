<?php
// koneksi database
include 'koneksi.php';


if (isset($_POST['submit'])) {


    // menangkap data yang di kirim dari form
    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $telp = $_POST['telpon'];
    $pass = $_POST['password'];
    $lvl = 'mhs';

    // update data ke database
    $update = mysqli_query($koneksi, "INSERT INTO user (nama,username,telepon,password,level) VALUES ('$nama','$username','$telp','$pass','$lvl') ") or die(mysqli_error($koneksi));
}
header("location:admin_user.php");
