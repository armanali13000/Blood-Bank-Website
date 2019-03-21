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

    <title>Registration page</title>

    <link rel="stylesheet" href="login.css"/>
    
    <script>
        function validateForm(){
            var password= document.forms["registerForm"]["password"].value;
            var varifyPasswords= document.forms["registerForm"]["verifyPassword"].value;

            if(password!==varifyPasswords){
                alert("password and verified password does not match");
                return false;
            }
        }
    </script>

</head>
<body class="text-center">
    
    <form class="form-signin" action="registration.jsp" onsubmit="return validateForm()" name="registerForm">
        
      <img class="mb-4" src="./Signin Template for Bootstrap_files/bootstrap-solid.svg" 
           alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign up</h1>
      
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="username" 
             required="" autofocus="">
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password"
             required="">
      
      <label for="inputPassword" class="sr-only">Verify Password</label>
      <input type="password" id="verifyPassword" class="form-control" placeholder="Verify Password" name="verifyPassword"
             required="">
      
      <label class="sr-only">Type</label>
      <select id="selectType" class="form-control" placeholder="Select type" name="selectType" required="">
        <option value="hospital">Hospital</option>
        <option value="bloodBank">Blood Bank</option>
      </select>
       <%
            String username= request.getParameter("username");
            String password= request.getParameter("password");
            String verifyPassword=request.getParameter("verifyPassword");
            String option = request.getParameter("selectType");
                if(username!=null|| password!=null){
                    try{
                    out.print(username+" "+password);
                    Class.forName("com.mysql.jdbc.Driver"); 
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/BloodBank","root",""); 
                    Statement st= con.createStatement(); 

                    st.executeUpdate("insert into login(email,password,options) values('"+username+"','"+password+"','"+option+"')");
                    }catch(Exception e){ %>
                        <script>
                            alert("Please check your connection.....");
                        </script>
                    <% }
                }

        %>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
      <a href="loginHospital.jsp">Login as Hospital</a><br>
      <a href="loginBloodBank.jsp">Login as Blood Bank</a>
    </form>
</body>
</html>

