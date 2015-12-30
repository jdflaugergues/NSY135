package controleurs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modeles.Lectures;
import modeles.webscope.Film;

/**
 * Servlet implementation class Hibernate
 */
@WebServlet(name = "requeteur", urlPatterns = { "/requeteur" })
public class Requeteur extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String VUES = "/jsp/requeteur/";
	
	public Requeteur(){
		super();
	}
	
	/** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//On devrait récupérer l'action requise par l'utilisateur
		String action = request.getParameter("action");
		
		//La vue par défaut
		String maVue = VUES + "index.jsp";
		
		try{
			switch(action){
				
				case "cleMinimal" :
					Lectures requetes0 = new Lectures();
					Film vertigo = requetes0.parCle(1);
					request.setAttribute("film", vertigo);
					maVue = VUES + "parCleMinimal.jsp";
				break;
				
				case "cle" :
					Lectures requetes1 = new Lectures();
					Film vertigo2 = requetes1.parCle(1);
					request.setAttribute("film", vertigo2);
					maVue = VUES + "parCle.jsp";
					break;
					
				case "titre": 
					Lectures requetes2 = new Lectures();
					List<Film> films = requetes2.parTitre("Vertigo");
					request.setAttribute("films", films);
					maVue = VUES + "parTitre.jsp";
					break;
				
				case "titreCriteria": 
					Lectures requetes3 = new Lectures();
					List<Film> filmsParTitreCriteria = requetes3.parTitreCriteria("Vertigo");
					request.setAttribute("films", filmsParTitreCriteria);
					maVue = VUES + "parTitreCriteria.jsp";
					break;
				
				case "critere" :
					
					String titre = request.getParameter("titre");
					String annee = request.getParameter("annee");
					String genre = request.getParameter("genre");
					
					Lectures requetes5 = new Lectures();
					List<Film> filmsparcriteres = requetes5.parCritere(titre,annee,genre);
					request.setAttribute("films", filmsparcriteres);
					request.setAttribute("titre", titre);
					request.setAttribute("annee", annee);
					request.setAttribute("genre", genre);
					maVue = VUES + "parCritere.jsp";
					break;
					
				case "role": 
					Lectures requetes4 = new Lectures();
					List<Film> filmsrole = requetes4.parRole("McClane");
					request.setAttribute("films", filmsrole);
					maVue = VUES + "parRole.jsp";
					break;
					
				default :
					throw new Exception("Unknow action.");
			}
			
		}catch(Exception e){
			maVue = VUES + "exception.jsp";
			request.setAttribute("message", e.getLocalizedMessage());
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(maVue);
		dispatcher.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
}
