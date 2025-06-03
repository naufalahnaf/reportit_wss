 <?php
	defined('BASEPATH') or exit('No direct script access allowed');

	class Laporan extends CI_Controller
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

		public function index()
		{
			$data['dataUser'] = $this->admo->getDataUserAdmin();
			$data['title'] = 'Laporan';

			// Load data untuk dropdown kategori dan subkategori
			$data['kategori'] = $this->kamo->getAllKategori();
			$data['subkategori'] = $this->sumo->getAllSubkategori();

			if (isset($_POST['btnFilter'])) {
				$dari_tgl = $_POST['dari_tgl'];
				$sampai_tgl = $_POST['sampai_tgl'];
				$status = $_POST['status_pengaduan'];
				$kategori = $_POST['kategori'];
				$subkategori = $_POST['subkategori'];

				// Simpan kembali ke data agar terpilih di form
				$data['filter'] = [
					'dari_tgl' => $dari_tgl,
					'sampai_tgl' => $sampai_tgl,
					'status_pengaduan' => $status,
					'kategori' => $kategori,
					'subkategori' => $subkategori
				];

				// Kirim ke model
				$data['pengaduan'] = $this->pemo->getPengaduanFilter(
					$dari_tgl,
					$sampai_tgl,
					$status,
					$kategori,
					$subkategori
				);
			} else {
				$data['pengaduan'] = $this->pemo->getPengaduan();
			}

			$this->load->view('templates/header-admin', $data);
			$this->load->view('laporan/index', $data);
			$this->load->view('templates/footer-admin', $data);
		}


		public function printLaporan($dari_tgl = '', $sampai_tgl = '', $status_pengaduan = '')
		{
			if ($dari_tgl != null) {
				$data['filter'] = $dari_tgl . '/' . $sampai_tgl . '/' . $status_pengaduan;
				$data['title'] = 'Cetak Laporan - ' . $dari_tgl . ' - ' . $sampai_tgl . ' dengan status ' . $status_pengaduan;
			} else {
				$data['filter'] = date('Y-m-01') . '/' . date('Y-m-d') . '/' . 'semua';
				$data['title'] = 'Cetak Laporan';
			}
			$this->load->view('laporan/print_laporan', $data);
		}
	}
