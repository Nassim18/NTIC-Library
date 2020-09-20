package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.User;
import modele.document;
import modele.modifierdocument;
import modele.traiteradhesion;

/**
 * Servlet implementation class controlleurtraiteradhesiond
 */
@WebServlet("/controlleurtraiteradhesiond")
public class controlleurtraiteradhesiond extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurtraiteradhesiond() {
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
		// TODO Auto-generated method stub
		
		RequestDispatcher dispatcher=null; 
		User u = new User();
		u.setUserName(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		u.setNom(request.getParameter("nom"));
		u.setPrenom(request.getParameter("prenom"));
		u.setAdresse(request.getParameter("adresse"));
		u.setEtat(request.getParameter("etat"));
		u.setNumcarte(request.getParameter("numcarte"));
		u.setType(request.getParameter("type"));
		
		traiteradhesion t = new traiteradhesion();
		t.modifier(u.getUsername(), u.getPassword(), u.getNom(), u.getPrenom(), u.getAdresse(), u.getEtat(), u.getNumcarte(), u.getType());
		dispatcher= request.getRequestDispatcher("WEB-INF/administrateur.jsp");
		dispatcher.forward(request, response);
	
	}
	
	

}
