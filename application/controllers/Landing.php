<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Landing extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Pengaduan_model', 'pengmo');
		$this->load->model('Landing_model', 'lamo');
		$this->load->model('Tanggapan_model', 'tamo');
		$this->load->model('Pengaduan_model', 'pemo');
		$this->load->model('Pengguna_model', 'pengmo');
		$this->load->model('Area_model', 'armo');
		$this->load->model('Waroeng_model', 'warmo');
		$this->load->model('Kategori_model', 'kamo');
		$this->load->model('SubKategori_model', 'sumo');
		$this->load->model('Jabatan_model', 'jamo');
	}
	
	public function getWaroengFile()
	{
		$this->load->view('landing/get_waroeng');
	}
	public function getSubKategoriFile()
	{
		$this->load->view('landing/get_subkategori');
	}




	public function checkLogin()
	{
		if ($this->session->userdata('id_pengguna')) {
			redirect('pelapor');
		}
	}

	public function index()
	{
		$this->checkLogin();

		$data['pengaduan'] = $this->pemo->getPengaduanBelumDitanggapi();
		$data['title'] = 'Report IT WSS';
		$this->load->view('templates/header', $data);
		$this->load->view('landing/index', $data);
		$this->load->view('templates/footer', $data);
	}

	public function daftar()
	{
		$this->checkLogin();

		$data['title'] = 'Daftar';
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]|matches[password_verify]');
		$this->form_validation->set_rules('password_verify', 'Verifikasi Password', 'required|trim|min_length[3]|matches[password]');
		$this->form_validation->set_rules('no_telepon', 'No. Telepon', 'required|trim');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('landing/daftar', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$this->lamo->daftar();
		}
	}

	public function masuk()
	{
		$this->checkLogin();

		$data['title'] = 'Masuk';
		$this->form_validation->set_rules('username', 'Username', 'required|trim');
		$this->form_validation->set_rules('password', 'Password', 'required|trim');
		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('landing/masuk', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$this->lamo->masuk();
		}
	}
	public function Pengaduan()
	{
		$data['dataUser'] = $this->admo->getDataUserAdmin();
		// $data['pengguna'] = $this->pengmo->getPengguna();
		$data['area'] = $this->armo->getArea();
		$data['waroeng'] = $this->warmo->getWaroeng();
		$data['kategori'] = $this->kamo->getKategori();
		$data['subkategori'] = $this->sumo->getSubKategori();
		$data['jabatan'] = $this->jamo->getJabatan();
		$data['title'] = 'Tambah Pengaduan';

		$this->form_validation->set_rules('id_waroeng', 'Waroeng', 'required|trim|is_natural_no_zero');
		$this->form_validation->set_rules('id_subkategori', 'SubKategori', 'required|trim|is_natural_no_zero');
		$this->form_validation->set_rules('isi_laporan', 'Isi Laporan', 'required|trim');
		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('landing/pengaduan', $data);
			$this->load->view('templates/footer', $data);
			$this->load->view('templates/include/form_area', $data);
		} else {
			$this->pemo->Pengaduan();
		}
	}



	public function logout()
	{
		session_destroy();
		redirect('landing/masuk');
	}

	public function privacyPolicy()
	{
		$this->checkLogin();
		$data['title'] = 'Privacy Policy - Report IT WSS';
		$this->load->view('templates/header', $data);
		$this->load->view('landing/privacy_policy', $data);
		$this->load->view('templates/footer', $data);
	}

	public function termsAndConditions()
	{
		$this->checkLogin();
		$data['title'] = 'Terms & Conditions - Report IT WSS';
		$this->load->view('templates/header', $data);
		$this->load->view('landing/terms_and_conditions', $data);
		$this->load->view('templates/footer', $data);
	}

	public function saran()
	{
		$data['title'] = 'Report IT WSS';
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('no_telepon', 'No. Telepon', 'required|trim');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
		$this->form_validation->set_rules('saran', 'Saran', 'required|trim');
		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('landing/index', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$this->lamo->saran();
			echo "
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Terima kasih!',
            text: 'Saran Anda berhasil dikirim.',
            confirmButtonText: 'OK',
            allowOutsideClick: false
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = '" . base_url('landing#saran') . "';
            }
        });
    </script>";

		}
	}

	public function detailPengaduan($id_pengaduan = 0)
	{
		if ($id_pengaduan == 0) {
			redirect('landing');
			exit;
		}

		$data['id_pengaduan'] = $id_pengaduan;
		$data['pengaduan'] = $this->pemo->getPengaduanById($id_pengaduan);
		$data['title'] = 'Detail Pengaduan - ' . $data['pengaduan']['isi_laporan'];
		$data['tanggapan'] = $this->tamo->getTanggapanByIdPengaduan($id_pengaduan);

		$this->load->view('templates/header', $data);
		$this->load->view('landing/detail_pengaduan', $data);
		$this->load->view('templates/footer', $data);
	}
}
