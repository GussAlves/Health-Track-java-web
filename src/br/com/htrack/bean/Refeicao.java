package br.com.htrack.bean;

import java.util.Calendar;

public class Refeicao {

	private int id;
	private String nomeRef;
	private Calendar dataRef;
	private String tipoRef;
	private int alimentoRef;
	private int caloriaRef;
	
	public Refeicao() {		super();	}

	public Refeicao(int id, String nomeRef, Calendar dataRef, String tipoRef, int alimentoRef, int caloriaRef) {
		super();
		this.id = id;
		this.nomeRef = nomeRef;
		this.dataRef = dataRef;
		this.tipoRef = tipoRef;
		this.alimentoRef = alimentoRef;
		this.caloriaRef = caloriaRef;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeRef() {
		return nomeRef;
	}

	public void setNomeRef(String nomeRef) {
		this.nomeRef = nomeRef;
	}

	public Calendar getDataRef() {
		return dataRef;
	}

	public void setDataRef(Calendar dataRef) {
		this.dataRef = dataRef;
	}

	public String getTipoRef() {
		return tipoRef;
	}

	public void setTipoRef(String tipoRef) {
		this.tipoRef = tipoRef;
	}

	public int getAlimentoRef() {
		return alimentoRef;
	}

	public void setAlimentoRef(int alimentoRef) {
		this.alimentoRef = alimentoRef;
	}

	public int getCaloriaRef() {
		return caloriaRef;
	}

	public void setCaloriaRef(int caloriaRef) {
		this.caloriaRef = caloriaRef;
	}
	
}
