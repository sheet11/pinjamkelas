<?php
// include database connection file
include_once("koneksi.php");

// Check if form is submitted for user update, then redirect to homepage after update
if (isset($_POST['update'])) {
    $kode = $_POST['kode_pinjam'];

    $nama = $_POST['nama'];
    $matkul = $_POST['matkul'];
    $ruang = $_POST['ruang'];
    $dosen = $_POST['dosen'];
    $status = 'Disetujui';
    $status_pinjam = 'Sedang di pinjam';

    // $data = [$nama, $instansi, $ruang, $mulai, $selesai];
    // update user data
    $result = mysqli_query($koneksi, "UPDATE meminjam SET nama_ruang='$ruang', status='$status' WHERE kode_pinjam='$kode'");
    $result = mysqli_query($koneksi, "UPDATE ruangan SET status_pinjam='$status_pinjam' WHERE nama_ruang='$ruang'");

    // Redirect to homepage to display updated user in list
    // var_dump($data);
    // header("Location:index.php");
    echo "<script>alert('Pemilihan Ruang Berhasil di Simpan');window.location='admin_pengajuan.php'</script>";
} else {
    echo "<script>alert('Pemilihan Ruang Gagal di Simpan');</script>";
}
