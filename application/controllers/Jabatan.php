<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jabatan extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Jabatan_model', 'jamo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Jabatan';
		$data['jabatan']	= $this->jamo->getJabatan();
		$this->load->view('templates/header-admin', $data);
		$this->load->view('jabatan/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addJabatan()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Jabatan';

		$this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('jabatan/add_jabatan', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->jamo->addJabatan();
		}
	}

	public function editJabatan($id_jabatan)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['jabatan']	= $this->jamo->getJabatanById($id_jabatan);
		$data['title'] 		= 'Ubah Jabatan - ' . $data['jabatan']['jabatan'];

		$this->form_validation->set_rules('jabatan', 'Jabatan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('jabatan/edit_jabatan', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->jamo->editJabatan($id_jabatan);
		}
	}

	public function removeJabatan($id_jabatan)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->jamo->removeJabatan($id_jabatan);
	}
}
