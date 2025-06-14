<div class="container">
    <div class="row justify-content-center py-3">
        <div class="col-lg header-title">
            <h3><i class="fas fa-fw fa-file-alt"></i> Laporan Pengaduan</h3>
        </div>
    </div>

    <!-- Form Filter -->
    <div class="row py-3">
        <div class="col-lg-10">
            <form method="post" action="<?= base_url('laporan'); ?>">
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="dari_tgl">Dari Tanggal</label>
                            <input type="date" class="form-control" name="dari_tgl" id="dari_tgl"
                                value="<?= isset($_POST['dari_tgl']) ? $_POST['dari_tgl'] : date('Y-m-01'); ?>"
                                required>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="sampai_tgl">Sampai Tanggal</label>
                            <input type="date" class="form-control" name="sampai_tgl" id="sampai_tgl"
                                value="<?= isset($_POST['sampai_tgl']) ? $_POST['sampai_tgl'] : date('Y-m-d'); ?>"
                                required>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="status_pengaduan">Status Pengaduan</label>
                            <select class="form-control" name="status_pengaduan" id="status_pengaduan">
                                <option value="semua" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'semua' ? 'selected' : ''; ?>>Semua</option>
                                <option value="belum_ditanggapi" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'belum_ditanggapi' ? 'selected' : ''; ?>>Belum
                                    Ditanggapi</option>
                                <option value="proses" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'proses' ? 'selected' : ''; ?>>Proses</option>
                                <option value="valid" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'valid' ? 'selected' : ''; ?>>Valid</option>
                                <option value="pengerjaan" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'pengerjaan' ? 'selected' : ''; ?>>Pengerjaan</option>
                                <option value="selesai" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'selesai' ? 'selected' : ''; ?>>Selesai</option>
                                <option value="tidak_valid" <?= isset($_POST['status_pengaduan']) && $_POST['status_pengaduan'] == 'tidak_valid' ? 'selected' : ''; ?>>Tidak Valid</option>
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="kategori">Kategori</label>
                            <select class="form-control" name="kategori" id="kategori">
                                <option value="semua" <?= isset($_POST['kategori']) && $_POST['kategori'] == 'semua' ? 'selected' : ''; ?>>Semua</option>
                                <?php foreach ($kategori as $k) : ?>
                                    <option value="<?= $k['id_kategori']; ?>" <?= isset($_POST['kategori']) && $_POST['kategori'] == $k['id_kategori'] ? 'selected' : ''; ?>>
                                        <?= $k['kategori']; ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="subkategori">Subkategori</label>
                            <select class="form-control" name="subkategori" id="subkategori">
                                <option value="semua" <?= isset($_POST['subkategori']) && $_POST['subkategori'] == 'semua' ? 'selected' : ''; ?>>Semua</option>
                                <?php foreach ($subkategori as $s) : ?>
                                    <option value="<?= $s['id_subkategori']; ?>" <?= isset($_POST['subkategori']) && $_POST['subkategori'] == $s['id_subkategori'] ? 'selected' : ''; ?>>
                                        <?= $s['subkategori']; ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary" name="btnFilter"><i class="fas fa-fw fa-filter"></i>
                        Filter</button>
                    <a href="<?= base_url('laporan'); ?>" class="btn btn-danger"><i class="fas fa-fw fa-times"></i>
                        Reset</a>
                    <?php if (isset($filter)): ?>
                        <a href="<?= base_url('laporan/export_excel/' . $filter['dari_tgl'] . '/' . $filter['sampai_tgl'] . '/' . $filter['status_pengaduan'] . '/' . $filter['kategori'] . '/' . $filter['subkategori']) ?>"
                            class="btn btn-success not-printed">
                            <i class="fas fa-file-excel"></i> Export Excel
                        </a>
                    <?php else: ?>
                        <div class="alert alert-warning">Silakan lakukan filter terlebih dahulu untuk mengaktifkan tombol export.</div>
                    <?php endif; ?>



                </div>
            </form>
        </div>
    </div>

    <!-- Tabel Laporan Pengaduan -->
    <div class="row py-3">
        <div class="col-lg">
            <div class="table-responsive">
                <table class="table table-bordered" id="table_id">
                    <thead class="thead-dark">
                        <tr>
                            <th>No.</th>
                            <th>Waroeng</th>
                            <th>Pelapor</th>
                            <th>Jabatan</th>
                            <th>No HP</th>
                            <th>Tanggal Pengaduan</th>
                            <th>Kategori</th>
                            <th>Subkategori</th>
                            <th>Isi Laporan</th>
                            <th>Foto</th>
                            <th>Petugas</th>
                            <th>Status</th>
                            <th>Waktu Tanggapan</th>
                            <!-- <th>Waktu Selesai</th> -->
                            <th>Tanggapan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($pengaduan as $dp): ?>
                            <?php
                            $getTanggapan = $this->db->order_by('id_tanggapan', 'desc')
                                ->get_where('tanggapan', ['id_pengaduan' => $dp['id_pengaduan']])
                                ->row_array();

                            $status = ucwords(str_replace('_', ' ', $dp['status_pengaduan']));
                            ?>
                            <tr>
                                <td><?= $i++; ?></td>
                                <td><?= $dp['waroeng']; ?></td>
                                <td><?= !empty($dp['username']) ? $dp['username'] : $dp['nama_pelapor']; ?></td>
                                <td><?= !empty($dp['jabatan']) ? $dp['jabatan'] : '-'; ?></td>
                                <td>
                                    <?php
                                    $hp = !empty($dp['no_telepon']) ? '<a href="https://wa.me/' . preg_replace('/[^0-9]/', '', $dp['no_telepon']) . '" target="_blank">' . $dp['no_telepon'] . '</a>' : '';
                                    $wa = !empty($dp['no_wa']) ? '<a href="https://wa.me/' . preg_replace('/[^0-9]/', '', $dp['no_wa']) . '" target="_blank">' . $dp['no_wa'] . '</a>' : '';
                                    echo $hp . ($hp && $wa ? '<br>' : '') . $wa;
                                    ?>
                                </td>
                                <td><?= $dp['tgl_pengaduan']; ?></td>
                                <td><?= !empty($dp['kategori']) ? $dp['kategori'] : '-'; ?></td>
                                <td><?= $dp['subkategori']; ?></td>
                                <td><?= $dp['isi_laporan']; ?></td>
                                <td class="text-center">
                                    <?php if (!empty($dp['foto'])): ?>
                                        <a href="<?= base_url('assets/img/img_pengaduan/') . $dp['foto']; ?>" class="enlarge">
                                            <img src="<?= base_url('assets/img/img_pengaduan/') . $dp['foto']; ?>" class="img-fluid img-w-75-hm-100" alt="<?= $dp['foto']; ?>">
                                        </a>
                                    <?php else: ?>
                                        -
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <?php if (!empty($dp['petugas'])): ?>
                                        <span class="badge bg-success"><i class="fas fa-user-check"></i> <?= $dp['petugas']; ?></span>
                                    <?php else: ?>
                                        <span class="badge bg-secondary"><i class="fas fa-user-times"></i> Belum ditugaskan</span>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <?php
                                    $btnClass = match ($dp['status_pengaduan']) {
                                        'proses' => 'danger',
                                        'valid' => 'success',
                                        'pengerjaan' => 'warning',
                                        'selesai' => 'primary',
                                        'tidak_valid', 'belum_ditanggapi' => 'secondary',
                                        default => 'secondary'
                                    };
                                    ?>
                                    <button type="button" class="btn btn-sm btn-<?= $btnClass; ?>">
                                        <?= $status; ?>
                                    </button>
                                </td>
                                <td><?= $getTanggapan['tgl_tanggapan'] ?? '-'; ?></td>
                                <!-- <td><?= $dp['tgl_selesai'] ?? '-'; ?></td> -->
                                <td><?= $getTanggapan['isi_tanggapan'] ?? '-'; ?></td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>