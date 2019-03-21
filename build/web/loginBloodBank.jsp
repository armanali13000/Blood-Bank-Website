<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>

    <title>Login page</title>

    <link rel="stylesheet" href="login.css"/>

</head>
<body class="text-center">
    
    <form class="form-signin" method="login.html">
      <img class="mb-4" src="./Signin Template for Bootstrap_files/bootstrap-solid.svg" 
           alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="username" 
             required="" autofocus="">
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
             required="">
      <%
                String username= request.getParameter("username");
                String password= request.getParameter("password");
                String firstName=null,lastName=null,option=null;
                if(username!=null|| password!=null){
                    try{
                    Class.forName("com.mysql.jdbc.Driver"); 
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank","root",""); 
                    Statement st= con.createStatement(); 
                    //ResultSet rs=null;
                    
                        ResultSet rs=st.executeQuery("select * from login where email='"+username+"'");
                        while(rs.next()){
                        firstName=rs.getString("email");
                        lastName=rs.getString("password");
                        option= rs.getString("options");
                    }
                    if(firstName.equals(username) && lastName.equals(password) && option.equals("bloodBank")){
                        session.setAttribute("username", firstName);
                    %>
                        <jsp:forward page="BloodBankForm.jsp"/>
                   <% }
                        
                    else{%>
                        <script>
                            alert("Wrong Credentials");
                        </script>
                 <% }
                    }
                    catch(Exception e){ %>
                        <script>
                            alert("Please check your connection.....");
                        </script>
                    <% }
                    
                }
            %>  

      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</body>
</html>
