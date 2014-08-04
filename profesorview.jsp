<%-- 
    Document   : adminview
    Created on : Apr 27, 2014, 2:57:45 PM
    Author     : Bojan Madov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="main.Predmet"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400" rel="stylesheet" />
                <link href="css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet">
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
                <script src="js/selektor.js"></script>
                <script src="js/jquery-2.1.0.min.js"></script>
                <script src="js/jquery-ui-1.10.4.custom.min.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/noscript.css" />
		</noscript>
                <script>
                    $(function() {
                        $("#datr").datepicker({
                                    beforeShow: function(){    
                                    $(".ui-datepicker").css({'font-size': 11, 'line-height': 1.2})}
                        });
                            });
                </script>
        <title>ProfesorView</title>
    </head>
    <body class="homepage">

		<!-- Wrapper-->
			<div id="wrapper">
				
				<!-- Nav -->
					<nav id="nav">
						<a href="#me" class="fa fa-home active"><span>Home</span></a>
						<a href="#predemo" class="fa fa-link"><span>Demonstratori</span></a>
                                                <a href="#labvezbe" class="fa fa-flask" ><span>Lab vezbe</span></a>
					</nav>

				<!-- Main -->
					<div id="main">
						
						<!-- Welcome -->
							<article id="me" class="panel">
								<header>
									<h1>Profesor</h1>
									<span class="byline"><br>${poruka}</span>
								</header>
                                                                <a href="CommandServlet?cmd=logout" class="jumplink pic">
									<span class="arrow fa fa-warning"><span>Logout!</span></span>
                                                                        <img src="images/profesor.jpg" alt="" />
								</a>
							</article>

						
                                                <!-- pregled demonstratora -->
                                                        <article id="predemo" class="panel">
								<header>
                                                                        <a href="CommandServlet?cmd=listingsvihdemonstratora" class="fa fa-search" style="color: #777">
                                                                        </a>&nbsp;
                                                                        <a href="CommandServlet?cmd=listingmydemo" class="fa fa-star-o" style="color: #777">
                                                                        </a>
									<h2>Pregled demonstratora i aktivnih vezbi</h2>
								</header>
                                                                <a href="CommandServlet?cmd=listingneaktivnihlabova" class="fa fa-meh-o" style="color: #777">
                                                                &nbsp;Dodaj demonstratora odredjenoj vezbi</a><br><hr>
                                                                <a href="CommandServlet?cmd=listingaktivnihlabova" class="fa fa-cogs" style="color: #777">
                                                                &nbsp;Pregled aktivnih vezbi</a><br><hr>
                                                                <a href="CommandServlet?cmd=zatvorilab" class="fa fa-lock" style="color: #777">
                                                                &nbsp;Zatvori vezbu</a><br>
							</article>
                                            <!-- lab vezbe panel -->
                                                        <article id="labvezbe" class="panel">
                                                                <header>
                                                                        <a href="CommandServlet?cmd=listinglabvezbi" class="fa fa-list-ol" style="color: #777">
                                                                        </a>
                                                                        <h2>Dodaj novu vezbu</h2>
                                                                </header>
                                                            <p>Unesite potrebne podatke!</p>
                                                            <form method="post" action="CommandServlet?cmd=novalabvezba">
                                                                <%@include file="lab.jspf" %>
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
