<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Dosen</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Data Dosen</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <!-- Main content -->
  <section class="content">
    <!-- NOTIFIKASI -->
    <?php
    if ($this->session->flashdata('flash_dosen')) { ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h6>
          <i class="icon fas fa-check"></i>
          Data Berhasil
          <strong>
            <?= $this->session->flashdata('flash_dosen');   ?>
          </strong>
        </h6>
      </div>
    <?php } ?>
    <!-- tambah data -->
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5 class="card-title">Tambah Data</h5>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-8">
                <?= validation_errors(); ?>
                <form action="<?= base_url() ?>DataDosen/validation_form" method="post" accept-charset="utf-8">
                  <div class="card-body">
                    <div class="form-group">
                      <label>NIK</label>
                      <input type="text" class="form-control" name="id_dosen">
                    </div>
                    <div class="form-group">
                      <label>Nama Dosen</label>
                      <input type="text" class="form-control" name="nama_dosen">
                    </div>
                    <div class="form-group">
                      <label>Status Dosen</label>
                      <div class="radio">
                        <label>
                          <input type="radio" name="status_dosen" value="luar" placeholder="luar" required>Dosen Luar
                        </label>
                        <label>
                          <input type="radio" name="status_dosen" value="tetap" placeholder="tetap" required>Dosen Tetap
                        </label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label>Nomor Telpon Dosen</label>
                      <input type="number" class="form-control" name="telp_dosen">
                    </div>
                    <div class="form-group">
                      <label>Email Dosen</label>
                      <input type="email" class="form-control" name="email_dosen">
                    </div>
                    <div class="form-group">
                      <label>Warna Dosen</label>
                      <input type="color" class="form-control" name="code_color">
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
    <!-- list data -->
    <div class="row">
      <div class="col-12">
        <div class="card">
          <!-- card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>NIK</th>
                  <th>Nama Dosen</th>
                  <th>Status Dosen</th>
                  <th>Nomor Telpon Dosen</th>
                  <th>Email Dosen</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $no = 1;

                foreach ($dosen as $row) { ?>
                  <tr style="background-color: <?= $row->code_color ?>;">
                    <td><?= $no ?></td>
                    <td><?= $row->id_dosen ?></td>
                    <td><?= $row->nama_dosen ?></td>
                    <td><?= $row->status_dosen ?></td>
                    <td><?= $row->no_telp ?></td>
                    <td><?= $row->email ?></td>
                    <td>
                      <div class="btn-group">
                        <a href="<?= base_url() ?>DataDosen/hapus/<?= $row->id_dosen ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                        <a href="<?= base_url() ?>DataDosen/ubah/<?= $row->id_dosen ?>" class="btn btn-warning">update</a>
                        <?php
                        foreach ($jadwal as $value) {
                          if ($value->id_dosen == $row->id_dosen) {
                        ?>
                            <a href="<?= base_url() ?>DataJadwal/pdf/<?= $row->id_dosen ?>" class="btn btn-primary" disabled>Lihat Jadwal</a>

                        <?php
                            break;
                          }
                        }
                        ?>
                      </div>
                    </td>
                  </tr>
                <?php
                  $no++;
                }
                ?>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->