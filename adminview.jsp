<%-- 
    Document   : adminview
    Created on : Apr 27, 2014, 2:57:45 PM
    Author     : Bojan Madov
--%>

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
        <title>AdminView</title>
    </head>
    <body class="homepage">

		<!-- Wrapper-->
			<div id="wrapper">
				
				<!-- Nav -->
					<nav id="nav">
						<a href="#me" class="fa fa-home active"><span>Home</span></a>
						<a href="#dodaj" class="fa fa-pencil" onclick="selektor()"><span>Korisnici</span></a>
                                                <a href="#predmet" class="fa fa-book" ><span>Predmeti</span></a>
                                                <a href="#deaktivacija" class="fa fa-bell-o"><span>Deaktivacija</span></a>
                                                <a href="#honorar" class="fa fa-euro"><span>Honorari</span></a>
						
					</nav>

				<!-- Main -->
					<div id="main">
						
						<!-- Welcome -->
							<article id="me" class="panel">
								<header>
									<h1>Administrator</h1>
									<span class="byline"><br>${poruka}</span>
								</header>
                                                                <a href="CommandServlet?cmd=logout" class="jumplink pic">
									<span class="arrow fa fa-warning"><span>Logout!</span></span>
									<img src="images/admin.png" alt="" />
								</a>
							</article>

						
                                                <!-- Rad sa korisnicima -->
                                                        <article id="dodaj" class="panel">
								<header>
                                                                        <a href="CommandServlet?cmd=listingzahteva" class="fa fa-plus-square" style="color: #777">
                                                                        </a>&nbsp;
                                                                        <a href="CommandServlet?cmd=listingkorisnika" class="fa fa-list-ol" style="color: #777">
                                                                        </a>
									<h2>Dodaj novog korisnika</h2>
								</header>
                                                            <p>Unesite potrebne podatke!</p>
                                                            <form method="post" action="CommandServlet?cmd=registracijaadmin">
                                                                <%@include file="register.jspf" %>
                                                            </form>
							</article>
                                            <!-- Predmeti -->
                                                        <article id="predmet" class="panel">
                                                                <header>
                                                                        <a href="CommandServlet?cmd=listingpredmeta" class="fa fa-list-ol" style="color: #777">
                                                                        </a>
                                                                        <h2>Dodaj novi predmet</h2>
                                                                </header>
                                                            <p>Unesite potrebne podatke!</p>
                                                            <form method="post" action="CommandServlet?cmd=novipredmet">
                                                                <%@include file="predmet.jspf" %>
                                                            </form>
                                                        </article>
                                               <!-- Deaktiviraj demonstratora -->
                                                        <article id="deaktivacija" class="panel">
                                                                <header>
                                                                    <h2>Deaktiviraj postojeceg demonstratora</h2>
                                                                </header>
                                                            <p>Unesite potrebne podatke!</p>
                                                            <form method="post" action="CommandServlet?cmd=deaktiviraj">
                                                                <label>Korisnicko ime demonstratora:</label><input type="text" name="kid"><br>
                                                                <div class="buttons">
                                                                    <input type="submit" value="Izbaci!">
                                                                </div>
                                                            </form>
                                                        </article>
                                                <!-- Honorari -->
                                                        <article id="honorar" class="panel">
                                                                <header>
                                                                        <a href="CommandServlet?cmd=adminview" class="fa fa-list-ol" style="color: #777">
                                                                        </a>
                                                                        <h2>Izracunaj honorar</h2>
                                                                </header>
                                                            <p>WiP</p>
                                                            
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
