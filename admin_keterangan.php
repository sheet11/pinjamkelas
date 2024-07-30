<?php
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
    // var_dump($ket);
    // header("Location:index.php");
    echo "<script>alert('Keterangan Berhasil di Simpan');window.location='admin_pengajuan.php'</script>";

}else 
		{
		echo "<script>alert('Keterangan Gagal di Simpan');</script>";
		} ?>

<!-- <?php 
		include "koneksi.php";
		
		$data=mysqli_query($koneksi,"update meminjam
								set keterangan = '$_POST[keterangan]',
								where kode_pinjam = '$_GET[kode_pinjam]'");
														
	if($data) 
		{ 
			echo "<script>alert('Keterangan Berhasil di Simpan');window.location='admin_pengajuan.php'</script>";
		} 
		
	else 
		{
		echo "<script>alert('Keterangan Gagal di Simpan');</script>";
		}
?>
 -->