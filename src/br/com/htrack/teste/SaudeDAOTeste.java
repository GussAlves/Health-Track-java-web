package br.com.htrack.teste;

import java.util.Calendar;
import java.util.List;

import br.com.htrack.bean.Saude;
import br.com.htrack.dao.SaudeDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.factory.DAOFactory;

public class SaudeDAOTeste {

	public static void main(String[] args) {
		SaudeDAO dao = DAOFactory.getSaudeDAO();
		
		Saude saude = new Saude(0, 66, 165, 19.99, Calendar.getInstance(), "Peso normal");
		// cadastrar
//		try {
//			dao.cadastar(saude);
//			System.out.println("Cadastro efetuado com sucesso");
//		} catch ( DBException e ) {
//			e.printStackTrace();
//		}
//		
//		// busca e atualiza
//		saude = dao.buscar(1);
//		saude.setPeso(68);
//		saude.setSitucacao("Acima do peso");
//		try {
//			dao.atualizar(saude);
//			System.out.println("registro " + saude.getCodigo() + " atualizado.");
//		} catch ( DBException e ) {
//			e.printStackTrace();
//		}
		
		// listar
		List<Saude> lista = dao.listar();
		System.out.println("\n");
		for ( Saude reg : lista) {
			System.out.println("Registro: " + reg.getCodigo() + " " + reg.getSitucacao() + " " + reg.getImc());
		}
		
		// remover 
//		try {
//			dao.remover(3);
//			System.out.println("item Removido");
//		} catch ( DBException e ) {
//			e.printStackTrace();
//		}
	}
}
