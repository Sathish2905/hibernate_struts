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

	<s:form action="insert" name="fom"> 	


<table class="mtableu">
<tr>
<td colspan="2">

<input type="button" value="Display Records" onclick="display()"> 


</td></tr>

<tr><td>
			      <tr><th colspan="2"><h3>Add Employee</h3></th></tr>
     <tr>
      <th> Name </th>
      <td><input name="b.name" type="text"></td>
    </tr>
    <tr>
      <th>Gender </th>
      <td>
    Male<input type="radio" name="b.gender" value="Male" />
    Female<input type="radio" name="b.gender" value="Female"/>
      </td>
    <tr>
        <th>DOB</th>
        <td>DD/MM/YY
            <select name="b.dob">
           
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
            </select>
			<select >
                <option>01</option>
                <option>02</option>
				<option>03</option>
				<option>04</option>
				<option>05</option>
				<option>06</option>
				<option>07</option>
				<option>08</option>
				<option>09</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
            </select>
			<select >
				<option>1980</option>
				<option>1981</option>
				<option>1982</option>
				<option>1983</option>
				<option>1984</option>
				<option>1985</option>
				<option>1986</option>
				<option>1987</option>
				<option>1988</option>
				<option>1989</option>
				<option>1990</option>
				<option>1991</option>
				<option>1992</option>
				<option>1993</option>
				<option>1994</option>
				
			</select>
			
        </td>
		
    </tr>
 
    <tr>
        <th>Dept</th>
        
          <td>
           IT<input type="radio" name="b.dept" value="IT" />
           ITES<input type="radio" name="b.dept" value="ITES"/>
          </td>
    </tr>
	<tr>
		<th>Salary</th>
		<td>Rs
		<select name="b.salary">
				<option>10000</option>
				<option>15000</option>
				<option>20000</option>
				<option>25000</option>
				<option>30000</option>
		</select>
		</td>
	</tr>
    <tr>
        <th>e-Mail</th>
        <td>
    <input name="b.email" type="text">
        </td>
    </tr>
    <tr>
        <th>Phone</th>
        <td>
    <input name="b.phone" type="text">
        </td>
    </tr>
    
	<tr>
        <th>Address</th>
        <td>
    <textarea name="b.address" rows="7" cols="27">
    </textarea>
        </td>
    </tr>
    <tr>
      <th colspan="2">
          <input type="submit" value="Submit" >
      </th>
    </tr>
    
  </table>
</s:form>

</body>
</html>

