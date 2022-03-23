package Dominio;

public class Pedido {
	private int fKCliente;
	private int fKUsuario;
	private int[] productos;
	
	public int getCliente(){
		return (fKCliente);
	}
	public void setCliente(int x){
		fKCliente = x;
	}
	public int getUsuario(){
		return (fKUsuario);
	}
	public void setUsuario(int x){
		fKUsuario = x;
	}
	public int[] getProductos(){
		return (productos);
	}
	public void setProductos(int[] x){
		productos = x;
	}
}
