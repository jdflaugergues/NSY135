package controleurs;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modeles.Film;
import modeles.TestsJdbc;

/**
 * Servlet implementation class Jdbc
 */
@WebServlet(name = "jdbc", urlPatterns = { "/jdbc" })
public class Jdbc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SERVER = "localhost";
	private static final String BD = "webscope";
	private static final String LOGIN = "orm";
	private static final String PASSWORD = "orm";
	private static final String VUES = "/jsp/jdbc/";

	/**
	 * Méthode Get: on affiche le formulaire
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//On devrait récupérer l'action requise par l'utilisateur
		String action = request.getParameter("action");
		
		// Notre objet modèle: accès à MySQL
		TestsJdbc jdbc;
		
		//La vue par défaut
		String maVue = VUES + "index.jsp";
		try{
			jdbc = new TestsJdbc();
			if (action == null){
				
			}else if (action.equals("connexion")){
				// Action + vue test de connexion
				jdbc.connect(SERVER, BD, LOGIN, PASSWORD);
				maVue = VUES + "connexion.jsp";
			}else if (action.equals("requeteA")){
				jdbc.connect(SERVER, BD, LOGIN, PASSWORD);
				ResultSet resultat = jdbc.chercheFilmsA();
				request.setAttribute("films", resultat);
				maVue = VUES + "filmsA.jsp";
			}else if (action.equals("requeteB")){
				jdbc.connect(SERVER, BD, LOGIN, PASSWORD);
				List<Map<String,String>> resultat = jdbc.chercheFilmsB();
				request.setAttribute("films", resultat);
				maVue = VUES + "filmsB.jsp";
			}else if (action.equals("requeteC")){
				jdbc.connect(SERVER, BD, LOGIN, PASSWORD);
				List<Film> resultat = jdbc.chercheFilmsC();
				request.setAttribute("films", resultat);
				maVue = VUES + "filmsC.jsp";
			}
		}catch(Exception e){
			maVue = VUES + "exception.jsp";
			request.setAttribute("message", e.getLocalizedMessage());
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(maVue);
		dispatcher.forward(request, response);
	}

}
