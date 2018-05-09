<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.*" %>

<html>

<head>
<link rel="stylesheet" type="text/css" href="css/satemp.css" />

<script type="text/javascript">
function display()
	{	     
	    document.fom.action="verify.action";
	    document.fom.submit();
	}
</script>

</head>

<body>

<s:form action="updateRecInDB" method="post" name="fom"> 	


<table class="mtableu">
<tr>
<td colspan="2">

<input type="button" value="Display Records" onclick="display()"> 

</td></tr>

<tr><td>

			<s:textfield label="Empid" value="%{#application.a}" readonly="true" name="b.empid" cssClass="bord"/>
			<s:textfield label="Name" value="%{#application.b}" name="b.name" />
			<s:textfield label="Gender" value="%{#application.c}" name="b.gender" />
			<s:textfield label="DOB" value="%{#application.d}" name="b.dob" />
			<s:textfield label="Department" value="%{#application.e}" name="b.dept" />
			<s:textfield label="Salary" value="%{#application.f}" name="b.salary" />
			<s:textfield label="Email" value="%{#application.g}" name="b.email" />
			<s:textfield label="Phonenumber" value="%{#application.h}" name="b.phone" />
			<s:textfield label="Address" value="%{#application.i}" name="b.address" />
			
<s:submit value="Update" />

</td>
</tr>
</table>    
    
</s:form>



</body>
</html>

