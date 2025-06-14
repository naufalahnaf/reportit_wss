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
			  	<h3 class="my-auto"><i class="fas fa-fw fa-plus"></i> Tambah Petugas</h3>
			  </div>
			  <div class="card-body">
			  	<form action="<?= base_url('petugas/addPetugas'); ?>" method="post">
					<div class="form-group">
						<label for="petugas">Petugas</label>
						<input type="text" id="petugas" class="form-control <?= (form_error('petugas')) ? 'is-invalid' : ''; ?>" name="petugas" required value="<?= set_value('petugas'); ?>">
						<div class="invalid-feedback">
              <?= form_error('petugas'); ?>
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
