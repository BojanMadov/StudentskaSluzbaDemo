

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
        <title>Listing lab vezbi ponudjenih demonstratoru</title>
    </head>

    <body class="homepage">

        <!-- Wrapper-->
        <div id="wrapper">

            <!-- Nav -->
            <nav id="nav">
                <a href="CommandServlet?cmd=demonstratorview" class="fa fa-home active"><span>Home</span></a>
            </nav>

            <!-- Main -->
            <div id="main">

                <!-- Welcome -->
                <article id="me" class="panel">
                    <% List<Prijava> prijave = (List<Prijava>) request.getAttribute("prijave"); String x="";String name="";
                    String y="";String lastname="";String z=""; User demo = (User) request.getAttribute("demonstrator");
                                                                    if (prijave != null && !prijave.isEmpty()) {%>
                    <% List<LabVezba> labvezbe = (List<LabVezba>) request.getAttribute("labvezbe");
                                                                    if (labvezbe != null && !labvezbe.isEmpty()) {%>                                    
                    
                                                                  
                    <table>
                        <tr>
                            <th>Naziv laba</th>
                            <th>Predmet</th>
                            <th>Datum</th>
                            <th>Prihvati</th>
                            <th>Odbij</th>
                            
                        </tr>
                        <% for (Prijava prijava : prijave) {%>
                        <% if (demo.getKorisnickoime().equals(prijava.getSifra())) { %>
                        <tr>                          
                               <% for (LabVezba lab : labvezbe)  {
                                if (lab.getId().equals(prijava.getId())) {x=lab.getNaziv(); y=lab.getPredmetsk(); z=lab.getDatum();}} %>
                            <td><%=x%></td>
                            <td><%=y%></td>
                            <td><%=z%></td>
                            <td>
                                <a href="CommandServlet?cmd=acceptdemo&id=<%=prijava.getId()%>&sifra=<%=prijava.getSifra()%>" style="color: #777" class="fa fa-check">                                  
                                </a>
                            </td>
                            <td>
                                <a href="CommandServlet?cmd=rejectdemo&id=<%=prijava.getId()%>&sifra=<%=prijava.getSifra()%>" style="color: #777" class="fa fa-times">                                  
                                </a>
                            </td>
                        </tr>
                        <% }%>
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
