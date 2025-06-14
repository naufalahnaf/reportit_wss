<div id="carouselInterval" class="carousel slide mt-5 pt-3" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-interval="3000">
      <img src="<?= base_url('assets/img/img_properties/img_carousel/poster-1.png'); ?>" class="d-block h-500 w-100">
    </div>
    <div class="carousel-item" data-interval="3000">
      <img src="<?= base_url('assets/img/img_properties/img_carousel/poster-2.png'); ?>" class="d-block h-500 w-100">
    </div>
    <div class="carousel-item">
      <img src="<?= base_url('assets/img/img_properties/img_carousel/poster-3.png'); ?>" class="d-block h-500 w-100">
    </div>
    <div class="carousel-item">
      <img src="<?= base_url('assets/img/img_properties/img_carousel/poster-4.png'); ?>" class="d-block h-500 w-100">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselInterval" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselInterval" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	  <div class="container">
	    <a class="navbar-brand" href="<?= base_url(); ?>">
	      <img src="<?= base_url('assets/img/img_properties/favicon-text.png'); ?>" class="d-inline-block align-top img-fluid img-w-100">
	    </a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	      <div class="navbar-nav">
	        <a class="nav-link page-scroll" href="#tentang"><h5 class="my-auto">Tentang</h5></a>
	        <a class="nav-link page-scroll" href="#daftar_laporan"><h5 class="my-auto">Daftar Laporan</h5></a>
	        <a class="nav-link page-scroll" href="#saran"><h5 class="my-auto">Saran</h5></a>
	      </div>
	      <div class="navbar-nav ml-auto">
	        <a class="nav-link btn btn-sm font-weight-bold m-1 btn-login" href="<?= base_url('landing/masuk'); ?>"><i class="fas fa-fw fa-sign-in-alt"></i> MASUK</a>
	        <a class="nav-link btn btn-sm font-weight-bold m-1 btn-danger text-white" href="<?= base_url('landing/daftar'); ?>"><i class="fas fa-fw fa-file-signature"></i> DAFTAR</a>
	      </div>
	    </div>
	  </div>
	</nav>
</header>

<main class="flex-shrink-0">
	<div class="container pb-5">
		<!-- <div class="row justify-content-center py-4">
			<div class="col-lg">
				<h4>Tata Cara Penggunaan Report Pedas IT</h4>
				<div class="row justify-content-center">
					<div class="py-2 col-xl-2 col-lg-3 col-md-3">
						<div class="card">
						  <div class="card-body text-center">
						  	<i class="fas fa-fw fa-file-signature"></i>
							<h4>Daftar</h4>
							<p>Melakukan Pendaftaran, dengan menekan tombol <a href="<?= base_url('landing/daftar'); ?>"> Daftar</a>. Jika sudah mendaftar tekan tombol <a href="<?= base_url('landing/masuk'); ?>"> Masuk</a>.</p>
						  </div>
						</div>
					</div>
					<div class="py-2 col-lg-1 my-auto card-guide">
						<div class="progress rounded-pill">
						  <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="py-2 col-xl-2 col-lg-3 col-md-3">
						<div class="card">
						  <div class="card-body text-center">
						  	<i class="fas fa-fw fa-sign-in-alt"></i>
							<h4>Masuk</h4>
							<p>Masuk, dengan mengisi username dan password yang telah Anda buat sebelumnya. Jika belum mendaftar tekan tombol <a href="<?= base_url('landing/daftar'); ?>"> Daftar</a>.</p>
						  </div>
						</div>
					</div>
					<div class="py-2 col-lg-1 my-auto card-guide">
						<div class="progress rounded-pill">
						  <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="py-2 col-xl-2 col-lg-3 col-md-3">
						<div class="card">
						  <div class="card-body text-center">
						  	<i class="fas fa-fw fa-exclamation"></i>
							<h4>Pengaduan</h4>
							<p>Pada bagian sidebar tekan menu tambah pengaduan untuk membuat laporan pengaduan.</p>
						  </div>
						</div>
					</div>
					<div class="py-2 col-lg-1 my-auto card-guide">
						<div class="progress rounded-pill">
						  <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="py-2 col-xl-2 col-lg-3 col-md-3">
						<div class="card">
						  <div class="card-body text-center">
						  	<i class="fas fa-fw fa-reply"></i>
							<h4>Tanggapan</h4>
							<p>Pada bagian sidebar tekan menu pengaduan untuk melihat seluruh pengaduan yang telah Anda buat. Untuk melihat tanggapan petugas, tekan tombol <button type="button" class="btn btn-xs btn-info"><i class="fas fa-fw fa-reply"></i></button>.</p>
						  </div>
						</div>
					</div>
				</div>	
			</div>
		</div> -->
		<div class="row py-4" id="tentang">
			<div class="col-lg">
				<h4>Tentang</h4>
				<p>Waroeng Spesial Sambal (WSS) adalah jaringan restoran yang mengandalkan teknologi dalam operasionalnya. Untuk memastikan kelancaran operasional, aplikasi Report Pedas IT digunakan sebagai alat pencatatan dan pendataan masalah perangkat IT yang terjadi di waroeng maupun manajemen area. Aplikasi ini berfungsi untuk mendata berbagai kendala yang dilaporkan oleh karyawan waroeng atau tim manajemen area, seperti gangguan pada perangkat kasir, masalah jaringan internet, error pada sistem pemesanan, atau kendala lainnya yang berkaitan dengan perangkat IT.
					Setiap laporan yang masuk akan terdokumentasi dengan detail, termasuk jenis masalah, lokasi waroeng atau bagian manajemen yang terdampak, serta waktu pelaporan. Dengan sistem ini, manajemen dapat memiliki data terstruktur mengenai kendala yang sering terjadi, memungkinkan mereka untuk melakukan analisis dan menentukan langkah-langkah perbaikan yang lebih efektif. Namun, aplikasi ini hanya berfungsi sebagai alat pencatatan dan tidak menangani atau menyelesaikan permasalahan secara langsung.  
					Dengan adanya Report Pedas IT, seluruh kendala perangkat IT dapat didata secara sistematis, membantu tim manajemen dalam memantau permasalahan yang sering terjadi, serta menjadi dasar untuk evaluasi dan pengambilan keputusan terkait perbaikan dan peningkatan sistem di seluruh jaringan waroeng.</p>
			</div>
		</div>
		<div class="row py-4" id="daftar_laporan">
			<div class="col-lg">
				<h4>Daftar Laporan</h4>
				<p class="text-justify">Berikut adalah daftar pengaduan-pengaduan report IT WSS berdasarkan terbaru:</p>
				<div class="table-responsive">
					<table class="table table-bordered" id="table_id">
						<thead class="thead-dark">
							<tr>
								<th class="align-middle">No.</th>
								<th class="align-middle">Pelapor</th>
								<th class="align-middle">Tanggal Pengaduan</th>
								<th class="align-middle">Isi Laporan</th>
								<th class="align-middle">Lokasi</th>
								<th class="align-middle">Foto</th>
								<th class="align-middle">Status</th>
								<th class="align-middle">Tangapan</th>
								<th class="align-middle">Aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php $i = 1; ?>
							<?php foreach ($pengaduan as $dp): ?>
								<?php 
									$getTanggapan = $this->db->order_by('tanggapan.id_tanggapan', 'desc')->get_where('tanggapan', ['id_pengaduan' => $dp['id_pengaduan']])->row_array();
									$status = explode('_', $dp['status_pengaduan']);
									$status = implode(' ', $status);
									$status = ucwords($status);
								?>
								<tr>
									<td class="align-middle"><?= $i++; ?></td>
									<td class="align-middle"><?= !empty($dp['username']) ? $dp['username'] : $dp['nama_pelapor']; ?></td>
									<td class="align-middle"><?= $dp['tgl_pengaduan']; ?></td>
									<td class="align-middle"><?= $dp['isi_laporan']; ?></td>
									<td class="align-middle"><?= $dp['waroeng']; ?></td>
									<td class="align-middle text-center">
										<a href="<?= base_url('assets/img/img_pengaduan/') . $dp['foto']; ?>" class="enlarge">
											<img src="<?= base_url('assets/img/img_pengaduan/') . $dp['foto']; ?>" class="img-fluid img-w-75-hm-100" alt="<?= $dp['foto']; ?>">
										</a>
									</td>
									<td class="align-middle">
										<?php if ($dp['status_pengaduan'] == 'proses'): ?>
											<button type="button" class="btn btn-sm text-center btn-danger"><i class="fas fa-fw fa-sync"></i> <?= $status; ?></button>
										<?php elseif ($dp['status_pengaduan'] == 'valid'): ?>
											<button type="button" class="btn btn-sm text-center btn-success"><i class="fas fa-fw fa-check"></i> <?= $status; ?></button>
										<?php elseif ($dp['status_pengaduan'] == 'pengerjaan'): ?>
											<button type="button" class="btn btn-sm text-center btn-warning"><i class="fas fa-fw fa-hammer"></i> <?= $status; ?></button>
										<?php elseif ($dp['status_pengaduan'] == 'selesai'): ?>
											<button type="button" class="btn btn-sm text-center btn-primary"><i class="fas fa-fw fa-check-double"></i> <?= $status; ?></button>
										<?php elseif ($dp['status_pengaduan'] == 'tidak_valid'): ?>
											<button type="button" class="btn btn-sm text-center btn-secondary"><i class="fas fa-fw fa-times"></i> <?= $status; ?></button>
										<?php else: ?>
											<button type="button" class="btn btn-sm text-center btn-secondary"><i class="fas fa-fw fa-times"></i> <?= $status; ?></button>
										<?php endif ?>
									</td>
									<td class="align-middle">
										<?php if ($getTanggapan): ?>
											<?php if ($getTanggapan['status_tanggapan'] == 'proses'): ?>
												<p><?= $getTanggapan['isi_tanggapan']; ?></p>
											<?php elseif ($getTanggapan['status_tanggapan'] == 'valid'): ?>
												<p><?= $getTanggapan['isi_tanggapan']; ?></p>
											<?php elseif ($getTanggapan['status_tanggapan'] == 'pengerjaan'): ?>
												<p><?= $getTanggapan['isi_tanggapan']; ?></p>
											<?php elseif ($getTanggapan['status_tanggapan'] == 'selesai'): ?>
												<p><?= $getTanggapan['isi_tanggapan']; ?></p>
											<?php elseif ($getTanggapan['status_tanggapan'] == 'tidak_valid'): ?>
												<p><?= $getTanggapan['isi_tanggapan']; ?></p>
											<?php endif ?>
										<?php else: ?>
											<p>-</p>
										<?php endif ?>
									</td>
									<td class="align-middle text-center">
										<a href="<?= base_url('landing/detailPengaduan/' . $dp['id_pengaduan']); ?>" class="btn btn-sm btn-info m-1"><i class="fas fa-fw fa-align-justify"></i> Detail</a>
									</td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row py-4 justify-content-center" id="saran">
			<div class="col-lg-6 my-2">
				<div class="border p-3 rounded">
					<h4>Saran</h4>
					<p>Berikan saran terbaik Anda agar aplikasi Report Pedas IT bekerja lebih baik lagi.</p>
					<form action="<?= base_url('landing/saran'); ?>" method="post">
					<?php if ($this->session->flashdata('message')): ?>
					<div class="alert alert-info">
						<?= $this->session->flashdata('message'); ?>
					</div>
					<?php $this->session->unset_userdata('message'); ?>
				<?php endif; ?>

				<?php if ($this->session->flashdata('message-success')): ?>
					<div class="alert alert-success">
						<?= $this->session->flashdata('message-success'); ?>
					</div>
					<?php $this->session->unset_userdata('message-success'); ?>
				<?php endif; ?>

				<?php if ($this->session->flashdata('message-failed')): ?>
					<div class="alert alert-danger">
						<?= $this->session->flashdata('message-failed'); ?>
					</div>
					<?php $this->session->unset_userdata('message-failed'); ?>
				<?php endif; ?>
						<div class="form-group">
							<label for="nama"><i class="fas fa-fw fa-id-card"></i> Nama Lengkap</label>
							<input type="text" id="nama" class="form-control <?= (form_error('nama')) ? 'is-invalid' : ''; ?>" name="nama" required value="<?= set_value('nama'); ?>">
							<div class="invalid-feedback">
			          <?= form_error('nama'); ?>
			        </div>
						</div>
						<div class="form-group">
							<label for="no_telepon"><i class="fas fa-fw fa-phone"></i> No. Telepon</label>
							<input type="number" id="no_telepon" class="form-control <?= (form_error('no_telepon')) ? 'is-invalid' : ''; ?>" name="no_telepon" required placeholder="contoh: 08123456789" value="<?= set_value('no_telepon'); ?>">
							<div class="invalid-feedback">
	              <?= form_error('no_telepon'); ?>
	            </div>
						</div>
						<div class="form-group">
							<label for="alamat"><i class="fas fa-fw fa-map-marker-alt"></i> Alamat</label>
							<textarea id="alamat" class="form-control <?= (form_error('alamat')) ? 'is-invalid' : ''; ?>" name="alamat" required><?= set_value('alamat'); ?></textarea>
							<div class="invalid-feedback">
            		<?= form_error('alamat'); ?>
          		</div>
						</div>
						<div class="form-group">
							<label for="saran"><i class="fas fa-fw fa-lightbulb"></i> Saran</label>
							<textarea id="saran" class="form-control <?= (form_error('saran')) ? 'is-invalid' : ''; ?>" name="saran" required><?= set_value('saran'); ?></textarea>
							<div class="invalid-feedback">
            		<?= form_error('saran'); ?>
        			</div>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="btn btn-danger"><i class="fas fa-fw fa-paper-plane"></i> Kirim</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-6 my-2">
				<div class="border p-3 rounded">
					<h4>Kantor Pusat Waroeng Spesial Sambal "SS"</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.2544650502496!2d110.37320007400768!3d-7.762815892256386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59ad4a8d4dc9%3A0x3aab9943317fe5ff!2sKantor%20Pusat%20Waroeng%20Spesial%20Sambal%20(SS)!5e0!3m2!1sid!2sid!4v1742878510886!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" style="border:0; width: 100%; height: 33.125rem;" allowfullscreen="" loading="lazy"></iframe>
				</div>
			</div>
		</div>
	</div>
</main>