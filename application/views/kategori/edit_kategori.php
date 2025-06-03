<?php if (validation_errors()): ?>
	<div class="toast bg-danger" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false"
		style="z-index: 999999; position: fixed; right: 1.5rem; bottom: 3.5rem">
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
					<h3 class="my-auto"><i class="fas fa-fw fa-edit"></i> Ubah Kategori</h3>
				</div>
				<div class="card-body">
					<form action="<?= base_url('kategori/editKategori/' . $kategori['id_kategori']); ?>" method="post">
						<div class="form-group">
							<label for="kategori">Kategori</label>
							<input type="text" id="kategori"
								class="form-control <?= (form_error('kategori')) ? 'is-invalid' : ''; ?>"
								name="kategori" required
								value="<?= (form_error('kategori')) ? set_value('kategori') : $kategori['kategori']; ?>">
							<div class="invalid-feedback">
								<?= form_error('kategori'); ?>
							</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i>
								Simpan</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>