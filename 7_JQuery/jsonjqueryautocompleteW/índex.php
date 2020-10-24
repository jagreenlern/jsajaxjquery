<html>
	<head>
		<title>Search AutoComplete</title>
	</head>
	<script type="text/javascript" src="js/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.2.custom.js"></script>
	<link href="css/jqueryui/jquery.ui.css" type="text/css" rel="stylesheet">
	
	<body>
		
			<form id="form" action="search.php" method="post">
	
      <input type="text" name="term" action="post">
      <input id="button" name="send" type="button" value="Enviar formulario"/>
    </form>
    <script>
	$("#button").click(function(event){
	  alert("Formulario enviado con jQuery");
	  $('#form').submit();
    });
    </script>	
<p id="parrafo">Este es un texto dentro de un párrafo. <span> Texto dentro de un span.</span></p>
 

	</body>
</html>