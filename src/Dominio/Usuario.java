package Dominio;

public class Usuario extends Persona {
	private String user;
	private String password;
	
	public Usuario(){}
	public String getUser(){
		return (user);
	}
	public void setUser(String x){
		this.user = x;
	}
	public String getPassword(){
		return (password);
	}
	public void setPassword(String x){
		this.password = x;
	}
}
