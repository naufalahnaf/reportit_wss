<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session'); // Tambahkan session library
		$this->load->model('Auth_model', 'aumo');
	}

	public function checkLogin()
	{
		if ($this->session->userdata('id_user')) 
		{
			redirect('admin');	
			exit; // Pastikan redirect berhenti di sini
		}
		elseif ($this->session->userdata('id_pengguna'))
		{
			redirect('pelapor');	
			exit; // Pastikan redirect berhenti di sini
		}
	}

	public function index()
	{
		$this->checkLogin();

		$data['title'] = 'Masuk Admin';
		$this->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->form_validation->set_rules('password', 'Password', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header', $data);
		    $this->load->view('auth/index', $data);
		    $this->load->view('templates/footer', $data);  
		} else {
		    $this->aumo->loginAdmin();
		}
	}

	public function logout()
	{
		$this->session->sess_destroy(); // Gunakan sess_destroy() dari CI3
		redirect('auth');
		exit;
	}
}
