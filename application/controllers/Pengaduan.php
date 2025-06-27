 <?php
	defined('BASEPATH') or exit('No direct script access allowed');

	class Pengaduan extends CI_Controller
	{
		public function __construct()
		{
			parent::__construct();
			$this->load->model('Admin_model', 'admo');
			$this->load->model('Pengaduan_model', 'pemo');
			$this->load->model('Pengguna_model', 'pengmo');
			$this->load->model('Area_model', 'armo');
			$this->load->model('Waroeng_model', 'warmo');
			$this->load->model('Kategori_model', 'kamo');
			$this->load->model('SubKategori_model', 'sumo');
			$this->load->model('Jabatan_model', 'jamo');

			$this->admo->checkLoginAdmin();
		}

		public function getWaroengFile()
		{
			$this->load->view('pengaduan/get_waroeng', $data);
		}
		public function getSubKategoriFile()
		{
			$this->load->view('pengaduan/get_subkategori', $data);
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
			$data['dataUser']		= $this->admo->getDataUserAdmin();
			$data['pengguna']		= $this->pengmo->getPengguna();
			$data['area']			= $this->armo->getArea();
			$data['waroeng']		= $this->warmo->getWaroeng();
			$data['kategori']		= $this->kamo->getKategori();
			$data['subkategori']	= $this->sumo->getSubKategori();
			$data['jabatan']		= $this->jamo->getJabatan();
			$data['title'] 			= 'Tambah Pengaduan';

			$this->form_validation->set_rules('id_waroeng', 'Waroeng', 'required|trim|is_natural_no_zero');
			$this->form_validation->set_rules('id_subkategori', 'SubKategori', 'required|trim|is_natural_no_zero');
			$this->form_validation->set_rules('isi_laporan', 'Isi Laporan', 'required|trim');
			$this->form_validation->set_rules('tgl_pengaduan', 'Tanggal Pengaduan', 'required');
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
			$data['area']	= $this->armo->getArea();
			$data['waroeng']	= $this->warmo->getWaroeng();
			$data['kategori']		= $this->kamo->getKategori();
			$data['subkategori']	= $this->sumo->getSubKategori();
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

		// Fungsi untuk mengganti petugas
		public function gantiPetugas($id_pengaduan)
		{
			$this->load->model('Pengaduan_model', 'pengaduan');
			$data['dataUser'] = $this->admo->getDataUserAdmin(); // Ambil data user admin
			$data['pengaduan'] = $this->pengaduan->getPengaduanById($id_pengaduan);
			$data['petugas'] = $this->pengaduan->getPetugas();

			// Load template + halaman
			$this->load->view('templates/header-admin', $data);
			$this->load->view('pengaduan/ganti_petugas', $data);
			$this->load->view('templates/footer');
		}

		// Menyimpan perubahan petugas
		public function simpanPetugas($id_pengaduan)
		{
			$id_petugas = $this->input->post('id_petugas', true);
			if ($id_petugas) {
				$this->pemo->updatePetugas($id_pengaduan, $id_petugas);
				$this->session->set_flashdata('message-success', 'Petugas berhasil diperbarui.');
			} else {
				$this->session->set_flashdata('message-danger', 'Petugas tidak dipilih.');
			}
			redirect('pengaduan');
		}

		public function filterPengaduan()
		{
			$data['kategori'] = $this->Pengaduan_model->getAllKategori();
			$data['subkategori'] = $this->Pengaduan_model->getAllSubkategori();

			$this->load->view('templates/header-admin');
			$this->load->view('pengaduan/filter', $data);
			$this->load->view('templates/footer-admin');
		}
	}
