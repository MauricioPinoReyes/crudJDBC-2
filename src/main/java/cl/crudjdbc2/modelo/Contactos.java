package cl.crudjdbc2.modelo;

public class Contactos {
	private int id;
	private String nombreproveedor;
	private String direccion;
	private String comuna;
	
	public Contactos() {
	
	}

	public Contactos(int id, String nombreproveedor, String direccion, String comuna) {
		this.id = id;
		this.nombreproveedor = nombreproveedor;
		this.direccion = direccion;
		this.comuna = comuna;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreproveedor() {
		return nombreproveedor;
	}

	public void setNombreproveedor(String nombreproveedor) {
		this.nombreproveedor = nombreproveedor;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	@Override
	public String toString() {
		return "Contactos [id=" + id + ", nombreproveedor=" + nombreproveedor + ", direccion=" + direccion + ", comuna="
				+ comuna + "]";
	}
	
	
	
	
	
	
	
	
	
}
