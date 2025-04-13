 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PelaporPengaduan extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Pelapor_model', 'pelmo');
		$this->load->model('PelaporPengaduan_model', 'pepemo');
		$this->load->model('Waroeng_model', 'warmo');
		$this->load->model('Area_model', 'armo');

		$this->pelmo->checkLoginUser();
	}

	public function getWaroengFilePelapor()
	{
		$this->load->view('pelapor_pengaduan/get_waroeng', $data);
	}

	public function index($status_pengaduan = '')
	{
		$data['dataUser']	= $this->pelmo->getDataUser();
		$data['title']  	= 'Pengaduan';
		$data['pengaduan']	= $this->pepemo->getPengaduanByStatusPengaduanByIdPengguna($status_pengaduan, $data['dataUser']['id_pengguna']);

		$this->load->view('templates/header-pelapor', $data);
		$this->load->view('pelapor_pengaduan/index', $data);
		$this->load->view('templates/footer-pelapor', $data);
	}

	public function addPelaporPengaduan()
	{
		$data['dataUser']	= $this->pelmo->getDataUser();
		$data['waroeng']	= $this->warmo->getWaroeng();
		$data['area']	= $this->armo->getArea();
		$data['title'] 		= 'Tambah Pengaduan';

		$this->form_validation->set_rules('id_waroeng', 'Waroeng', 'required|trim|is_natural_no_zero');
		$this->form_validation->set_rules('isi_laporan', 'Isi Laporan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-pelapor', $data);
		    $this->load->view('pelapor_pengaduan/add_pelapor_pengaduan', $data);
		    $this->load->view('templates/footer-pelapor', $data);  
		    $this->load->view('templates/include/form_area_pelapor', $data);  
		} else {
		    $this->pepemo->addPelaporPengaduan();
		}
	}

	public function editPelaporPengaduan($id_pengaduan)
	{
		$data['dataUser']	= $this->pelmo->getDataUser();
		$data['waroeng']	= $this->warmo->getWaroeng();
		$data['area']	= $this->armo->getArea();
		$data['pengaduan']	= $this->pepemo->getPengaduanById($id_pengaduan);
		$data['title'] 		= 'Ubah Pengaduan - ' . $data['pengaduan']['isi_laporan'];

		// cek status pengaduan
		if ($data['pengaduan']['status_pengaduan'] != 'belum_ditanggapi') 
		{
			$isi_log = 'Pengaduan ' . $data['pengaduan']['isi_laporan'] . ' tidak dapat diubah karena telah ditanggapi oleh petugas';
			$this->session->set_flashdata('message-failed', $isi_log);
			redirect('pelaporPengaduan');
		}

		$this->form_validation->set_rules('id_waroeng', 'Waroeng', 'required|trim|is_natural_no_zero');
		$this->form_validation->set_rules('isi_laporan', 'Isi Laporan', 'required|trim');
		if ($this->form_validation->run() == false) {
		    $this->load->view('templates/header-pelapor', $data);
		    $this->load->view('pelapor_pengaduan/edit_pelapor_pengaduan', $data);
		    $this->load->view('templates/footer-pelapor', $data);  
		    $this->load->view('templates/include/form_area', $data);  
		} else {
		    $this->pepemo->editPelaporPengaduan($id_pengaduan);
		}
	}

	public function removePelaporPengaduan($id_pengaduan)
	{
		$data['pengaduan']	= $this->pepemo->getPengaduanById($id_pengaduan);

		// cek status pengaduan
		if ($tanggapan = $this->db->get_where('tanggapan', ['id_pengaduan' => $id_pengaduan])->row_array()) 
		{
			if ($tanggapan['status_tanggapan'] != null) 
			{
				$isi_log = 'Pengaduan ' . $data['pengaduan']['isi_laporan'] . ' tidak dapat dihapus karena telah ditanggapi oleh petugas';
				$this->session->set_flashdata('message-failed', $isi_log);
				redirect('pelaporPengaduan');
			}
		}

		$data['dataUser']	= $this->pelmo->getDataUser();
		$this->pepemo->removePelaporPengaduan($id_pengaduan);
	}
}
