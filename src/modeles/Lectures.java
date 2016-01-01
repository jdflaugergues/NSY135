package modeles;

import java.util.List;

import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.service.ServiceRegistry;

import modeles.webscope.Pays;
import modeles.webscope.Reportage;
import modeles.webscope.Artiste;
import modeles.webscope.Film;
import modeles.webscope.FilmV;
import modeles.webscope.Internaute;
import modeles.webscope.Role;
import modeles.webscope.Video;
import modeles.webscope.Genre;

public class Lectures {
	/**
	 * Objet Session de Hibernate
	 */
	private Session session;
	
	/**
	 * Constructeur sans connexion
	 */
	public Lectures(){
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		session = sessionFactory.openSession();
	}
	
	public Film parCle(Integer id){
		// Les 2 méthodes ci-dessous sont identiques à l'exception que get ne lève pas d'exception
		//return (Film) session.get(Film.class, id);
		return (Film) session.load(Film.class, id);
	}
	
	public List<Film> parTitre(String titre){
		Query q = session.createQuery("FROM Film as film join fetch film.realisateur where film.titre = :titre");
		q.setString("titre", titre);
		return q.list();
	}
	
	public List<Film> parTitreCriteria(String titre){
		Criteria criteria = session.createCriteria(Film.class);
		criteria.add(Expression.eqOrIsNull("titre", titre));
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Film> parRole(String role){
		
		//Query q=session.createQuery("from film left join role ON (film.id=role.id_film) where nom_role= :role");
		Query query = session.createQuery("FROM Film as film where film.role = :role");
		query.setString("role", "role");
		//query.setString("role", role);
		return query.list();
	}
	
	public List<Film> parCritere(String titre, String annee, String genre){
		
		Criteria criteria = session.createCriteria(Film.class);
		
		if (!titre.isEmpty())
			criteria.add(Restrictions.like("titre", "%"+titre+"%"));
		
		if (!annee.isEmpty()){
			Integer an = Integer.parseInt(annee);
			criteria.add(Restrictions.eq("annee", an));
		}
		
		if (!genre.isEmpty()){
			Genre g = new Genre();
			g.setCode(genre);
			criteria.add(Restrictions.like("genre", g));
		}
		
		return criteria.list();
	}
	
	public List<Film> parLot(){
		Query q = session.createQuery("FROM Film as film");
		return q.list();
	}

}
