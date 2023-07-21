<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * 
 */
class DataDosen extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model('Model_Dosen');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['dosen'] = $this->Model_Dosen->getAllData();
		$this->load->view('header');
		$this->load->view('sidebar');
		$this->load->view('View_Dosen', $data);
		$this->load->view('footer');
	}

	public function validation_form()
	{
		$this->form_validation->set_rules("id_dosen", "Kode Dosen", "required|is_unique[dosen.id_dosen]|max_length[5]");
		$this->form_validation->set_rules("nama_dosen", "Nama Dosen", "required");
		$this->form_validation->set_rules("status_dosen", "Status Dosen", "required");
		$this->form_validation->set_rules("telp_dosen", "Nomor Telpon Dosen", "required");
		$this->form_validation->set_rules("email_dosen", "Email Dosen", "required");
		$this->form_validation->set_rules("code_color", "code color", "required");
		if ($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			$this->Model_Dosen->tambah_data();
			$this->session->set_flashdata('flash_dosen', 'Disimpan');
			redirect('DataDosen');
		}
	}

	public function hapus($id)
	{
		$this->Model_Dosen->hapus_data($id);
		$this->session->set_flashdata('flash_dosen', 'Dihapus');
		redirect('DataDosen');
	}

	public function ubah($id)
	{
		$this->form_validation->set_rules("id_dosen", "Kode Dosen", "required|max_length[5]");
		$this->form_validation->set_rules("nama_dosen", "Nama Dosen", "required");
		$this->form_validation->set_rules("status_dosen", "Status Dosen", "required");
		$this->form_validation->set_rules("telp_dosen", "Nomor Telpon Dosen", "required");
		$this->form_validation->set_rules("email_dosen", "Email Dosen", "required");
		$this->form_validation->set_rules("code_color", "code color", "required");
		if ($this->form_validation->run() == FALSE) {
			$data['ubah'] = $this->Model_Dosen->detail_data($id);
			$this->load->view('header');
			$this->load->view('sidebar');
			$this->load->view('Ubah_Dosen', $data);
			$this->load->view('footer');
		} else {
			$this->Model_Dosen->ubah_data();
			$this->session->set_flashdata('flash_dosen', 'DiUbah');
			redirect('DataDosen');
		}
	}

	public function pdf()
	{
		$data['dosen'] = $this->Model_Dosen->getAllData();
		$this->load->library('pdfgenerator');
		$html = $this->load->view('Laporan_Dosen', $data, true);
		$this->pdfgenerator->generate($html, 'tes');
	}
}
