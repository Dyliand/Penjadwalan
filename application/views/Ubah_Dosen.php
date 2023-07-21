<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1> Ubah Data Guru</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Dashboard</li>
            <li class="breadcrumb-item">Data Dosen</li>
            <li class="breadcrumb-item active">Ubah Data Dosen</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <!-- Main content -->
  <section class="content">
    <!-- tambah data -->
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5 class="card-title">Ubah Data</h5>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-8">
                <?= validation_errors(); ?>
                <form action="" method="post" accept-charset="utf-8">
                  <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">NIK</label>
                      <input type="text" class="form-control disabled" name="id_dosen" value="<?= $ubah['id_dosen'] ?>" readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Nama Dosen</label>
                      <input type="text" class="form-control" name="nama_dosen" value="<?= $ubah['nama_dosen'] ?>">
                    </div>
                    <div class="form-group">
                      <label>Status Dosen</label>
                      <div class="radio">
                        <?php
                        if ($ubah['status_dosen'] == "luar") {
                          $checked1 = "checked";
                          $checked2 = "";
                        } else {
                          $checked1 = "";
                          $checked2 = "checked";
                        }
                        ?>
                        <label>
                          <input type="radio" name="status_dosen" value="honorer" <?php echo $checked1; ?> required>Dosen Luar
                        </label>
                        <label>
                          <input type="radio" name="status_dosen" value="tetap" <?php echo $checked2; ?> required>Dosen Tetap
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Nomor Telpon Dosen</label>
                      <input type="number" class="form-control" name="telp_dosen" value="<?= $ubah['no_telp'] ?>">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Email Dosen</label>
                      <input type="email" class="form-control" name="email_dosen" value="<?= $ubah['email'] ?>">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Kode Warna</label>
                      <input type="color" class="form-control" name="code_color" value="<?= $ubah['code_color'] ?>">
                    </div>

                    <input type="submit" name="save" class="btn btn-primary" value="Save">
                  </div>
                  <!-- /.card-body -->
                </form>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- ./card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper