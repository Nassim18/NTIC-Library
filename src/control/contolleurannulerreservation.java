package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.annuler;
import modele.document;
import modele.reservation;
import modele.reservedoc;
import modele.supprimerdocument;

/**
 * Servlet implementation class contolleurannulerreservation
 */
@WebServlet("/contolleurannulerreservation")
public class contolleurannulerreservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contolleurannulerreservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		reservation r = new reservation();
		r.setId(request.getParameter("id"));
		String res = null ;
		annuler v =  new annuler();
		
		if (v.rechercher(r.getId()).equals(null)){
			dispatcher= request.getRequestDispatcher("annulerreservation.jsp");
			dispatcher.forward(request, response);
			
		}else{
			System.out.println( v.rechercher(r.getId()));
			v.annuler(r.getId());
			dispatcher= request.getRequestDispatcher("WEB-INF/bibliothecaire.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}
	}


