<div class="container">
	<div class="row justify-content-center py-3">
		<div class="col-lg header-title">
			<h3><i class="fas fa-fw fa-city"></i> Area</h3>
		</div>
		<?php if ($dataUser['jabatan'] == 'administrator'): ?>
			<div class="col-lg header-button">
				<a href="<?= base_url('area/addArea'); ?>" class="btn btn-primary"><i class="fas fa-fw fa-plus"></i> Tambah Area</a>
			</div>
		<?php endif ?>
	</div>
	<div class="row py-3">
		<div class="col-lg">
			<div class="table-responsive">
				<table class="table table-bordered" id="table_id">
					<thead class="thead-dark">
						<tr>
							<th class="align-middle">No.</th>
							<th class="align-middle">Area</th>
							<?php if ($dataUser['jabatan'] == 'administrator'): ?>
								<th class="align-middle">Aksi</th>
							<?php endif ?>
						</tr>
					</thead>
					<tbody>
						<?php $i = 1; ?>
						<?php foreach ($area as $dk): ?>
							<tr>
								<td class="align-middle"><?= $i++; ?></td>
								<td class="align-middle"><?= $dk['area']; ?></td>
								<?php if ($dataUser['jabatan'] == 'administrator'): ?>
									<td class="align-middle text-center">
										<a href="<?= base_url('area/editArea/' . $dk['id_area']); ?>" class="btn btn-sm btn-success m-1"><i class="fas fa-fw fa-edit"></i></a>
										<?php if ($dataUser['jabatan'] == 'administrator'): ?>
											<a href="<?= base_url('area/removeArea/' . $dk['id_area']); ?>" class="btn btn-sm btn-danger m-1 btn-delete" data-nama="<?= $dk['area']; ?>"><i class="fas fa-fw fa-fw fa-trash"></i></a>
										<?php endif ?>
									</td>
								<?php endif ?>
							</tr>
						<?php endforeach ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
