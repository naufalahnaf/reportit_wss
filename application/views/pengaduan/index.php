<style>
    .table td, .table th {
        font-size: 0.8rem;
        vertical-align: middle;
    }

    .truncate {
        max-width: 150px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .img-w-75-hm-100 {
        max-width: 75px;
        max-height: 100px;
    }

    /* Sticky untuk kolom Aksi */
    .sticky-col {
        position: sticky;
        right: 0;
        background: white;
        z-index: 2;
    }

    .sticky-col-header {
        position: sticky;
        right: 0;
        background: #343a40;
        color: white;
        z-index: 3;
    }

    .table-responsive {
        overflow-x: auto;
    }
</style>

<div class="container">
    <!-- Bagian Judul dan Tombol Tambah -->
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
                <a href="<?= base_url('pengaduan/addPengaduan'); ?>" class="btn btn-primary">
                    <i class="fas fa-fw fa-plus"></i> Tambah Pengaduan
                </a>
            </div>
        </div>
    </div>

    <!-- Tombol Filter Status -->
    <div class="row justify-content-center">
        <?php
        $statusList = [
            'index' => ['All', 'info', 'clipboard-list'],
            'belum_ditanggapi' => ['Belum ditanggapi', 'secondary', 'times'],
            'proses' => ['Proses', 'danger', 'sync'],
            'valid' => ['Valid', 'success', 'check'],
            'pengerjaan' => ['Pengerjaan', 'warning', 'hammer'],
            'selesai' => ['Selesai', 'primary', 'check-double'],
            'tidak_valid' => ['Tidak Valid', 'secondary', 'times'],
        ];
        foreach ($statusList as $uri => [$label, $color, $icon]): ?>
            <div class="col text-center m-1">
                <a href="<?= base_url('pengaduan/index' . ($uri != 'index' ? '/' . $uri : '')); ?>" class="btn btn-sm btn-<?= $color; ?>">
                    <i class="fas fa-fw fa-<?= $icon; ?>"></i> <?= $label; ?>
                </a>
            </div>
        <?php endforeach ?>
    </div>

    <!-- Tabel Pengaduan -->
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
                            <th>Tanggal</th>
                            <th>Kategori</th>
                            <th class="truncate">Subkategori</th>
                            <th class="truncate">Isi</th>
                            <th>Foto</th>
                            <th>Petugas</th>
                            <th>Status</th>
                            <th>Tgl Tanggapan</th>
                            <th class="truncate">Tanggapan</th>
                            <th class="sticky-col-header">Aksi</th>
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
                                <td class="truncate" title="<?= $dp['subkategori']; ?>"><?= $dp['subkategori']; ?></td>
                                <td class="truncate" title="<?= $dp['isi_laporan']; ?>"><?= $dp['isi_laporan']; ?></td>
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
                                        <i class="fas fa-exchange-alt"></i>
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
                                <td class="truncate" title="<?= $getTanggapan['isi_tanggapan'] ?? '-'; ?>">
                                    <?= $getTanggapan['isi_tanggapan'] ?? '-'; ?>
                                </td>
                                <td class="text-center sticky-col">
                                    <a href="<?= base_url('tanggapan/index/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-info m-1" title="Tanggapi">
                                        <i class="fas fa-reply"></i>
                                    </a>
                                    <?php if ($dataUser['jabatan'] == 'administrator'): ?>
                                        <a href="<?= base_url('pengaduan/removePengaduan/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-danger m-1 btn-delete" data-nama="<?= $dp['isi_laporan']; ?>" title="Hapus">
                                            <i class="fas fa-trash"></i>
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
