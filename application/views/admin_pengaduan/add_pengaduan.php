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
			  	<h3 class="my-auto"><i class="fas fa-fw fa-plus"></i> Tambah Pengaduan</h3>
			  </div>
			  <div class="card-body">
			  	<form action="<?= base_url('pengaduan/addPengaduan'); ?>" method="post" enctype="multipart/form-data">
			  		<div class="form-group">
						<label for="isi_laporan">Isi Laporan</label>
						<textarea id="isi_laporan" class="form-control <?= (form_error('isi_laporan')) ? 'is-invalid' : ''; ?>" name="isi_laporan" required><?= set_value('isi_laporan'); ?></textarea>
						<div class="invalid-feedback">
			              <?= form_error('isi_laporan'); ?>
			            </div>
					</div>

					<!-- Nama Pelapor (input manual) -->
					<div class="form-group">
						<label for="nama_pelapor">Nama Pelapor</label>
						<input type="text" id="nama_pelapor" class="form-control <?= (form_error('nama_pelapor')) ? 'is-invalid' : ''; ?>" name="nama_pelapor" value="<?= set_value('nama_pelapor'); ?>" required>
						<div class="invalid-feedback">
							<?= form_error('nama_pelapor'); ?>
						</div>
					</div>

					<!-- Nomor HP (input manual) -->
					<div class="form-group">
						<label for="no_hp">Nomor HP</label>
						<input type="text" id="no_hp" class="form-control <?= (form_error('no_hp')) ? 'is-invalid' : ''; ?>" name="no_hp" value="<?= set_value('no_hp'); ?>" required>
						<div class="invalid-feedback">
							<?= form_error('no_hp'); ?>
						</div>
					</div>

					<!-- Pelapor (Dropdown) -->
					<div class="form-group">
						<label for="id_pengguna">Pelapor</label>
						<select id="id_pengguna" class="custom-select <?= (form_error('id_pengguna')) ? 'is-invalid' : ''; ?>" name="id_pengguna">
							<option value="">Pilih Pelapor</option>
							<?php foreach ($pengguna as $dm): ?>
								<option value="<?= $dm['id_pengguna']; ?>" <?= set_select('id_pengguna', $dm['id_pengguna']); ?>><?= ucwords(strtolower($dm['username'])); ?></option>
							<?php endforeach ?>
						</select>
						<div class="invalid-feedback">
              <?= form_error('id_pengguna'); ?>
            </div>
					</div>

					<!-- Area -->
					<div class="form-group">
						<label for="form_area">Area</label>
						<select class="custom-select <?= (form_error('id_area')) ? 'is-invalid' : ''; ?>" id="form_area" name="id_area">
							<option value="0">Pilih Area</option>
							<?php foreach ($area as $dataArea): ?>
								<option value="<?= $dataArea['id_area']; ?>" <?= set_select('id_area', $dataArea['id_area']); ?>><?= $dataArea['area']; ?></option>
							<?php endforeach ?>
						</select>
						<div class="invalid-feedback">
              <?= form_error('id_area'); ?>
            </div>
					</div>

					<!-- Waroeng -->
					<div class="form-group">
							<label for="form_waroeng">Waroeng</label>
							<select id="form_waroeng" class="custom-select <?= (form_error('id_waroeng')) ? 'is-invalid' : ''; ?>" name="id_waroeng">
								<option value="0">Pilih Waroeng</option>
							</select>
							<div class="invalid-feedback">
	              <?= form_error('id_waroeng'); ?>
	            </div>
						</div>

					<!-- Foto -->
					<div class="form-group">
						<label for="foto">Foto</label> <br>
						<a href="<?= base_url('assets/img/img_pengaduan/default.png'); ?>" class="enlarge" id="check_enlarge_photo">
							<img class="img-fluid rounded img-w-150 border border-dark" id="check_photo" src="<?= base_url('assets/img/img_pengaduan/default.png'); ?>" alt="Foto Pengaduan">
						</a>
						<br>
					</div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text">Upload Foto</span>
					  </div>
					  <div class="custom-file">
					    <input type="file" class="custom-file-input" id="foto" aria-describedby="foto" name="foto">
					    <label class="custom-file-label" for="foto">Pilih file</label>
					  </div>
					</div>

					<div class="form-group text-right">
						<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i> Simpan</button>
					</div>
				</form>
			  </div>
			</div>
		</div>
	</div>
</div>
