<?php if (!defined('BASEPATH'))
    exit('No direct script acces allowed');
class M_login extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function ambillogin($email, $password)
    {
        $this->db->where('email', $email);
        $this->db->where('password', ($password));
        $query = $this->db->get('user');
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $sess = array(
                    'email' => $row->email,
                    'password' => $row->password,
                );
                $this->session->set_userdata($sess);
            }
            $this->session->get_userdata($sess);
            redirect('home');
        } else {
            $this->session->set_flashdata('info', 'Maaf, Username atau Password Salah');
            redirect('login');
        }
    }
}
