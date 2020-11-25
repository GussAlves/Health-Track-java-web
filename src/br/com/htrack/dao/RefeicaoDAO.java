package br.com.htrack.dao;

import java.util.List;

import br.com.htrack.bean.Refeicao;
import br.com.htrack.exception.DBException;

public interface RefeicaoDAO {

	void cadastar(Refeicao refeicao) throws DBException;
	void atualizar(Refeicao refeicao) throws DBException;
	void remover(int codigo) throws DBException;
	List<Refeicao> listar();
	Refeicao buscar(int id);
}
