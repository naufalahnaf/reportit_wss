<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="<?= base_url('admin'); ?>" class="brand-link text-center">
    <img src="<?= base_url('assets/img/img_properties/favicon.png'); ?>" alt="Logo" class="img-w-50 rounded-circle shadow">
    <span class="brand-text font-weight-bold text-light">Report Pedas</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- User Panel -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="<?= base_url('assets/img/img_profiles/admin.png'); ?>" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="<?= base_url('admin/profile'); ?>" class="d-block text-light"><?= $dataUser['username']; ?></a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Dashboard -->
        <li class="nav-item">
          <a href="<?= base_url('admin'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/admin' || $_SERVER['REQUEST_URI'] == '/reportit_wss/admin/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-tachometer-alt text-info"></i>
            <p>Dasbor</p>
          </a>
        </li>

        <!-- Pengaduan -->
        <li class="nav-item">
          <a href="<?= base_url('pengaduan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pengaduan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pengaduan/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-exclamation-circle text-warning"></i>
            <p>Pengaduan</p>
          </a>
        </li>

        <!-- <li class="nav-item">
          <a href="<?= base_url('pengaduan/addPengaduan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pengaduan/addPengaduan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pengaduan/addPengaduan/') ? 'active' : ''; ?>">
              <i class="fas fa-fw fa-plus nav-icon"></i>
              <p>Tambah Pengaduan</p>
          </a>
      </li> -->


        <!-- Manajemen Data -->
        <?php if ($dataUser['jabatan'] == 'administrator'): ?>
          <li class="nav-item <?= (
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/user') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/jabatan') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/petugas') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/area') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/waroeng') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/kategori') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/subkategori') !== false ||
                                strpos($_SERVER['REQUEST_URI'], '/reportit_wss/pengguna') !== false

                              ) ? 'menu-open' : ''; ?>">
            <a href="#" class="nav-link <?= (
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/user') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/jabatan') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/petugas') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/area') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/waroeng') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/kategori') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/subkategori') !== false ||
                                          strpos($_SERVER['REQUEST_URI'], '/reportit_wss/pengguna') !== false

                                        ) ? 'active' : ''; ?>">
              <i class="nav-icon fas fa-database text-success"></i>
              <p>Manajemen Data <i class="right fas fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= base_url('user'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/user' || $_SERVER['REQUEST_URI'] == '/reportit_wss/user/') ? 'active' : ''; ?>">
                  <i class="fas fa-user nav-icon text-primary"></i>
                  <p>User</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('jabatan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/jabatan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/jabatan/') ? 'active' : ''; ?>">
                  <i class="fas fa-briefcase nav-icon text-secondary"></i> <!-- Ganti dari fa-city -->
                  <p>Jabatan</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('petugas'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/petugas' || $_SERVER['REQUEST_URI'] == '/reportit_wss/petugas/') ? 'active' : ''; ?>">
                  <i class="fas fa-user-shield nav-icon text-info"></i> <!-- Ganti dari fa-city -->
                  <p>Petugas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('area'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/area' || $_SERVER['REQUEST_URI'] == '/reportit_wss/area/') ? 'active' : ''; ?>">
                  <i class="fas fa-map-marked-alt nav-icon text-secondary"></i>
                  <p>Area</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('waroeng'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/waroeng' || $_SERVER['REQUEST_URI'] == '/reportit_wss/waroeng/') ? 'active' : ''; ?>">
                  <i class="fas fa-store nav-icon text-danger"></i>
                  <p>Waroeng</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('kategori'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/kategori' || $_SERVER['REQUEST_URI'] == '/reportit_wss/kategori/') ? 'active' : ''; ?>">
                  <i class="fas fa-map-marked-alt nav-icon text-secondary"></i>
                  <p>Kategori</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('subkategori'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/subkategori' || $_SERVER['REQUEST_URI'] == '/reportit_wss/subkategori/') ? 'active' : ''; ?>">
                  <i class="fas fa-store nav-icon text-danger"></i>
                  <p>SubKategori</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= base_url('pengguna'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/pengguna' || $_SERVER['REQUEST_URI'] == '/reportit_wss/pengguna/') ? 'active' : ''; ?>">
                  <i class="fas fa-users nav-icon text-warning"></i>
                  <p>Pelapor</p>
                </a>
              </li>
            </ul>
          </li>
        <?php endif ?>
        <!-- Laporan -->
        <li class="nav-item">
          <a href="<?= base_url('laporan'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/laporan' || $_SERVER['REQUEST_URI'] == '/reportit_wss/laporan/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-file-alt"></i>
            <p>Laporan</p>
          </a>
        </li>

        <!-- Aktivitas -->
        <li class="nav-item">
          <a href="<?= base_url('log'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/log' || $_SERVER['REQUEST_URI'] == '/reportit_wss/log/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-history"></i>
            <p>Aktivitas</p>
          </a>
        </li>

        <!-- Saran -->
        <li class="nav-item">
          <a href="<?= base_url('saran'); ?>" class="nav-link <?= ($_SERVER['REQUEST_URI'] == '/reportit_wss/saran' || $_SERVER['REQUEST_URI'] == '/reportit_wss/saran/') ? 'active' : ''; ?>">
            <i class="nav-icon fas fa-lightbulb"></i>
            <p>Saran</p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>