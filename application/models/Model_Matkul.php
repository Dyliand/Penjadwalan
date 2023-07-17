<?php

use Svg\Tag\Group;

/**
 * 
 */
class Model_Matkul extends CI_Model
{
    public function getAllData($grup = false)
    {

        $this->db->select('id_matkul, kode_matkul, nama_matkul, sks, jurusan.id_jurusan, semester_matkul');
        $this->db->from('matkul');
        $this->db->join('jurusan', 'jurusan.id_jurusan = matkul.id_jurusan');
        if ($grup) {
            $this->db->group_by('kode_matkul');
        }
        // $this->db->order_by('kode_matkul', 'ASC');
        return $this->db->get()->result();
    }

    public function getMatkul()
    {
        return $this->db->query("SELECT * FROM `matkul` inner join sks on (matkul.sks = sks.sks && matkul.id_jurusan ) ORDER BY `matkul`.`kode_matkul` ASC ")->result();
    }

    public function getMatkulbyKodeMatkul($kodeMatkul)
    {
        return $this->db->get_where('matkul', ['kode_matkul' => $kodeMatkul])->row('nama_matkul');
    }

    public function listDataMatkul()
    {
        $this->db->group_by('kode_matkul');
        $this->db->order_by('id_matkul', 'ASC');
        return $this->db->get('matkul')->result();
    }

    public function getDataMatkulByKodeMatkul($kodeMatkul)
    {
        return $this->db->get_where('matkul', ['kode_matkul' => $kodeMatkul])->result();
    }

    public function getAllData_jurusan()
    {
        return $this->db->get('jurusan')->result();
    }

    public function tambah_data()
    {

        foreach ($this->input->post('chkJurusan') as $valueJur) {
            $data = [
                'kode_matkul' => $this->input->post('kd_mat'),
                'nama_matkul' => $this->input->post('nm_mat'),
                'semester_matkul' => $this->input->post('semester_matkul'),
                'sks' => $this->input->post('sks'),
                'id_jurusan' => $valueJur
            ];
            if ($this->checkExist($this->input->post('kd_mat'), $this->input->post('nm_matkul'),  $this->input->post('sks'), $this->input->post('semester_matkul'), $valueJur)) {
                $this->db->insert('matkul', $data);
            }
        }
    }

    public function checkExist($kode_matkul, $semester_matkul, $sks, $id_jurusan)
    {
        $data = [
            'kode_matkul' => $kode_matkul,
            'semester_matkul' => $semester_matkul,
            'sks' => $sks,
            'id_jurusan' => $id_jurusan
        ];
        $query = $this->db->get_where('matkul', $data)->num_rows();
        if ($query > 0) {
            return false;
        }
        return true;
    }

    // public function tambah_data()
    // {
    // 	echo $jumlah = $this->input->post('jml_data');
    // 	echo $id_kelas = $this->input->post('id_kelas');
    // 	echo $id_mapel = $this->input->post('id_mapel');
    // 	echo $nama_mapel = $this->input->post('nama_mapel');
    // 	echo $kode_mapel = $this->input->post('kode_mapel');
    // 	echo $beban_jam = $this->input->post('beban_jam');
    // 	echo $id_guru = $this->input->post('guru');


    // for ($i = 0; $i < $jumlah; $i++) {
    // 	$data = array(
    // 		'id_tugas' => $id_guru[$i] . '-' . $id_mapel[$i] . '-' . $id_kelas[$i],
    // 		'id_guru' => $id_guru[$i],
    // 		'id_mapel' => $id_mapel[$i],
    // 		'nama_mapel' => $nama_mapel[$i],
    // 		'kode_mapel' => $kode_mapel[$i],
    // 		'id_kelas' => $id_kelas[$i],
    // 		'sisa_jam' => $beban_jam[$i]
    // 	);
    // 	$this->db->insert('mapel', $data);
    // }
    // }

    public function hapus_data($id)
    {
        $this->db->delete('matkul', ['id_matkul' => $id]);
    }

    public function ubah_data()
    {
        $data = array(
            'kode_matkul' => $this->input->post('kd_mat', true),
            'nama_matkul' => $this->input->post('nm_mat', true),
            'sks' => $this->input->post('sks', true),
            'id_jurusan' => $this->input->post('id_jur', true),
            'semester_matkul' => $this->input->post('semester_matkul', true)
        );
        if ($this->checkExist($this->input->post('kd_mat'), $this->input->post('nm_mat'), $this->input->post('semester_matkul', true), $this->input->post('sks'), $this->input->post('id_jur', true))) {
            $this->db->where('id_matkul', $this->input->post('id_mat', true));
            $this->db->update('matkul', $data);
        }
    }


    public function detail_data($id)
    {
        return $this->db->get_where('matkul', ['id_matkul' => $id])->row_array();
    }
}
