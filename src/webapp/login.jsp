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
         <h1>Login</h1>
         <form action="login" method="post">
         <input type="text" placeholder="Enter username" id="username"    name="username"/>
         <span style="color: white; font-size: 20px;" id="error"></span>
         <br>
         <input type="password" placeholder="enter password" id="password" onclick="validate()" name="password"/>
         
         <input type="submit" value="login" class="login-3">
         <p>not a member ?<span><a href="register.jsp">Register</a></span></p>
         </form>

        </div>

      </div>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script>
  	 var status = document.getElementById("status").value;
  	 if(status == "failed")
  		 {
  		   swal("Sorry","Wrong Username or password","failed");
  		 }
  	</script>
    

</body>
</html>