<?php

/**
 * 
 */
class DataRuangan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Model_Ruangan');
        $this->load->library('form_validation');
    }

    function index()
    {
        $data['ruangan'] = $this->Model_Ruangan->getAllData();
        $this->load->view('header');
        $this->load->view('sidebar');
        $this->load->view('View_Ruangan', $data);
        $this->load->view('footer');
    }

    public function validation_form()
    {
        $this->form_validation->set_rules("id_ruang", "Kode Ruangan", "required|is_unique[ruangan.id_ruangan]|max_length[20]");
        $this->form_validation->set_rules("nm_ruangan", "Nama Jurusan", "required|is_unique[ruangan.nama_ruangan]");
        if ($this->form_validation->run() == FALSE) {
            $this->index();
        } else {
            $this->Model_Ruangan->tambah_data();
            $this->session->set_flashdata('flash_ruangan', 'Disimpan');
            redirect('DataRuangan');
        }
    }

    public function hapus($id)
    {
        $this->Model_Ruangan->hapus_data($id);
        $this->session->set_flashdata('flash_ruangan', 'Dihapus');
        redirect('DataRuangan');
    }

    public function ubah($id)
    {
        $this->form_validation->set_rules("id_ruang", "Kode Ruangan", "required|max_length[20]");
        $this->form_validation->set_rules("nm_ruangan", "Nama Ruangan", "required");
        if ($this->form_validation->run() == FALSE) {
            $data['ubah_ruangan'] = $this->Model_Ruangan->detail_data($id);
            $this->load->view('header');
            $this->load->view('sidebar');
            $this->load->view('Ubah_Ruangan', $data);
            $this->load->view('footer');
        } else {
            $this->Model_Ruangan->ubah_data();
            $this->session->set_flashdata('flash_ruangan', 'DiUbah');
            redirect('DataRuangan');
        }
    }
}
