<?php

/**
 * 
 */
class Model_Ruangan extends CI_Model
{
    public function getAllData($grup = null)
    {
        return $this->db->get('ruangan')->result();
    }

    public function tambah_data()
    {
        $data = array(
            'id_ruangan' => $this->input->post('id_ruang', true),
            'nama_ruangan' => $this->input->post('nm_ruangan', true)
        );

        $this->db->insert('ruangan', $data);
    }

    public function ubah_data()
    {
        $data = array(
            'nama_ruangan' => $this->input->post('nama_ruangan', true)
        );
        $this->db->where('id_ruangan', $this->input->post('id_ruangan', true));
        $this->db->update('ruangan', $data);
    }

    public function hapus_data($id)
    {
        $this->db->delete('ruangan', ['id_ruangan' => $id]);
    }

    public function detail_data($id)
    {
        return $this->db->get_where('ruangan', ['id_ruangan' => $id])->row_array();
    }
}
