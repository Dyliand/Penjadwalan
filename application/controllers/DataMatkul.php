<?php

/**
 * 
 */
class DataMatkul extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Model_Matkul');
        $this->load->model('Model_Jurusan');
        $this->load->library('form_validation');
    }
    function index()
    {
        // tampil list mapel
        $data['matkul'] = $this->Model_Matkul->getAllData();
        // untuk dropdown
        $data['jurusan'] = $this->Model_Jurusan->getAllData();

        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('View_Matkul', $data);
        $this->load->view('footer');
    }


    public function validation_form()
    {
        $this->Model_Matkul->tambah_data();
        $this->session->set_flashdata('flash_matkul', 'Disimpan');
        redirect('DataMatkul');
    }

    public function hapus($id_mat)
    {
        $this->Model_Matkul->hapus_data($id_mat);
        $this->session->set_flashdata('flash_matkul', 'Dihapus');
        redirect('DataMatkul');
    }

    public function ubah($id_mat)
    {
        // $this->form_validation->set_rules("id_mat", "ID Matkul", "required|max_length[5]");
        $this->form_validation->set_rules("nm_mat", "Nama Matkul", "required");
        $this->form_validation->set_rules("sks", "Jumlah SKS", "required");
        $this->form_validation->set_rules("id_jur", "Jurusan", "required");
        if ($this->form_validation->run() == FALSE) {
            $data['ubah'] = $this->Model_Matkul->detail_data($id_mat);
            $data['jurusan'] = $this->Model_Jurusan->getAllData();
            $this->load->view('header');
            $this->load->view('sidebar');
            $this->load->view('Ubah_Matkul', $data);
            $this->load->view('footer');
        } else {
            $this->Model_Matkul->ubah_data();
            $this->session->set_flashdata('flash_matkul', 'DiUbah');
            redirect('DataMatkul');
        }
    }
}
