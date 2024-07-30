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
    $kegiatan=$_POST['kegiatan'];
    $mulai=$_POST['mulai'];
    $selesai=$_POST['selesai'];
    $status=$_POST['status'];
    $jumlah=$_POST['jumlah'];
        
        // $data = [$nama, $instansi, $ruang, $mulai, $selesai];
    // update user data
    $result = mysqli_query($koneksi, "UPDATE meminjam SET nama_peminjam='$nama', instansi_peminjam='$instansi', nama_ruang='$ruang', nama_kegiatan='$kegiatan', start_date='$mulai', end_date='$selesai', status='$status', jumlah_mahasiswa='$jumlah' WHERE kode_pinjam='$kode'");
    
    // Redirect to homepage to display updated user in list
    // var_dump($data);
    // header("Location:index.php");
    echo "<script>alert('Edit Berhasil di Simpan');window.location='admin_pengajuan.php'</script>";

}else 
		{
		echo "<script>alert('Edit Gagal di Simpan');</script>";
} ?>


