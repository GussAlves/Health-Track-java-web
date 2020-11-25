package br.com.htrack.dao.imp;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.htrack.bean.Saude;
import br.com.htrack.dao.SaudeDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.singleton.ConnectionManager;

public class OracleSaudeDAO implements SaudeDAO {
	
	Connection connection = null;

	@Override
	public void cadastar(Saude saude) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO TAB_SAUDE (CD_SAUDE, VL_PESO, VL_ALTURA, DS_IMC, DT_REGISTRO, DS_SITUACAO) "
					+ "VALUES (SQ_TAB_SAUDE.NEXTVAL, ?, ?, ?, ?, ?)";
			stmt = connection.prepareStatement(sql);
			stmt.setDouble(1, saude.getPeso());
			stmt.setDouble(2, saude.getAltura());
			stmt.setDouble(3, saude.getImc());
			stmt.setString(5, saude.getSitucacao());
			
			java.sql.Date date = new java.sql.Date(saude.getDataRegistro().getTimeInMillis());
			stmt.setDate(4, date);
			
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Não foi possível cadastrar.");
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch ( SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void atualizar(Saude saude) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "UPDATE TAB_SAUDE SET VL_PESO = ?, VL_ALTURA = ?, DS_IMC = ?, DT_REGISTRO = ?, DS_SITUACAO = ? "
					+ "WHERE CD_SAUDE = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setDouble(1, saude.getPeso());
			stmt.setDouble(2, saude.getAltura());
			stmt.setDouble(3, saude.getImc());
			stmt.setString(5, saude.getSitucacao());
			stmt.setInt(6, saude.getCodigo()); // id 
			
			java.sql.Date date = new java.sql.Date(saude.getDataRegistro().getTimeInMillis());
			stmt.setDate(4, date);
						
			stmt.executeUpdate();
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Não foi possível atualizar.");
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch ( SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void remover(int codigo) throws DBException {
		PreparedStatement stmt = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "DELETE FROM TAB_SAUDE WHERE CD_SAUDE = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codigo);
			stmt.executeUpdate();
			
		} catch ( SQLException e ) {
			e.printStackTrace();
			throw new DBException("Não foi possível remover o registro");
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
	public Saude buscar(int codigo) {
		PreparedStatement stmt = null;
		ResultSet result = null;
		Saude registro = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_SAUDE WHERE CD_SAUDE = ?";
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codigo);
			result = stmt.executeQuery();
			
			if ( result.next() ) {
				int id = result.getInt("CD_SAUDE");
				double peso = result.getDouble("VL_PESO");
				double altura = result.getDouble("VL_ALTURA");
				double imc = result.getDouble("DS_IMC");
				String situacao = result.getString("DS_SITUACAO");

				java.sql.Date date = result.getDate("DT_REGISTRO");
				Calendar dataRegistro = Calendar.getInstance();
				dataRegistro.setTimeInMillis(date.getTime());				
				
				registro = new Saude(id, peso, altura, imc, dataRegistro, situacao);
			}
			
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				result.close();
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		return registro;
	}

	@Override
	public List<Saude> listar() {
		List<Saude> lista = new ArrayList<>();
		PreparedStatement stmt = null;
		ResultSet result = null;
		
		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "SELECT * FROM TAB_SAUDE";
			stmt = connection.prepareStatement(sql);
			result = stmt.executeQuery();
			
			while ( result.next() ) {
				int codigo = result.getInt("CD_SAUDE");
				double peso = result.getDouble("VL_PESO");
				double altura = result.getDouble("VL_ALTURA");
				double imc = result.getDouble("DS_IMC");
				String situacao = result.getString("DS_SITUACAO");

				java.sql.Date date = result.getDate("DT_REGISTRO");
				Calendar dataRegistro = Calendar.getInstance();
				dataRegistro.setTimeInMillis(date.getTime());				
				
				Saude registro = new Saude(codigo, peso, altura, imc, dataRegistro, situacao);
				lista.add(registro);
			}
			
		} catch ( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				result.close();
				stmt.close();
				connection.close();
			} catch ( SQLException e ) {
				e.printStackTrace();
			}
		}
		return lista;
	}
}
