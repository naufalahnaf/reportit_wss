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
					<h3 class="my-auto"><i class="fas fa-fw fa-edit"></i> Ubah SubKategori</h3>
				</div>
			  	<div class="card-body">
					<form action="<?= base_url('subkategori/editSubkategori/' . $subkategori['id_subkategori']); ?>" method="post">
						<div class="form-group">
							<label for="id_kategori">Kategori</label>
							<select id="id_kategori" class="custom-select <?= (form_error('id_kategori')) ? 'is-invalid' : ''; ?>" name="id_kategori">
								<option value="<?= $subkategori['id_kategori']; ?>"><?= $subkategori['kategori']; ?></option>
								<?php foreach ($kategori as $dk): ?>
									<?php if ($dk['id_kategori'] != $subkategori['id_kategori']): ?>
										<option value="<?= $dk['id_kategori']; ?>"><?= ucwords(strtolower($dk['kategori'])); ?></option>
									<?php endif ?>
								<?php endforeach ?>
							</select>
							<div class="invalid-feedback">
				              <?= form_error('id_kategori'); ?>
				            </div>
						</div>
						<div class="form-group">
							<label for="subkategori">SubKategori</label>
							<input type="text" id="subkategori" class="form-control <?= (form_error('subkategori')) ? 'is-invalid' : ''; ?>" name="subkategori" required value="<?= (form_error('subkategori')) ? set_value('subkategori') : $subkategori['subkategori']; ?>">
							<div class="invalid-feedback">
				              <?= form_error('subkategori'); ?>
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
