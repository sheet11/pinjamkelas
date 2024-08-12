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
    $mulai = $_POST['mulai'];
    $selesai = $_POST['selesai'];
    $status = 'Disetujui';
    $jumlah = $_POST['jumlah'];

    // $data = [$nama, $instansi, $ruang, $mulai, $selesai];
    // update user data
    $result = mysqli_query($koneksi, "UPDATE meminjam SET nama_peminjam='$nama', matkul='$matkul', nama_ruang='$ruang', dosen='$dosen', start_date='$mulai', end_date='$selesai', status='$status', jumlah_mahasiswa='$jumlah' WHERE kode_pinjam='$kode'");

    // Redirect to homepage to display updated user in list
    // var_dump($data);
    // header("Location:index.php");
    echo "<script>alert('Pemilihan Ruang Berhasil di Simpan');window.location='admin_pengajuan.php'</script>";
} else {
    echo "<script>alert('Pemilihan Ruang Gagal di Simpan');</script>";
}
