<?php

include 'koneksi.php';

if ($_POST['rowid']) {
    $id = $_POST['rowid'];

    // mengambil data berdasarkan id
    $sql = "SELECT * FROM user WHERE id_user = $id";
    $result = $koneksi->query($sql);
    foreach ($result as $baris) { ?>
        <form action="admin_user_modal_aksi.php" method="post">
            <div class="form-group">
                <label for="nama">Nama: </label>
                <input type="text" class="form-control" id="nama" name="nama" required>
            </div>

            <div class="nama-group">
                <label for="username">Username: </label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="telpon">Telpon: </label>
                <input type="text" class="form-control" id="telpon" name="telpon" required>
            </div>

            <div class="form-group">
                <label for="password">Password: </label>
                <input type="text" class="form-control" id="password" name="password" required>
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