<?php
class Login extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_login');
        $this->load->library('session');
    }
    public function index()
    {
        $this->load->view('v_login');
    }
    public function ceklogin()
    {
        $this->load->model('M_login');
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $this->M_login->ambillogin($email, $password);
    }
}
