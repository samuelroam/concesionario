package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CocheModelo extends Conector{
	public ArrayList<Coche> selectAll() {

		ArrayList<Coche> Coches = new ArrayList<Coche>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from Coches");
			while (rs.next()) {
				Coche Coche = new Coche();
				Coche.setNumPuertas(rs.getInt("nPuertas"));
				Coche.setCapacidadMaletero(rs.getInt("cMaletero"));
				
				Coche.setMatricula(rs.getString("matricula"));
				Coche.setNumBastidor(rs.getInt("numBastidor"));
				Coche.setColor(rs.getString("color"));
				Coche.setNumAsientos(rs.getInt("numAsientos"));
				Coche.setPrecio(rs.getFloat("precio"));
				Coche.setSerie(rs.getInt("nSerie"));

				Coches.add(Coche);
			}
			return Coches;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Coches;
	}

}
