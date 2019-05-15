package concesionario;

public class Coche extends Vehiculo {

	
	private int numPuertas;
	private int capacidadMaletero;
	private String tipo;
	
	
	
	public int getNumPuertas() {
		return numPuertas;
	}
	public void setNumPuertas(int numPuertas) {
		this.numPuertas = numPuertas;
	}
	public int getCapacidadMaletero() {
		return capacidadMaletero;
	}
	public void setCapacidadMaletero(int capacidadMaletero) {
		this.capacidadMaletero = capacidadMaletero;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
