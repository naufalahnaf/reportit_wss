<div class="container">
    <form action="<?= base_url('pengaduan/simpanPetugas/' . $pengaduan['id_pengaduan']) ?>" method="POST">
        <div class="form-group">
            <label for="id_petugas">Pilih Petugas</label>
            <select name="id_petugas" id="id_petugas" class="form-control">
                <option value="">-- Pilih Petugas --</option>
                <?php foreach ($petugas as $petugas_item): ?>
                    <option value="<?= $petugas_item['id_petugas'] ?>" <?= set_select('id_petugas', $petugas_item['id_petugas'], $petugas_item['id_petugas'] == $pengaduan['id_petugas']) ?>>
                        <?= $petugas_item['petugas'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
            <?= form_error('id_petugas', '<small class="text-danger">', '</small>'); ?>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="<?= base_url('pengaduan') ?>" class="btn btn-secondary">Batal</a>
    </form>
</div>
