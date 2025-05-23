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
					<h3 class="my-auto"><i class="fas fa-fw fa-edit"></i> Ubah Waroeng</h3>
				</div>
			  	<div class="card-body">
					<form action="<?= base_url('waroeng/editWaroeng/' . $waroeng['id_waroeng']); ?>" method="post">
						<div class="form-group">
							<label for="id_area">Area</label>
							<select id="id_area" class="custom-select <?= (form_error('id_area')) ? 'is-invalid' : ''; ?>" name="id_area">
								<option value="<?= $waroeng['id_area']; ?>"><?= $waroeng['area']; ?></option>
								<?php foreach ($area as $dk): ?>
									<?php if ($dk['id_area'] != $waroeng['id_area']): ?>
										<option value="<?= $dk['id_area']; ?>"><?= ucwords(strtolower($dk['area'])); ?></option>
									<?php endif ?>
								<?php endforeach ?>
							</select>
							<div class="invalid-feedback">
				              <?= form_error('id_area'); ?>
				            </div>
						</div>
						<div class="form-group">
							<label for="waroeng">Waroeng</label>
							<input type="text" id="waroeng" class="form-control <?= (form_error('waroeng')) ? 'is-invalid' : ''; ?>" name="waroeng" required value="<?= (form_error('waroeng')) ? set_value('waroeng') : $waroeng['waroeng']; ?>">
							<div class="invalid-feedback">
				              <?= form_error('waroeng'); ?>
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
