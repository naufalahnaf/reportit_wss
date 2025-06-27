<?php
header('Content-Type: text/html; charset=utf-8');
$data = $_POST['data'];
$id = $_POST['id'];

if ($data == "waroeng") :
    $this->db->order_by('waroeng', 'asc');
    $waroeng = $this->db->get_where('waroeng', ['id_area' => $id])->result_array(); ?>
    
    <div class="form-group mt-3">
        <label for="form_waroeng">Pilih Waroeng</label>
        <select id="form_waroeng" name="id_waroeng" class="form-control" required>
            <option value="">-- Pilih Waroeng --</option>
            <?php foreach ($waroeng as $row): ?>
                <option value="<?= $row['id_waroeng']; ?>"><?= $row['waroeng']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
<?php endif; ?>
