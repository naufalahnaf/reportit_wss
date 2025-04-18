<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelapor extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Pelapor_model', 'pelmo');
		$this->load->model('PelaporPengaduan_model', 'pepemo');
	}

	public function index()
	{
		$this->pelmo->checkLoginUser();

		$data['dataUser'] = $this->pelmo->getDataUser();
		if (!$data['dataUser'] || !isset($data['dataUser']['id_pengguna'])) {
			die('Error: Data user tidak ditemukan atau id_pengguna tidak ada!');
		}

		$data['pengaduan_belum_ditanggapi_pelapor'] = $this->pepemo->getPengaduanByStatusPengaduanByIdPengguna('belum_ditanggapi', $data['dataUser']['id_pengguna']);
		$data['title'] = 'Dasbor';
		$this->load->view('templates/header-pelapor', $data);
		$this->load->view('pelapor/index', $data);
		$this->load->view('templates/footer-pelapor', $data);
	}

	public function profile()
	{
		$this->pelmo->checkLoginUser();
		$data['dataUser'] = $this->pelmo->getDataUser();
		$data['title'] = 'Profil - ' . ($data['dataUser']['username'] ?? 'Pengguna');
		$this->load->view('templates/header-pelapor', $data);
		$this->load->view('pelapor/profile', $data);
		$this->load->view('templates/footer-pelapor', $data);
	}

	public function changePassword()
	{
		$this->pelmo->checkLoginUser();
		$data['dataUser'] = $this->pelmo->getDataUser();
		$data['title'] = 'Ganti Password - ' . ($data['dataUser']['username'] ?? 'Pengguna');
		$this->form_validation->set_rules('old_password', 'Password Lama', 'required|trim');
		$this->form_validation->set_rules('new_password', 'Password Baru', 'required|trim|min_length[3]|matches[verify_new_password]');
		$this->form_validation->set_rules('verify_new_password', 'Verifikasi Password Baru', 'required|trim|min_length[3]|matches[new_password]');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header-pelapor', $data);
			$this->load->view('pelapor/change_password', $data);
			$this->load->view('templates/footer-pelapor', $data);
		} else {
			$this->pelmo->changePassword();
		}
	}

	public function editProfile()
	{
		$this->pelmo->checkLoginUser();
		$data['dataUser'] = $this->pelmo->getDataUser();
		$data['title'] = 'Ubah Profil - ' . ($data['dataUser']['username'] ?? 'Pengguna');
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('no_telepon', 'No. Telepon', 'required|trim');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header-pelapor', $data);
			$this->load->view('pelapor/edit_profile', $data);
			$this->load->view('templates/footer-pelapor', $data);
		} else {
			$this->pelmo->editProfile();
		}
	}
}
