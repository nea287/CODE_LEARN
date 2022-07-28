<%-- 
    Document   : mycourse
    Created on : Jun 20, 2022, 11:41:33 AM
    Author     : HoangMinh
--%>

<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page import="java.util.List"%>
<%@page import="dto.CourseDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/css/mycourse.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>My Course</title>

        <style>
            body
            {
                background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
                background-size:  1920px 1080px;
                background-position: 60% 10%; 
            }

            .container_2
            {
                padding: 1%;
                width: 100%;
                text-align: center;
                position: absolute;
                top: 25rem;
            }

            #frame
            {
                margin-right: 10px;
                margin-left: 10px;
                padding: 1%;
                display: flex;

            }

            #column_pos{
                position: absolute;
                left: 10%;
                margin-top: 3%;
                border: 2px solid black;
                width: 80%;
                height: 60%;
                background-color: white;
            }

            .search_container
            {
                width: 100%;
                padding: 2%;
                position: relative;
                top: 3rem;
            }

            /* Dropdown Button */
            .dropbtn {
                background-color: #CCCCCC;
                color: black;
                padding: 16px;
                font-size: 16px;
                border: none;
                border-radius: 20px;
            }

            /* The container <div> - needed to position the dropdown content */
           
            .dropbtn:hover {
            background-color:#009933	;
            color: white;
        }

            /* Links inside the dropdown */
            .icon{
                border: none;
                width: 200%;
                border-radius: 20px;
                height: 3em;
                margin-left: 200%;
            }
            
            .icon:hover{
                background-color: #009933;
                color: white;
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
            .dropdown-content input {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }
            /* Change color of dropdown links on hover */
            .dropdown-content input:hover {background-color: #ddd;}
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

            input[type=button], input[type=submit], input[type=reset]  {
            background-color: #CCCCCC	;
            border: none;
            color: black;
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
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
            
            
        }
        input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
             background-color: #009933;
            color: white;
        } 
        </style>


    </head>
    <body>
        <%

            StudentDTO stud = null;
            TeacherDTO teac = null;
            String username = "";
            String role = "";
            if (session.getAttribute("role") != null && session.getAttribute("ACCOUNT") != null) {
                role = (String) session.getAttribute("role");
                if (role.equals("teacher")) {
                    teac = (TeacherDTO) session.getAttribute("ACCOUNT");
                    username = teac.getName();
                } else if (role.equals("student")) {
                    stud = (StudentDTO) session.getAttribute("ACCOUNT");
                    username = stud.getUsername();
                }
            }
            List<CourseDTO> list = (List<CourseDTO>) request.getAttribute("myCourse");

        %>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                    <a href="${home}" style="text-decoration: none; color: black;">
                    <button class="icon">
                        <ion-icon name="home-outline"></ion-icon></br>
                        <span>Home</span>
                    </button>
                    </a>
                </div>
                <div class="container-fluid">
                    <span class="navbar-brand" href="#" style="cursor:pointer;">
                        <div class="dropdown">

                            <button class="icon">
                                <ion-icon name="notifications-outline"></ion-icon></br>
                                <span>Noti</span>
                            </button>
                            <div class="dropdown-content" id="drop-info">
                                <form action="MainController">
                                    <input type="submit" name="action" value="Exam 1"> </br>
                                    <input type="submit" name="action" value="Exam 2"> </br>
                                    <input type="submit" name="action" value="Exam 3"> </br>
                                </form>
                            </div>
                        </div>               
                    </span>
                </div>
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="dropbtn" style="border-radius: 25px;">Welcome, <%= username%></button>
                            <div class="dropdown-content">
                                <form action="MainController">
                                    <input type="hidden" name="profileName" value="<%= username%>" />
                                    <input type="submit" name="action" value="View Profile"></br></br>
                                    <input type="submit" name="action" value="Edit Profile"></br></br>
                                    <input type="submit" name="action" value="Logout"></br>
                                </form>
                            </div>
                        </div>

                    </span>
                </div>
            </nav>
        </div>

        <h2 style="text-align: center; color: white; margin-top: 3%;">My course</h2>
        <div class="row" id="column_pos" style="padding: 1%;">
            <div class="col" style="posi">
                <%
                    if (list != null) {
                %>
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th></th>
                            <th>Name</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int count = 0;
                            for (CourseDTO dto : list) {
                        %>
                        <tr>
                            <td>
                                <%= ++count%>.
                            </td>
                            <td>
                                <img src="<%= dto.getImage()%>" width="150px" height="100px"/>
                            </td>
                            <td>
                                <%= dto.getName()%>
                            </td>
                            <td>
                                <%= dto.getDescription()%>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>        
                </table>
                <%
                } else {
                %>
                <font color="red"> No courses found !!! </font>
                <%
                    }

                %>
            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </body>
</html>
