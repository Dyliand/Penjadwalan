<aside class="main-sidebar sidebar-dark-primary elevation-4">

    <body class="hold-transition skin-blue sidebar-mini">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="pull-left image">
                    <img src="<?php echo base_url('assets/images/logoitda.jpg') ?>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>ADMIN</p>
                </div>
            </div>
            <!-- search form -->

            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->


            <!-- /.sidebar -->
            <nav class="mt-2">
                <ul class="sidebar-menu" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview menu-open">
                        <a href="<?= base_url('homme') ?>" class="nav-link active">
                            <i class="nav-icon fas fa-th"></i>
                            <span><b>Dashboard</b></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url() ?>DataJurusan" class="nav-link">
                            <i class="fa fa-files-o"></i>
                            <span>Data Jurusan</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url() ?>DataRuangan" class="nav-link">
                            <i class="fa fa-th"></i> <span>Data Ruangan</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="<?= base_url() ?>DataMatkul" class="nav-link">
                            <i class="fa fa-pie-chart"></i>
                            <span>Data Mata Kuliah</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="fas fa-user"></i>
                            <p> Dosen <i class="right fas fa-angle-left"></i></p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?= base_url() ?>DataDosen" class="nav-link ml-3">
                                    <i class="fas fa-user-tie"></i>
                                    <p>
                                        Data Dosen
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() ?>DataPenugasanDosen" class="nav-link ml-3">
                                    <i class="fas fa-chalkboard-teacher"></i>
                                    <p>Dosen Pengampu</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= base_url() ?>DataRequestJadwal" class="nav-link ml-3">
                                    <i class="fas fa-table"></i>
                                    <p>
                                        Request Jadwal
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fa fa-pie-chart"></i>
                            <span>SKS</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#">
                            <i class="fa fa-pie-chart"></i>
                            <span>Penjadwalan</span>
                        </a>
                        <div class="control-sidebar-bg"></div>
                    </li>
            </nav>
        </section>
    </body>
</aside>