package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.User;
import modele.demandereadhesion;
import modele.readhesiond;

/**
 * Servlet implementation class controlleurdemandereadhesion
 */
@WebServlet("/controlleurdemandereadhesion")
public class controlleurdemandereadhesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurdemandereadhesion() {
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
		
		RequestDispatcher dispatcher = null;

		try
		{	    

		     readhesiond r = new readhesiond();
		     r.setNiveau(request.getParameter("niveau"));
		     r.setSpecialite(request.getParameter("specialite"));
		     r.setNum_ca(request.getParameter("num_ca"));
		     
		     new demandereadhesion().readhesion(r.getNiveau(),r.getSpecialite(),r.getNum_ca());
		     System.out.println("mchat");
		   
		}
		catch (Throwable theException) 	    
		{
			System.out.println("madkhoultech ");
		     System.out.println(theException); 
		}
		dispatcher= request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
}
}