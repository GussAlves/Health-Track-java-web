package br.com.htrack.controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.htrack.bean.Refeicao;
import br.com.htrack.dao.RefeicaoDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.factory.DAOFactory;

/**
 * Servlet implementation class RefeicaoServlet
 */
@WebServlet("/refeicao")
public class RefeicaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private RefeicaoDAO dao;
	
	@Override
	public void init() throws ServletException {
		super.init();
		dao = DAOFactory.getRefeicaoDAO();
	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cadastrarRefeicao(request, response);
	}

	private void cadastrarRefeicao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String tipoRef = request.getParameter("tipoRef");
			String nomeRef = request.getParameter("alimento");
			Calendar dataRef = Calendar.getInstance();
			int caloriaRef = Integer.parseInt("calorias");
			int alimentoRef = Integer.parseInt("quantidade");
						
			Refeicao ref = new Refeicao(0, nomeRef, dataRef, tipoRef, alimentoRef, caloriaRef);
			dao.cadastar(ref);
			
			request.setAttribute("msg", "Refeicao registrada");
		} catch ( DBException e ) {
			e.printStackTrace();
			request.setAttribute("erro", "Erro ao Cadastrar");
		} catch ( Exception e ) {
			e.printStackTrace();
			request.setAttribute("erro", "Valide os dados");
		}
		request.getRequestDispatcher("refeicao.jsp").forward(request, response);
	}

}
