
function cambiarposicion(celda1,celda2) {
  var temp = document.getElementById(celda1).className;
  document.getElementById(celda1).className = document.getElementById(celda2).className;
  document.getElementById(celda2).className = temp;
}


function clickposicion(fila,columna) {
  var celda = document.getElementById("celda"+fila+columna);
  var pos = celda.className;
  if (pos!="pos16") { 
       
       if (columna<4) {
         if ( document.getElementById("celda"+fila+(columna+1)).className=="pos16") {
           cambiarposicion("celda"+fila+columna,"celda"+fila+(columna+1));
           return;
         }
       }
       
       if (columna>1) {
         if ( document.getElementById("celda"+fila+(columna-1)).className=="pos16") {
           cambiarposicion("celda"+fila+columna,"celda"+fila+(columna-1));
           return;
         }
       }
         
       if (fila>1) {
         if ( document.getElementById("celda"+(fila-1)+columna).className=="pos16") {
           cambiarposicion("celda"+fila+columna,"celda"+(fila-1)+columna);
           return;
         }
       }
       
       if (fila<4) {
         if ( document.getElementById("celda"+(fila+1)+columna).className=="pos16") {
           cambiarposicion("celda"+fila+columna,"celda"+(fila+1)+columna);
           return;
         }
       } 
  }
  
}

function boton() {

for (var fila=1;fila<=4;fila++) { 
   for (var columna=1;columna<=4;columna++) { 
  
    var fila2=Math.floor(Math.random()*4 + 1); 
    var columna2=Math.floor(Math.random()*4 + 1);
     
    cambiarposicion("celda"+fila+columna,"celda"+fila2+columna2); 
  } 
} 
}

window.onload = function() {
   pantalla = document.getElementById("screen");
}

var devuelve = false; 
var acumularTime = 0; 

function start () {
         if (devuelve == false) { 
            timeInicial = new Date();
            control = setInterval(cronometro,10);
            devuelve = true;
            }
         }

function cronometro () { 
         timeActual = new Date();
         acumularTime = timeActual - timeInicial;
         acumularTime2 = new Date();
         acumularTime2.setTime(acumularTime); 
         cc = Math.round(acumularTime2.getMilliseconds()/10);
         ss = acumularTime2.getSeconds();
         mm = acumularTime2.getMinutes();
         if (cc < 10) {cc = "0"+cc;}
         if (ss < 10) {ss = "0"+ss;} 
         if (mm < 10) {mm = "0"+mm;}
         pantalla.innerHTML = mm+" : "+ss+" : "+cc;
         }


function stop () { 
         if (devuelve == true) {
            clearInterval(control);
            devuelve = false;
            }     
         }

var toques = 0;

function sumar() {
  toques = toques + 1;
  document.getElementById("clicks").textContent = "Movimientos: " + toques;
}

function restar(sumar){
  if (toques > 0) {
    toques = 0;
    document.getElementById("clicks").textContent = "Movimientos: 0";
  }
}