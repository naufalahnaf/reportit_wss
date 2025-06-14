<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Waroeng extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Waroeng_model', 'warmo');
		$this->load->model('Area_model', 'armo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Waroeng';
		$data['waroeng']	= $this->warmo->getWaroeng();

		$this->load->view('templates/header-admin', $data);
		$this->load->view('waroeng/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addWaroeng()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Waroeng';
		$data['area']	= $this->armo->getArea();

		$this->form_validation->set_rules('id_area', 'Area', 'required|trim');
		$this->form_validation->set_rules('waroeng', 'Waroeng', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('waroeng/add_waroeng', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->warmo->addWaroeng();
		}
	}

	public function editWaroeng($id_waroeng)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['area']	= $this->armo->getArea();
		$data['waroeng']	= $this->warmo->getWaroengById($id_waroeng);
		$data['title'] 		= 'Ubah Waroeng - ' . $data['waroeng']['waroeng'];

		$this->form_validation->set_rules('id_area', 'Area', 'required|trim');
		$this->form_validation->set_rules('waroeng', 'waroeng', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('waroeng/edit_waroeng', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->warmo->editWaroeng($id_waroeng);
		}
	}

	public function removeWaroeng($id_waroeng)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->warmo->removeWaroeng($id_waroeng);
	}
}
