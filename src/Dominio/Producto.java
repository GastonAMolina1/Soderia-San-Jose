package Dominio;

public class Producto {
	private String nombre;
	private String descripcion;
	private int precio;
	private int stock;
	private int puntaje;
	
	public String getNombre(){
		return (nombre);
	}
	public void setNombre(String x){
		nombre = x;
	}
	public String getDescripcion(){
		return (descripcion);
	}
	public void setDescripcion(String x){
		descripcion = x;
	}
	public int getStock(){
		return (stock);
	}
	public void setStock(int x){
		stock = x;
	}
	public int getPuntaje(){
		return (puntaje);
	}
	public void setPuntaje(int x){
		puntaje = x;
	}
	public int getPrecio(){
		return (precio);
	}
	public void setPrecio(int x){
		precio = x;
	}
}
