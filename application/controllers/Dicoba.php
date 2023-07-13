<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dicoba extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        echo "jancuk";
    }

    public function halo()
    {
        echo "ini method halo pada controller belajar";
    }
}
