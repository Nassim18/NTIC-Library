package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.document;
import modele.modifierdocument;
import modele.recherche;

/**
 * Servlet implementation class controlleurrecherche
 */
@WebServlet("/controlleurrecherche")
public class controlleurrecherche extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurrecherche() {
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
		
		HttpSession session = request.getSession();
		 RequestDispatcher dispatcher=null;
		String choix = request.getParameter("operation");
		String critere = request.getParameter("critere");
		
        ServletContext context = getServletContext();
        context.setAttribute("ch", choix);
		
		
		recherche m = new recherche();
		
		if(choix.equals("op1")){
			System.out.println(critere);
			session.setAttribute("listedocument", m.recherchepartitre(critere));
			dispatcher= request.getRequestDispatcher("WEB-INF/recherchedoc.jsp");
			dispatcher.forward(request, response);
			
			
		}else{
		if(choix.equals("op2")){
			System.out.println(critere);
			session.setAttribute("listedocument", m.rechercheparauteur(critere));
			dispatcher= request.getRequestDispatcher("WEB-INF/recherchedoc.jsp");
			dispatcher.forward(request, response);
			
		}else{
		if(choix.equals("op3")){
			System.out.println(critere);
			session.setAttribute("listedocument", m.rechercheparcategorie(critere));
			dispatcher= request.getRequestDispatcher("WEB-INF/recherchedoc.jsp");
			dispatcher.forward(request, response);
		}
		}
		}
	}

}
