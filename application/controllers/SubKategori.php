<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SubKategori extends CI_Controller 
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('SubKategori_model', 'sumo');
        $this->load->model('Kategori_model', 'kamo');
        $this->load->model('Admin_model', 'admo');
        $this->admo->checkLoginAdmin();
    }

    public function index()
    {
        $data['dataUser'] = $this->admo->getDataUserAdmin();
        $data['subkategori'] = $this->sumo->getSubKategori();
        $data['title'] = 'SubKategori';

        $this->load->view('templates/header-admin', $data);
        $this->load->view('subkategori/index', $data);
        $this->load->view('templates/footer-admin', $data);
    }

    public function addSubKategori()
    {
        $data['dataUser'] = $this->admo->getDataUserAdmin();
        $data['kategori'] = $this->kamo->getKategori();  // Assuming 'getKategori' is defined in the model
        $data['title'] = 'Tambah SubKategori';

        $this->form_validation->set_rules('subkategori', 'SubKategori', 'required|trim');
        $this->form_validation->set_rules('id_kategori', 'Kategori', 'required|trim|is_natural_no_zero');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header-admin', $data);
            $this->load->view('subkategori/add_subkategori', $data);
            $this->load->view('templates/footer-admin', $data);
        } else {
            $this->sumo->addSubKategori();
        }
    }

    public function editSubKategori($id_subkategori)
    {
        $data['dataUser'] = $this->admo->getDataUserAdmin();
        $data['subkategori'] = $this->sumo->getSubKategoriById($id_subkategori);
        $data['kategori'] = $this->sumo->getKategori();
        $data['title'] = 'Edit SubKategori';

        $this->form_validation->set_rules('subkategori', 'SubKategori', 'required|trim');
        $this->form_validation->set_rules('id_kategori', 'Kategori', 'required|trim|is_natural_no_zero');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header-admin', $data);
            $this->load->view('subkategori/edit_subkategori', $data);
            $this->load->view('templates/footer-admin', $data);
        } else {
            $this->sumo->editSubKategori($id_subkategori);
        }
    }

    public function removeSubKategori($id_subkategori)
    {
        $data['dataUser'] = $this->admo->getDataUserAdmin();
        $this->sumo->removeSubKategori($id_subkategori);
    }
}
