<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jabatan_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getJabatan()
	{
		$this->db->order_by('jabatan', 'asc');
		return $this->db->get('jabatan')->result_array();	
	}

	public function getJabatanById($id_jabatan)
	{
		return $this->db->get_where('jabatan', ['id_jabatan' => $id_jabatan])->row_array();	
	}

	public function addJabatan()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan jabatan';
		$this->admo->userPrivilege('jabatan', $isi_log_2);

		$data = [
			'jabatan'		=> ucwords(strtolower($this->input->post('jabatan', true)))
		];

		$this->db->insert('jabatan', $data);

		$isi_log = 'Jabatan ' . $data['jabatan'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('jabatan');
	}

	public function editJabatan($id_jabatan)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah jabatan ber id ' . $id_jabatan;
		$this->admo->userPrivilege('jabatan', $isi_log_2);

		$data_jabatan = $this->getJabatanById($id_jabatan);
		$jabatan  = $data_jabatan['jabatan'];
		$data = [
			'jabatan'		=> ucwords(strtolower($this->input->post('jabatan', true)))
		];

		$this->db->update('jabatan', $data, ['id_jabatan' => $id_jabatan]);

		$isi_log = 'Jabatan ' . $data['jabatan'] . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('jabatan');
	}

	public function removeJabatan($id_jabatan)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus jabatan ber id ' . $id_jabatan;
		$this->admo->userPrivilege('jabatan', $isi_log_2);

		$data_jabatan = $this->getJabatanById($id_jabatan);
		$jabatan  = $data_jabatan['jabatan'];
		
		// $this->db->delete('waroeng', ['id_jabatan' => $id_jabatan]);
		$this->db->delete('jabatan', ['id_jabatan' => $id_jabatan]);
		$isi_log = 'Jabatan ' . $jabatan . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('jabatan'); 
	}
}