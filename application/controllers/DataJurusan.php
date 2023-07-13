<?php

/**
 * 
 */
class DataJurusan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->has_userdata('id_user')) {
            redirect('Login');
        }
        $this->load->model('Model_Jurusan');
        $this->load->library('form_validation');
    }

    function index()
    {
        $data['jurusan'] = $this->Model_Jurusan->getAllData();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('footer');
        $this->load->view('View_Jurusan', $data);
    }

    public function validation_form()
    {
        $this->form_validation->set_rules("id_jur", "Kode Jurusan", "required|is_unique[jurusan.id_jurusan]|max_length[20]");
        $this->form_validation->set_rules("nm_jur", "Nama Jurusan", "required|is_unique[jurusan.nama_jurusan]");
        if ($this->form_validation->run() == FALSE) {
            $this->index();
        } else {
            $this->Model_Jurusan->tambah_data();
            $this->session->set_flashdata('flash_jurusan', 'Disimpan');
            redirect('DataJurusan');
        }
    }

    public function hapus($id)
    {
        $this->Model_Jurusan->hapus_data($id);
        $this->session->set_flashdata('flash_jurusan', 'Dihapus');
        redirect('DataJurusan');
    }

    public function ubah($id)
    {
        $this->form_validation->set_rules("id_jur", "Kode Jurusan", "required|max_length[20]");
        $this->form_validation->set_rules("nm_jur", "Nama Jurusan", "required");
        if ($this->form_validation->run() == FALSE) {
            $data['ubah'] = $this->Jurusan_Model->detail_data($id);
            $this->load->view('sidebar');
            $this->load->view('Ubah_Jurusan', $data);
        } else {
            $this->Model_Jurusan->ubah_data();
            $this->session->set_flashdata('flash_jurusan', 'DiUbah');
            redirect('DataJurusan');
        }
    }
}
