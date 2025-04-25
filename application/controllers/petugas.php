<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petugas extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Petugas_model', 'pemo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Petugas';
		$data['petugas']	= $this->pemo->getPetugas();
		$this->load->view('templates/header-admin', $data);
		$this->load->view('petugas/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addPetugas()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Petugas';

		$this->form_validation->set_rules('petugas', 'Petugas', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('petugas/add_petugas', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->pemo->addPetugas();
		}
	}

	public function editPetugas($id_petugas)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['petugas']	= $this->pemo->getPetugasById($id_petugas);
		$data['title'] 		= 'Ubah Petugas - ' . $data['petugas']['petugas'];

		$this->form_validation->set_rules('petugas', 'Petugas', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('petugas/edit_petugas', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->pemo->editPetugas($id_petugas);
		}
	}

	public function removePetugas($id_petugas)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->pemo->removePetugas($id_petugas);
	}
}
