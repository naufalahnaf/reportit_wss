<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengguna extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Pengguna_model', 'pengmo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Pengguna';
		$data['pengguna']	= $this->pengmo->getPengguna();
		$this->load->view('templates/header-admin', $data);
		$this->load->view('pengguna/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addPengguna()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Pengguna';

		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]|matches[password_verify]');
		$this->form_validation->set_rules('password_verify', 'Verifikasi Password', 'required|trim|min_length[3]|matches[password]');
		$this->form_validation->set_rules('no_telepon', 'No. Telepon', 'required|trim');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('pengguna/add_pengguna', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->pengmo->addPengguna();
		}
	}

	public function editPengguna($id_pengguna)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['pengguna']	= $this->pengmo->getPenggunaById($id_pengguna);
		$data['title'] 		= 'Ubah Pengguna - ' . $data['pengguna']['username'];

		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('no_telepon', 'No. Telepon', 'required|trim');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('pengguna/edit_pengguna', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->pengmo->editPengguna($id_pengguna);
		}
	}

	public function removePengguna($id_pengguna)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->pengmo->removePengguna($id_pengguna);
	}
}
