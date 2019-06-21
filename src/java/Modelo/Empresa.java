package Modelo;

public class Empresa
{
	private int id;
	private String nombre;
	private String representante;
	private String sector;
	private String ubicacion;
	private String resumen;
	private int imagenPrincipal;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the representante
	 */
	public String getRepresentante() {
		return representante;
	}

	/**
	 * @param representante the representante to set
	 */
	public void setRepresentante(String representante) {
		this.representante = representante;
	}

	/**
	 * @return the sector
	 */
	public String getSector() {
		return sector;
	}

	/**
	 * @param sector the sector to set
	 */
	public void setSector(String sector) {
		this.sector = sector;
	}

	/**
	 * @return the ubicacion
	 */
	public String getUbicacion() {
		return ubicacion;
	}

	/**
	 * @param ubicacion the ubicacion to set
	 */
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	/**
	 * @return the resumen
	 */
	public String getResumen() {
		return resumen;
	}

	/**
	 * @param resumen the resumen to set
	 */
	public void setResumen(String resumen) {
		this.resumen = resumen;
	}

	/**
	 * @return the imagenPrincipal
	 */
	public int getImagenPrincipal() {
		return imagenPrincipal;
	}

	/**
	 * @param imagenPrincipal the imagenPrincipal to set
	 */
	public void setImagenPrincipal(int imagenPrincipal) {
		this.imagenPrincipal = imagenPrincipal;
	}
	
}
