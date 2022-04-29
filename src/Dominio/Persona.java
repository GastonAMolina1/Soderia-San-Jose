package Dominio;

public class Persona {
	protected int id;
	protected String nombre_apellido;
	protected int dni;
	protected String direccion;
	protected String email;
	protected int cel;
	
	public Persona(){}
	public int getId(){
		return (id);
	}
	public void setId(int x){
		this.id = x;
	}
	public String getNomApe(){
		return (nombre_apellido);
	}
	public void setNomApe(String x){
		this.nombre_apellido = x;
	}
	public int getDni(){
		return (dni);
	}
	public void setDni(int x){
		this.dni = x;
	}
	public String getDir(){
		return (direccion);
	}
	public void setDir(String x){
		this.direccion = x;
	}
	public String getEmail(){
		return (email);
	}
	public void setEmail(String x){
		this.email = x;
	}
	public int getCel(){
		return (cel);
	}
	public void setCel(int x){
		this.cel = x;
	}
}
