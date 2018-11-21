<%-- 
    Document   : login
    Created on : Sep 24, 2018, 8:48:55 PM
    Author     : TORIKU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page - ASD team</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
	<h1> Login to ASD team</h1>
      
        <form action="LoginController" method="POST">
        <%if(request.getParameter("error")!=null){%>
                        <div>
                            <p style="color:red"><%=request.getParameter("error")%></p>
                            
                        </div> 
                        <%}%>
        <label> Username: </label>
        <input type="text" name="username"> <br>
        <label> Password: </label>
        <input type="password" name="password"> <br>
        <label>&nbsp; </label>
        <input type="submit" value="Login" name="submit">
      
      
    </form>
</body>
</html>