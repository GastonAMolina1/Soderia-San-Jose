package Dominio;

public class Persona {
	protected String nombre_apellido;
	protected int dni;
	protected String direccion;
	protected String email;
	protected int cel;
	
	public Persona(){	
	}
	public String getNomApe(){
		return (nombre_apellido);
	}
	public void setNomApe(String x){
		nombre_apellido = x;
	}
	public int getDni(){
		return (dni);
	}
	public void setDni(int x){
		dni = x;
	}
	public String getDir(){
		return (direccion);
	}
	public void setDir(String x){
		direccion = x;
	}
	public String getEmail(){
		return (email);
	}
	public void setEmail(String x){
		email = x;
	}
	public int getCel(){
		return (cel);
	}
	public void setCel(int x){
		cel = x;
	}
}
