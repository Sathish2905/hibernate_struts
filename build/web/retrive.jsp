<%@taglib uri="/struts-tags" prefix="s"%>
<%@ page import="java.util.*,empsat.*" %>
<% EmpBean b; %>


<head>
<link rel="stylesheet" type="text/css" href="css/satemp.css" />
<script type="text/javascript">
function deleteRecord()
	{	     
	    document.fom.action="delete.action";
	    document.fom.submit();
	}
function insertRecord()
{	     
    document.fom.action="insertLink.action";
    document.fom.submit();
}	
function editr(val)
{	     
   document.fom.action="update.action?fid="+val;
   document.fom.submit();   
}	
</script>

</head>

<form method="post" name="fom">

<table class="mtable">
<tr><td colspan="5">

<font face="verdana" size="2">
<input type="button" value="insert" onclick="insertRecord()"> <input type="button" value="delete" onclick="deleteRecord()"> <br><br>

</font>

</td></tr>

<tr>

<td class="th"><center>check</center></td>
<td class="th"><b>Empid</b></td>
<td class="th"><b>Name</b></td>
<td class="th"><b>Gender</b></td>
<td class="th"><b>DOB </b></td>
<td class="th"><b>Dept</b></td>
<td class="th"><b>Salary</b></td>
<td class="th"><b>Email</b></td>
<td class="th"><b>Phone</b></td>
<td class="th"><b>Address</b></td>
</tr>


<% 
List l=(List)request.getAttribute("rec");
if(l!=null)
{
	Iterator it=l.iterator();
	
	while(it.hasNext())
	{		
		b=(empsat.EmpBean)it.next();

%>
        <tr> 
        <td class="bord"><input type="checkbox" value="<%= b.getEmpid() %>" name="rdel"></td>
        <td class="bord"><%= b.getEmpid() %></td>
        <td class="bord"><%= b.getName() %></td>
        <td class="bord"><%= b.getGender() %></td>
        <td class="bord"><%= b.getDob() %></td>
        <td class="bord"><%= b.getDept() %></td>
        <td class="bord"><%= b.getSalary() %></td>
        <td class="bord"><%= b.getEmail() %></td>
        <td class="bord"><%= b.getPhone() %></td>
        <td class="bord"><%= b.getAddress() %></td>
        <td class="bord"><a href="javascript:editr('<%= b.getEmpid() %>')">Edit</a></td>         
        </tr> 
        
<% 		
				
	}	
}

%> 

</table>
</form>
