package controleurs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modeles.TestsHibernate;
import modeles.webscope.Pays;
import modeles.webscope.Reportage;
import modeles.webscope.Role;
import modeles.webscope.Video;
import modeles.webscope.Artiste;
import modeles.webscope.Film;
import modeles.webscope.FilmV;
import modeles.webscope.Genre;
import modeles.webscope.Internaute;

/**
 * Servlet implementation class Hibernate
 */
@WebServlet(name = "hibernate", urlPatterns = { "/hibernate" })
public class Hibernate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUES = "/jsp/hibernate/";
    
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
		
		// Notre objet modèle: accès à MySQL
		TestsHibernate tstHiber;
		
		//La vue par défaut
		String maVue = VUES + "index.jsp";
		try{
			switch(action){
			
				case "connexion" :
					tstHiber = new TestsHibernate();
					maVue = VUES + "connexion.jsp";
					break;
					
				case "insertion": 
					tstHiber = new TestsHibernate();
					
					String code = request.getParameter("code");
					String nom = request.getParameter("nom");
					String langue = request.getParameter("langue");
					
					Pays monPays = new Pays();
					monPays.setCode(code);
					monPays.setNom(nom);
					monPays.setLangue(langue);
					tstHiber.insertPays(monPays);
					
					request.setAttribute("pays", monPays);
					
					maVue = VUES + "insertion.jsp";
					break;
					
				case "lecture" :
					tstHiber = new TestsHibernate();
					List<Pays> listePays = tstHiber.lecturePaysHQL();
					request.setAttribute("pays", listePays);
					maVue = VUES + "lecture.jsp";
					break;
					
				case "filmspays":
					tstHiber = new TestsHibernate();
					List<Film> listeFilms = tstHiber.chercheFilms();
					request.setAttribute("films", listeFilms);
					maVue = VUES + "filmspays.jsp";
					break;
					
				case "filmsartiste":
					tstHiber = new TestsHibernate();
					List<Film> listeFilmsArtiste = tstHiber.chercheFilms();
					request.setAttribute("films", listeFilmsArtiste);
					maVue = VUES + "filmsartiste.jsp";
					break;
					
				case "artistesfilm":
					tstHiber = new TestsHibernate();
					List<Artiste> listeArtistesFilm = tstHiber.chercheArtistes();
					request.setAttribute("artistes", listeArtistesFilm);
					maVue = VUES + "artistesfilm.jsp";
					break;
				
				case "internaute":
					tstHiber = new TestsHibernate();
					List<Internaute> listeInternaute = tstHiber.chercheInternautes();
					request.setAttribute("internautes", listeInternaute);
					maVue = VUES + "internaute.jsp";
					break;
				
				case "videos":
					tstHiber = new TestsHibernate();
					List<Video> listeVideos = tstHiber.chercheVideos();
					request.setAttribute("videos", listeVideos);
					maVue = VUES + "video.jsp";
					break;
					
				case "reportages":
					tstHiber = new TestsHibernate();
					List<Reportage> listeReportages = tstHiber.chercheReportages();
					request.setAttribute("reportages", listeReportages);
					maVue = VUES + "reportages.jsp";
					break;
					
				case "filmsv":
					tstHiber = new TestsHibernate();
					List<FilmV> listeFilmV = tstHiber.chercheFilmsV();
					request.setAttribute("filmsv", listeFilmV);
					maVue = VUES + "filmsv.jsp";
					break;
					
				case "insertFilm":
					tstHiber = new TestsHibernate();
					
					Film gravity = new Film();
			        gravity.setTitre("Gravity");
			        gravity.setAnnee(2013);

			        Genre genre = new Genre();
			        genre.setCode("Science-fiction");
			        gravity.setGenre(genre);

			        Artiste cuaron = new Artiste();
			        cuaron.setPrenom("Alfonso");
			        cuaron.setNom("Cuaron");
			        
			        // Alfonso Cuaron a réalisé Gravity
			        cuaron.addFilmsRealise(gravity);
					
					tstHiber.insertFilm(gravity,cuaron);
					
					request.setAttribute("film", gravity);
					request.setAttribute("artiste", cuaron);
					
					maVue = VUES + "insertionFilm.jsp";
					
					//DELETE FROM `film` WHERE titre = "Gravity";
					//DELETE FROM `artiste` WHERE nom = "Cuaron";
					
					break;
				
				case "acteurs" :
					tstHiber = new TestsHibernate();
					List<Film> listeFilmsActeurs = tstHiber.lectureFilms();
					request.setAttribute("films", listeFilmsActeurs);
					maVue = VUES + "acteurs.jsp";
					break;
					
				case "roles" :
					tstHiber = new TestsHibernate();
					List<Artiste> listeActeurs = tstHiber.chercheArtistes();
					request.setAttribute("acteurs", listeActeurs);
					maVue = VUES + "roles.jsp";
					break;
					
				case "nomroles":
					tstHiber = new TestsHibernate();
					List<Role> listeRoles = tstHiber.lectureRoles();
					request.setAttribute("roles", listeRoles);
					maVue = VUES + "nomroles.jsp";
					break;
					
				case "allfilms":
					tstHiber = new TestsHibernate();
					List<Film> allfilms = tstHiber.lectureFilms();
					request.setAttribute("films", allfilms);
					maVue = VUES + "allfilms.jsp";
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
