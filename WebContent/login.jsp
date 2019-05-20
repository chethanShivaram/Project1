<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Calibri;}
form {border: 1px solid #f1f1f1;}

input[type=text], input[type=password] {
  width:100%;
  padding: 12px 20px;
  margin: 8px 0;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius: 15px;
  display: inline-block;

}
html,body{
max-width:100%;
overflow-y:hidden;
overflow-x:hidden;
}
.container {
  width: 300px;
  height: 100px;
  position: absolute;
  left: 15%;
  top: 15%; 
}

button {
  background-image: linear-gradient(to right, blue, #ddd);
  border: 2px solid grey;
  color:black;
  padding: 14px 10px;
  margin: 8px 0;
  border: none;
  border-radius: 15px;
  cursor: pointer;
  text-align: center;
  width: 300px;
  height: 40px;
}
button:hover{
  opacity: 0.4;
}
.box {
  background-color: lightgrey;
  width: 300px;
  border: 1px solid white;
  border-radius: 15px;
  padding: 120px 70px;
  margin: 10px;
  position: absolute;
  left: 33%;
  top: 30%; 
}

</style>
</head>
<body>

<img src="photos1.jpg" width=100%;>

<form action="LoginServlet" method="get">
<div class="box">
  <div class="container">
    <label for="uname"><b>USERNAME</b></label><br>
    <input type="text" placeholder="Enter Username" name="n1" required>
    <label for="psw"><b>PASSWORD</b></label><br>
    <input type="password" placeholder="Enter Password" name="n2" required>
    <button type="submit" id="button">Login</button>
  </div>
</div>
<%@include file="header.html" %>
</form>
</body>
</html>