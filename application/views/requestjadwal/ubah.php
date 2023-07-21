Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1> Ubah Data Request Jadwal</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Dashboard</li>
            <li class="breadcrumb-item">Data Request Jadwal</li>
            <li class="breadcrumb-item active">Ubah Data Request Jadwal</li>
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
                      <label for="exampleInputEmail1">ID Request Jadwal</label>
                      <input type="text" class="form-control disabled" name="id_req" value="<?= $ubah['id_request'] ?>" readonly>
                    </div>

                    <div class="form-group">
                      <label>Nama Guru</label>
                      <select class="form-control" name="id_gur">
                        <?php 
                        foreach ($guru as $gur) { ?>
                          <option value="<?= $gur->id_guru?>"><?= $gur->nama_guru ?></option>
                        <?php } ?>
                      </select>
                    </div>  

                    <div class="form-group">
                      <label>Mapel</label>
                      <select class="form-control" name="id_map">
                        <?php 
                        foreach ($mapel as $map) { ?>
                          <option value="<?= $map->id_mapel?>"><?= $map->nama_mapel ?></option>
                        <?php } ?>
                      </select>
                    </div> 

                    <div class="form-group">
                    <label>Hari</label>
                    <select class="form-control" name="har">
                      <option value="">-----Pilih -----</option>
                      <option value="senin">Senin</option>
                      <option value="selasa">Selasa</option>
                      <option value="rabu">Rabu</option>
                      <option value="kamis">Kamis</option>
                      <option value="jumat">Jumat</option>
                      <option value="sabtu">Sabtu</option>
                      <option value="minggu">Minggu</option>
                    </select>
                    </div>

                    <div class="form-group">
                      <label>Jam</label>
                      <select class="form-control" name="id_jm">
                        <?php 
                        foreach ($range_jam as $jam) { ?>
                          <option value="<?= $jam->id_jam?>"><?= $jam->jam_ke ?></option>
                        <?php } ?>
                      </select>
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