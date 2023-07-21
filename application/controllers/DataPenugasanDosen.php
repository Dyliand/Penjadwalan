<?php

/**
 * 
 */
class DataPenugasanDosen extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		$this->load->model('Model_Penugasan');
		$this->load->model('Model_Dosen');
		$this->load->model('Model_Matkul');
		$this->load->model('Model_Ruangan');
		$this->load->model('Model_Jurusan');
		$this->load->library('form_validation');
	}
	function index()
	{
		// tampil list penugasan guru
		$data['tugas_dosen'] = $this->Model_Penugasan->getAllData();
		$data['listDosen'] = $this->Model_Dosen->getAllData();
		$data['listMatkul'] = $this->Model_Penugasan->listDataMatkulyangKosong();
		$data['semester_matkul'] = $this->Model_Matkul->getAllData();
		$data['ruangan'] = $this->Model_Ruangan->getAllData();
		$data['jurusan'] = $this->Model_Jurusan->getAllData();
		$this->load->view('header');
		$this->load->view('sidebar');
		$this->load->view('View_Penugasan', $data);
		$this->load->view('footer');
	}

	public function getDataDosen()
	{
		$data = $this->Model_Penugasan->dataSemesterByKodeMatkul($this->input->post('kode_matkul'));
		// echo json_encode($data);
		$html = '<form action="' . base_url('DataPenugasanDosen/tambah') . '" method="POST">';
		$html .= '<input type="hidden" value="' . count($data) . '" name="jml_data">';
		foreach ($data as $value) {
			$html .= '<div class="form-group">';
			$html .= '<label for="exampleFormControlInput1">' . $value->semester_matkul . ' ' . $value->id_jurusan . ' ' . $value->nama_ruangan . '</label>';
			if ($value->id_guru == null) {
				$html .= '<input type="text" value="' . $value->id_ruangan . '" name="id_kelas[]">';
				$html .= '<input type="text" value="' . $value->id_matkul . '" name="id_mapel[]">';
				$html .= '<input type="text" value="' . $value->semester_matkul . '" name="semester_matkul[]">';
				$html .= '<input type="text" value="' . $value->kode_matkul . '" name="kode_matkul[]">';
			}
			// $html .= '<select name="guru[]" class="form-control" disabled >';
			$html .= ($value->id_dosen == null) ? '<select name="dosen[]" class="form-control">' : '<select name="dosen[]" class="form-control" disabled >';
			$html .= ($value->id_dosen != null) ? '<option selected="selected">Pilih Dosen</option>' : '';
			if ($value->id_dosen == null) {
				$html .= '<option selected="selected">Pilih Guru</option>';
				foreach ($this->Model_Dosen->getAllData() as $datalistDosen) :
					$selected = ($value->id_dosen == $datalistDosen->id_dosen) ? '' : 'selected';
					$html .= '<option value="' . $datalistDosen->id_dosen . '"' . $selected . ' >' . $datalistDosen->nama_dosen . '</option>';
				endforeach;
			} else {
				# code...
			}
			$html .= '</select>';
			$html .= '</div>';
		}
		$html .= '<input type="submit" class="btn btn-success" value="Simpan">';
		$html .= '</form>';
		echo $html;
	}

	function tampilan_tambah($kode_matkul)
	{
		// tampil list penugasan guru
		$data['kodeMatkul'] = $kode_matkul;
		$data['dataMatkul'] = $this->Model_Penugasan->dataSemesterByKodeMatkul($kode_matkul);
		$data['dosen'] = $this->Model_Dosen->getAllData();
		$data['nama_matkul'] = $this->Model_Matkul->getMatkulbyKodeMatkul($kode_matkul);
		$this->load->view('header');
		$this->load->view('sidebar');
		$this->load->view('tambah_data', $data);
		$this->load->view('footer');
	}

	public function tambah()
	{
		$this->Model_Penugasan->tambah_data();
		$this->session->set_flashdata('flash_penugasandosen', 'Disimpan');
		redirect('DataPenugasanDosen');
	}

	// public function validation_form()
	// {
	// 	$this->PenugasanGuru_Model->tambah_data();
	// 	$this->session->set_flashdata('flash_penugasanguru', 'Disimpan');
	// 	redirect('DataPenugasanGuru/tampilan_tambah');
	// }

	public function hapus()
	{
		$this->Model_Penugasan->hapus_data($this->input->post('id_tugas'));
	}

	public function ubah($id_pen)
	{
		$this->form_validation->set_rules("id_pen", "ID Penugasan Dosen", "required|max_length[5]");
		$this->form_validation->set_rules("id_dosen", "Nama Dosen", "required");
		$this->form_validation->set_rules("id_matkul", "Matkul", "required");
		if ($this->form_validation->run() == FALSE) {
			$data['ubah'] = $this->Model_Penugasan->detail_data($id_pen);
			$data['dosen'] = $this->Model_Dosen->getAllData();
			$data['matkul'] = $this->Model_Matkul->getAllData();
			$data['ruangan'] = $this->Model_Ruangan->getAllData();
			$this->load->view('header');
			$this->load->view('sidebar');
			$this->load->view('View_UbahPenugasan', $data);
			$this->load->view('footer');
		} else {
			$this->Model_Penugasan->ubah_data();
			$this->session->set_flashdata('flash_penugasandosen', 'DiUbah');
			redirect('DataPenugasanDosen');
		}
	}
}
