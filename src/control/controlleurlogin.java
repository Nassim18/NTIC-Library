package control;
import modele.*; 
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */

@WebServlet("/controlleurlogin")
@SuppressWarnings({ "serial", "unused" })
public class controlleurlogin extends HttpServlet {

@SuppressWarnings("null")
public void doPost(HttpServletRequest request, HttpServletResponse response) 
			           throws ServletException, java.io.IOException {
	RequestDispatcher dispatcher = null;
	 HttpSession session = request.getSession(true);
try
{	    

     User user = new User();
     String username =request.getParameter("username");
     String password=request.getParameter("password");
     loging g = new loging();
     String type="";
     String nom="";
     String prenom="";
     String adresse="";
     String numcarte="";
     
	   		    
     if (g.authentification(username, password).equals(null))
     {
    		dispatcher= request.getRequestDispatcher("/WEB-INF/index.jsp");
    		dispatcher.forward(request, response);
     }else{
    	 user = g.authentification(username, password);
     
    	if(g.authentification(username, password).getType().equals("adh"))
    		 {	    
    	 		System.out.println(g.authentification(username, password).getType());
	          session.setAttribute("currentSessionUser",user); 
	          dispatcher = request.getRequestDispatcher("/WEB-INF/adherant.jsp");
	          dispatcher.forward(request, response);
    		 }else
	     if(g.authentification(username, password).getType().equals("adm"))
		 {  
		  session.setAttribute("currentSessionUser",user); 
		  dispatcher = request.getRequestDispatcher("/WEB-INF/administrateur.jsp");
		  dispatcher.forward(request, response);
		 }else
	     if( g.authentification(username, password).getType().equals("bib"))
	     {
          session.setAttribute("currentSessionUser",user); 
          dispatcher = request.getRequestDispatcher("/WEB-INF/bibliothecaire.jsp");
          dispatcher.forward(request, response);
     	}
     }
     
     

}

catch (Throwable theException) 	    
{
     System.out.println(theException); 
}


}      
}

