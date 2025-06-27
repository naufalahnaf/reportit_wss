<?php 
	$proses = $this->db->get_where('pengaduan', ['status_pengaduan' => 'proses'])->num_rows();
	$valid = $this->db->get_where('pengaduan', ['status_pengaduan' => 'valid'])->num_rows();
	$pengerjaan = $this->db->get_where('pengaduan', ['status_pengaduan' => 'pengerjaan'])->num_rows();
	$selesai = $this->db->get_where('pengaduan', ['status_pengaduan' => 'selesai'])->num_rows();
	$tidak_valid = $this->db->get_where('pengaduan', ['status_pengaduan' => 'tidak_valid'])->num_rows();
	$belum_ditanggapi = $this->db->get_where('pengaduan', ['status_pengaduan' => 'belum_ditanggapi'])->num_rows();
?>


<div class="container">
	<div class="row justify-content-center py-3">
		<div class="col-lg">
			<h3><i class="fas fa-fw fa-tachometer-alt"></i> Dasbor</h3>
		</div>
	</div>
	<div class="row my-3">
		<div class="col-lg-3">
            <div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-times"></i> Belum ditanggapi</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $belum_ditanggapi; ?></span></h6>
	            </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-sync"></i> Proses</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $proses; ?></span></h6>
	            </div>
            </div>
        </div>
        <div class="col-lg-3">
        	<div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-check"></i> Valid</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $valid; ?></span></h6>
	            </div>
	        </div>
	    </div>
        <div class="col-lg-3">
	        <div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-hammer"></i> Pengerjaan</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $pengerjaan; ?></span></h6>
	            </div>
	        </div>
        </div>
        <div class="col-lg-3">
	        <div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-check-double"></i> Selesai</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $selesai; ?></span></h6>
	            </div>
	        </div>
        </div>
        <div class="col-lg-3">
	        <div class="card shadow">
	            <div class="card-body">
	              <h5><i class="fas fa-fw fa-times"></i> Tidak Valid</h5>
	              <h6 class="text-muted mt-3">Jumlah data: <span class="bg-info py-1 px-2 rounded"><?= $tidak_valid; ?></span></h6>
	            </div>
	        </div>
        </div>
	</div>
	<hr>
	<div class="row my-3">
		<div class="col-lg">
			<h4><i class="fas fa-fw fa-times"></i> Laporan yang belum ditanggapi</h4>
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
                        <?php foreach ($pengaduan_belum_ditanggapi as $dp): ?>
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