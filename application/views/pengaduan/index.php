<div class="container">
    <div class="row justify-content-center py-3">
        <div class="col-lg header-title">
            <?php if ($this->uri->segment(3) == 'proses'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Proses</h3>
            <?php elseif ($this->uri->segment(3) == 'valid'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Valid</h3>
            <?php elseif ($this->uri->segment(3) == 'pengerjaan'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Pengerjaan</h3>
            <?php elseif ($this->uri->segment(3) == 'selesai'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Selesai</h3>
            <?php elseif ($this->uri->segment(3) == 'tidak_valid'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Tidak Valid</h3>
            <?php elseif ($this->uri->segment(3) == 'belum_ditanggapi'): ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Pengaduan Belum ditanggapi</h3>
            <?php else: ?>
                <h3><i class="fas fa-fw fa-exclamation"></i> Semua Pengaduan</h3>
            <?php endif ?>
            <div class="col-lg header-button">
                <a href="<?= base_url('pengaduan/addPengaduan'); ?>" class="btn btn-primary"><i
                        class="fas fa-fw fa-plus"></i> Tambah Pengaduan</a>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index'); ?>" class="btn btn-info"><i
                    class="fas fa-fw fa-clipboard-list"></i> All</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/belum_ditanggapi'); ?>" class="btn btn-sm btn-secondary"><i
                    class="fas fa-fw fa-times"></i> Belum ditanggapi</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/proses'); ?>" class="btn btn-danger"><i
                    class="fas fa-fw fa-sync"></i> Proses</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/valid'); ?>" class="btn btn-success"><i
                    class="fas fa-fw fa-check"></i> Valid</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/pengerjaan'); ?>" class="btn btn-warning"><i
                    class="fas fa-fw fa-hammer"></i> Pengerjaan</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/selesai'); ?>" class="btn btn-primary"><i
                    class="fas fa-fw fa-check-double"></i> Selesai</a>
        </div>
        <div class="col text-center m-1">
            <a href="<?= base_url('pengaduan/index/tidak_valid'); ?>" class="btn btn-secondary"><i
                    class="fas fa-fw fa-times"></i> Tidak Valid</a>
        </div>
    </div>
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
                            <th>Waktu Selesai</th>
                            <th>Tanggapan</th>
                            <th>Aksi</th>
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
                                    <a href="<?= site_url('pengaduan/gantiPetugas/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-outline-warning ms-2 mt-1" title="Ganti Petugas">
                                        <i class="fas fa-exchange-alt"></i> Ganti
                                    </a>
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
                                <td><?= $dp['tgl_selesai'] ?? '-'; ?></td>
                                <td><?= $getTanggapan['isi_tanggapan'] ?? '-'; ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('tanggapan/index/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-info m-1">
                                        <i class="fas fa-fw fa-reply"></i>
                                    </a>
                                    <?php if ($dataUser['jabatan'] == 'administrator'): ?>
                                        <a href="<?= base_url('pengaduan/removePengaduan/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-danger m-1 btn-delete" data-nama="<?= $dp['isi_laporan']; ?>">
                                            <i class="fas fa-fw fa-trash"></i>
                                        </a>
                                    <?php endif ?>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>

                </table>
            </div>
        </div>
    </div>
</div>