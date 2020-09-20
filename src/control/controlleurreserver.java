package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.reservation;
import modele.reservedoc;

/**
 * Servlet implementation class controlleurreserver
 */
@WebServlet("/controlleurreserver")
public class controlleurreserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controlleurreserver() {
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
		
		reservation r = new reservation ();
		r.setCopie(request.getParameter("cote"));
		r.setNum(request.getParameter("numca"));
		reservedoc reserver = new reservedoc();
		
		
		if (reserver.verifier(r.getCopie())!=null){
			 dispatcher = request.getRequestDispatcher("reserver.jsp");
			 dispatcher.forward(request, response);
		}
			
		else{
				try {
					reserver.reserver(r.getCopie(), r.getNum());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				dispatcher = request.getRequestDispatcher("/WEB-INF/adherant.jsp");
				dispatcher.forward(request, response);
		}
		
		
		{
		
	}

	}
}
