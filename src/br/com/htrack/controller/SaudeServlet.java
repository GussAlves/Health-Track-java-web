package br.com.htrack.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.htrack.bean.Saude;
import br.com.htrack.dao.SaudeDAO;
import br.com.htrack.exception.DBException;
import br.com.htrack.factory.DAOFactory;

@WebServlet("/saude")
public class SaudeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private SaudeDAO dao;
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	dao = DAOFactory.getSaudeDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listarRegistros(request, response);
	}

	private void listarRegistros(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Saude> registros = dao.listar();
		request.setAttribute("lista-registro", registros);
		request.getRequestDispatcher("registros.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		cadastrarRegistro(request, response);
	}

	private void cadastrarRegistro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			double peso = Double.parseDouble(request.getParameter("weight"));
			double altura = Double.parseDouble(request.getParameter("height"));
			double imc = Double.parseDouble(request.getParameter("bmi"));
			Calendar dataRegistro = Calendar.getInstance();
			String situacao = request.getParameter("meaning");
			
			Saude saude = new Saude(0, peso, altura, imc, dataRegistro, situacao);
			dao.cadastar(saude);
			
			request.setAttribute("msg", "Novo registro adicionado");
		} catch ( DBException e) {
			e.printStackTrace();
			request.setAttribute("erro", "Não foi possível registrar");
		} catch ( Exception e ) {
			e.printStackTrace();
			request.setAttribute("erro", "Favor valide seus dados");
		}
		request.getRequestDispatcher("imc.jsp").forward(request, response);
	}

}