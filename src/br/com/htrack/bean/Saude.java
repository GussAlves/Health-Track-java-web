package br.com.htrack.bean;

import java.util.Calendar;

public class Saude {

	private int codigo;
	private double peso;
	private double altura;
	private double imc;
	private Calendar dataRegistro;
	private String situcacao;
	
	public Saude() {	super();	}

	public Saude(int codigo, double peso, double altura, double imc, Calendar dataRegistro, String situcacao) {
		super();
		this.codigo = codigo;
		this.peso = peso;
		this.altura = altura;
		this.imc = imc;
		this.dataRegistro = dataRegistro;
		this.situcacao = situcacao;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public double getImc() {
		return imc;
	}

	public void setImc(double imc) {
		this.imc = imc;
	}

	public Calendar getDataRegistro() {
		return dataRegistro;
	}

	public void setDataRegistro(Calendar dataRegistro) {
		this.dataRegistro = dataRegistro;
	}

	public String getSitucacao() {
		return situcacao;
	}

	public void setSitucacao(String situcacao) {
		this.situcacao = situcacao;
	}
	
}
