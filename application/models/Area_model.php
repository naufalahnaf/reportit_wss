<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Area_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getArea()
	{
		$this->db->order_by('area', 'asc');
		return $this->db->get('area')->result_array();	
	}

	public function getAreaById($id_area)
	{
		return $this->db->get_where('area', ['id_area' => $id_area])->row_array();	
	}

	public function addArea()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan area';
		$this->admo->userPrivilege('area', $isi_log_2);

		$data = [
			'area'		=> ucwords(strtolower($this->input->post('area', true)))
		];

		$this->db->insert('area', $data);

		$isi_log = 'Area ' . $data['area'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('area');
	}

	public function editArea($id_area)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah area ber id ' . $id_area;
		$this->admo->userPrivilege('area', $isi_log_2);

		$data_area = $this->getAreaById($id_area);
		$area  = $data_area['area'];
		$data = [
			'area'		=> ucwords(strtolower($this->input->post('area', true)))
		];

		$this->db->update('area', $data, ['id_area' => $id_area]);

		$isi_log = 'Area ' . $data['area'] . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('area');
	}

	public function removeArea($id_area)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus area ber id ' . $id_area;
		$this->admo->userPrivilege('area', $isi_log_2);

		$data_area = $this->getAreaById($id_area);
		$area  = $data_area['area'];
		
		$this->db->delete('waroeng', ['id_area' => $id_area]);
		$this->db->delete('area', ['id_area' => $id_area]);
		$isi_log = 'Area ' . $area . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('area'); 
	}
}