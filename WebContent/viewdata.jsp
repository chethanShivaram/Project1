<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.container {
	width: 700px;
	height: 400px;
	position: absolute;
	left: 25%;
	top: 20%;
	overflow-y: scroll;
}

.tablespace{
  padding: 10px;
  background-color: lightgrey;
}
h3 {
  position: absolute;
  left: 580px;
  top: 60px;
  text-transform: uppercase;
  font-family:Helvetica;
  text-decoration: underline;
}
</style>
</head>
<body>
<img src="photos1.jpg" width=100%;>
<h3>List of Employees</h3>
<div class="container">
		<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/world" user="root" password="chethanbs@2610" />
		<sql:query dataSource="${snapshot}" var="result">
         SELECT * from reg_table;
      </sql:query>
    
		<div class="tablespace">
		<table border="1">
			<tr>
				<th>Emp ID</th>
				<th>Name</th>
				<th>Date of joining</th>
				<th>Date of birth</th>
				<th>Designation</th>
				<th>Department</th>
				<th>Action</th>
			</tr>
		
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.emp_id}" /></td>
					<td><c:out value="${row.emp_name}" /></td>
					<td><c:out value="${row.doj}" /></td>
					<td><c:out value="${row.dob}" /></td>
					<td><c:out value="${row.emp_dept}" /></td>
					<td><c:out value="${row.emp_desg}" /></td>
					<td><a
						href="EditEmployee.jsp?id=<c:out value='${row.emp_id}' />&name=<c:out value='${row.emp_name}' />&doj=<c:out value='${row.doj}' />&dob=<c:out value='${row.dob}' />&dept=<c:out value='${row.emp_dept}' />&desg=<c:out value='${row.emp_desg}' />">Edit</a>
						<%
							//  Integer id1=(Integer)pageContext.getAttribute("row.emp_id");
								//   session.setAttribute("empid", id1);
								//   System.out.print(id1);
								//
						%></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
</body>
</html>