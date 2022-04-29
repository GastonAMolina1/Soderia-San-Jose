package Dominio;

public class Cliente extends Persona{

	private String barrio;
	private int cuit;
	private int puntos_acum;
	
	public Cliente(){}
	public String getBarrio(){
		return (barrio);
	}
	public void setBarrio(String x){
		this.barrio = x;
	}
	public int getCuit(){
		return (cuit);
	}
	public void setCuit(int x){
		this.cuit = x;
	}
	public int getPuntosAcum(){
		return (puntos_acum);
	}
	public void setPuntosAcum(int x){
		this.puntos_acum = x;
	}
}
