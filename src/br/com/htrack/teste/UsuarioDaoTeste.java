package br.com.htrack.teste;

import java.util.List;

import br.com.htrack.bean.Usuario;
import br.com.htrack.dao.UsuarioDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.factory.DAOFactory;

public class UsuarioDaoTeste {

	public static void main(String[] args) {
		
		UsuarioDAO dao = DAOFactory.getUsuarioDAO();
		
		// Cadastar um usuario
		Usuario usuario = new Usuario(0, "Gustavo", "Alves", "gus@mail.com", "123asdc", "masculino", "são Bernardo", "São Paulo");
		try {
			dao.cadastrar(usuario);
			System.out.println("Usuario Cadastrado.");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		// Busca via id
		usuario = dao.buscar(2);
		usuario.setSenha("12345");
		usuario.setSexo("Masculino");
		try {
			dao.atualizar(usuario);
			System.out.println("Usuario alterado");
		} catch ( DBException e ) {
			e.printStackTrace();
		}
		
		// Listar usuarios
		List<Usuario> usuarios = dao.listar();
		for ( Usuario usu : usuarios ) {
			System.out.println(usu.getNome() + " " + usu.getEmail() + " " + usu.getSenha());
		}
		
		// Remover usuário 
		try {
			dao.remover(1);
			System.err.println("Usuario removido");
		} catch ( DBException e )  {
			e.printStackTrace();
		}
	}
}