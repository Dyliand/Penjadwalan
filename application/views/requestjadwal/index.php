<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Request Jadwal</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Data Request Jadwal</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <!-- Main content -->
  <section class="content">
    <!-- NOTIFIKASI -->
    <?php
    if ($this->session->flashdata('flash_requestjadwal')) { ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h6>
          <i class="icon fas fa-check"></i>
          Data Berhasil
          <strong>
            <?= $this->session->flashdata('flash_requestjadwal');   ?>
          </strong>
        </h6>
      </div>
    <?php }
    if (empty($guru)) {
      echo '<div class="alert alert-danger alert-dismissible">';
      echo '<button type="button" class="close" data-dismiss="alert";aria-hidden="true">×</button>';
      echo '<h5><i class="fas fa-times"></i> Alert!</h5>';
      echo 'Data Guru Belum Terisi';
      echo '</div>';
    }
    ?>
    <?php if (!empty($guru)) : ?>
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
                  <form action="<?= base_url() ?>DataRequestJadwal/validation_form" method="post" accept-charset="utf-8">
                    <div class="card-body">
                      <div class="form-group">
                        <label>Nama Guru</label>
                        <select class="form-control select2bs4" name="id_gur">
                          <?php
                          foreach ($guru as $gur) {
                            if (!in_array($gur->id_guru, array_column($requestjadwal, 'id_guru'))) {
                          ?>
                              <option value="<?= $gur->id_guru ?>"><?= $gur->nama_guru ?></option>
                          <?php
                            }
                          }
                          ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label>Hari</label>
                        <br>
                        <?php
                        $hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum`at', 'Sabtu'];
                        foreach ($hari as $value) { ?>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" name="chkHari[]" type="checkbox" id="<?= $value ?>" value="<?= $value ?>">
                            <label class="form-check-label" for="<?= $value ?>"><?= $value ?></label>
                          </div>
                        <?php } ?>
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
                    <th>Nama Guru</th>
                    <th>Hari</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $no = 1;
                  foreach ($requestjadwal as $row) { ?>
                    <tr>
                      <td><?= $no ?></td>
                      <td><?= $row->nama_guru ?></td>
                      <td><?= $row->hari ?></td>
                      <!-- <td><?= print_r(explode(",", $row->hari)); ?></td> -->
                      <td>
                        <div class="btn-group">
                          <a href="<?= base_url() ?>DataRequestJadwal/hapus/<?= $row->id_request ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                          <!-- <a href="<?= base_url() ?>DataRequestJadwal/ubah/<?= $row->id_request ?>" class="btn btn-warning">update</a> -->
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

    <?php endif; ?>

    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>