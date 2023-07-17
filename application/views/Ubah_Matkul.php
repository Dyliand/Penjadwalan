<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1> Ubah Data Matkul</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item">Data Matkul</li>
                        <li class="breadcrumb-item active">Ubah Data Matkul</li>
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
                                            <label for="exampleInputEmail1">ID Matkul</label>
                                            <input type="text" class="form-control disabled" name="id_mat" value="<?= $ubah['id_matkul'] ?>" readonly>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Kode Matkul</label>
                                            <input type="text" class="form-control" name="kd_mat" value="<?= $ubah['kode_matkul'] ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Nama Matkul</label>
                                            <input type="text" class="form-control" name="nm_mat" value="<?= $ubah['nama_matkul'] ?>">
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Jumlah SKS</label>
                                            <input type="text" class="form-control" name="sks" value="<?= $ubah['sks'] ?>">
                                        </div>

                                        <div class="form-group">
                                            <label>Jurusan</label>
                                            <select class="form-control" name="id_jur">
                                                <?php
                                                foreach ($jurusan as $jur) {
                                                    $selected = '';
                                                    if ($ubah['id_jurusan'] == $jur->id_jurusan) {
                                                        $selected = 'selected';
                                                    } ?>
                                                    <option value="<?= $jur->id_jurusan ?>" <?= $selected ?>><?= $jur->nama_jurusan ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Semester Matkul</label>
                                            <select class="form-control" name="semester_matkul">
                                                <?php

                                                $sem_matkul = ['1', '2', '3', '4', '5', '6', '7', '8'];
                                                foreach ($sem_matkul as $sem_matkul) {
                                                    $selected = '';
                                                    if ($ubah['semester_matkul'] == $sem_matkul) {
                                                        $selected = 'selected';
                                                    } ?>
                                                    <option value="<?= $sem_matkul ?>" <?= $selected ?>><?= $sem_matkul ?></option>
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