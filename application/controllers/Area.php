<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Area extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Area_model', 'armo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Area';
		$data['area']	= $this->armo->getArea();
		$this->load->view('templates/header-admin', $data);
		$this->load->view('area/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addArea()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Area';

		$this->form_validation->set_rules('area', 'Area', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('area/add_area', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->armo->addArea();
		}
	}

	public function editArea($id_area)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['area']	= $this->armo->getAreaById($id_area);
		$data['title'] 		= 'Ubah Area - ' . $data['area']['area'];

		$this->form_validation->set_rules('area', 'Area', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('area/edit_area', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->armo->editArea($id_area);
		}
	}

	public function removeArea($id_area)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->armo->removeArea($id_area);
	}
}
