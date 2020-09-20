package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.User;
import modele.document;
import modele.modifierdocument;
import modele.traiteradhesion;

/**
 * Servlet implementation class controlleurtraiteradhesion
 */
@WebServlet("/controlleurtraiteradhesion")
public class controlleurtraiteradhesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurtraiteradhesion() {
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
		User u = new User();
		u.setUserName(request.getParameter("username"));
		traiteradhesion t = new traiteradhesion(); 
		
		if (t.traitementadhesion(u.getUsername()).equals(null)){
			System.out.println("----");
			dispatcher = request.getRequestDispatcher("WEB-INF/administrateur.jsp");
			dispatcher.forward(request, response);
			
		}else{
			System.out.println("++++");
			
			session.setAttribute("currentSessionUser1",t.traitementadhesion(u.getUsername())); 
			System.out.println("mchat");
			dispatcher = request.getRequestDispatcher("adhesion.jsp");
	       dispatcher.forward(request, response);
		}
		
	}

}
