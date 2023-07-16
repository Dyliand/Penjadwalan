<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
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

        <ul class="sidebar-menu" data-widget="tree">

            <li>
                <a href="<?= base_url('home') ?>" class="nav-link active">
                    <span>Dashboard</span>
                </a>

            </li>
            <li>
                <a href="<?= base_url('DataJurusan') ?>">
                    <i class="fa fa-files-o"></i>
                    <span>Data Jurusan</span>
                </a>
            </li>
            <li>
                <a href="<?= base_url('DataRuangan') ?>">
                    <i class="fa fa-th"></i> <span>Data Ruangan</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>Data Mata Kuliah</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>Semester</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>Data Dosen</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i>Data Dosen</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i>Dosen Pengampu</a></li>
                    <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i>Request Jadwal DOsen</a></li>
                </ul>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>SKS</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>Penjadwalan</span>
                </a>
                <div class="control-sidebar-bg"></div>
            </li>
    </section>
</aside>