<?php

/**
 * 
 */
class Model_Jurusan extends CI_Model
{
    public function getAllData($grup = null)
    {
        return $this->db->get('jurusan')->result();
    }

    public function tambah_data()
    {
        $data = array(
            'id_jurusan' => $this->input->post('id_jur', true),
            'nama_jurusan' => $this->input->post('nm_jur', true)
        );

        $this->db->insert('jurusan', $data);
    }

    public function ubah_data()
    {
        $data = array(
            'nama_jurusan' => $this->input->post('nm_jur', true)
        );
        $this->db->where('id_jurusan', $this->input->post('id_jur', true));
        $this->db->update('jurusan', $data);
    }

    public function hapus_data($id)
    {
        $this->db->delete('jurusan', ['id_jurusan' => $id]);
    }

    public function detail_data($id)
    {
        return $this->db->get_where('jurusan', ['id_jurusan' => $id])->row_array();
    }
}
