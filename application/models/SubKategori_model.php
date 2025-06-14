<?php
defined('BASEPATH') or exit('No direct script access allowed');

class SubKategori_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin_model', 'admo');
        $this->load->model('Log_model', 'lomo');
    }

    public function getSubKategori()
    {
        // Pastikan nama tabel 'subkategori' dan kolom 'id_kategori' kecil
        $this->db->join('kategori', 'subkategori.id_kategori = kategori.id_kategori');
        $this->db->order_by('subkategori.subkategori', 'asc');  // Gunakan kolom dengan nama kecil
        return $this->db->get('subkategori')->result_array();  // Tabel 'subkategori' juga harus kecil
    }

    public function getSubKategoriById($id_subkategori)
    {
        // Sama seperti sebelumnya, gunakan huruf kecil
        $this->db->join('kategori', 'subkategori.id_kategori = kategori.id_kategori');
        return $this->db->get_where('subkategori', ['id_subkategori' => $id_subkategori])->row_array();
    }

    public function addSubKategori()
    {
        $dataUser = $this->admo->getDataUserAdmin();
        $isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menambahkan subkategori';
        $this->admo->userPrivilege('subkategori', $isi_log_2);

        $data = [
            'subkategori' => ucwords(strtolower($this->input->post('subkategori', true))),
            'id_kategori' => $this->input->post('id_kategori', true)
        ];

        // Pastikan tabelnya menggunakan nama kecil
        $this->db->insert('subkategori', $data);

        $isi_log = 'SubKategori ' . $data['subkategori'] . ' berhasil ditambahkan';
        $this->lomo->addLog($isi_log, $dataUser['id_user']);
        $this->session->set_flashdata('message-success', $isi_log);
        redirect('subkategori');
    }

    public function editSubKategori($id_subkategori)
    {
        $dataUser = $this->admo->getDataUserAdmin();
        $isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba mengubah subkategori ber id ' . $id_subkategori;
        $this->admo->userPrivilege('subkategori', $isi_log_2);

        $data = [
            'subkategori' => ucwords(strtolower($this->input->post('subkategori', true))),
            'id_kategori' => $this->input->post('id_kategori', true)
        ];

        // Update dengan nama tabel kecil
        $this->db->update('subkategori', $data, ['id_subkategori' => $id_subkategori]);

        $isi_log = 'SubKategori ' . $data['subkategori'] . ' berhasil diubah';
        $this->lomo->addLog($isi_log, $dataUser['id_user']);
        $this->session->set_flashdata('message-success', $isi_log);
        redirect('subkategori');
    }

    public function removeSubKategori($id_subkategori)
    {
        $dataUser = $this->admo->getDataUserAdmin();
        $isi_log_2 = 'User ' . $dataUser['username'] . ' mencoba menghapus subkategori ber id ' . $id_subkategori;
        $this->admo->userPrivilege('subkategori', $isi_log_2);

        $data_subkategori = $this->getSubKategoriById($id_subkategori);
        $subkategori = $data_subkategori['subkategori'];

        // Pastikan penghapusan berdasarkan nama tabel kecil
        $this->db->delete('pengaduan', ['id_subkategori' => $id_subkategori]);
        $this->db->delete('subkategori', ['id_subkategori' => $id_subkategori]);

        $isi_log = 'SubKategori ' . $subkategori . ' berhasil dihapus';
        $this->lomo->addLog($isi_log, $dataUser['id_user']);
        $this->session->set_flashdata('message-success', $isi_log);
        redirect('subkategori');
    }

    public function getAllSubkategori()
    {
        return $this->db->get('subkategori')->result_array();
    }
}
