
<?php
include "configs/config.php";
include "configs/funciones.php";
 
//$mysqli = connect();

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>AGREGAR PELICULAS</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->

    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
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
          <h1 class="tm-site-title mb-0">Peliculas</h1>
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
              if (!isset($_SESSION['id'] ))
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


<?php

//check_admin();

if(isset($enviar)){
    //extract($_GET);
  $titulo = (string) clear($_GET['titulo']);
  $ano = (int) clear($_GET['ano']);
  $genero = (string) clear($_GET['genero']);
//Esto es importante para quitar los warning
  $director = (string) clear($_GET['director']);

$mysqli = connect();
 $mysqli->query("INSERT INTO peliculas (titulo,ano,genero,director) VALUES ('$titulo',$ano,'$genero','$director');");


 
  //Metemos en variables session la clase peliculas
  session_start();
  //include "peliculasclass.php";

//clase no se porque si lo incluyes da error la clase.

class peliculas {
   
    /**
     * An indentifier
     * @var string
     */
    private $titulo;
    /**
     * A reference to another Foo object
     * @var Foo
     */
    private $ano;
    private $genero;
    private $director;

    public function __construct($titulo,$ano,$genero,$director) {
        $this->titulo = $titulo;
        $this->ano = $ano;
        $this->genero = $genero;
        $this->director = $director;
    }
    
    public function setTitulo(string $titulo){
        $this->titulo = $titulo;
    }

    public function getTitulo(){
        return $this->titulo;
    }


    public function setAno(int $ano){
        $this->ano = $ano;
    }

    public function getAno(){
        return $this->ano;
    }


    public function setGenero(string $genero){
        $this->genero = $genero;
    }

    public function getGenero(){
        return $this->genero;
    }


    public function setDirector(string $director){
        $this->director = $director;
    }

    public function getDirector(){
        return $this->director;
    }


    public function __destruct() {
        echo 'Destroying: ';
    }
}



  $_SESSION["peliculas"] = new peliculas($titulo, $ano,$genero,$director) ;
echo ("pelicula agregada:" . $_SESSION["peliculas"]->getTitulo());
 // alert("pelicula agregada:" . $_SESSION["peliculas"]->getTitulo ,1, "agregarpelicula.php   ");


  //redir("?p=agregar_producto");
}

?>


    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-12 tm-block-col">
        <!--<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">-->
          <div class="tm-bg-primary-dark tm-block tm-block-products">

        <h2 class="tm-block-title d-inline-block">Agregar peliculass</h2>





<form method="get" action="">
  <div class="form-group">
    <input type="text" class="form-control" name="titulo" placeholder="Titulo de la película"/>
  </div>


  <div class="form-group">
    <input type="text" class="form-control" name="ano" placeholder="Año"/>
  </div>


  <div class="form-group">
    <input type="text" class="form-control" name="genero" placeholder="Genero"/>
  </div>

  <div class="form-group">
    <input type="text" class="form-control" name="director" placeholder="Director"/>
  </div>

  <div class="form-group">
    <button type="submit" class="btn btn-success" name="enviar" value="true"><i class="fa fa-check"></i> Agregar Pelicula</button>
  </div>

</form>
<center>
<a rel="nofollow noopener" href="buscador.php" class="tm-footer-link">>>>>>BUSCAR PELICULA>>>>></a>
<a rel="nofollow noopener" href="peliculas.php" class="tm-footer-link">>>>>>LISTADO PELICULA>>>>></a>
</center>


</div>
</div>
</div>
</div>


    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved. 
            
            Design: 
        </p>
        </div>
    </footer> 

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker();
      });
    </script>
  </body>
</html>
