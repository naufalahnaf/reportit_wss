 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengaduan extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Pengaduan_model', 'pemo');
		$this->load->model('Pengguna_model', 'pengmo');
		$this->load->model('Waroeng_model', 'warmo');
		$this->load->model('Area_model', 'armo');
		$this->load->model('Jabatan_model', 'jamo');

		$this->admo->checkLoginAdmin();
	}

	public function getWaroengFile()
	{
		$this->load->view('pengaduan/get_waroeng', $data);
	}

	public function index($status_pengaduan = '')
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['title']  	= 'Pengaduan';
		$data['pengaduan']	= $this->pemo->getPengaduanByStatusPengaduan($status_pengaduan);

		$this->load->view('templates/header-admin', $data);
		$this->load->view('pengaduan/index', $data);
		$this->load->view('templates/footer-admin', $data);
	}

	public function addPengaduan()
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['pengguna']	= $this->pengmo->getPengguna();
		$data['waroeng']	= $this->warmo->getWaroeng();
		$data['area']	= $this->armo->getArea();
		$data['jabatan']	= $this->jamo->getJabatan();
		$data['title'] 		= 'Tambah Pengaduan';

		$this->form_validation->set_rules('id_waroeng', 'Waroeng', 'required|trim|is_natural_no_zero');
		$this->form_validation->set_rules('isi_laporan', 'Isi Laporan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('pengaduan/add_pengaduan', $data);
		    $this->load->view('templates/footer-admin', $data);  
		    $this->load->view('templates/include/form_area', $data);   
		} else {
		    $this->pemo->addPengaduan();
		}
	}

	public function editPengaduan($id_pengaduan)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$data['pengguna']	= $this->pengmo->getPengguna();
		$data['waroeng']	= $this->warmo->getWaroeng();
		$data['area']	= $this->armo->getArea();
		$data['jabatan']	= $this->jamo->getJabatan();
		$data['pengaduan']	= $this->pemo->getPengaduanById($id_pengaduan);
		$data['title'] 		= 'Ubah Pengaduan - ' . $data['pengaduan']['isi_laporan'];

		$this->form_validation->set_rules('id_pengaduan', 'Pengaduan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-admin', $data);
		    $this->load->view('pengaduan/edit_pengaduan', $data);
		    $this->load->view('templates/footer-admin', $data);  
		    $this->load->view('templates/include/form_area', $data);  
		} else {
		    $this->pemo->editPengaduan($id_pengaduan);
		}
	}

	public function removePengaduan($id_pengaduan)
	{
		$data['dataUser']	= $this->admo->getDataUserAdmin();
		$this->pemo->removePengaduan($id_pengaduan);
	}
}
