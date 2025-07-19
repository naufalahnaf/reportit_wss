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
		$this->load->model('Tanggapan_model', 'tamo'); // tambahkan ini di awal method export_excel
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

	public function export_excel($dari_tgl, $sampai_tgl, $status_pengaduan, $id_kategori = 'semua', $id_subkategori = 'semua')
	{
		$this->load->model('Pengaduan_model');

		// Ambil nama kategori
		$nama_kategori = 'Semua Kategori';
		if ($id_kategori != 'semua') {
			$kategori = $this->kamo->getKategoriById($id_kategori);
			if ($kategori) {
				$nama_kategori = $kategori['kategori'];
			}
		}

		// Ambil data pengaduan
		$pengaduan = $this->Pengaduan_model->getPengaduanFilter($dari_tgl, $sampai_tgl, $status_pengaduan, $id_kategori, $id_subkategori);

		// Set header Excel
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=Laporan_Pengaduan_" . date('Ymd_His') . ".xls");
		header("Cache-Control: max-age=0");

		// Tampilkan tabel
		echo '<table border="1">';
		echo '<tr><th colspan="12" style="text-align:center; font-size:16pt;">Laporan Kendala Perangkat IT Dari ' . date('d-m-Y', strtotime($dari_tgl)) . ' Sampai ' . date('d-m-Y', strtotime($sampai_tgl)) . ' | Kategori: ' . $nama_kategori . '</th></tr>';

		// Header kolom
		echo '<tr>
        <th>No</th>
        <th>Waroeng</th>
        <th>Nama Pelapor</th>
        <th>Jabatan</th>
        <th>No. WA</th>
        <th>Tanggal Pengaduan</th>
        <th>Isi Laporan</th>
        <th>Kategori</th>
        <th>Subkategori</th>
        <th>Petugas</th>
        <th>Tanggapan</th>
        <th>Status Pengaduan</th>
    </tr>';

		$no = 1;
		foreach ($pengaduan as $p) {
			// Ambil tanggapan terakhir
			$last_tanggapan = $this->tamo->getLastTanggapanByIdPengaduan($p['id_pengaduan']);
			$isi_tanggapan = $last_tanggapan['isi_tanggapan'] ?? '-';

			// Tentukan warna latar belakang berdasarkan status
			$warna_status = '';
			switch (strtolower($p['status_pengaduan'])) {
				case 'selesai':
					$warna_status = 'background-color: #c6efce; color: #006100;';
					break;
				case 'proses':
					$warna_status = 'background-color: #ffeb9c; color: #9c6500;';
					break;
				case 'pending':
					$warna_status = 'background-color: #ffc7ce; color: #9c0006;';
					break;
				default:
					$warna_status = 'background-color: #d9d9d9;';
					break;
			}

			echo '<tr>';
			echo '<td>' . $no++ . '</td>';
			echo '<td>' . htmlspecialchars($p['waroeng'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['nama_pelapor'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['jabatan'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['no_wa'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars(date('d-m-Y', strtotime($p['tgl_pengaduan']))) . '</td>';
			echo '<td>' . htmlspecialchars($p['isi_laporan'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['kategori'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['subkategori'] ?? '-') . '</td>';
			echo '<td>' . htmlspecialchars($p['petugas'] ?? 'Belum Ditugaskan') . '</td>';
			echo '<td>' . htmlspecialchars($isi_tanggapan) . '</td>';
			echo '<td style="' . $warna_status . '">' . htmlspecialchars($p['status_pengaduan'] ?? '-') . '</td>';
			echo '</tr>';
		}


		echo '</table>';
		exit;
	}


}
