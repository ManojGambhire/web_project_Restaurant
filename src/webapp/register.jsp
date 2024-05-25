<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/login.css" rel="stylesheet">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
 <div class="login">
        <div class="login-1">
         <h1>Register</h1>
         <form action="Takeregister" method="post">
         <input type="text" placeholder="Enter username" name="username"/>
         <br>
         <input type="text" placeholder="Enter password" name="password"/>
        
         <input type="submit" value="Register" class="login-3">
         <br>
         <p><a href="login.jsp">I am already member</a></p>
        
        </form>
        </div>

      </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
  	 var status = document.getElementById("status").value;
  	 if(status == "success")
  		 {
  		   swal("Congrats","Account Created Succefully","success");
  		 }
  	</script>

</body>
</html>