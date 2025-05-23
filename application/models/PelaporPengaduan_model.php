<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PelaporPengaduan_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Pelapor_model', 'pelmo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getPengaduanByIdPengguna($id_pengguna)
	{
		$this->db->join('pengguna', 'pengaduan.id_pengguna=pengguna.id_pengguna');
		$this->db->join('waroeng', 'pengaduan.id_waroeng=waroeng.id_waroeng');
		$this->db->order_by('id_pengaduan', 'desc');
		return $this->db->get_where('pengaduan', ['pengaduan.id_pengguna' => $id_pengguna])->result_array();	
	}

	public function getPengaduanFilterByIdPengguna($dari_tgl, $sampai_tgl, $status_pengaduan, $id_pengguna)
	{
		$dari_tgl = date("Y-m-d\T00:00:01", strtotime($dari_tgl));
		$sampai_tgl = date("Y-m-d\T23:59:59", strtotime($sampai_tgl));
		$this->db->join('pengguna', 'pengaduan.id_pengguna=pengguna.id_pengguna');
		$this->db->join('waroeng', 'pengaduan.id_waroeng=waroeng.id_waroeng');
		$this->db->order_by('id_pengaduan', 'desc');
		if ($status_pengaduan == 'semua')
		{
			return $this->db->get_where('pengaduan', ['tgl_pengaduan >=' => $dari_tgl, 'tgl_pengaduan <=' => $sampai_tgl, 'pengaduan.id_pengguna' => $id_pengguna])->result_array();
		}
		else
		{
			return $this->db->get_where('pengaduan', ['tgl_pengaduan >=' => $dari_tgl, 'tgl_pengaduan <=' => $sampai_tgl, 'status_pengaduan' => $status_pengaduan, 'pengaduan.id_pengguna' => $id_pengguna])->result_array();
		}
	}

	public function getPengaduanByStatusPengaduanByIdPengguna($status_pengaduan, $id_pengguna)
	{
		$this->db->join('pengguna', 'pengaduan.id_pengguna=pengguna.id_pengguna');
		$this->db->join('waroeng', 'pengaduan.id_waroeng=waroeng.id_waroeng');
		$this->db->order_by('id_pengaduan', 'desc');
		if ($status_pengaduan) 
		{
			return $this->db->get_where('pengaduan', ['pengaduan.status_pengaduan' => $status_pengaduan, 'pengaduan.id_pengguna' => $id_pengguna])->result_array();
		} 
		else 
		{
			return $this->db->get_where('pengaduan', ['pengaduan.id_pengguna' => $id_pengguna])->result_array();
		}
	}

	public function getPengaduanById($id_pengaduan)
	{
		$this->db->join('pengguna', 'pengaduan.id_pengguna=pengguna.id_pengguna');
		$this->db->join('waroeng', 'pengaduan.id_waroeng=waroeng.id_waroeng');
		return $this->db->get_where('pengaduan', ['id_pengaduan' => $id_pengaduan])->row_array();	
	}

	public function addPelaporPengaduan()
	{
		$dataUser = $this->pelmo->getDataUser();
		
		$foto = $_FILES['foto']['name'];
		if ($foto) {
			$config['upload_path'] = './assets/img/img_pengaduan/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
		
			$this->load->library('upload', $config);
		
			if ($this->upload->do_upload('foto')) {
				$new_foto = $this->upload->data('file_name');
				$this->db->set('foto', $new_foto);
			} else {
				echo $this->upload->display_errors();
			}
		}
		
		$data = [
			'isi_laporan'	=> $this->input->post('isi_laporan', true),
			'id_waroeng'	=> $this->input->post('id_waroeng', true),
			'id_pengguna'	=> $dataUser['id_pengguna'],
			'tgl_pengaduan' => date('Y-m-d\TH:i:s')
		];

		$this->db->insert('pengaduan', $data);

		$isi_log = 'Pengaduan ' . $data['isi_laporan'] . ' berhasil ditambahkan';
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pelaporPengaduan');
	}

	public function editPelaporPengaduan($id_pengaduan)
	{
		$dataUser = $this->pelmo->getDataUser();
		$data_pengaduan = $this->getPengaduanById($id_pengaduan);

		$foto = $_FILES['foto']['name'];
		if ($foto) 
		{
			$config['upload_path'] = './assets/img/img_pengaduan/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
		
			$this->load->library('upload', $config);
		
			if ($this->upload->do_upload('foto')) 
			{
				$old_foto = $data_pengaduan['foto'];
				if ($old_foto != 'default.png') 
				{
					unlink(FCPATH . 'assets/img/img_pengaduan/' . $data_pengaduan['foto']);
				}
				$new_foto = $this->upload->data('file_name');
				$this->db->set('foto', $new_foto);
			}
			else 
			{
				echo $this->upload->display_errors();
			}
		}
		
		$data = [
			'isi_laporan'	=> $this->input->post('isi_laporan', true),
			'id_waroeng'	=> $this->input->post('id_waroeng', true),
			'tgl_pengaduan' => date('Y-m-d\TH:i:s')
		];

		$this->db->update('pengaduan', $data, ['id_pengaduan' => $id_pengaduan]);

		$isi_log = 'Pengaduan ' . $data['isi_laporan'] . ' berhasil diubah';
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pelaporPengaduan');
	}

	public function removePelaporPengaduan($id_pengaduan)
	{
		$dataUser = $this->pelmo->getDataUser();
		$data_pengaduan = $this->getPengaduanById($id_pengaduan);
		$pengaduan  = $data_pengaduan['isi_laporan'];
		
		$old_foto = $data_pengaduan['foto'];
		if ($old_foto != 'default.png') 
		{
			unlink(FCPATH . 'assets/img/img_pengaduan/' . $data_pengaduan['foto']);
		}
		
		$this->db->delete('tanggapan', ['id_pengaduan' => $id_pengaduan]);
		$this->db->delete('pengaduan', ['id_pengaduan' => $id_pengaduan]);
		$isi_log = 'Pengaduan ' . $pengaduan . ' berhasil dihapus';
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pelaporPengaduan'); 
	}
}
