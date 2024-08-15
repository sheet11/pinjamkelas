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
  <title>[Admin] Pengajuan | Poltekkes Kemenkes Bengkulu</title>
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
            $status = 'Batal';
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
        <div class="table-responsive">
          <table class="table table-bordered table-hover" id="pengajuan" style="width:100%">
            <thead class="text-center">

              <tr>
                <th>Nama Peminjam</th>
                <th>Mata Kuliah</th>
                <th>Dosen</th>
                <th>Nama Ruang</th>
                <th>Jam Pengajuan</th>
                <th>Waktu Pelaksanaan</th>
                <th>Waktu Selesai</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>

            <tbody>

              <?php
              include 'koneksi.php';

              $data = mysqli_query($koneksi, "select * from meminjam order by kode_pinjam desc");
              $ruan = mysqli_query($koneksi, "select * from ruangan order by nama_ruang desc");
              $r = mysqli_fetch_array($ruan);
              while ($d = mysqli_fetch_array($data)) {
              ?>
                <tr>
                  <td><?php echo $d['nama_peminjam']; ?></td>
                  <td><?php echo $d['matkul']; ?></td>
                  <td><?php echo $d['dosen']; ?></td>
                  <td><?php echo $d['nama_ruang']; ?></td>
                  <td><?php echo $d['tgl_pinjam'] ?></td>
                  <td><?php echo $d['start_date'] ?></td>
                  <td><?php echo $d['end_date']; ?></td>
                  <td><?php if ($d['status'] == 'Disetujui') {
                        echo "<span class='badge hijau'>Disetujui</span>";
                      } elseif ($d['status'] == 'Diajukan') {
                        echo "<span class='badge kuning'>Diajukan</span>";
                      } elseif ($d['status'] == 'Batal') {
                        echo "<span class='badge merah'>Batal</span>";
                        //mysqli_query($koneksi, "UPDATE ruangan SET status_pinjam='Tersedia' WHERE nama_ruang='$d[nama_ruang]'");
                      } else {
                        echo "<span class='badge biru'>Selesai</span>";
                        //mysqli_query($koneksi, "UPDATE ruangan SET status_pinjam='Tersedia' WHERE nama_ruang='$d[nama_ruang]'");
                      } ?></td>
                  <!-- <?php if ($d['status'] == 'Batal' || $d['status'] == 'Selesaikan') {
                          mysqli_query($koneksi, "UPDATE ruangan SET status_pinjam='Tersedia' WHERE nama_ruang='$d[nama_ruang]'");
                        } else {
                          echo 'asdasd';
                        } ?> -->
                  <?php
                  if ($d['status'] == 'Diajukan') {
                  ?>
                    <td><?php echo "<a href='admin_pilih_ruang.php?proses&kode_pinjam=" . $d['kode_pinjam'] . "&status=1' class='btn btn-success btn-small'>Setujui</a>"; ?>
                      <?php echo "<a href='admin_pengajuan.php?proses&kode_pinjam=" . $d['kode_pinjam'] . "&status=3' class='btn btn-warning btn-small' style='color: black;'>Tolak</a>"; ?>
                      <?php echo "<a href='admin_edit_pengajuan.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-primary btn-small'>Edit</a>"; ?>
                      <?php echo "<a href='delete.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-danger btn-small'>Hapus</a>"; ?></td>
                  <?php
                  } elseif ($d['status'] == 'Disetujui') {
                  ?>
                    <td><?php echo "<a href='admin_pengajuan.php?proses&kode_pinjam=" . $d['kode_pinjam'] . "&status=2&nama_ruang=" . $d['nama_ruang'] . "' class='btn btn-primary btn-small'>Selesaikan<br></a>"; ?>
                      <?php echo "<a href='admin_pengajuan.php?proses&kode_pinjam=" . $d['kode_pinjam'] . "&status=3&nama_ruang=" . $d['nama_ruang'] . "' class='btn btn-warning btn-small' style='color: black;'>Batalkan</a>"; ?>
                      <?php echo "<a href='admin_edit_pengajuan.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-primary btn-small'>Edit</a>"; ?>
                      <?php echo "<a href='delete.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-danger btn-small'>Hapus</a>"; ?></td>
                  <?php
                  } elseif ($d['status'] == 'Selesai') {
                  ?>
                    <td><?php echo "<a href='delete.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-danger btn-small'>Hapus</a>"; ?>
                      <?php echo "<a href='admin_edit_pengajuan.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-primary btn-small'>Edit</a>"; ?></td>
                  <?php
                  } else {
                  ?>
                    <td><?php echo "<a href='admin_edit_keterangan.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-warning btn-small' style='color: black;'>Alasan Batal</a>"; ?>
                      <?php echo "<a href='admin_edit_pengajuan.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-primary btn-small'>Edit</a>"; ?>
                      <?php echo "<a href='delete.php?kode_pinjam=" . $d['kode_pinjam'] . "' class='btn btn-danger btn-small'>Hapus</a>"; ?></td>
                  <?php
                  }

                  ?>
                </tr>
              <?php
              }
              ?>
            </tbody>
          </table>
          <script type="text/javascript">
            $(document).ready(function() {
              $('#pengajuan').DataTable();
            });
          </script>
        </div>
      </div>
      <div class="col-sm-1"></div>
    </div>

    <div class="row content">
      <div class="col-md-3"></div>
      <div class="col-md-6 text-center"><a target="_blank" href="export_excel.php" class="btn btn-success">EXPORT KE EXCEL</a></div>
      <div class="col-md-3"></div>
    </div>
  </div>

  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Edit Ruangan</h4>
        </div>

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
</style>

<!-- <i class='fa fa-print fa-sm'></i> -->