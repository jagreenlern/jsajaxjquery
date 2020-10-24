	var contadorAciertos=0;
	var contadorFallos=0;
	

	var palabras=new Array("ARMARIO", "HOLA","TOALLA","COCHE","BICICLETA");
	var abecedario=new Array('A','B','C','D','E','F','G','H','I','J',
							 'K','L','M','N','O','P','Q','R','S','T',
							 'U','V','W','X','Y','Z');//26 letras falta la ñ
	var botonera=document.getElementById("botonera");
	var i;
	
//Creas la botonera
	for (i = 0; i < abecedario.length; i++) {
		var btnLetra = document.createElement("button");
		btnLetra.innerHTML=abecedario[i];
		document.body.appendChild(btnLetra);
		btnLetra.onclick=function(){
			this.style.background="yellow";
			this.disabled=true;
			var letra=this.innerHTML;
			comprobarLetra(letra);
		}//fin funcion onclick

	}//fin for que crea la botonera
	
	//Obtengo la palabra
	var palPos=Math.round(Math.random()*palabras.length);
	var palabraElegida=palabras[palPos];
	alert(palabraElegida);



	 
	// guiones2.appendChild(tabla);



	//funcion comprobar la letra
	function comprobarLetra(letra){
		var k;
		contadorFallos=0; 
		var guiones2=document.getElementById("guiones2");
		var tabla=document.createElement('table');
		//var tblBody = document.createElement("tbody");
		var fila=document.createElement('tr');
	   //guiones2.appendChild(tabla);
	   //guiones2.innerHTML=tabla;
		for(k=0;k<palabraElegida.length;k++){
	   
			var celda=document.createElement('td');
			var textoCelda = document.createTextNode("hola");
		celda.appendChild(textoCelda);
		fila.appendChild(celda);
		//tabla.appendChild(fila);
		}
		
		for(k=0;k<palabraElegida.length;k++){
			if(palabraElegida[k]==letra){				
					tabla.rows[0].cells[k].innerText=palabraElegida[k];				
				//alert(k);
				contadorAciertos+=1;
			}else{
				contadorFallos+=1;
				//alert(contadorFallos);
				var imagen=document.getElementById("ahorcado");
				imagen.src="imagenes/"+contadorFallos+".jpg";
			}
		}

	}
	  
	 
