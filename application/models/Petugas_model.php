<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petugas_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getPetugas()
	{
		$this->db->order_by('petugas', 'asc');
		return $this->db->get('petugas')->result_array();	
	}

	public function getPetugasById($id_petugas)
	{
		return $this->db->get_where('petugas', ['id_petugas' => $id_petugas])->row_array();	
	}

	public function addPetugas()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan petugas';
		$this->admo->userPrivilege('petugas', $isi_log_2);

		$data = [
			'petugas'		=> ucwords(strtolower($this->input->post('petugas', true)))
		];

		$this->db->insert('petugas', $data);

		$isi_log = 'Petugas ' . $data['petugas'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('petugas');
	}

	public function editPetugas($id_petugas)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah petugas ber id ' . $id_petugas;
		$this->admo->userPrivilege('petugas', $isi_log_2);

		$data_petugas = $this->getPetugasById($id_petugas);
		$petugas  = $data_petugas['petugas'];
		$data = [
			'petugas'		=> ucwords(strtolower($this->input->post('petugas', true)))
		];

		$this->db->update('petugas', $data, ['id_petugas' => $id_petugas]);

		$isi_log = 'Petugas ' . $data['petugas'] . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('petugas');
	}

	public function removePetugas($id_petugas)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus petugas ber id ' . $id_petugas;
		$this->admo->userPrivilege('petugas', $isi_log_2);

		$data_petugas = $this->getPetugasById($id_petugas);
		$petugas  = $data_petugas['petugas'];
		
		$this->db->delete('waroeng', ['id_petugas' => $id_petugas]);
		$this->db->delete('petugas', ['id_petugas' => $id_petugas]);
		$isi_log = 'Petugas ' . $petugas . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('petugas'); 
	}
}