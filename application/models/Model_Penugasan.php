<?php

/**
 * 
 */
class Model_Penugasan extends CI_Model
{
	public function getAllDataJoin()
	{
		$this->db->select('id_tugas, dosen.id_dosen, matkul.id_matkul, matkul.sks');
		$this->db->from('tugas_dosen');
		$this->db->join('dosen', 'dosen.id_dosen = tugas_dosen.id_dosen');
		$this->db->join('matkul', 'matkul.kode_matkul = tugas_dosen.id_matkul');
		$this->db->join('matkul', 'matkul.sks = tugas_dosen.semester_matkul');
		return $this->db->get()->result();
	}

	/* 
	* mengambil data penugasan dosen dan beban matkul berdasarkan id dosen 
	*/
	/* public function getDataByiddosen($id_dosen)
	{
		$this->db->select('*');
		$this->db->from('tugas_dosen');
		$this->db->join('matkul', 'tugas_dosen.id_matkul = matkul.id_matkul');
		$this->db->where('tugas_dosen.id_dosen',  $id_dosen);
		return $this->db->get()->result();
	} */

	/* 
	* mengambil data penugasan dosen dan beban matkul berdasarkan id dosen dan id kelas dengan sisa jam !=0
	*/
	public function getDatatugasByidDosen($id_dosen, $semester_matkul)
	{
		$this->db->select('*, dosen.code_color');
		$this->db->from('tugas_dosen');
		$this->db->join('matkul', 'tugas_dosen.id_matkul = matkul.id_matkul');
		$this->db->join('dosen', 'dosen.id_dosen = tugas_dosen.id_dosen');
		$this->db->where('tugas_dosen.id_dosen', $id_dosen);
		$this->db->where('tugas_dosen.semester_matkul', $semester_matkul);
		$this->db->where('tugas_dosen.sks !=', '0');
		return $this->db->get()->result();
	}



	public function getAllData()
	{
		return $this->db->get('tugas_dosen')->result();
	}

	public function getAllDataByid_ruangan($id_kelas)
	{
		return $this->db->query("SELECT tugas_dosen.*, matkul.sks, matkul.nama_matkul from tugas_dosen left join matkul on tugas_dosen.id_matkul = matkul.id_matkul where tugas_dosen.id_kelas= '" . $id_kelas . "' GROUP by id_tugas")->result();
	}

	public function tugasdosenBelumterplot($id_kelas = null)
	{
		if ($id_kelas === null) {
			return $this->db->query("SELECT tugas_dosen.*, matkul.beban_jam, matkul.nama_matkul , dosen.nama_dosen, request_jadwal.hari from tugas_dosen join dosen on tugas_dosen.id_dosen = dosen.id_dosen left join matkul on tugas_dosen.id_matkul = matkul.id_matkul LEFT JOIN request_jadwal ON tugas_dosen.id_dosen = request_jadwal.id_dosen where tugas_dosen.status = 0")->result();
		}
		return $this->db->query("SELECT tugas_dosen.*, matkul.beban_jam, matkul.nama_matkul, dosen.nama_dosen from tugas_dosen join dosen on tugas_dosen.id_dosen = dosen.id_dosen left join matkul on tugas_dosen.id_matkul = matkul.id_matkul LEFT JOIN request_jadwal ON tugas_dosen.id_dosen = request_jadwal.id_dosen where tugas_dosen.id_kelas= '" . $id_kelas . "' AND tugas_dosen.status = 0 GROUP by id_tugas")->result();
	}

	public function getTugasdosenJoinmatkulRequestJadwal($id_kelas = null, $hari = null)
	{
		return $this->db->query("SELECT tugas_dosen.*, matkul.nama_matkul, matkul.beban_jam FROM tugas_dosen LEFT JOIN matkul on matkul.id_matkul = tugas_dosen.id_matkul LEFT JOIN request_jadwal on tugas_dosen.id_dosen = request_jadwal.id_dosen where tugas_dosen.id_kelas='" . $id_kelas . "' && tugas_dosen.status='0' && request_jadwal.hari LIKE '%" . $hari . "%' GROUP BY id_tugas");
	}

	public function tambah_data()
	{
		// $jumlah = $this->input->post('jml_data');
		echo $jumlah = count($this->input->post('dosen'));
		$id_kelas = $this->input->post('id_kelas');
		$id_matkul = $this->input->post('id_matkul');
		$kode_matkul = $this->input->post('kode_matkul');
		$beban_jam = $this->input->post('beban_jam');
		$id_dosen = $this->input->post('dosen');
		print_r($id_dosen);
		echo '<br>';
		for ($i = 0; $i < $jumlah; $i++) {
			if ($id_dosen[$i] != 'Pilih dosen') {
				$data = array(
					'id_tugas' => $id_dosen[$i] . '-' . $id_matkul[$i] . '-' . $id_kelas[$i],
					'id_dosen' => $id_dosen[$i],
					'id_matkul' => $id_matkul[$i],
					'kode_matkul' => $kode_matkul,
					'id_kelas' => $id_kelas[$i],
					'sisa_jam' => $beban_jam[$i],
					'beban_jam' => $beban_jam[$i]
				);
				print_r($data);
				echo '<br>';
				$this->db->insert('tugas_dosen', $data);
			}
		}
	}

	public function ubah_data()
	{
		$data = array(
			'id_dosen' => $this->input->post('id_gur', true),
			'id_matkul' => $this->input->post('id_map', true),
			'id_kelas' => $this->input->post('id_kls', true),
			'tahun_ajaran' => $this->input->post('thn', true)
		);
		$this->db->where('id_tugas', $this->input->post('id_pen', true));
		$this->db->update('tugas_dosen', $data);
	}

	public function hapus_data($id)
	{
		$this->db->delete('tugas_dosen', ['id_tugas' => $id]);
	}

	public function detail_data($id)
	{
		$this->db->join('matkul', 'tugas_dosen.id_matkul = matkul.id_matkul');
		return $this->db->get_where('tugas_dosen', ['id_tugas' => $id])->row_array();
	}

	public function dataKelasByKodematkul($kode_matkul)
	{
		return $this->db->query("SELECT matkul.*, kelas.*, tugas_dosen.id_tugas, tugas_dosen.id_dosen  FROM `matkul` INNER join kelas on (matkul.kelas = kelas.kelas && matkul.id_jurusan = kelas.id_jurusan)  LEFT JOIN tugas_dosen on (kelas.id_kelas = tugas_dosen.id_kelas && matkul.id_matkul = tugas_dosen.id_matkul) WHERE matkul.kode_matkul = '" . $kode_matkul . "'   ORDER BY `kelas`.`id_jurusan` ASC, `kelas`.`kelas` ASC, `kelas`.`nama_kelas` ASC")->result();
	}


	public function listDatamatkulyangKosong()
	{
		return $this->db->query("SELECT matkul.kode_matkul, matkul.nama_matkul, sum(case when tugas_dosen.id_tugas IS NULL then 1 else 0 end) AS jumlah_kosong FROM `matkul` INNER join kelas on (matkul.kelas = kelas.kelas && matkul.id_jurusan = kelas.id_jurusan) LEFT JOIN tugas_dosen on (kelas.id_kelas = tugas_dosen.id_kelas && matkul.id_matkul = tugas_dosen.id_matkul) GROUP by kode_matkul ORDER BY matkul.kode_matkul ASC
		")->result();
	}

	public function hapusDosa()
	{
		return $this->db->query("SELECT * FROM `tugas_dosen` LEFT JOIN matkul ON tugas_dosen.id_matkul = matkul.id_matkul ORDER BY `matkul`.`id_matkul` ASC ")->result();
	}
}
