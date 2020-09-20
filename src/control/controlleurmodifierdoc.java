package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.document;
import modele.modifierdocument;

/**
 * Servlet implementation class controlleurmodifierdoc
 */
@WebServlet("/controlleurmodifierdoc")
public class controlleurmodifierdoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurmodifierdoc() {
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
		HttpSession session = request.getSession();
		 RequestDispatcher dispatcher=null;
		document doc = new document();
		session.setAttribute("currentSessionDoc1",doc);
		modifierdocument m = new modifierdocument(); 
		doc.setCote(request.getParameter("cote"));
		if (m.modifierdoc(doc.getCote())==null){
			System.out.println("null+++");
			dispatcher = request.getRequestDispatcher("WEB-INF/bibliothecaire.jsp");
			dispatcher.forward(request, response);
			
		}else{
			System.out.println("not null+++");
			
			session.setAttribute("currentSessionDoc1",m.modifierdoc(doc.getCote())); 
			System.out.println(((document)(session.getAttribute("currentSessionDoc1"))).getAuteur());
			System.out.println("jhkjhk");
			
	       dispatcher = request.getRequestDispatcher("modifierdoc.jsp");
	       dispatcher.forward(request, response);
		}
		
	}

}
