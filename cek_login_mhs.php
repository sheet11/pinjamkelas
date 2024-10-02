<?php

session_start();
if(isset($_POST['login'])){
    $username = $_POST['username'];
    $password = $_POST['password'];

    require_once "koneksi.php";

    $query = "select * from user where username='$username' and password='$password' and level='mhs'";
    $result = mysqli_query($koneksi, $query) OR die(mysqli_error($koneksi));
    $cek = mysqli_num_rows($result);

    if ($cek > 0) {
        $data = mysqli_fetch_assoc($result);

        $_SESSION['username'] = $data['username'];
        $_SESSION['password'] = $data['password'];
        $_SESSION['level'] = $data['level'];
        $_SESSION['nama'] = $data['nama'];
        
        // var_dump($_SESSION['level']);
        
            header("location:menu_mahasiswa.php");
       
        
    }

    else{
        header("location:alert_login.php");
    }
}

else{
    header("location:alert_access.php");
}

/*
$username = $_POST['username'];
$password = $_POST['password'];

include 'koneksi.php';

$login = mysqli_query($koneksi,"select * from user where username='$username' and password='$password'");
$cek = mysqli_num_rows($login);


if($cek > 0){

    $data = mysqli_fetch_assoc($login);

    if($data['level']=="admin"){
        $_SESSION['username'] = $username;
        $_SESSION['level'] = "admin";

        header("location:admin_menu.php");
        
    }else{
        header("location:login.php?pesan-gagal");
    }

}else{
    header("location:login.php?pesan=gagal");
}
*/
?>