<?php
// include database connection file
include_once("koneksi.php");
 
// Get id from URL to delete that user
$kode_pinjam = $_GET['kode_pinjam'];
 
// Delete user row from table based on given id
$result = mysqli_query($koneksi, "DELETE FROM meminjam WHERE kode_pinjam=$kode_pinjam");
 
// After delete redirect to Home, so that latest user list will be displayed.
if($result) 
		{ 
			echo "<script>alert('Data Berhasil di Hapus');window.location='admin_pengajuan.php'</script>";
		} 
		
	else 
		{
		echo "<script>alert('Data Gagal di Hapus');window.location='admin_pengajuan.php'</script>";
		}
// header("Location:admin_pengajuan.php");
?>