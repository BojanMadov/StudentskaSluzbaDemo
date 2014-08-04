<%-- 
    Document   : index
    Created on : Apr 26, 2014, 1:07:43 PM
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
        <title>Domaci Zadatak</title>
    </head>
    <body class="homepage">

		<!-- Wrapper-->
			<div id="wrapper">
				
				<!-- Nav -->
					<nav id="nav">
						<a href="#me" class="fa fa-home active"><span>Home</span></a>
						<a href="#logme" class="fa fa-pencil-square-o"><span>Logovanje</span></a>
                                                <a href="#registracija" class="fa fa-group" onclick="selektor()"><span>Novi korisnik</span></a>
                                                <a href="#passchg" class="fa fa-key"><span>Nova lozinka</span></a>
						<a href="https://twitter.com/BojanMadov" class="fa fa-twitter" target="_blank"><span>Twitter</span></a>
					</nav>

				<!-- Main -->
					<div id="main">
						
						<!-- Welcome -->
							<article id="me" class="panel">
								<header>
									<h1>Domaci zadatak</h1>
									<span class="byline">by Bojan Madov <br> ${poruka}</span>
                                                                        
                                                                        
								</header>
								<a href="#logme" class="jumplink pic">
									<span class="arrow fa fa-chevron-right"><span>Logovanje</span></span>
									<img src="images/me.jpg" alt="" />
								</a>
							</article>

						<!-- Logovanje --> 
							<article id="logme" class="panel">
								<header>
									<h2>Logovanje</h2>
								</header>
								
                                                                <form method="post" action="CommandServlet?cmd=login">
                                                                    <div class="fieldcontain">
                                                                    <label>Korisnicko ime: </label><input type="text" name="user">
                                                                    <br>
                                                                    <label>Lozinka: </label> <input type="password" name="pwd">
                                                                    <br>
                                                                    <div class="buttons">
                                                                    <input type="submit" value="Prijava">
                                                                    </div>
                                                                    </div>
                                                                </form>
							</article>
                                                <!-- Registracija -->
                                                        <article id="registracija" class="panel">
								<header>
									<h2>Registrovanje</h2>
								</header>
                                                            <p>Unesite potrebne podatke!</p>
                                                            <form method="post" action="CommandServlet?cmd=registracija">
                                                                <%@include file="register.jspf" %>
                                                            </form>
                                                            
							</article>
                                                <!-- Promena lozinke -->
                                                        <article id="passchg" class="panel">
								<header>
									<h2>Promena lozinke</h2>
								</header>
                                                            <p>Unesite postojece korisnicko ime, staru i novu lozinku!</p>
                                                            <form method="post" action="CommandServlet?cmd=promenilozinku">
                                                                    <div class="fieldcontain">
                                                                    <label>Korisnicko ime: </label><input type="text" name="user">
                                                                    <br>
                                                                    <label>Stara lozinka: </label> <input type="password" name="pwd">
                                                                    <br>
                                                                    <label>Nova lozinka: </label> <input type="password" name="newpwd">
                                                                    <br>
                                                                    <div class="buttons">
                                                                    <input type="submit" value="Promeni!">
                                                                    </div>
                                                                    </div>
                                                            </form>
                                                            
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
