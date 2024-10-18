package ligarBD;

import java.sql.*;

public class ligacaoMySql {
	
	public static String Estado="Não ligado";
	public static Connection criarLigacaoMySql() {
		
		Connection cn=null;
		
		try {
			String driver="com.mysql.cj.jdbc.Driver";
			Class.forName(driver);
			String caminho="jdbc:mysql://localhost:3306/db_viaturas?useTimezone=true&serverTimezone=UTC";
			String utilizador="root";
			String password="";
			cn=DriverManager.getConnection(caminho,utilizador,password);
			if(cn!=null) {
				Estado="Ligação efetuada com sucesso.";
			}
			else {
				Estado="Não foi possível criar a ligação.";
			}
			return(cn);
		}
		catch(ClassNotFoundException e) {
			System.out.println("Driver não encontrado.");
			return null;
		}
		catch(SQLException e) {
			System.out.println("Não foi possível ligar à base de dados.");
			return null;
		}
	}
	public static String estadoLigacao() {
		return(Estado);
	}
}
 