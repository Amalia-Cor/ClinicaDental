package Modelo;
import Modelo.Producto;
import java.sql.*;
import java.util.ArrayList;
import Utils.Conexion;
import Modelo.Producto;

public class ProductoDAO {
	
	public static ArrayList<Producto> obtenerProducto()
	{
		ArrayList<Producto> lista = new ArrayList<>();
		try {
			CallableStatement cl=Conexion.getConexion().prepareCall("{CALL listarP()}");
			ResultSet rs=cl.executeQuery();
			while (rs.next()) {
				Producto p=new Producto(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4) );
				lista.add(p);
			}
			
		}catch(Exception e) {}
		return lista;
		
	}
}
