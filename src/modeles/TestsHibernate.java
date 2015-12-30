package modeles;

import java.util.List;

import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.service.ServiceRegistry;

import modeles.webscope.Pays;
import modeles.webscope.Reportage;
import modeles.webscope.Artiste;
import modeles.webscope.Film;
import modeles.webscope.FilmV;
import modeles.webscope.Internaute;
import modeles.webscope.Role;
import modeles.webscope.Video;

public class TestsHibernate {
	/**
	 * Objet Session de Hibernate
	 */
	private Session session;

	/**
	 * Constructeur établissant une connexion avec Hibernate
	 */
	public TestsHibernate() {
		Configuration configuration = new Configuration().configure();
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		session = sessionFactory.openSession();
	}

	public void insertPays(Pays pays) {
		session.beginTransaction();
		session.save(pays);
		session.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Pays> lecturePays() {
		Criteria criteria = session.createCriteria(Pays.class);
		criteria.addOrder(Order.asc("code"));
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Pays> lecturePaysHQL() {
		Query query = session.createQuery("FROM Pays");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Film> lectureFilms() {
		Query query = session.createQuery("FROM Film");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Role> lectureRoles() {
		Query query = session.createQuery("FROM Role");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Film> chercheFilms(){
		Query query = session.createQuery("FROM Film");
		return query.list();
	}	
	
	@SuppressWarnings("unchecked")
	public List<Internaute> chercheInternautes(){
		Query query = session.createQuery("FROM Internaute");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Artiste> chercheArtistes(){
		Query query = session.createQuery("FROM Artiste");
		return query.list();
	}	
	
	@SuppressWarnings("unchecked")
	public List<Video> chercheVideos(){
		Query query = session.createQuery("FROM Video");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Reportage> chercheReportages(){
		Query query = session.createQuery("FROM Reportage");
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<FilmV> chercheFilmsV(){
		Query query = session.createQuery("FROM FilmV");
		return query.list();
	}
	
	public void insertFilm(Film film, Artiste artiste) {
        session.beginTransaction();
        session.save(film);
        session.save(artiste);
        session.getTransaction().commit();
}
}