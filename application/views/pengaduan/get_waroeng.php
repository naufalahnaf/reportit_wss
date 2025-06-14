<?php
$data = $_POST['data'];
$id = $_POST['id'];
?>

<?php if ($data == "waroeng"): ?>
	<select id="form_waroeng" name="id_waroeng">
		<?php
		$this->db->order_by('waroeng', 'asc');
		$waroeng = $this->db->get_where('waroeng', ['waroeng.id_area' => $id])->result_array();
		?>
		<?php foreach ($waroeng as $dataWaroeng): ?>
			<option value="<?= $dataWaroeng['id_waroeng']; ?>"><?= $dataWaroeng['waroeng']; ?></option>
		<?php endforeach ?>
	</select>

<?php endif ?>