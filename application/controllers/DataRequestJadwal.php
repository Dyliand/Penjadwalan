<?php

/**
 * 
 */
class DataRequestJadwal extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		if (!$this->session->has_userdata('id_user')) {
			redirect('Login');
		}
		$this->load->model('RequestJadwal_Model');
		$this->load->model('Guru_Model');
		$this->load->library('form_validation');
	}
	function index()
	{
		// tampil list request jadwal
		$data = [
			'guru' => $this->Guru_Model->getAllData(),
			'requestjadwal' => $this->RequestJadwal_Model->getAllData()
		];
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('requestjadwal/index', $data);
		$this->load->view('templates/footer');
	}


	public function validation_form()
	{
		$this->RequestJadwal_Model->tambah_data();
		$this->session->set_flashdata('flash_requestjadwal', 'Disimpan');
		redirect('DataRequestJadwal');
	}

	public function hapus($id_req)
	{
		$this->RequestJadwal_Model->hapus_data($id_req);
		$this->session->set_flashdata('flash_requestjadwal', 'Dihapus');
		redirect('DataRequestJadwal');
	}

	public function ubah($id_req)
	{
		$this->form_validation->set_rules("id_req", "ID Request", "required|max_length[5]");
		$this->form_validation->set_rules("har", "chkHari", "required");
		if ($this->form_validation->run() == FALSE) {
			$data['ubah'] = $this->RequestJadwal_Model->detail_data($id_req);
			$data['guru'] = $this->Guru_Model->getAllData();
			$this->load->view('templates/header');
			$this->load->view('templates/sidebar');
			$this->load->view('requestjadwal/ubah', $data);
			$this->load->view('templates/footer');
		} else {
			$this->RequestJadwal_Model->ubah_data();
			$this->session->set_flashdata('flash_requestjadwal', 'DiUbah');
			redirect('DataRequestJadwal');
		}
	}
}
