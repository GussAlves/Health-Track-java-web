package br.com.htrack.dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.htrack.bean.Refeicao;
import br.com.htrack.dao.RefeicaoDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.singleton.ConnectionManager;

public class OracleRefeicaoDAO implements RefeicaoDAO {

	Connection connection = null;
	
	@Override
	public void cadastar(Refeicao refeicao) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO TAB_REFEICAO (CD_ID, NM_REF, DT_REF, DS_TIPO_REF, QT_ALIMENTO_REF, QT_CAL_REF) "
					+ "VALUES (SQ_TAB_REFEICAO.NEXTVAL, ?, ?, ?, ?, ?)";
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, refeicao.getNomeRef());
			java.sql.Date date = new java.sql.Date(refeicao.getDataRef().getTimeInMillis());
			stmt.setDate(2, date);
			stmt.setString(3, refeicao.getTipoRef());
			stmt.setDouble(4, refeicao.getAlimentoRef());
			stmt.setDouble(5, refeicao.getCaloriaRef());
			
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Refeicao cadastrada.");
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch ( SQLException e ) { 
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void atualizar(Refeicao refeicao) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "UPDATE TAB_REFEICAO SET NM_REF = ?, DT_REF = ?, DS_TIPO_REF = ?, QT_ALIMENTO_REF = ?, QT_CAL_REF = ? "
					+ "WHERE CD_ID = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, refeicao.getNomeRef());
			java.sql.Date date = new java.sql.Date(refeicao.getDataRef().getTimeInMillis());
			stmt.setDate(2, date);
			stmt.setString(3, refeicao.getTipoRef());
			stmt.setDouble(4, refeicao.getAlimentoRef());
			stmt.setDouble(5, refeicao.getCaloriaRef());
			stmt.setInt(6, refeicao.getId());
			
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Refeicao atualizada");
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void remover(int codigo) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "DELETE FROM TAB_REFEICAO WHERE CD_ID = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codigo);
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Refeicao removida.");
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<Refeicao> listar() {
		List<Refeicao> lista = new ArrayList<>();
		PreparedStatement stmt = null;
		ResultSet rest = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_REFEICAO";
			stmt = connection.prepareStatement(sql);
			rest = stmt.executeQuery();
			
			while ( rest.next() ) {
				int id = rest.getInt("CD_ID");
				String nome = rest.getString("NM_REF");
				
				java.sql.Date date = rest.getDate("DT_REF");
				Calendar dtRef = Calendar.getInstance();
				dtRef.setTimeInMillis(date.getTime());
				String tipo = rest.getString("DS_TIPO_REF");
				int qtAlimento = rest.getInt("QT_ALIMENTO_REF");
				int qtCal = rest.getInt("QT_CAL_REF");
				
				Refeicao refeicao = new Refeicao(id, nome, dtRef, tipo, qtAlimento, qtCal);
				lista.add(refeicao);
			}
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				rest.close();
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		
		return lista;
	}

	@Override
	public Refeicao buscar(int id) {
		Refeicao refeicao = null;
		PreparedStatement stmt = null;
		ResultSet rest = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_REFEICAO WHERE CD_ID = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, id);
			rest = stmt.executeQuery();
			
			if ( rest.next() ) {
				int codigo = rest.getInt("CD_ID");
				String nome = rest.getString("NM_REF");
				
				java.sql.Date date = rest.getDate("DT_REF");
				Calendar dtRef = Calendar.getInstance();
				dtRef.setTimeInMillis(date.getTime());
				String tipo = rest.getString("DS_TIPO_REF");
				int qtAlimento = rest.getInt("QT_ALIMENTO_REF");
				int qtCal = rest.getInt("QT_CAL_REF");
				
				refeicao = new Refeicao(codigo, nome, dtRef, tipo, qtAlimento, qtCal);
			}
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				rest.close();
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		
		return refeicao;
	}

}
