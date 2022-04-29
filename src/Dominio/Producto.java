package Dominio;

public class Producto {
	private int id;
	private String nombre;
	private String descripcion;
	private int precio;
	private int stock;
	private int puntaje;
	
	public Producto(){}
	public int getId(){
		return (id);
	}
	public void setId(int x){
		this.id = x;
	}
	public String getNombre(){
		return (nombre);
	}
	public void setNombre(String x){
		this.nombre = x;
	}
	public String getDescripcion(){
		return (descripcion);
	}
	public void setDescripcion(String x){
		this.descripcion = x;
	}
	public int getStock(){
		return (stock);
	}
	public void setStock(int x){
		this.stock = x;
	}
	public int getPuntaje(){
		return (puntaje);
	}
	public void setPuntaje(int x){
		this.puntaje = x;
	}
	public int getPrecio(){
		return (precio);
	}
	public void setPrecio(int x){
		this.precio = x;
	}
}
