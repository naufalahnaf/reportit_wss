<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Kategori_model', 'kamo');

		$this->admo->checkLoginAdmin();
	}

	public function index()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Kategori';
		$data['kategori']	= $this->kamo->getKategori();
		$this->load->view('templates/header-admin', $data);
		$this->load->view('kategori/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addKategori()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title'] 		= 'Tambah Kategori';

		$this->form_validation->set_rules('kategori', 'Kategori', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('kategori/add_kategori', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->kamo->addKategori();
		}
	}

	public function editKategori($id_kategori)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['kategori']	= $this->kamo->getKategoriById($id_kategori);
		$data['title'] 		= 'Ubah Kategori - ' . $data['kategori']['kategori'];

		$this->form_validation->set_rules('kategori', 'Kategori', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('kategori/edit_kategori', $data);
		    $this->load->view('templates/footer-admin', $data);  
		} else {
		    $this->kamo->editKategori($id_kategori);
		}
	}

	public function removeKategori($id_kategori)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->kamo->removeKategori($id_kategori);
	}
}
