<!DOCTYPE html>
<html lang="en">

<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<?= base_url(); ?>">
				<img src="<?= base_url('assets/img/img_properties/favicon-text.png'); ?>"
					class="d-inline-block align-top img-fluid img-w-100">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link page-scroll" href="<?= base_url('landing/'); ?>#tentang">
						<h5 class="my-auto">Tentang</h5>
					</a>
					<a class="nav-link page-scroll" href="<?= base_url('landing/'); ?>#daftar_laporan">
						<h5 class="my-auto">Daftar Laporan</h5>
					</a>
					<a class="nav-link page-scroll" href="<?= base_url('landing/'); ?>#saran">
						<h5 class="my-auto">Saran</h5>
					</a>
				</div>
				<div class="navbar-nav ml-auto">
					<a class="nav-link btn btn-sm font-weight-bold m-1 btn-login"
						href="<?= base_url('landing/masuk'); ?>"><i class="fas fa-fw fa-sign-in-alt"></i> MASUK</a>
					<a class="nav-link btn btn-sm font-weight-bold m-1 btn-danger text-white"
						href="<?= base_url('landing/daftar'); ?>"><i class="fas fa-fw fa-file-signature"></i> DAFTAR</a>
				</div>
			</div>
		</div>
	</nav>
</header>

<body>

	<?php if (validation_errors()): ?>
		<div class="toast bg-danger show" role="alert" aria-live="assertive" aria-atomic="true" data-autohide="false"
			style="z-index: 999999; position: fixed; right: 1.5rem; bottom: 3.5rem">
			<div class="toast-header">
				<strong class="me-auto">Gagal!</strong>
				<button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
			<div class="toast-body">
				<?= validation_errors(); ?>
			</div>
		</div>
	<?php endif; ?>

	<div class="container mt-4">
		<div class="row">
			<div class="col-lg-6 p-3">
				<div class="card">
					<div class="card-header">
						<h3 class="my-auto"><i class="fas fa-fw fa-plus"></i> Tambah Pengaduan</h3>
					</div>
					<div class="card-body">
						<form action="<?= base_url('pengaduan/addPengaduan'); ?>" method="post"
							enctype="multipart/form-data">

							<!-- Pelapor -->
							<div class="form-group mb-3">
								<label for="id_pengguna">Pelapor</label>
								<select id="id_pengguna"
									class="form-select <?= (form_error('id_pengguna')) ? 'is-invalid' : ''; ?>"
									name="id_pengguna">
									<option value="">Pilih Pelapor</option>
									<?php foreach ($pengguna as $dm): ?>
										<option value="<?= $dm['id_pengguna']; ?>">
											<?= ucwords(strtolower($dm['username'])); ?>
										</option>
									<?php endforeach ?>
									<option value="lainnya">Lainnya</option>
								</select>
								<div class="invalid-feedback">
									<?= form_error('id_pengguna'); ?>
								</div>
							</div>

							<!-- Nama Pelapor Manual -->
							<div class="form-group mb-3" id="manual_pelapor" style="display: none;">
								<label for="nama_pelapor">Nama Pelapor</label>
								<input type="text" id="nama_pelapor" name="nama_pelapor" class="form-control">
							</div>

							<!-- No. WA Manual -->
							<div class="form-group mb-3" id="manual_wa" style="display: none;">
								<label for="no_wa">No. WhatsApp</label>
								<input type="text" id="no_wa" name="no_wa" class="form-control">
							</div>

							<!-- Jabatan -->
							<div class="form-group mb-3">
								<label for="form_jabatan">Jabatan</label>
								<select name="id_jabatan"
									class="form-select <?= (form_error('id_jabatan')) ? 'is-invalid' : ''; ?>"
									id="form_jabatan">
									<option value="0">Pilih Jabatan</option>
									<?php foreach ($jabatan as $dataJabatan): ?>
										<option value="<?= $dataJabatan['id_jabatan']; ?>"><?= $dataJabatan['jabatan']; ?>
										</option>
									<?php endforeach ?>
								</select>
								<div class="invalid-feedback">
									<?= form_error('id_jabatan'); ?>
								</div>
							</div>

							<!-- Area -->
							<label for="form_area">Pilih Area</label>
							<select id="form_area" name="id_area" class="form-control" required>
								<option value="">-- Pilih Area --</option>
								<?php foreach ($area as $row): ?>
									<option value="<?= $row['id_area'] ?>"><?= $row['area'] ?></option>
								<?php endforeach; ?>
							</select>

							<!-- Dropdown Waroeng akan tampil di sini -->
							<div id="waroeng-container"></div>

							<!-- Kategori -->
							<label for="form_kategori">Pilih Kategori</label>
							<select id="form_kategori" name="id_kategori" class="form-control" required>
								<option value="">-- Pilih Kategori --</option>
								<?php foreach ($kategori as $row): ?>
									<option value="<?= $row['id_kategori'] ?>"><?= $row['kategori'] ?></option>
								<?php endforeach; ?>
							</select>

							<!-- Dropdown Subkategori akan tampil di sini -->
							<div id="subkategori-container"></div>


							<!-- Isi Laporan -->
							<div class="form-group mb-3">
								<label for="isi_laporan">Isi Laporan</label>
								<textarea id="isi_laporan"
									class="form-control <?= (form_error('isi_laporan')) ? 'is-invalid' : ''; ?>"
									name="isi_laporan" required><?= set_value('isi_laporan'); ?></textarea>
								<div class="invalid-feedback">
									<?= form_error('isi_laporan'); ?>
								</div>
							</div>

							<!-- Foto Preview -->
							<div class="form-group mb-3">
								<label for="foto">Foto</label> <br>
								<a href="#" id="check_enlarge_photo">
									<img class="img-fluid rounded img-w-150 border border-dark" id="check_photo"
										src="<?= base_url('assets/img/img_pengaduan/default.png'); ?>"
										alt="Foto Pengaduan">
								</a>
							</div>

							<!-- Upload Foto -->
							<div class="input-group mb-4">
								<label class="input-group-text" for="foto">Upload Foto</label>
								<input type="file" class="form-control" id="foto" name="foto">
							</div>

							<!-- Tombol Simpan -->
							<div class="form-group text-end">
								<button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i>
									Simpan</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Preview Foto -->
	<div class="modal fade" id="photoPreviewModal" tabindex="-1" aria-labelledby="photoPreviewLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-body text-center">
					<img id="modalPhoto" src="" class="img-fluid rounded" alt="Preview Foto">
				</div>
			</div>
		</div>
	</div>

	<!-- JS & Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		$(document).ready(function () {
			// Tampilkan input manual jika pelapor "lainnya"
			$('#id_pengguna').change(function () {
				if ($(this).val() === 'lainnya') {
					$('#manual_pelapor').show();
					$('#manual_wa').show();
				} else {
					$('#manual_pelapor').hide();
					$('#manual_wa').hide();
				}
			});

			// Modal preview gambar
			$('#check_enlarge_photo').click(function (e) {
				e.preventDefault();
				const src = $('#check_photo').attr('src');
				$('#modalPhoto').attr('src', src);
				$('#photoPreviewModal').modal('show');
			});

			// Preview thumbnail dari file input
			$('#foto').change(function (e) {
				const file = e.target.files[0];
				if (file) {
					const reader = new FileReader();
					reader.onload = function (e) {
						$('#check_photo').attr('src', e.target.result);
					};
					reader.readAsDataURL(file);
				}
			});
		});
	</script>

	<script>
		$(document).ready(function () {
			$('#form_kategori').on('change', function () {
				var id = $(this).val();
				if (id != '') {
					$.ajax({
						type: 'POST',
						url: "<?= base_url('landing/getSubKategoriFile'); ?>",
						data: { data: 'subkategori', id: id },
						success: function (response) {
							$('#subkategori-container').html(response); // tampilkan dropdown baru
						}
					});
				} else {
					$('#subkategori-container').html('');
				}
			});
		});
	</script>

	<script>
		$(document).ready(function () {
			$('#form_area').on('change', function () {
				var id = $(this).val();
				if (id != '') {
					$.ajax({
						type: 'POST',
						url: "<?= base_url('landing/getWaroengFile'); ?>", // Ubah jika controller berbeda
						data: { data: 'waroeng', id: id },
						success: function (response) {
							$('#waroeng-container').html(response);
						},
						error: function (xhr, status, error) {
							console.log('AJAX Error:', xhr.responseText);
						}
					});
				} else {
					$('#waroeng-container').html('');
				}
			});
		});
	</script>





</body>

</html>