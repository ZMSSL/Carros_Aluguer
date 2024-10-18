<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Viaturas para Famílias</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconcarro.png">
    <script>
	
		var carros=["imagens/CUPRA.jpg","imagens/DACIAJOGGER.jpg","imagens/KIASPORTAGE.jpg",
			"imagens/PEUGEOT3008.jpg","imagens/TOYOTACOROLLACROSS.jpg"];
	
		function mostra_imagem(){
			document.getElementById('fig').src=carros[document.getElementById('dmarca').value];
		}
		
		
	</script>
	
</head>

<body>
	<div align="center">
		
		<h1>Car Rental for Great Adventures in family!</h1>
		<hr>
		<img id="fig" src="imagens/TRAVEL.jpg">
	
		<form method="POST" action="guardar.jsp" name="frm">
		
			<table id="carros">
			
				<tr>
					<td>Marca</td>
					<td>
						<select id="dmarca" required name="marca" 
						onchange="mostra_imagem()">
						
						<option value=0>Fomentor</option>
						<option value=1>Dacia</option>
						<option value=2>Kia</option>
						<option value=3>Peugeot</option>
						<option value=4>Toyota</option>
						
						</select>
					</td>
				</tr>
				
				<tr>
					<td>Modelo</td>
					<td><input type="text" required name="modelo">
				</tr>

				<tr>
					<td>Matrícula</td>
					<td><input type="text" required name="matricula">
				</tr>
			
				<tr>
					<td>Ano</td>
					<td>
						<select required name="ano">
						
							<%
								int ano=2000;
								while (ano<2025){
									out.println("<option value="+ano+">"+ano+"</option>");
									ano++;
								}
							%>
						
						</select>
					</td>
				</tr>			
			
			</table>
			
			<br>
			<input type="submit" value="Registar">
			<input type="reset" value="Cancelar" onclick="mostra_imagem()">
			<a href="listagem.jsp">Listagem</a>
		</form>
	</div>
</body>
</html>