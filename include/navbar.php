<nav class="navbar navbar-expand-lg navbar-dark bg-navbar fixed-top">
  <div class="container">
    <img src="img/Logo_BPPT.png" width="10%">
    <a class="navbar-brand mb-2" href="index.php">Aplikasi Arsip</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link btn btn-primary text-white m-1" href="index.php">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn btn-primary text-white m-1" href="input.php">Tambah Data Arsip</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn btn-primary text-white m-1" href="tambah_kode_arsip.php">Tambah Kode Arsip</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn btn-primary text-white m-1" href="tambah_bidang.php">Tambah Bidang</a>
        </li>
        <li class="nav-item">
          <div class="dropdown text-center mt-1">
            <button class="btn btn-info dropdown-toggle ml-1 pt-2 pb-2" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img src="img/baseline_account_circle_white_18dp.png"> <?= ucfirst($_SESSION["nama"]); ?>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item text-white mt-1 mb-1 p-2 bg-info" href="info_akun.php?id=<?= $_SESSION['id_user']; ?>">
                <img src="img/baseline_info_white_18dp.png"> Info Akun</a>
              <a class="dropdown-item text-white mt-1 mb-1 p-2 bg-info" href="kode_arsip.php">
                <img src="img/baseline_info_white_18dp.png"> Info Kode Arsip
              </a>
              <a class="dropdown-item text-white mt-1 mb-1 p-2 bg-info" href="bidang.php">
                <img src="img/baseline_info_white_18dp.png"> Info Bidang
              </a>  
              <a class="dropdown-item text-white mt-1 mb-1 p-2 bg-danger" href="logout.php">
                <img src="img/baseline_exit_to_app_white_18dp.png"> Logout</a>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container"><div class="row"><div class="col mb-5 mt-5"></div></div></div>