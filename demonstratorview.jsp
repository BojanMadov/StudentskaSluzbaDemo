<%-- 
    Document   : adminview
    Created on : Apr 27, 2014, 2:57:45 PM
    Author     : Bojan Madov
--%>

<%@page import="main.User"%>
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
        <title>DemonstratorView</title>
    </head>
    <body class="homepage">
    <% User user = (User) session.getAttribute("user"); %>
		<!-- Wrapper-->
			<div id="wrapper">
				
                                        <!-- Nav -->
					<nav id="nav">
						<a href="#me" class="fa fa-home active"><span>Home</span></a>
						<a href="#view" class="fa fa-eye"><span>Pregled</span></a>
                                                <a href="#lists" class="fa fa-paperclip" ><span>Listinzi</span></a>
					</nav>

                                        <!-- Main -->
					<div id="main">
						
                                                        <!-- Welcome -->
							<article id="me" class="panel">
								<header>
									<h1>Demonstrator</h1>
									<span class="byline"><br>${poruka}</span>
								</header>
                                                                <a href="CommandServlet?cmd=logout" class="jumplink pic">
									<span class="arrow fa fa-warning"><span>Logout!</span></span>
                                                                        <img src="images/demonstrator.jpg" alt="" />
								</a>
							</article>

						
                                                        <!-- pregled korisnika -->
                                                        <article id="view" class="panel">
								<header>
                                                                        <h2>Dobrodosao <%=user.getIme()%>!</h2>
								</header>
                                                            <p>Podaci o korisniku:</p>
                                                           
                                                            <table>
                                                                <tr>
                                                                    <th>Ime</th>
                                                                    <th>Prezime</th>
                                                                    <th>Korisnicko ime</th>
                                                                    <th>Email</th>
                                                                    <th>Odsek</th>
                                                                    <th>Godina studija</th>
                                                                </tr>
                                                                <tr>
                                                                    <td><%=user.getIme()%></td>
                                                                    <td><%=user.getPrezime()%></td>
                                                                    <td><%=user.getKorisnickoime()%></td>
                                                                    <td><%=user.getEmail()%></td>
                                                                    <td><%=user.getOdsek()%></td>
                                                                    <td><%=user.getGodstudija()%></td>
                                                                </tr>
                                                            </table>
							</article>
                                                                
                                                        <!-- Predmeti -->
                                                        <article id="lists" class="panel">
                                                                <header>
                                                                    <h2>Listinzi:</h2><br>
                                                                    <a href="CommandServlet?cmd=listingponuda" class="fa fa-plus-circle" style="color: #777">
                                                                    &nbsp;Lista sa ponudama za angazovanje na odredjenim terminima laboratorijskih vezbi</a><br><hr>
                                                                    <a href="CommandServlet?cmd=listingzavrsenihlabovademo" class="fa fa-thumbs-up" style="color: #777">
                                                                    &nbsp;Lista sa angazovanjem koje im je upisano za termine koje su radili u laboratoriji</a><br><hr>
                                                                    <a href="CommandServlet?cmd=listingdemoalllabs" class="fa fa-list" style="color: #777">
                                                                    &nbsp;Lista lab vezbi i njihovih statusa</a><br><hr>
                                                                    <a href="CommandServlet?cmd=listingkorisnika" class="fa fa-dollar" style="color: #777">
                                                                    &nbsp;Lista sa isplatama honorara</a><br>
                                                                </header>
                                                        </article>
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
