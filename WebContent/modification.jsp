<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
form {
	border: 3px solid black;
}

.container 
{
  background-color: lightgrey;
  width: 400px;
  height: 330px;
  position: fixed;
  top: 20%; 
  left: 35%;
}
.table1 {
	margin: 10px;
}

.submit1 {
	background-color: #4CAF50;
	color: white;
	font-size: 16px;
	border: none;
}

.link4{
  position:fixed;
  top:100px;
  left:50px;
}
.link4 a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px solid blue;
  padding: 10px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
.link4 a:hover, a:active {
  background-color: blue;
  color: white;
}
.h5 {
  position: absolute;
  left: 560px;
  top: 60px;
  text-transform: uppercase;
  font-size: 20px;
}
</style>
</head>
<body>
<div class="h5" >
<p>Modification Page</p>
</div>
<div class="container">
		<form name="f1" action="EditServlet" method="post">
			<table align="center">
				<div class="table1">
					<tr>
						<td><label>Employee id </label></td>
						<%
							String id = request.getParameter("id");
						    String name=request.getParameter("name");
						    String doj=request.getParameter("doj");
						    String dob=request.getParameter("dob");
						    String dept=request.getParameter("dept");
						    String desg=request.getParameter("desg");
						%>
						<td><input type="text" value=<%=id%> name="id" readonly></td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
					<tr>
						<tr>
						<td><label for="id1">Full Name</label></td>
						<td><input type="text" value="<%=name%>" name="n1" id="id1"
							placeholder="Type name here" required></td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
					<tr>
						<td><label for="id3">Date of joining </label></td>
						<td><input type="date" value=<%=doj%> name="n2" id="id3"
							 required></td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
					<tr>
						<td><label for="id4">Date of birth </label></td>
						<td><input type="date" value=<%=dob%> 
							name="n3" id="id4"  required>
						</td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
					<tr>
						<td><label for="id5">Department</label></td>
						<td><select name="n4">
						<option><%=dept%></option>
								<option value="IT">IT</option>
								<option value="Admin">ADMIN</option>
								<option value="HR">HR</option>
						</select></td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
					<tr>
						<td><label for="id5">Designation </label></td>
						<td><select name="n5">
						        <option><%=desg%></option>
								<option value="Developer">Developer</option>
								<option value="Senior Developer">Senior Developer</option>
								<option value="Testing">Testing</option>
								<option value="Quality ">Quality</option>
						</select></td>
					</tr>
					<tr> <td>&nbsp;</td> </tr>
				</div>
				<div class="submit1">
				<tr>
					<td><input type="submit" value="Save"></td>
				</tr>
				</div>
			</table>
		</form>
	</div>
	<div class="link4">
		<a href="viewtable.jsp">Back</a><br>
	</div>
	</div>
</body>
</html>