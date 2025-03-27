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
					<h3 class="my-auto"><i class="fas fa-fw fa-edit"></i> Ubah Pengaduan</h3>
				</div>
			  	<div class="card-body">
					<form action="<?= base_url('pelaporPengaduan/editPelaporPengaduan/' . $pengaduan['id_pengaduan']); ?>" method="post" enctype="multipart/form-data">
						<small class="text-danger">Perhatian! Jika anda mengubah pengaduan maka, tanggal pengaduan akan berubah</small>
			  		<div class="form-group">
							<label for="isi_laporan">Isi Laporan</label>
							<textarea id="isi_laporan" class="form-control <?= (form_error('isi_laporan')) ? 'is-invalid' : ''; ?>" name="isi_laporan" required><?= (form_error('isi_laporan')) ? set_value('isi_laporan') : $pengaduan['isi_laporan']; ?></textarea>
							<div class="invalid-feedback">
	              <?= form_error('isi_laporan'); ?>
	            </div>
						</div>
						<div class="form-group">
							<label for="form_area">Area</label>
							<select class="form-control" id="form_area">
								<?php 
									$getAreaByIdFromWaroeng = $this->db->get_where('area', ['id_area' => $pengaduan['id_area']])->row_array();
								?>
								<option value="<?= $getAreaByIdFromWaroeng['id_area']; ?>"><?= $getAreaByIdFromWaroeng['area']; ?></option>
								<?php foreach ($area as $dataArea): ?>
									<?php if ($dataArea['id_area'] != $getAreaByIdFromWaroeng['id_area']): ?>
										<option value="<?= $dataArea['id_area']; ?>"><?= $dataArea['area']; ?></option>
									<?php endif ?>
								<?php endforeach ?>
							</select>
						</div>
						<div class="form-group">
							<label for="form_waroeng">Waroeng</label>
							<select id="form_waroeng" class="form-control" name="id_waroeng">
								<?php 
									$getWaroengByIdArea = $this->db->get_where('waroeng', ['id_area' => $dataArea['id_area']])->result_array();
								?>
								<option value="<?= $pengaduan['id_waroeng']; ?>"><?= $pengaduan['waroeng']; ?></option>
								<?php foreach ($getWaroengByIdArea as $dataWaroeng): ?>
									<?php if ($dataWaroeng['id_waroeng'] != $pengaduan['id_waroeng']): ?>
										<option value="<?= $dataWaroeng['id_waroeng']; ?>"><?= $dataWaroeng['waroeng']; ?></option>
									<?php endif ?>
								<?php endforeach ?>
							</select>
						</div>
						<div class="form-group">
							<label for="foto">Foto</label> <br>
							<a href="<?= base_url('assets/img/img_pengaduan/') . $pengaduan['foto']; ?>" class="enlarge" id="check_enlarge_photo">
								<img class="img-fluid rounded img-w-150 border border-dark" id="check_photo" src="<?= base_url('assets/img/img_pengaduan/') . $pengaduan['foto']; ?>" alt="<?= $pengaduan['foto']; ?>">
							</a>
							<br>
						</div>
						<div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text">Upload Foto</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" class="custom-file-input" id="foto" aria-describedby="foto" id="foto" name="foto">
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
