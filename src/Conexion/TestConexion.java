package Conexion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConexion {
	public static void main(String[] args) {
		Conexion c = new Conexion();
		Connection cn=null;
		Statement stm=null;
		ResultSet rs=null;
		try {
			cn = c.conectar();
			stm = cn.createStatement();
			rs = stm.executeQuery("SELECT * FROM Persona");
			while (rs.next()) {
				int id = rs.getInt(1);
				String nombre = rs.getString(2);
				String dni = rs.getString(3);
				String direccion = rs.getString(4);
				String email = rs.getString(5);
				String cel = rs.getString(6);
				System.out.println(id+" - "+nombre+" - "+dni+" - "+direccion+" - "+email+" - "+cel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null) {rs.close();}
				if (stm!=null) {stm.close();}
				if (cn!=null) {cn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			
		}
		
	}
}
