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
					<form action="<?= base_url('pengaduan/editPengaduan/' . $pengaduan['id_pengaduan']); ?>" method="post" enctype="multipart/form-data">
						<input type="hidden" name="id_pengaduan" value="<?= $pengaduan['id_pengaduan']; ?>">
			  		<div class="form-group">
							<label for="isi_laporan">Isi Laporan</label>
							<textarea style="cursor: not-allowed;" disabled id="isi_laporan" class="form-control <?= (form_error('isi_laporan')) ? 'is-invalid' : ''; ?>" name="isi_laporan" required><?= (form_error('isi_laporan')) ? set_value('isi_laporan') : $pengaduan['isi_laporan']; ?></textarea>
							<div class="invalid-feedback">
	              <?= form_error('isi_laporan'); ?>
	            </div>
						</div>
						<div class="form-group">
							<label for="id_pengguna">Pelapor</label>
							<select style="cursor: not-allowed;" disabled id="id_pengguna" class="custom-select <?= (form_error('id_pengguna')) ? 'is-invalid' : ''; ?>" name="id_pengguna">
								<option value="<?= $pengaduan['id_pengguna']; ?>"><?= ucwords(strtolower($pengaduan['username'])); ?></option>
							</select>
							<div class="invalid-feedback">
	              <?= form_error('id_pengguna'); ?>
	            </div>
						</div>
						<div class="form-group">
							<label for="form_kecamatan">Kecamatan</label>
							<select style="cursor: not-allowed;" disabled class="custom-select" id="form_kecamatan">
								<?php 
									$getKecamatanByIdFromKelurahan = $this->db->get_where('kecamatan', ['id_kecamatan' => $pengaduan['id_kecamatan']])->row_array();
								?>
								<option value="<?= $getKecamatanByIdFromKelurahan['id_kecamatan']; ?>"><?= $getKecamatanByIdFromKelurahan['kecamatan']; ?></option>
							</select>
						</div>
						<div class="form-group">
							<label for="form_kelurahan">Kelurahan</label>
							<select style="cursor: not-allowed;" disabled class="custom-select" id="form_kelurahan" name="id_kelurahan">
								<?php 
									$getKelurahanByIdKecamatan = $this->db->get_where('kelurahan', ['id_kecamatan' => $dataKecamatan['id_kecamatan']])->result_array();
								?>
								<option value="<?= $pengaduan['id_kelurahan']; ?>"><?= $pengaduan['kelurahan']; ?></option>
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
