<?php

/**
 * 
 */
class Model_Dosen extends CI_Model
{
	public function getAllData()
	{
		return $this->db->get('dosen')->result();
	}

	public function tambah_data()
	{
		$data = array(
			'id_dosen' => $this->input->post('id_dosen'),
			'nama_dosen' => $this->input->post('nama_dosen'),
			'status_dosen' => $this->input->post('status_dosen'),
			'no_telp' => $this->input->post('telp_dosen'),
			'email' => $this->input->post('email_dosen', true),
			'code_color' => $this->input->post('code_color', true)
		);

		$this->db->insert('dosen', $data);
	}

	public function ubah_data()
	{
		$data = array(
			'nama_dosen' => $this->input->post('nama_dosen', true),
			'status_dosen' => $this->input->post('status_dosen', true),
			'no_telp' => $this->input->post('telp_dosen', true),
			'email' => $this->input->post('email_dosen', true),
			'code_color' => $this->input->post('code_color', true)
		);
		$this->db->where('id_dosen', $this->input->post('id_dosen', true));
		$this->db->update('dosen', $data);
	}

	public function hapus_data($id)
	{
		$this->db->delete('dosen', ['id_dosen' => $id]);
	}

	public function detail_data($id)
	{
		return $this->db->get_where('dosen', ['id_dosen' => $id])->row_array();
	}

	/* 
		* mendapatkan data dosen yang melakukan request
		*/
	public function getDataDosenJoinRequest()
	{
		return $this->db->query("SELECT dosen.id_dosen, dosen.nama_dosen, request_jadwal.id_request, request_jadwal.hari FROM dosen left join request_jadwal on dosen.id_dosen = request_jadwal.id_dosen")->result();
	}

	/* 
		* mendapatkan data kelas berdasarkan id dosen
		*/
	public function getDataDosenJoinKelas($id_dosen)
	{
		$query = $this->db->query("SELECT id_kelas from tugas_dosen where id_dosen ='$id_dosen' GROUP BY id_kelas")->result();
		$data = [];
		foreach ($query as $value) {
			$data[] = $value->id_kelas;
		}
		return $data;
	}

	/* 
		* beban kerja dosen berdasarkan id_dosen
		*/
	public function getDataBebanKerja($id_dosen)
	{
		$query =  $this->db->query("SELECT SUM(sisa_jam) as beban FROM `tugas_dosen` where id_dosen ='$id_dosen'")->row()->beban;
		return ($query) ? $query : 0;
	}

	/* 
		* total ketersediaan pada hari
		*/
	public function ketersediaanJam($kelas, $hari)
	{
		$query = "SELECT COUNT(id_penjadwalan) as total FROM `penjadwalan` where keterangan = 'kosong' AND (";
		if (empty($kelas)) {
			return 0;
		} else {
			foreach ($kelas as $key => $dataKelas) {
				if ($key == 0) {
					$query .= "id_kelas = '$dataKelas'";
				} else {
					$query .= " OR id_kelas = '$dataKelas'";
				}
			}
			$query .= ") AND (";
			foreach ($hari as $key => $dataHari) {
				if ($key == 0) {
					$query .= "hari = '$dataHari'";
				} else {
					$query .= " OR hari = '$dataHari'";
				}
			}
			$query .= ")";
			return $this->db->query($query)->row()->total;
		}
	}
}
