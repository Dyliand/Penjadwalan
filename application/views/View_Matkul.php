<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Mata Kuliah</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                        <li class="breadcrumb-item active">Data Matkul</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>


    <!-- Main content -->
    <section class="content">
        <!-- NOTIFIKASI -->
        <?php
        if ($this->session->flashdata('flash_matkul')) { ?>
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6>
                    <i class="icon fas fa-check"></i>
                    Data Berhasil
                    <strong>
                        <?= $this->session->flashdata('flash_matkul');   ?>
                    </strong>
                </h6>
            </div>
        <?php } ?>
        <!-- tambah data -->
        <?php
        if (empty($jurusan)) {
            echo '<div class="alert alert-danger alert-dismissible">';
            echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';
            echo '<h5><i class="fas fa-times"></i> Alert!</h5>';
            echo 'data Jurusan Belum Terisi';
            echo '</div>';
        }
        ?>
        <?php if (!empty($jurusan)) : ?>
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
                                    <form action="<?= base_url() ?>DataMatkul/validation_form" method="post" accept-charset="utf-8">
                                        <div class="card-body">

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Kode Matkul</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1" name="kd_mat">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Nama Matkul</label>
                                                <input type="text" class="form-control" id="exampleInputPassword1" name="nm_mat">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Jumlah SKS</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1" name="sks">
                                            </div>

                                            <div class="form-group">
                                                <label>Jurusan</label>

                                                <br>
                                                <?php
                                                foreach ($jurusan as $jur) { ?>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" name="chkJurusan[]" type="checkbox" id="<?= $jur->id_jurusan ?>" value="<?= $jur->id_jurusan ?>">
                                                        <label class="form-check-label" for="<?= $jur->id_jurusan ?>"><?= $jur->nama_jurusan  ?></label>
                                                    </div>
                                                <?php } ?>

                                                <!-- <select class="form-control" name="id_jur">
                          <?php
                            foreach ($jurusan as $jur) { ?>
                            <option value="<?= $jur->id_jurusan ?>"><?= $jur->nama_jurusan ?></option>
                          <?php } ?>
                        </select> -->
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Semester Matkul</label>
                                                <select class="form-control" name="kelompok_mapel">
                                                    <option value="A">1 </option>
                                                    <option value="B">2 </option>
                                                    <option value="C">3</option>
                                                    <option value="D">4 </option>
                                                    <option value="A">5 </option>
                                                    <option value="B">6</option>
                                                    <option value="C">7</option>
                                                    <option value="D">8 </option>
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
                                        <th>Kode Matkul</th>
                                        <th>Nama Matkul</th>
                                        <th>Jumlah SKS</th>
                                        <th>Jurusan</th>
                                        <th>Semester Matkul</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($matkul as $row) { ?>
                                        <tr>
                                            <td><?= $no ?></td>
                                            <td><?= $row->kode_matkul ?></td>
                                            <td><?= $row->nama_matkul ?></td>
                                            <td><?= $row->sks ?></td>
                                            <td><?= $row->id_jurusan ?></td>
                                            <td><?= $row->semester_matkul ?></td>
                                            <td>
                                                <div class="btn-group">
                                                    <a href="<?= base_url() ?>DataMatkul/hapus/<?= $row->id_matkul ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                                                    <a href="<?= base_url() ?>DataMatkul/ubah/<?= $row->id_matkul ?>" class="btn btn-warning">update</a>
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