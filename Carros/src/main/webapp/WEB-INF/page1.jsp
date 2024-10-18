<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Sorna</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconHotel.png">
  
	
</head>
<body>
	<div align="center">
		
		<h1>Bem vindo ao Seu Hotel Sorna!</h1>
		<p id="data"></p>

    <script>
        const dataAtual = new Date().toLocaleDateString('pt-PT');
        document.getElementById('data').innerText = dataAtual;
    </script>
		
		<hr>
		<img id="fig" src="imagens/fachadasorna.jpg">
		<a href="listagem.jsp">index</a>
</div>
</body>