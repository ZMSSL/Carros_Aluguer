<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="ligarBD.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testar Ligação ao MySql</title>
</head>
<body>
	<%
		ligacaoMySql.criarLigacaoMySql();
		out.println(ligacaoMySql.Estado);
	%>
</body>
</html>