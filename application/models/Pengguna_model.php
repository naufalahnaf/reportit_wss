<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengguna_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getPengguna()
	{
		$this->db->order_by('nama', 'asc');
		return $this->db->get('pengguna')->result_array();	
	}

	public function getPenggunaById($id_pengguna)
	{
		return $this->db->get_where('pengguna', ['id_pengguna' => $id_pengguna])->row_array();	
	}

	public function addPengguna()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan pengguna';
		$this->admo->userPrivilege('pengguna', $isi_log_2);

		$data = [
			'nama'		=> ucwords(strtolower($this->input->post('nama', true))),
			'username'	=> $this->input->post('username', true),
			'password'	=> password_hash($this->input->post('password', true), PASSWORD_DEFAULT),
			'no_telepon'=> $this->input->post('no_telepon', true),
			'alamat'	=> $this->input->post('alamat', true)
		];

		$this->db->insert('pengguna', $data);

		$isi_log = 'Pengguna ' . $data['username'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pengguna');
	}

	public function editPengguna($id_pengguna)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah pengguna ber id ' . $id_pengguna;
		$this->admo->userPrivilege('pengguna', $isi_log_2);

		$data_pengguna = $this->getPenggunaById($id_pengguna);
		$pengguna  = $data_pengguna['username'];
		$data = [
			'nama'		=> ucwords(strtolower($this->input->post('nama', true))),
			'no_telepon'=> $this->input->post('no_telepon', true),
			'alamat'	=> $this->input->post('alamat', true)
		];

		$this->db->update('pengguna', $data, ['id_pengguna' => $id_pengguna]);

		$isi_log = 'Pengguna ' . $pengguna . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pengguna');
	}

	public function removePengguna($id_pengguna)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus pengguna ber id ' . $id_pengguna;
		$this->admo->userPrivilege('pengguna', $isi_log_2);

		$data_pengguna = $this->getPenggunaById($id_pengguna);
		$pengguna  = $data_pengguna['username'];
		
		$this->db->delete('pengaduan', ['id_pengguna' => $id_pengguna]);
		$this->db->delete('pengguna', ['id_pengguna' => $id_pengguna]);
		$isi_log = 'Pengguna ' . $pengguna . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pengguna'); 
	}
}
