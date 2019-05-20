<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<img src="photos1.jpg" width=100%;>
    <%@include file="header.html" %>
    <%@include file="dropdown.html" %>
    <%@include file="back.html" %>
    <%@include file="search1.html" %>
	<%@include file="searchdata.jsp" %>
</body>
</html>