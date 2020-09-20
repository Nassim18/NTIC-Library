package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.pret;
import modele.retournerdoc;

/**
 * Servlet implementation class retournerdocument
 */
@WebServlet("/retournerdocument")
public class retournerdocument extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public retournerdocument() {
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
		pret p = new pret();
		p.setCopie(request.getParameter("cote"));
		retournerdoc r =new retournerdoc();
		r.retourner(p.getCopie());
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/bibliothecaire.jsp");
		dispatcher.forward(request, response);
	}

}
