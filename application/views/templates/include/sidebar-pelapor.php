<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="<?= base_url('pelapor'); ?>" class="brand-link text-center">
    <img src="<?= base_url('assets/img/img_properties/favicon.png'); ?>" alt="ReportIt Logo" class="img-w-50 rounded-circle">
    <span class="brand-text font-weight-bold text-uppercase">ReportIt</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar User Panel -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex align-items-center">
      <div class="image">
        <img src="<?= base_url('assets/img/img_profiles/user.png'); ?>" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="<?= base_url('pelapor/profile'); ?>" class="d-block text-white font-weight-bold">
          <?= $dataUser['username']; ?>
        </a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
          <a href="<?= base_url('pelapor'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pelapor' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pelapor/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-tachometer-alt text-success"></i>
            <p>
              Dasbor
              <span class="right badge badge-success">New</span>
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= base_url('pelaporPengaduan/addPelaporPengaduan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporPengaduan/addPelaporPengaduan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporPengaduan/addPelaporPengaduan/') ? 'active' : ''; ?>">
            <i class="fas fa-plus-circle nav-icon text-primary"></i>
            <p>Tambah Pengaduan</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= base_url('pelaporPengaduan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporPengaduan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporPengaduan/') ? 'active' : ''; ?>">
            <i class="fas fa-exclamation-circle nav-icon text-warning"></i>
            <p>Pengaduan</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= base_url('pelaporLaporan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporLaporan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pelaporLaporan/') ? 'active' : ''; ?>">
            <i class="fas fa-file-alt nav-icon text-info"></i>
            <p>Laporan</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= base_url('pelapor/profile'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pelapor/profile' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pelapor/profile/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-user-circle text-light"></i>
            <p>
              Profil
              <span class="right badge badge-info">View</span>
            </p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
