<!DOCTYPE html>
<html>
<head>
<% 
response.setHeader("Cache-Control","no-cache"); //forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<%
String userName = (String) session.getAttribute("name");
if (null == userName) {
  request.setAttribute("Error", "Session has ended.  Please login.");
   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
   rd.forward(request, response);
}
%>
<body>
<img src="photos1.jpg" width=100%;>
<%@include file="header.html" %>
<%@include file="dropdown.html" %>
<%@include file="afterlogin.html" %>
</body>
</html>