<%-- 
    Document   : listingzahteva
    Created on : Apr 28, 2014, 9:51:55 AM
    Author     : Master aka Bojan Madov
--%>

<%@page import="main.Prijava"%>
<%@page import="main.Predmet"%>
<%@page import="main.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400" rel="stylesheet" />
        <script src="js/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/init.js"></script>
        <script src="js/selektor.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        <link rel="stylesheet" href="css/noscript.css" />
        </noscript>
        <title>Listing predmeta</title>
    </head>

    <body class="homepage">

        <!-- Wrapper-->
        <div id="wrapper">

            <!-- Nav -->
            <nav id="nav">
                <a href="CommandServlet?cmd=adminview" class="fa fa-home active"><span>Home</span></a>
            </nav>

            <!-- Main -->
            <div id="main">

                <!-- Welcome -->
                <article id="me" class="panel">
                    <% List<Prijava> prijave = (List<Prijava>) request.getAttribute("prijave");
                                                                    if (prijave != null && !prijave.isEmpty()) {%>
                    <table>
                        <tr>
                            <th>Sifra</th>
                            <th>iD</th>
                            
                           
                        </tr>
                        <% for (Prijava prijava : prijave) {%>
                        <tr>

                            <td><%=prijava.getSifra()%></td>
                            <td><%=prijava.getId()%></td>
                            
                            
                        </tr>
                        <% }%>
                    </table>
                    <% }%>
                </article>
            </div>

            <!-- Footer -->
            <div id="footer">
                <ul class="links">
                    <li>&copy; Bojan Madov</li>
                </ul>
            </div>

        </div>

    </body>
</html>
