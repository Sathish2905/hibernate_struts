package empsat;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class MyOperations{	
	
    SessionFactory factory = HibernatePlug.getFactory();
	Session session = factory.openSession();		
	EmpBean p;
	List recList = null;
	
	
	public List retrieveRecords() {	
			
		recList = (List<EmpBean>) session.createQuery("from EmpBean b").list();		
		System.out.println("got size"+recList.size());		
		return recList;
	}
	
	public List retrieveRecord(String val) {		
		  recList = (List<EmpBean>) session.createQuery("from EmpBean b where b.empid="+val).list();		
			System.out.println("got size"+recList.size());	
		  return recList;				
		}
	
	public void insertRecord(EmpBean p) {			
		 Transaction tx = session.beginTransaction();	 
	       session.save(p);
	       System.out.println("Object saved successfully.....!!");
	     tx.commit();				
	}
	
	public void upRecord(EmpBean p) {			
		 Transaction tx = session.beginTransaction();	

		    Query qry = session.createQuery("update EmpBean b set b.name=?, b.gender=?, b.dob=?, b.dept=?, b.salary=?, b.email=?, b.phone=?, b.address=? where b.empid="+p.getEmpid());			
		    qry.setParameter(0,p.getName());
		    qry.setParameter(1,p.getGender());
		    qry.setParameter(2,p.getDob());
		    qry.setParameter(3,p.getDept());
		    qry.setParameter(4,p.getSalary());
		    qry.setParameter(5,p.getEmail());
		    qry.setParameter(6,p.getPhone());
		    qry.setParameter(7,p.getAddress());

            qry.executeUpdate();
            System.out.println("Object updated successfully...");
	     tx.commit();				
	}
	
	public void deleteRecord(String cv[]) {	
		Transaction tx = session.beginTransaction();	
		for(int i=0;i<cv.length;i++)
		{
			Query qry = session.createQuery("delete from EmpBean b where b.empid="+cv[i]);			 
			qry.executeUpdate();
		}
		System.out.println("Object(s) deleted successfully..");
	    tx.commit();
	}
			
}