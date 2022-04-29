package Dominio;

public class Pedido {
	private int id;
	private int fKCliente;
	private int fKUsuario;
	private int[] productos;
	
	public Pedido(){}
	public int getId(){
		return (id);
	}
	public void setId(int x){
		this.id = x;
	}
	public int getCliente(){
		return (fKCliente);
	}
	public void setCliente(int x){
		this.fKCliente = x;
	}
	public int getUsuario(){
		return (fKUsuario);
	}
	public void setUsuario(int x){
		this.fKUsuario = x;
	}
	public int[] getProductos(){
		return (productos);
	}
	public void setProductos(int[] x){
		this.productos = x;
	}
}
