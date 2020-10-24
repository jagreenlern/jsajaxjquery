<?php
include "configs/config.php";
include "configs/funciones.php";

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Listado de peliculas</title>
    <input class="form-control mr-sm-4" type="button" name="retroceder" id="retroceder"  value="<<<<<RETROCEDER<<<<<" aria-label="Search" onclick="location.href='agregarpelicula.php'">
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="index.php">
          <h1 class="tm-site-title mb-0">Listado peliculas</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li class="nav-item">
              <a class="nav-link" href="index.php">
                <i class="fas fa-tachometer-alt"></i> Dashboard
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false">
                <i class="far fa-file-alt"></i>
                <span> Reports <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Daily Report</a>
                <a class="dropdown-item" href="#">Weekly Report</a>
                <a class="dropdown-item" href="#">Yearly Report</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="products.php">
                <i class="fas fa-shopping-cart"></i> Products
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="accounts.php">
                <i class="far fa-user"></i> Accounts
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false">
                <i class="fas fa-cog"></i>
                <span> Settings <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Billing</a>
                <a class="dropdown-item" href="#">Customize</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <?php
              if (!isset($_SESSION['id']))
              {
              echo '<a class="nav-link d-block" href="login.php">Login</a>';
              }
              else echo '<a class="nav-link d-block" href="logout.php"><b>' . $_SESSION['username'] . ' ,Logout</b></a>';
            
            ?>
            </li>
                
          </ul>
        </div>
      </div>
    </nav>













    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-12 tm-block-col">
        <!--<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">-->
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">Pelicula</th>
                    <th scope="col">Año</th>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">Director</th>
                    <th scope="col"></th>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>

<style type="text/css">
img.imagenproducto{
  width: 50px; height: 50px;
}

</style>
        <?php


$mysqli = connect();
        $sql = "SELECT * FROM peliculas ORDER BY titulo DESC";

$result = mysqli_query($mysqli, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($rp = mysqli_fetch_assoc($result)) {
       
      //$preciototal = 0;
            ?>




                  <tr>
                    <th scope="row"></th>
                    <td class="tm-product-name"><?=$rp['titulo']?></td>
                    <td><?=$rp['ano']?></td>
                    <td></td>
                    <td><?=$rp['idpelicula']?></td>

                    <td></td>
                    <td>
                      <!--<a href="delete-product.php?id=<?=$rp['id']?>"  class="tm-product-delete-link">
                       <img class="pequeña" src="img\borrar.png"/>
                      </a>-->
                      
                    </td>
                    <td>
                      <!--<a href="edit-product.php?id=<?=$rp['id']?>" class="tm-product-delete-link">
                       <img class="pequeña" src="img\editar.png"/>
                      </a>-->

                      
                    </td>
                  </tr>
                  <?php
                  }
                  } else {
                   echo "0 results";
                  }
                  ?>
                </tbody>
              </table>
            </div>
            <!-- table container     <i class="far fa-trash-alt tm-product-delete-icon"></i> -->
            
            
          </div>
        </div>



      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
      <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
          Copyright &copy; <b>2018</b> All rights reserved. 
          
          Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
      </div>
    </footer>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.php";
        });
      });
    </script>
  </body>
</html>