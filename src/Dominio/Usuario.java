package Dominio;

public class Usuario extends Persona {
	private String user;
	private String password;
	
	public String getUser(){
		return (user);
	}
	public void setUser(String x){
		user = x;
	}
	public String getPassword(){
		return (password);
	}
	public void setPassword(String x){
		password = x;
	}
}
