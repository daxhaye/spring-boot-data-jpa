package com.bolsadeideas.springboot.app.util.paginator;

public class PageItem {
	
	private int numero;
	private Boolean actual;
	
	public PageItem(int numero, Boolean actual) {
		this.numero = numero;
		this.actual = actual;
	}

	public int getNumero() {
		return numero;
	}

	public Boolean getActual() {
		return actual;
	}
	
	
	
}
