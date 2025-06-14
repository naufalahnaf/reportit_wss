<?php 
$data = $_POST['data'];
$id = $_POST['id'];

if($data == "subkategori") :
	$this->db->order_by('subkategori', 'asc');
	$subkategori = $this->db->get_where('subkategori', ['id_kategori' => $id])->result_array();
	foreach ($subkategori as $dataSubkategori): ?>
		<option value="<?= $dataSubkategori['id_subkategori']; ?>"><?= $dataSubkategori['subkategori']; ?></option>
	<?php endforeach;
endif;
?>
