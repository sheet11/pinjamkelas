<?php

include 'koneksi.php';

if ($_POST['rowid']) {
    $id = $_POST['rowid'];

    // mengambil data berdasarkan id
    $sql = "SELECT * FROM meminjam WHERE kode_pinjam = $id";
    $result = $koneksi->query($sql);
    foreach ($result as $baris) { ?>
        <form action="admin_edit_modal_aksi.php" method="post">
            <div class="form-group">
                <label for="ruangan">Nama Ruang: </label>
                <input type="text" class="form-control" id="nama_ruang" name="nama_ruang" value="<?php echo $baris['nama_ruang']; ?>" required>
                <input type="hidden" id="kode_pinjam" name="kode_pinjam" value="<?php echo $baris['kode_pinjam']; ?>">
            </div>

            <div class="form-group">
                <label>Nama Ruangan</label>
                <select name="ruang" class="form-control">
                    <option value="">----PILIH----</option>
                    <?php
                    $data_ruang = mysqli_query($koneksi, "SELECT * FROM ruangan");
                    while ($ruang = mysqli_fetch_array($data_ruang)) { ?>
                        <option value="<?= $ruang['nama_ruang']; ?>"><?= $ruang['nama_ruang']; ?>, status = <?php echo $ruang['status_pinjam']; ?> </option>
                    <?php } ?>
                </select>
            </div>

            <!--<div class="form-group">
                <label for="ruangan">Status: </label>             
			    <input type="text" class="form-control" id="status" name="status" value="<?php echo $baris['status']; ?>" required> 
            </div>-->

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