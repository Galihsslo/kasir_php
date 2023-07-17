<?php require 'vendors/fungsi/fungsi.php'; ?>

<!DOCTYPE html>
<html>
<title>LOGIN | G.co</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="vendors/img/logo_kasir_kita.png">
<link rel="stylesheet" href="vendors/dist/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="vendors/dist/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="vendors/dist/css/bootstrap.min.css">
<style>
  body,
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    font-family: "Raleway", sans-serif
  }

  body,
  html {
    height: 100%;
    line-height: 1.8;
  }

  /* Full height image header */
  .bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("/w3images/mac.jpg");
    min-height: 100%;
  }

  .w3-bar .w3-button {
    padding: 16px;
  }

  a {}
</style>

<body>

  <!-- Navbar (sit on top) -->
  <nav class="navbar navbar-default navbar-fixed-top navbar-custom">
    <div class="container">
      <div class="navbar-header page-scroll">
        <a class="navbar-brand">Login</a>
      </div>
    </div>
  </nav>

  <section class="bagian3">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-4 col-md-offset-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h1 class="panel-title text-center">Login</h1>
              <br>
              <center>
                <p>Repost by <a href='hhttps://github.com/galihs12' title='#' target='_blank'>Galihs12</a></p>
              </center>

            </div>
            <div class="panel-body">
              <form class="form" action="" method="post">
                <div class="form-group input-group">
                  <span class="input-group-addon"><i class="fa fa-user"></i></span>
                  <input class="form-control" type="text" name="user" required="" autofocus="" placeholder="Masukkan username Anda">
                </div>

                <div class="form-group input-group">
                  <span class="input-group-addon"><i class="fa fa-key"></i></span>
                  <input class="form-control" type="password" name="pass" value="" required="" placeholder="Password">
                </div>

                <div class="form-group">
                  <a href="index.php">
                    <button type="button" name="button" class="btn btn-danger">Batal</button>
                  </a>

                  <input class="btn btn-success" type="submit" name="daftar" value="Masuk">
                </div>
                <?php
                if (@$_POST['daftar']) {
                  $proses->login();
                }
                ?>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- jQuery -->
  <script src="<?= url() ?>vendors/jquery/jquery.min.js"></script>

  <!--include-->
  <script src="<?= url() ?>vendors/js/bootstrap.min.js"></script>



</body>

</html>