<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelapor_model extends CI_Model 
{
	public function checkLoginUser()
	{
		if (!$this->session->userdata('id_pengguna')) 
		{
			redirect('landing/masuk');
		}
	}

	public function getDataUser()
	{
		$id_pengguna = $this->session->userdata('id_pengguna');
		return $this->db->get_where('pengguna', ['id_pengguna' => $id_pengguna])->row_array();
	}

	public function changePassword()
	{
		$dataUser 	= $this->getDataUser();
		$id_pengguna 	= $dataUser['id_pengguna'];

		// check old password
		$old_password = $this->input->post('old_password', true);

		if (password_verify($old_password, $dataUser['password'])) 
		{
			$new_password = password_hash($this->input->post('new_password', true), PASSWORD_DEFAULT);

			$data = [
				'password' => $new_password
			];

			$this->db->update('pengguna', $data, ['id_pengguna' => $id_pengguna]);

			$isi_log = "Password berhasil diubah";
			$this->session->set_flashdata('message-success', $isi_log);
			redirect('pelapor/profile');
		}
		else
		{
			$isi_log = "Password gagal diubah, password lama tidak sesuai";
			$this->session->set_flashdata('message-failed', $isi_log);
			redirect('pelapor/changePassword');
		}
	}

	public function editProfile()
	{
		$dataUser 	= $this->getDataUser();
		$id_pengguna 	= $dataUser['id_pengguna'];

		$data = [
			'nama' => ucwords(strtolower($this->input->post('nama', true))),
			'no_telepon' => $this->input->post('no_telepon'),
			'alamat' => $this->input->post('alamat')
		];

		$this->db->update('pengguna', $data, ['id_pengguna' => $id_pengguna]);

		$isi_log = "Profil berhasil diubah";
		$this->session->set_flashdata('message-success', $isi_log);
		redirect('pelapor/profile');
	}
}