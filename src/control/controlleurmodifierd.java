package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.document;
import modele.modifierdocument;

/**
 * Servlet implementation class modifierd
 */
@WebServlet("/controlleurmodifierd")
public class controlleurmodifierd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurmodifierd() {
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
		RequestDispatcher dispatcher=null; 
		document doc = new document();
		doc.setCote(request.getParameter("cote"));
		doc.setTitre(request.getParameter("titre"));
		doc.setAuteur(request.getParameter("auteur"));
		doc.setAnnee(request.getParameter("annee"));
		doc.setSpecialite(request.getParameter("specialite"));
		doc.setEdition(request.getParameter("edition"));
		doc.setCategorie(request.getParameter("categorie"));
		
		modifierdocument m = new modifierdocument();
		m.modifier(doc.getCote(), doc.getTitre(), doc.getAuteur(), doc.getAnnee(), doc.getSpecialite(), doc.getEdition(), doc.getCategorie());
		dispatcher= request.getRequestDispatcher("WEB-INF/bibliothecaire.jsp");
		dispatcher.forward(request, response);
	
	}
	
	

}
