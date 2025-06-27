<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Waroeng_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getWaroeng()
	{
		$this->db->join('area', 'waroeng.id_area=area.id_area');
		$this->db->order_by('waroeng', 'asc');
		return $this->db->get('waroeng')->result_array();
	}

	public function getWaroengById($id_waroeng)
	{
		$this->db->join('area', 'waroeng.id_area=area.id_area');
		return $this->db->get_where('waroeng', ['id_waroeng' => $id_waroeng])->row_array();	
	}

	public function addWaroeng()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan waroeng';
		$this->admo->userPrivilege('waroeng', $isi_log_2);

		$data = [
			'waroeng'		=> ucwords(strtolower($this->input->post('waroeng', true))),
			'id_area'	=> $this->input->post('id_area', true)
		];

		$this->db->insert('waroeng', $data);

		$isi_log = 'Waroeng ' . $data['waroeng'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('waroeng');
	}

	public function editWaroeng($id_waroeng)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah waroeng ber id ' . $id_waroeng;
		$this->admo->userPrivilege('waroeng', $isi_log_2);

		$data_waroeng = $this->getWaroengById($id_waroeng);
		$data = [
			'waroeng'		=> ucwords(strtolower($this->input->post('waroeng', true))),
			'id_area'	=> $this->input->post('id_area', true)
		];

		$this->db->update('waroeng', $data, ['id_waroeng' => $id_waroeng]);

		$isi_log = 'Waroeng ' . $data['waroeng'] . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('waroeng');
	}

	public function removeWaroeng($id_waroeng)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus waroeng ber id ' . $id_waroeng;
		$this->admo->userPrivilege('waroeng', $isi_log_2);

		$data_waroeng = $this->getWaroengById($id_waroeng);
		$waroeng  = $data_waroeng['waroeng'];
		
		$this->db->delete('pengaduan', ['id_waroeng' => $id_waroeng]);
		$this->db->delete('waroeng', ['id_waroeng' => $id_waroeng]);
		$isi_log = 'Waroeng ' . $waroeng . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('waroeng'); 
	}

	public function getAllWaroeng()
    {
        return $this->db->get('waroeng')->result_array();
    }
}
