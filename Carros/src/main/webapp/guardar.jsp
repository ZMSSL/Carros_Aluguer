 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>guardar</title>
     <link rel="stylesheet" href="css/estilo.css">
     <link rel="icon" href="faviconcarro.png">
</head>
<body>
    <h1>Registo de viaturas</h1>
    <hr>
    <div align="center">
    <%
    //recolher os dados do POST (as informacoes da reserva)//
    String marca=request.getParameter("marca");
    String modelo=request.getParameter("modelo");
    String matricula=request.getParameter("matricula");
    String ano=request.getParameter("ano");
   
    String nomeMarca=""; 
	
	switch(marca){
	case "0":
		nomeMarca="Fomentor";
		break;
	case "1":
		nomeMarca="Dacia";
		break;
	case "2":
		nomeMarca="Kia";
		break;
	case "3":
		nomeMarca="Peugeot";
		break;			
	case "4":
		nomeMarca="Toyota";
		break;				
	}
    
    %>
    <table id="carros">
      <tr>
       <td>Marca:</td>
       <td><%=nomeMarca %></td>
      </tr>
      <tr>
       <td>Modelo:</td>
       <td><%=modelo %></td>
      </tr>
      <tr>
       <td>Matrícula:</td>
       <td><%=matricula %></td>
      </tr>
      <tr>
       <td>Ano:</td>
       
       <td><%=ano %></td>
      </tr>
      
     </table>
     
     <!-- guardar na base de dados -->
     
     <%
		
			// criar a ligação à base de dados
			Connection cn=ligacaoMySql.criarLigacaoMySql();
		
			// criar uma instãncia da classe Statement
			Statement st=cn.createStatement();
			
			// método para inserir os dados
			st.executeUpdate("insert into carros (marca,modelo,matricula,ano) values('"+nomeMarca+
					"','"+modelo+"','"+matricula+"','"+ano+"')");
		
		%>
     
     <h1>Registo efetuado</h1>
     <a href="index.jsp">Voltar</a>
     <a href="listagem.jsp">Listagem</a>
     </div>
     
    

</body>
</html>