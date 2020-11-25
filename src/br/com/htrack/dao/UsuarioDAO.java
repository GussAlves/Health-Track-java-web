package br.com.htrack.dao;

import java.util.List;

import br.com.htrack.bean.Usuario;
import br.com.htrack.exception.DBException;

public interface UsuarioDAO {

	void cadastrar(Usuario usuario) throws DBException;
	void atualizar(Usuario usuario) throws DBException;
	void remover(int codigo) throws DBException;
	Usuario buscar(int id);
	List<Usuario> listar();
}
