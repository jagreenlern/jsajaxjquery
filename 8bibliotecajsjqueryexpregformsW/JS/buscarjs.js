
    	var exprnombre = /^([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\']+[\s])+([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])+[\s]?([A-Za-zÁÉÍÓÚñáéíóúÑ]{0}?[A-Za-zÁÉÍÓÚñáéíóúÑ\'])?/;
    	var exprdni = /^\d{8}[a-zA-Z]{1}$/;
    	var letrasdni = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    	var exprmayprincipio = /^[A-Z][a-z]/;
        //Expresión para validar un correo electrónico
        var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
        //Expresión para validar edad de 18 a 60 años
        var expr2 = /^1[8-9]|[2-5]\d|60$/;
        //$(document).ready(function(){
            //función click
            function validar()
            {
                //Guardar en variables el valor que tengan las cajas de texto
                //Por medio de los id's
                //Y tener mejor manipulación de dichos valores
                var nombre = document.getElementById("nombre").value;
                var nif = document.getElementById("dni").value;
                var dni = nif.substring(0,8);
                var letranif = nif.charAt(8);
                var ciudad = document.getElementById("ciudad").value;
                //alert(nif);
                //alert(dni);
                   //alert(letranif);
                   //alert(nombre);




                   function fadeOut(element)
                {
                    var op = 1;  // initial opacity
                    var timer = setInterval(function () {
                        if (op <= 0.1){
                            clearInterval(timer);
                            element.style.display = 'none';
                        }
                        element.style.opacity = op;
                        element.style.filter = 'alpha(opacity=' + op * 100 + ")";
                        op -= op * 0.1;
                    }, 50);
                }

                function fadeIn(element)
                {
                    var op = 0.1;  // initial opacity
                    element.style.display = 'block';
                    var timer = setInterval(function () {
                        if (op >= 1){
                            clearInterval(timer);
                        }
                        element.style.opacity = op;
                        element.style.filter = 'alpha(opacity=' + op * 100 + ")";
                        op += op * 0.1;
                    }, 10);
                }

                    
                // --- Condicionales anidados ----
                //Si nombre está vacío
                //Muestra el mensaje
                //Con false sale de los if's y espera a que sea pulsado de nuevo el botón de enviar
                if(nombre == "" || !exprnombre.test(nombre)){
                    //$("#mensaje1").fadeIn("slow");
                    fadeIn(document.getElementById("mensaje1"));
                    return false;
                }
                //en otro caso, el mensaje no se muestra
                else
                {
                    //$("#mensaje1").fadeOut();
                    fadeOut(document.getElementById("mensaje1"));
                    //Si correo está vacío y la expresión NO corresponde -test es función de JQuery
                    //Muestra el mensaje
                    //Con false sale de los if's y espera a que sea pulsado de nuevo el botón de enviar
                    if(nif == "" || !exprdni.test(nif)){
                    	//if((dni%23) == 0 && letranif == "T")
                    	//{
                        //$("#mensaje2").fadeIn("slow");
                        fadeIn(document.getElementById("mensaje2"));
                        return false;
                    	//}
                    	
                    	//else
                    	//{
                    	 //   $("#mensaje2").fadeOut();
                    	//}
                    

                    }
                    else{
                        //$("#mensaje2").fadeOut();
                        fadeOut(document.getElementById("mensaje2"));
 
                        if(ciudad == "" || !exprmayprincipio.test(ciudad)){
                            //$("#mensaje3").fadeIn("slow");
                            fadeIn(document.getElementById("mensaje3"));
                            return false;
                        }
                        else{
                            //$("#mensaje3").fadeOut();
                            fadeOut(document.getElementById("mensaje3"));

 
                            /*if(edad == "" || !expr2.test(edad)){
                                $("#mensaje4").fadeIn("slow");
                                return false;
                            }*/
                        }
                    }
                }


             
            }//validar
        //});//read