package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.pret;
import modele.preter;

/**
 * Servlet implementation class controlleurpreter
 */
@WebServlet("/controlleurpreter")
public class controlleurpreter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurpreter() {
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
		HttpSession session = request.getSession();
		pret p =new pret();
		
		p.setNum(request.getParameter("adh"));
		preter preter = new preter ();
		
		if(preter.verifier(p.getNum()).equals(null)){
			dispatcher= request.getRequestDispatcher("WEB-INF/bibliothecaire.jsp");
			dispatcher.forward(request, response);
		}else{
			session.setAttribute("sessionpret",preter.verifier(p.getNum()));
			dispatcher= request.getRequestDispatcher("effectuerpret.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
