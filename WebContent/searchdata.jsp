<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
 .container {
	width: 900px;
	height: 300px;
	position: absolute;
	left: 20%;
	top: 25%;
	border: 2px solid black;
	background-color: white;
}
table {
	table-layout:fixed;
	margin:auto;
}
th, td {
	padding:5px 10px;
	border:1px solid #000;
}
thead {
	background:lightgrey;
	display:table;
	width:100%;
	width:calc(100% - 15px);
}
tbody {
	height:250px;
	overflow:auto;
	overflow-x:hidden;
	display:block;
	width:100%;
}
tbody tr {
	display:table;
	width:100%;
	table-layout:fixed;
}
.heading {
  position: absolute;
  left: 580px;
  top: 60px;
  text-transform: uppercase;
  font-family:Helvetica;
  text-decoration: underline;
  font-size:20px;
}
.space{ 
 
}
</style>
</head>
<body>
<img src="photos1.jpg" width=100%;>
<div class = "heading">
<p><b>List of Employees</b><p>
</div>
<div class="container">
  <table>
  <thead>
    <tr>
      <th width ="14%">Employee id</th>
      <th width ="14%">Name</th>
      <th width ="14%">DOJ</th>
      <th width ="14%">DOB</th>
      <th width ="14%">Department</th>
      <th width ="14%">Designation</th>
      <th width ="14%">Action</th>
    </tr>
  </thead>
   <tbody>
			<c:forEach var="row" items="${empList}">
				<tr>
					<td><c:out value="${row.emp_id}" /></td>
					<td><c:out value="${row.emp_name}" /></td>
					<td><c:out value="${row.doj}" /></td>
					<td><c:out value="${row.dob}" /></td>
					<td><c:out value="${row.emp_dept}" /></td>
					<td><c:out value="${row.emp_desg}" /></td>
					<td><a
						href="EditEmployee.jsp?id=<c:out value='${row.emp_id}' />&name=<c:out value='${row.emp_name}'/>&doj=<c:out value='${row.doj}'/>&dob=<c:out value='${row.dob}'/>&dept=<c:out value='${row.emp_dept}'/>&desg=<c:out value='${row.emp_desg}'/>">Edit</a>
						<%
							//  Integer id1=(Integer)pageContext.getAttribute("row.emp_id");
								//   session.setAttribute("empid", id1);
								//   System.out.print(id1);
								//
						%></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
</body>
</html>