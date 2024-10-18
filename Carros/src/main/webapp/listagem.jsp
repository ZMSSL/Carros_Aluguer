<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.text.*" %>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Viaturas para Famílias</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconcarro.png">
</head>
<body>
	<h1>Listagem de carros</h1>
	<div align="center">
	<table id="carros">
		<tr>
			<th>Nº Viatura</th>
			<th>Marca</th>
			<th>Modelo</th>
			<th>Matrícula</th>
			<th>Ano</th>
		</tr>
		<%
			Connection cn=ligacaoMySql.criarLigacaoMySql();
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery("select * from carros");
			
			while(rs.next()){
				out.println("<tr><td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td></tr>");
			}
		%>
	</table>
	<br>
	<p style="text-align:center">
		<a href="index.jsp">Voltar</a>
	</p>
	</div>
</body>
</html>