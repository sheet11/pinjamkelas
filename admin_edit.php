<?php

include 'koneksi.php';

if ($_POST['rowid']) {
    $id = $_POST['rowid'];

    // mengambil data berdasarkan id
    $sql = "SELECT * FROM ruangan WHERE id_ruang = $id";
    $result = $koneksi->query($sql);
    foreach ($result as $baris) { ?>
        <form action="admin_edit_aksi.php" method="post">
            <div class="form-group">
                <label for="ruangan">Nama Ruang: </label>
                <input type="text" class="form-control" id="nama_ruang" name="nama_ruang" value="<?php echo $baris['nama_ruang']; ?>" required>
                <input type="hidden" id="id_ruang" name="id_ruang" value="<?php echo $baris['id_ruang']; ?>">
            </div>

            <div class="form-group">
                <label for="ruangan">Gedung: </label>
                <input type="text" class="form-control" id="gedung" name="gedung" value="<?php echo $baris['gedung']; ?>" required>
            </div>

            <div class="form-group">
                <label for="ruangan">Lantai: </label>
                <input type="text" class="form-control" id="lantai" name="lantai" value="<?php echo $baris['lantai']; ?>" required>
            </div>

            <div class="form-group">
                <label for="ruangan">Status: </label>
                <select name="status" id="status" class="form-control">
                    <option disabled selected value value="">Pilih Status</option>
                    <option <?php if ($status == 'Tersedia') {
                                echo 'selected';
                            } ?> value="Tersedia">Tersedia</option>
                    <option <?php if ($status == 'Sedang di pinjam') {
                                echo 'selected';
                            } ?> value="Sedang di pinjam">Sedang di pinjam</option>
                </select>

            </div>

            <button class="btn btnact container2" id="submit" name="submit" type="submit">Update</button><br>

        </form>

<?php

    }
}
$koneksi->close();
?>

<style>
    .container2 {
        width: 100px;
        height: 5rem;
        margin: 20px auto;
        max-width: calc(100% - 20px);
        padding: 10px;
    }
</style>