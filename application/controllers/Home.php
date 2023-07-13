<?php

/**
 * 
 */
class Home extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
	}
	function index()
	{
		$this->load->view('v_home');
		$this->load->view('header');
		$this->load->view('sidebar');
		$this->load->view('footer');
	}
}
