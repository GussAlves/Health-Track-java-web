package br.com.htrack.factory;

import br.com.htrack.dao.RefeicaoDAO;
import br.com.htrack.dao.SaudeDAO;
import br.com.htrack.dao.UsuarioDAO;
import br.com.htrack.dao.imp.OracleRefeicaoDAO;
import br.com.htrack.dao.imp.OracleSaudeDAO;
import br.com.htrack.dao.imp.OracleUsuarioDAO;

public class DAOFactory {

	public static UsuarioDAO getUsuarioDAO() {
		return new OracleUsuarioDAO();
	}
	
	public static RefeicaoDAO getRefeicaoDAO() {
		return new OracleRefeicaoDAO();
	}
	
	public static SaudeDAO getSaudeDAO() {
		return new OracleSaudeDAO();
	}
}
