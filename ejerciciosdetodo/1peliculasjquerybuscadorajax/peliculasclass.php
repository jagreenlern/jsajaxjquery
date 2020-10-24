<?php

header("Content-type: text/plain");

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
        return $titulo;
    }


    public function setAno(int $ano){
        $this->ano = $ano;
    }

    public function getAno(){
        return $ano;
    }


    public function setGenero(string $genero){
        $this->genero = $genero;
    }

    public function getGenero(){
        return $genero;
    }


    public function setDirector(string $director){
        $this->director = $director;
    }

    public function getDirector(){
        return $director;
    }


    public function __destruct() {
        echo 'Destroying: ', $this->name, PHP_EOL;
    }
}

?>