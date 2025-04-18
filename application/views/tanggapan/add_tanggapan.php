<?php 
	// cek apakah status sudah selesai
	if ($pengaduan['status_pengaduan'] == 'selesai') 
	{
		redirect('tanggapan/index/' . $pengaduan['id_pengaduan']);
		exit;
	}
?>

<?php if (validation_errors()): ?>
  <div class="toast bg-danger" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false" style="z-index: 999999; position: fixed; right: 1.5rem; bottom: 3.5rem">
    <div class="toast-header">
      <strong class="mr-auto">Gagal!</strong>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      <?= validation_errors(); ?>
    </div>
  </div>
<?php endif ?>

<div class="container">
	<div class="row">
		<div class="col-lg-6 p-3">
			<div class="card">
			  <div class="card-header">
			  	<h3 class="my-auto"><i class="fas fa-fw fa-plus"></i> Tambah Tanggapan</h3>
			  </div>
			  <div class="card-body">
			  	<form action="<?= base_url('tanggapan/addTanggapan/' . $pengaduan['id_pengaduan']); ?>" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="foto">Foto</label><br>
							<a href="<?= base_url('assets/img/img_pengaduan/') . $pengaduan['foto']; ?>" class="enlarge">
								<img src="<?= base_url('assets/img/img_pengaduan/') . $pengaduan['foto']; ?>" class="img-fluid img-w-150" alt="<?= $pengaduan['foto']; ?>">
							</a>
						</div>
						<div class="form-group">
							<label for="id_pengaduan">Pengaduan</label>
							<textarea style="cursor: not-allowed;" type="text" class="form-control" disabled><?= $pengaduan['isi_laporan']; ?></textarea>
						</div>
						<div class="form-group">
							<label for="tgl_pengaduan">Tanggal Pengaduan</label>
							<input disabled type="datetime-local" class="form-control" value="<?= date('Y-m-d\TH:i', strtotime($pengaduan['tgl_pengaduan'])); ?>">
						</div>
						<div class="form-group">
							<label for="foto_tanggapan">Foto Tanggapan (Opsional)</label> <br>
							<a href="<?= base_url('assets/img/img_tanggapan/default.png'); ?>" class="enlarge" id="check_enlarge_photo">
								<img class="img-fluid rounded img-w-150 border border-dark" id="check_photo" src="<?= base_url('assets/img/img_tanggapan/default.png'); ?>" alt="Foto Tanggapan">
							</a>
							<br>
						</div>
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text">Upload Foto</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" class="custom-file-input" aria-describedby="foto_tanggapan" id="foto" name="foto_tanggapan">
						    <label class="custom-file-label" for="foto_tanggapan">Pilih file</label>
						  </div>
						</div>
						<div class="form-group">
							<label for="isi_tanggapan">Isi Tanggapan</label>
							<textarea id="isi_tanggapan" class="form-control <?= (form_error('isi_tanggapan')) ? 'is-invalid' : ''; ?>" name="isi_tanggapan" required><?= set_value('isi_tanggapan'); ?></textarea>
							<div class="invalid-feedback">
	              <?= form_error('isi_tanggapan'); ?>
	            </div>
						</div>
						<?php if ($pengaduan['status_pengaduan'] == 'belum_ditanggapi'): ?>
							<label>Dalam Proses?</label>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="proses" value="proses" checked>
							  <label class="form-check-label" for="proses">
							    <i class="fas fa-fw fa-sync"></i> Proses
							  </label>
							</div>
						<?php elseif ($pengaduan['status_pengaduan'] == 'proses'): ?>
							<label>Data Valid?</label>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="valid" value="valid" checked>
							  <label class="form-check-label" for="valid">
							    <i class="fas fa-fw fa-check"></i> Valid
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="invalid" value="tidak_valid">
							  <label class="form-check-label" for="invalid">
							    <i class="fas fa-fw fa-times"></i> Tidak Valid
							  </label>
							</div>
						<?php elseif ($pengaduan['status_pengaduan'] == 'valid'): ?>
							<label>Dalam Pengerjaan?</label>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="pengerjaan" value="pengerjaan" checked>
							  <label class="form-check-label" for="pengerjaan">
							    <i class="fas fa-fw fa-hammer"></i> Pengerjaan
							  </label>
							</div>
						<?php elseif ($pengaduan['status_pengaduan'] == 'pengerjaan'): ?>
							<label>Sudah Selesai?</label>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="selesai" value="selesai">
							  <label class="form-check-label" for="selesai">
								<i class="fas fa-fw fa-check-double"></i> Selesai
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="status_tanggapan" id="proses" value="proses" checked>
							  <label class="form-check-label" for="proses">
								<i class="fas fa-fw fa-sync"></i> Kembali ke Proses
							  </label>
							</div>
						<?php endif ?>
						<div class="form-group text-right">
							<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i> Simpan</button>
						</div>
					</form>
			  </div>
			</div>
		</div>
	</div>
</div>
