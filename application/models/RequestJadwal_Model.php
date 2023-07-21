<?php

/**
 *                                    
 */
class RequestJadwal_Model extends CI_Model
{
	public function getAllData()
	{
		$this->db->select('id_request, guru.id_guru, guru.nama_guru, hari');
		$this->db->from('request_jadwal');
		$this->db->join('guru', 'guru.id_guru = request_jadwal.id_guru');
		return $this->db->get()->result();
	}

	public function getAllDataByid_guru($id_guru)
	{
		$query = $this->db->query('SELECT * FROM request_jadwal where id_guru = "' . $id_guru . '"');
		if ($query->num_rows() > 0) {
			return $query->row()->hari;
		} else {
			return 'Senin,Selasa,Rabu,Kamis,Jum`at,Sabtu';
		}
	}

	public function tambah_data()
	{
		$hari = $this->input->post("chkHari");
		$data = array(
			'id_guru' => $this->input->post('id_gur'),
			'id_request' => $this->input->post('id_req'),
			'hari' => implode(',', (array) $hari)
		);
		$this->db->insert('request_jadwal', $data);
	}

	public function hapus_data($id)
	{
		$this->db->delete('request_jadwal', ['id_request' => $id]);
	}

	public function ubah_data()
	{
		$data = array(
			'id_guru' => $this->input->post('id_gur', true),
			'hari' => $this->input->post('har', true),
		);
		$this->db->where('id_request', $this->input->post('id_req', true));
		$this->db->update('request_jadwal', $data);
	}


	public function detail_data($id)
	{
		return $this->db->get_where('request_jadwal', ['id_request' => $id])->row_array();
	}
}
