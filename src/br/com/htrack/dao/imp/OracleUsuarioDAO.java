package br.com.htrack.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.htrack.bean.Usuario;
import br.com.htrack.dao.UsuarioDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.singleton.ConnectionManager;

public class OracleUsuarioDAO implements UsuarioDAO {

	private Connection conexao;
	
	@Override
	public void cadastrar(Usuario usuario) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO TAB_USUARIO (CD_USU, NM_USU, NM_USU_SOBRE, DS_EMAIL, PS_SENHA, DS_USU_SEXO, DS_ESTADO, DS_CIDADE) "
					+ "VALUES (SQ_TAB_USUARIO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)";
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getEmail());
			stmt.setString(4, usuario.getSenha());
			stmt.setString(5, usuario.getSexo());
			stmt.setString(6, usuario.getEstado());
			stmt.setString(7, usuario.getCidade());
			
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Erro ao Cadastrar.");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void atualizar(Usuario usuario) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "UPDATE TAB_USUARIO SET NM_USU = ?, NM_USU_SOBRE = ?, DS_EMAIL = ?, "
					+ "PS_SENHA = ?, DS_USU_SEXO = ?, DS_ESTADO = ?, DS_CIDADE = ? "
					+ "WHERE CD_USU = ?";
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getSobrenome());
			stmt.setString(3, usuario.getEmail());
			stmt.setString(4, usuario.getSenha());
			stmt.setString(5, usuario.getSexo());
			stmt.setString(6, usuario.getEstado());
			stmt.setString(7, usuario.getCidade());
			// where id
			stmt.setInt(8, usuario.getId());
			
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Erro ao atualizar.");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void remover(int codigo) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "DELETE FROM TAB_USUARIO WHERE CD_USU = ?";
			stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, codigo);
			stmt.executeUpdate();			
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Erro ao excluir usuario");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public Usuario buscar(int id) {
		Usuario usuario = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_USUARIO WHERE CD_USU = ?";
			stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			
			if ( rs.next() ) {
				int codigo = rs.getInt("CD_USU");
				String nome = rs.getString("NM_USU");
				String sobrenome = rs.getString("NM_USU_SOBRE");
				String email = rs.getString("DS_EMAIL");
				String senha = rs.getString("PS_SENHA");
				String sexo = rs.getString("DS_USU_SEXO");
				String estado = rs.getString("DS_ESTADO");
				String cidade = rs.getString("DS_CIDADE");
				
				usuario = new Usuario(codigo, nome, sobrenome, email, senha, sexo, estado, cidade);
			}
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conexao.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		
		return usuario;
	}

	@Override
	public List<Usuario> listar() {
		List<Usuario> lista = new ArrayList<>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_USUARIO";
			stmt = conexao.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while ( rs.next() ) {
				int codigo = rs.getInt("CD_USU");
				String nome = rs.getString("NM_USU");
				String sobrenome = rs.getString("NM_USU_SOBRE");
				String email = rs.getString("DS_EMAIL");
				String senha = rs.getString("PS_SENHA");
				String sexo = rs.getString("DS_USU_SEXO");
				String estado = rs.getString("DS_ESTADO");
				String cidade = rs.getString("DS_CIDADE");
				
				Usuario usu = new Usuario(codigo, nome, sobrenome, email, senha, sexo, estado, cidade);
				lista.add(usu);
			}
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conexao.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		
		return lista;
	}

}
