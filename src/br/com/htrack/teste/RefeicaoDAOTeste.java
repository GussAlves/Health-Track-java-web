package br.com.htrack.teste;

import java.util.Calendar;
import java.util.List;

import br.com.htrack.bean.Refeicao;
import br.com.htrack.dao.RefeicaoDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.factory.DAOFactory;

public class RefeicaoDAOTeste {

	public static void main(String[] args) {
		
		RefeicaoDAO dao = DAOFactory.getRefeicaoDAO();
		
		// cadastrar 
		Refeicao refeicao = new Refeicao(0, "Macarrao", Calendar.getInstance(), "Cafê Manhã", 400, 100);
		try {
			dao.cadastar(refeicao);
			System.out.println("Refeicao cadastrada.");
		} catch ( DBException e ) {
			e.printStackTrace();
		}
		
		// buscar and atualizar
		refeicao = dao.buscar(2);
		refeicao.setNomeRef("Arroz cozido");
		try {
			dao.atualizar(refeicao);
			System.out.println("Produto atualizado");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		// listar
		List<Refeicao> refeicoes = dao.listar();
		for (Refeicao ref : refeicoes) {
			System.out.println(ref.getNomeRef() + " " + ref.getAlimentoRef() + " " + ref.getCaloriaRef());
		}
		
		//remover 
		try {
			dao.remover(2);
			System.out.println("Registro removido");
		} catch (DBException e) {
			e.printStackTrace();
		}
	}

}
