package empsat;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
public class ControlerBean extends ActionSupport implements ServletRequestAware,ApplicationAware{	
	private static final long serialVersionUID = 1L;
	
	MyOperations mo = new MyOperations();	
	private List<EmpBean> recordsFromDB;
	EmpBean b;
    
    public EmpBean getB() {
		return b;
	}
	public void setB(EmpBean b) {
		this.b = b;
	}
	
	HttpServletRequest request;	
	public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
    public HttpServletRequest getServletRequest() {
        return request;
    }	
    
	public List<EmpBean> getRecordsFromDB()
	{
		  return this.recordsFromDB;
	}	
	
	Map m;
    public void setApplication(Map m)
	{
		this.m=m;
	} 
 	
    public String getRecords()
	{
		recordsFromDB = mo.retrieveRecords();
		request.setAttribute("rec", recordsFromDB);
		return SUCCESS;
	} 
	
	public String getRecordToUpdate()
	{		
		recordsFromDB = mo.retrieveRecord(request.getParameter("fid"));		

		Iterator<EmpBean> it = recordsFromDB.iterator();
		while(it.hasNext())
		{			
			   Object o = it.next();
			   b = (EmpBean)o;			
		}		
		
		    m.put("a",b.getEmpid());
			m.put("b", b.getName());
			m.put("c", b.getGender());
			m.put("d", b.getDob());
			m.put("e", b.getDept());
			m.put("f", b.getSalary());
			m.put("g", b.getEmail());
			m.put("h", b.getPhone());
			m.put("i", b.getAddress());
		
		return SUCCESS;
	}
	
	public String insertRecord()
	{			
		mo.insertRecord(b);			
		return SUCCESS;
	}
	
	public String updateRec()
	{			
		mo.upRecord(b);			
		return SUCCESS;
	}
	
	
	public String deleteRecord()
	{	
		String cv[] = null;
		cv=request.getParameterValues("rdel");		
	 	mo.deleteRecord(cv);			
		return SUCCESS;
	}
	
}
