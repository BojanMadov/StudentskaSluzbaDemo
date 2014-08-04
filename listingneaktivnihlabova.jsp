<%-- 
    Document   : listingzahteva
    Created on : Apr 28, 2014, 9:51:55 AM
    Author     : Master aka Bojan Madov
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="main.Predmet"%>
<%@page import="main.LabVezba"%>
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
        <title>Listing lab vezbi</title>
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
                    <% List<LabVezba> labvezbe = (List<LabVezba>) request.getAttribute("labvezbe"); String x="";
                                                                    if (labvezbe != null && !labvezbe.isEmpty()) {%>
                    <% List<Predmet> predmeti = (List<Predmet>) request.getAttribute("predmeti");
                                                                    if (predmeti != null && !predmeti.isEmpty()) {%>
                    <table>
                        <tr>
                            <th>iD</th>
                            <th>Naziv</th>
                            <th>Predmet</th>
                            <th>Datum</th>
                            <th>Laboratorija</th>
                            <th>Status</th>
                            <th>Dodaj</th>
                        </tr>
                        <% for (LabVezba lab : labvezbe) {%>
                        <tr>

                            <td><%=lab.getId()%></td>
                            <td><%=lab.getNaziv()%></td>
                            <%for (Predmet predmet : predmeti)  {
                                if (lab.getPredmetsk().equals(predmet.getSifra())) x=predmet.getNaziv(); } %>
                            <td><%=x%></td>
                            <td><%=lab.getDatum()%></td>
                            <td><%=lab.getLaboratorija()%></td>
                            <td><%=lab.getStatus()%></td>
                            <td>
                                <a href="CommandServlet?cmd=adddemolist&idlab=<%=lab.getId()%>" style="color: #777" class="fa fa-check">                                  
                                </a>
                            </td>
                        </tr>
                        <% }%>
                    </table>
                    <% }%>
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
