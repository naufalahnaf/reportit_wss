<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Validasi request
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['data'], $_POST['id'])) {
    $data = $_POST['data'];
    $id = (int) $_POST['id'];

    if ($data === "subkategori") {
        $CI =& get_instance();
        $CI->load->database();

        $CI->db->order_by('subkategori', 'ASC');
        $subkategoriList = $CI->db->get_where('subkategori', ['id_kategori' => $id])->result_array();

        echo '<label for="form_subkategori">Pilih Subkategori</label>';
        echo '<select id="form_subkategori" name="id_subkategori" class="form-control" required>';
        echo '<option value="">-- Pilih Subkategori --</option>';
        foreach ($subkategoriList as $sub) {
            echo '<option value="' . $sub['id_subkategori'] . '">' . htmlspecialchars($sub['subkategori']) . '</option>';
        }
        echo '</select>';
    }
} else {
    echo '<p>Data tidak valid.</p>';
}
