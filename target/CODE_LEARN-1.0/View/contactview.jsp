<%-- 
    Document   : contactview
    Created on : Jun 1, 2022, 11:19:32 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/SWP/CSS/ContactView.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Contact View</title>
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 980px;
    background-position: 60% 100%; 
}


.container_2
{
    padding: 3%;
    background-color: rgb(202, 203, 202);
    opacity: 0.9;
    border-radius: 30px;
    position: relative;
    top: 200px;
    left: 25%;
    width: 50%;
}

#list_group
{
    position: relative;

}

.View_font
{
    text-align: center; 
    color:rgb(48, 47, 47); 
    font-style:italic;
    margin-bottom: 3%; 
    font-weight: bolder;
    text-shadow: 10px 10px 10px 10px red;
}
  /* Dropdown Button */
/* Dropdown Button */
.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  border-radius: 20px;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #3e8e41;}

.dropdown:hover .icon {background-color: #3e8e41;}

.icon{
    border: none;
    width: 200%;
    border-radius: 20px;
    height: 3em;
    margin-left: 200%;
}
        </style>
    
    </head>

    <body>
        <div class="container">
          <nav class="navbar navbar-expand-lg bg-light" id="background">
            <div class="container-fluid">
              <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                        <a href="${home}" style="text-decoration: none; color: black;">
                            Home
                        </a>
            </div>
          
                  <div class="container-fluid">
                <span class="navbar-brand" href="#" style="cursor:pointer;">
                    <div class="dropdown">
                          
                    <button class="icon"><ion-icon name="notifications-outline"></ion-icon></button>
                    <div class="dropdown-content" id="drop-info">
                      <a href="#">Exam</a>
                      <a href="#">Exam</a>
                      <a href="#">Exam</a>
                    </div>
                </div>               
                </span>
              </div>
            <div class="container-fluid">
               <div class="dropdown">
                    <button class="dropbtn">Welcome User</button>
                    <div class="dropdown-content">
                      <a href="#">Profile</a>
                      <a href="#">Edit Profile</a>
                      <a href="#">Logout</a>
                    </div>
                </div>
            </div>
          </nav>
        </div>

        <div class="container_2">
            <h1 class="View_font">CONTACT</h1>
            <div class="list-group" id="list_group" style="text-align:center;">
                <p class="list-group-item list-group-item-action">Id Student...</p>
                <p class="list-group-item list-group-item-action">Email... </p>
                <p class="list-group-item list-group-item-action">Parent information...</p>
                <p class="list-group-item list-group-item-action">Phone number....</p>
                <p class="list-group-item list-group-item-action">School....</p>
                <form action="">
                    <input type="submit" value="Edit" class="btn btn-primary btn-lg"  />
                </form>
            </div>
        </div>
        

    <!-- ID Student, Email, Parent information, Phone Num, School-->

          <!-- JavaScript Bundle with Popper -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
