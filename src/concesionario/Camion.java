package concesionario;

public class Camion extends Vehiculo {
	
	private int carga;
	private String tipoMercancia;
	private String tipo;
	
	
	
	public int getCarga() {
		return carga;
	}
	public void setCarga(int carga) {
		this.carga = carga;
	}
	public String getTipoMercancia() {
		return tipoMercancia;
	}
	public void setTipoMercancia(String tipoMercancia) {
		this.tipoMercancia = tipoMercancia;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}
