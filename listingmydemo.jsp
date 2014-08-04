<%-- 
    Document   : listingzahteva
    Created on : Apr 28, 2014, 9:51:55 AM
    Author     : Master aka Bojan Madov
--%>

<%@page import="main.Prijava"%>
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
                    <% List<Prijava> prijave = (List<Prijava>) request.getAttribute("prijave"); 
                                                                    if (prijave != null && !prijave.isEmpty()) {%>
                    <% List<LabVezba> labvezbe = (List<LabVezba>) request.getAttribute("labvezbe");
                                                                    if (labvezbe != null && !labvezbe.isEmpty()) {%>                                    
                    <% List<User> demo = (List<User>) request.getAttribute("demonstratori");
                                                                    if (demo != null && !demo.isEmpty()) {%>
                                                                  
                    <table>
                        <tr>
                            <th>Naziv laba</th>
                            <th>Status</th>
                            <th>Ime</th>
                            <th>Prezime</th>
                            <th>Status demo</th>
                            
                        </tr>
                        <% for (LabVezba lab : labvezbe) {  %>
                        
                            <%for (Prijava prijava : prijave)  {String x="";String z="";String name=""; String lastnametmp=""; 
                                if (lab.getId().equals(prijava.getId())) {x=prijava.getSifra();z=prijava.getStatus();
                                for (User dm : demo)  {
                                if (dm.getKorisnickoime().equals(x)) {name=dm.getIme(); lastnametmp=dm.getPrezime();} } %>
                              <tr> 
                                <td><%=lab.getNaziv()%></td>
                                <td><%=lab.getStatus()%></td>
                                <td><%=name%></td>
                                <td><%=lastnametmp%></td>
                                <td><%=z%></td>
                              </tr> 
                               <% } %>
                           <% } %>
                        
                        <% }%>
                    </table>
                    <% }%>
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
