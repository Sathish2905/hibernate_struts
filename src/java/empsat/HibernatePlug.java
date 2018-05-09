package empsat;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;




public class HibernatePlug{	
	
	private static SessionFactory factory = buildSessionFactory();
	
	private static SessionFactory buildSessionFactory() {
		try {
			// Create the SessionFactory from hibernate.cfg.xml
			return new AnnotationConfiguration().configure()
					.buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getFactory() {
		return factory;
	}
		
}
