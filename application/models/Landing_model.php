<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Landing_model extends CI_Model
{
	public function daftar()
	{
		$data = [
			'nama' => ucwords(strtolower($this->input->post('nama', true))),
			'username' => $this->input->post('username', true),
			'password' => password_hash($this->input->post('password', true), PASSWORD_DEFAULT),
			'no_telepon' => $this->input->post('no_telepon', true),
			'alamat' => $this->input->post('alamat', true)
		];

		$this->db->insert('pengguna', $data);

		$isi_log = 'Pengguna ' . $data['username'] . ' berhasil ditambahkan';
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('landing/masuk');
	}

	public function masuk()
	{
		$username = $this->input->post('username', true);
		$password = $this->input->post('password', true);

		// check username
		if ($dataUser = $this->db->get_where('pengguna', ['username' => $username])->row_array()) {
			// check password
			if (password_verify($password, $dataUser['password'])) {
				$dataSession = [
					'id_pengguna' => $dataUser['id_pengguna']
				];

				$this->session->set_userdata($dataSession);
				redirect('pelapor');
			} else {
				$this->session->set_flashdata('message-failed', 'Gagal masuk, password yang anda masukkan salah');
				redirect('landing/masuk');
			}
		} else {
			$this->session->set_flashdata('message-failed', 'Gagal masuk, username yang anda masukkan salah');
			redirect('landing/masuk');
		}
	}

	public function Pengaduan()
	{
		$dataUser = $this->admo->getDataUserAdmin();

		// Cek apakah user memilih "Lainnya" atau tidak
		$id_pengguna = $this->input->post('id_pengguna', true);
		$nama_pelapor = $this->input->post('nama_pelapor', true);
		$no_wa = $this->input->post('no_wa', true);
		$id_kategori = $this->input->post('id_area', true);
		$id_kategori = $this->input->post('id_kategori', true);
		$id_jabatan = $this->input->post('id_jabatan', true);


		// Jika "Lainnya" dipilih, gunakan nama manual, jika tidak pakai id_pengguna
		if ($id_pengguna === 'lainnya') {
			if (empty($nama_pelapor)) {
				$this->session->set_flashdata('message-danger', 'Nama pelapor harus diisi jika memilih "Lainnya".');
				redirect('pengaduan/addPengaduan');
				return;
			}
			$id_pengguna = null; // Kosongkan karena pakai nama manual
		} else {
			$nama_pelapor = null; // Kosongkan jika pakai id_pengguna
		}

		// Upload Foto
		$foto = $_FILES['foto']['name'];
		if ($foto) {
			$config['upload_path'] = './assets/img/img_pengaduan/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';

			$this->load->library('upload', $config);

			if ($this->upload->do_upload('foto')) {
				$new_foto = $this->upload->data('file_name');
			} else {
				$this->session->set_flashdata('message-danger', $this->upload->display_errors());
				redirect('pengaduan/addPengaduan');
				return;
			}
		} else {
			$new_foto = 'default.png'; // Gunakan default jika tidak upload foto
		}

		// Data yang akan dimasukkan ke database
		$data = [
			'isi_laporan' => $this->input->post('isi_laporan', true),
			'id_pengguna' => $id_pengguna, // Bisa null jika input manual digunakan
			'nama_pelapor' => $nama_pelapor, // Bisa null jika id_pengguna digunakan
			'no_wa' => $no_wa,
			'id_jabatan' => $id_jabatan,
			'id_waroeng' => $this->input->post('id_waroeng', true),
			'id_kategori' => $id_kategori,
			'id_subkategori' => $this->input->post('id_subkategori', true),
			'tgl_pengaduan' => date('Y-m-d\TH:i:s'),
			'foto' => $new_foto
		];

		// Simpan ke database
		$this->db->insert('pengaduan', $data);

		// Tambahkan log aktivitas
		$isi_log = 'Pengaduan ' . $data['isi_laporan'] . ' berhasil ditambahkan';
		$this->lomo->addLog($isi_log, $dataUser['id_user']);

		// Notifikasi sukses
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pengaduan');
	}

	public function getSubkategoriByIdKategori($id_kategori)
	{
		return $this->db->get_where('subkategori', ['id_kategori' => $id_kategori])->result_array();
	}

	public function getAllKategori()
	{
		return $this->db->get('kategori')->result_array();
	}

	public function getAll()
	{
		$this->db->select('
        p.id_pengaduan,
        p.isi_laporan,
        p.nama_pelapor,
        p.no_wa,
        p.tgl_pengaduan,
        p.foto,
        p.status_pengaduan,
        pengguna.username AS nama_pengguna,
        waroeng.id_waroeng,
        petugas.petugas,
        kategori.kategori,
        subkategori.subkategori,
        jabatan.jabatan
    ');
		$this->db->from('pengaduan p');
		$this->db->join('pengguna', 'p.id_pengguna = pengguna.id_pengguna', 'left');
		$this->db->join('waroeng', 'p.id_waroeng = waroeng.id_waroeng', 'left');
		$this->db->join('petugas', 'p.id_petugas = petugas.id_petugas', 'left');
		$this->db->join('kategori', 'p.id_kategori = kategori.id_kategori', 'left');
		$this->db->join('subkategori', 'p.id_subkategori = subkategori.id_subkategori', 'left');
		$this->db->join('jabatan', 'p.id_jabatan = jabatan.id_jabatan', 'left');
		$this->db->order_by('p.id_pengaduan', 'desc');

		$query = $this->db->get();
		return $query->result_array();
	}

	public function saran()
	{
		$data = [
			'nama' => ucwords(strtolower($this->input->post('nama', true))),
			'no_telepon' => $this->input->post('no_telepon', true),
			'alamat' => $this->input->post('alamat', true),
			'saran' => $this->input->post('saran', true),
			'tgl_saran' => date('Y-m-d\TH:i:s')
		];

		$this->db->insert('saran', $data);

		$isi_log = 'Saran ' . $data['nama'] . ' berhasil ditambahkan';
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('landing');
	}
}