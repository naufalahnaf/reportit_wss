<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kategori_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model', 'admo');
		$this->load->model('Log_model', 'lomo');
	}

	public function getKategori()
	{
		$this->db->order_by('kategori', 'asc');
		return $this->db->get('kategori')->result_array();
	}

	public function getKategoriById($id_kategori)
	{
		return $this->db->get_where('kategori', ['id_kategori' => $id_kategori])->row_array();
	}

	public function addKategori()
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan kategori';
		$this->admo->userPrivilege('kategori', $isi_log_2);

		$data = [
			'kategori'		=> ucwords(strtolower($this->input->post('kategori', true)))
		];

		$this->db->insert('kategori', $data);

		$isi_log = 'Kategori ' . $data['kategori'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('kategori');
	}

	public function editKategori($id_kategori)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah kategori ber id ' . $id_kategori;
		$this->admo->userPrivilege('kategori', $isi_log_2);

		$data_kategori = $this->getKategoriById($id_kategori);
		$kategori  = $data_kategori['kategori'];
		$data = [
			'kategori'		=> ucwords(strtolower($this->input->post('kategori', true)))
		];

		$this->db->update('kategori', $data, ['id_kategori' => $id_kategori]);

		$isi_log = 'Kategori ' . $data['kategori'] . ' berhasil diubah';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('kategori');
	}

	public function removeKategori($id_kategori)
	{
		$dataUser = $this->admo->getDataUserAdmin();
		$isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus kategori ber id ' . $id_kategori;
		$this->admo->userPrivilege('kategori', $isi_log_2);

		$data_kategori = $this->getKategoriById($id_kategori);
		$kategori  = $data_kategori['kategori'];

		$this->db->delete('subkategori', ['id_kategori' => $id_kategori]);
		$this->db->delete('kategori', ['id_kategori' => $id_kategori]);
		$isi_log = 'Kategori ' . $kategori . ' berhasil dihapus';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('kategori');
	}

	public function getAllKategori()
	{
		return $this->db->get('kategori')->result_array();
	}

}
