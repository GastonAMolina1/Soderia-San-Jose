package Dominio;

public class Cliente extends Persona{
	private String barrio;
	private int cuit;
	private int puntos_acum;
	
	public String getBarrio(){
		return (barrio);
	}
	public void setBarrio(String x){
		barrio = x;
	}
	public int getCuit(){
		return (cuit);
	}
	public void setCuit(int x){
		cuit = x;
	}
	public int getPuntosAcum(){
		return (puntos_acum);
	}
	public void setPuntosAcum(int x){
		puntos_acum = x;
	}
}
