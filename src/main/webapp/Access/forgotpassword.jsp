<%-- 
    Document   : forgotpassword
    Created on : May 30, 2022, 11:28:50 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/css/forgotpassword.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>Forgot password</title>
    </head>

    <body>
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1340px 960px;
    background-position: 90% 50%; 
}


/* BASIC */

html {
    background-color: #56baed;
  }
  
  body {
    font-family: "Poppins", sans-serif;
    height: 100vh;
  }
  
  a {
    color: #92badd;
    display:inline-block;
    text-decoration: none;
    font-weight: 400;
  }
  
  h2 {
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    text-transform: uppercase;
    display:inline-block;
    margin: 40px 8px 10px 8px; 
    color: #cccccc;
  }
  
  
  
  /* STRUCTURE */
  
  .wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    justify-content: center;
    width: 100%;
    min-height: 100%;
    padding: 20px;
  }
  
  #formContent {
    border-radius: 10px;
    background: #fff;
    width: 150%;
    max-width: 90%;
    position: relative;
    
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    text-align: center;
    
    text-align: center;
    opacity: 0.9;
  }

  
  
  
  
  /* TABS */
  
  h2.inactive {
    color: #cccccc;
  }
  
  h2.active {
    color: #0d0d0d;
    border-bottom: 2px solid #5fbae9;
  }
  
  
  
  /* FORM TYPOGRAPHY*/
  
  input[type=button], input[type=submit], input[type=reset], input[type=getcode]  {
    background-color: #56baed;
    border: none;
    color: white;
    padding: 15px 80px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    text-transform: uppercase;
    font-size: 13px;
    -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
    box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
    margin: 5px 20px 40px 20px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -ms-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
  }
  
  input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover, input[type=getcode]:hover  {
    background-color: #39ace7;
  }
  
  input[type=button]:active, input[type=submit]:active, input[type=reset]:active, input[type=getcode]:active  {
    -moz-transform: scale(0.95);
    -webkit-transform: scale(0.95);
    -o-transform: scale(0.95);
    -ms-transform: scale(0.95);
    transform: scale(0.95);
  }
  
  input[type=text], input[type=password] {
    background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
  }
  
  input[type=text]:focus, input[type=password]:focus {
    background-color: #fff;
    border-bottom: 2px solid #5fbae9;
  }
  
  input[type=text]:placeholder, input[type=password]:placeholder {
    color: #cccccc;
  }
  
  
        </style>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
              <div class="container-fluid">
                <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                <a  style="text-decoration: none; color: black;">
                   <button class="icon">
                        <ion-icon name="home-outline"></ion-icon></br>
                        <span>Home</span>
                   </button>
                </a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="${home}">Home</a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
              </div>
            </nav>
        </div>

        <div class="wrapper fadeInDown">
            
            <div id="formContent" style="padding:2%;">
                <h3>Forgot Password</h3>
              <form action="#">
                <lable>Username: <input type="text" id="username" class="fadeIn second" name="username" placeholder="username" ></lable></br>   
                <lable>New password: <input type="password" id="password" class="fadeIn third" name="newpassword" placeholder="new password"></lable></br>    
                <lable>Confirm password: <input type="password" id="password" class="fadeIn third" name="confirmpassword" placeholder="confirm password"></lable></br>
                <lable>Confirm code: <input type="text" id="code" class="fadeIn third" name="code" placeholder="confirm code"></lable></br>
                <input type="submit" class="fadeIn fourth" value="GetCode" style="width: 20%; text-align: center" >
                <input type="submit" class="fadeIn fourth" value="Change" style="width: 20%;">
              </form>
          
          
          
            </div>
          </div>
          <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>

    <footer>

    </footer>
</html>
