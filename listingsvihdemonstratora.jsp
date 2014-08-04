<%-- 
    Document   : listingzahteva
    Created on : Apr 28, 2014, 9:51:55 AM
    Author     : Master aka Bojan Madov
--%>

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
        <title>Listing zahteva za registraciju</title>
    </head>

    <body class="homepage">

        <!-- Wrapper-->
        <div id="wrapper">

            <!-- Nav -->
            <nav id="nav">
                <a href="CommandServlet?cmd=profesorview" class="fa fa-home active"><span>Home</span></a>
            </nav>

            <!-- Main -->
            <div id="main">

                <!-- Welcome -->
                <article id="me" class="panel">
                    <% List<User> korisnici = (List<User>) request.getAttribute("korisnici");
                                                                    if (korisnici != null && !korisnici.isEmpty()) {%>
                    <table>
                        <tr>
                            <th>Ime</th>
                            <th>Prezime</th>
                            <th>Odsek</th>
                            <th>Godina studija</th>
                            <th>Status</th>
                        </tr>
                        <% for (User korisnik : korisnici) {%>
                        <tr>

                            <td><%=korisnik.getIme()%></td>
                            <td><%=korisnik.getPrezime()%></td>
                            <td><%=korisnik.getOdsek()%></td>
                            <td><%=korisnik.getGodstudija()%></td>
                            <td><%=korisnik.getStatus()%></td>
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
