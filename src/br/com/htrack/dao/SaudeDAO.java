package br.com.htrack.dao;

import java.util.List;

import br.com.htrack.bean.Saude;
import br.com.htrack.exception.DBException;

public interface SaudeDAO {
	
	void cadastar(Saude saude) throws DBException;
	void atualizar(Saude saude) throws DBException;
	void remover(int codigo) throws DBException;
	Saude buscar(int codigo);
	List<Saude> listar();
}
