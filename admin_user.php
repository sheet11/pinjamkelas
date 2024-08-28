<?php
session_start();

include "koneksi.php";
if (empty($_SESSION['username'] && $_SESSION['password'])) {
  header("location:cek_login.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>[Admin] User | Poltekkes Kemenkes Bengkulu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="./style.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./fonts/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./fonts/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap.min.js"></script>
  <script>
    (function($, window) {
      'use strict';

      var MultiModal = function(element) {
        this.$element = $(element);
        this.modalCount = 0;
      };

      MultiModal.BASE_ZINDEX = 1040;

      MultiModal.prototype.show = function(target) {
        var that = this;
        var $target = $(target);
        var modalIndex = that.modalCount++;

        $target.css('z-index', MultiModal.BASE_ZINDEX + (modalIndex * 20) + 10);

        window.setTimeout(function() {

          if (modalIndex > 0)
            $('.modal-backdrop').not(':first').addClass('hidden');

          that.adjustBackdrop();
        });
      };

      MultiModal.prototype.hidden = function(target) {
        this.modalCount--;

        if (this.modalCount) {
          this.adjustBackdrop();

          $('body').addClass('modal-open');
        }
      };

      MultiModal.prototype.adjustBackdrop = function() {
        var modalIndex = this.modalCount - 1;
        $('.modal-backdrop:first').css('z-index', MultiModal.BASE_ZINDEX + (modalIndex * 20));
      };

      function Plugin(method, target) {
        return this.each(function() {
          var $this = $(this);
          var data = $this.data('multi-modal-plugin');

          if (!data)
            $this.data('multi-modal-plugin', (data = new MultiModal(this)));

          if (method)
            data[method](target);
        });
      }

      $.fn.multiModal = Plugin;
      $.fn.multiModal.Constructor = MultiModal;

      $(document).on('show.bs.modal', function(e) {
        $(document).multiModal('show', e.target);
      });

      $(document).on('hidden.bs.modal', function(e) {
        $(document).multiModal('hidden', e.target);
      });
    }(jQuery, window));
  </script>

</head>

<body>
  <nav class="navbar">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class="active"><a href="./admin_menu.php">Menu Admin</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./logout.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container-fluid">
    <div class="row content">
      <div class="col-sm-2 text-center backtop">
        <br><br><br><br>
        <a href="./admin_menu.php"><button class="btn backbutton1"><span class="glyphicon glyphicon-menu-left"></span> Kembali</button></a>
      </div>
      <?php
      if (isset($_GET['proses'])) {
        $kp = $_GET['kode_pinjam'];
        $st = $_GET['status'];
        $nr = $_GET['nama_ruang'];

        switch ($st) {
          case '1':
            $status = 'Disetujui';
            $color = '#FF0000';
            $sp = 'Sedang di pinjam';
            break;
          case '2':
            $status = 'Selesai';
            $color = '#0000FF';
            $sp = 'Tersedia';
            $sr = '';
            break;
          case '3':
            $status = 'ditolak';
            $color = '#000';
            $sp = 'Tersedia';
            $sr = '';
            break;
        }

        mysqli_query($koneksi, "UPDATE meminjam set nama_ruang='$sr', status='$status',color='$color' where kode_pinjam='$kp'");
        mysqli_query($koneksi, "UPDATE ruangan set status_pinjam='$sp' where nama_ruang='$nr'");

      ?>
        <script type="text/javascript">
          alert('Peminjaman telah diperbarui menjadi : <?= $status; ?>');
          header("location:admin_pengajuan.php");
        </script>
      <?php
      }
      ?>
    </div>
    <br>
    <br>
    <div class="row content">
      <div class="col-sm-1"></div>
      <div class="col-sm-10">
      <a href='#buatModal' id='custId' data-toggle='modal'><button class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Tambah data</button></a>
        <div class="table-responsive">
          <table class="table table-bordered table-hover" id="pengajuan">
            <thead class="text-center">

              <tr>
                <th>Nama</th>
                <th>Nomor Telepon</th>
                <th>Username</th>
                <th>Password</th>
                <th>Aksi</th>
              </tr>
            </thead>

            <tbody>

              <?php
              include 'koneksi.php';

              $data = mysqli_query($koneksi, "select * from user where level='mhs'");
              while ($d = mysqli_fetch_array($data)) {
              ?>
                <tr>
                  <td><?php echo $d['nama']; ?></td>
                  <td><?php echo $d['telepon']; ?></td>
                  <td><?php echo $d['username']; ?></td>
                  <td><?php echo $d['password']; ?></td>                  
            </tbody>
          </table>
          <script type="text/javascript">
             $(document).ready(function () {
    $('#pengajuan').DataTable();
});
          </script>
        </div>
      </div>
      <div class="col-sm-1"></div>
    </div>
    <?php } ?>
    <div class="row content">
      <div class="col-md-3"></div>
      <div class="col-md-6 text-center"><a target="_blank" href="export_excel.php" class="btn btn-success">EXPORT KE EXCEL</a></div>
      <div class="col-md-3"></div>
    </div>
  </div>

  <div class="modal fade" id="buatModal" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Tambah User</h4>
        </div>        
        <form action="admin_user_modal_aksi.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nama">Nama: </label>
                <input type="text" class="form-control" id="nama" name="nama" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="username">Username: </label>
                <input type="text" class="form-control" id="username" name="username" required autocomplete="off">
            </div>

            <div class="form-group">
                <label for="telpon">Telpon: </label>
                <input type="text" class="form-control" id="telpon" name="telpon" required autocomplete="off">
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
        <div class="modal-body">
          <div class="fetched-data"></div>
        </div>
        <div class="modal-footer modalfoot">
          <button type="button" class="btn btndec container2" data-dismiss="modal">Keluar</button>
        </div>
      </div>
    </div>
  </div>




  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#myModal').on('show.bs.modal', function(e) {
        var rowid = $(e.relatedTarget).data('id');
        //menggunakan fungsi ajax untuk pengambilan data
        $.ajax({
          type: 'post',
          url: 'admin_edit_modal.php',
          data: 'rowid=' + rowid,
          success: function(data) {
            $('.fetched-data').html(data); //menampilkan data ke dalam modal
          }
        });
      });
    });
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>

</html>

<style type="text/css">
  .but {
    border-spacing: 5px;
    margin-top: 5px;
    padding-right: 24.5px;
  }

  .merah {
    background-color: red;
  }

  .biru {
    background-color: blue;
  }

  .kuning {
    background-color: orange;
  }

  .hijau {
    background-color: green;
  }

  .btn {
    border-radius: 4px;
  }

  .container2 {
        width: 100px;
        height: 5rem;
        margin: 20px auto;
        max-width: calc(100% - 20px);
        padding: 10px;
    }
</style>

<!-- <i class='fa fa-print fa-sm'></i> -->