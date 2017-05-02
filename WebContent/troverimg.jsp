<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<html class="noIE" lang="en-US">
<!--<![endif]-->
	<head>
		<!-- meta -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
	<title>Trover Holidays</title>

	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/ionicons.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<link rel="stylesheet" href="assets/css/owl.theme.css">
	<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/thumbnail-slider.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

			<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
</head>
<body>
<%
ArrayList<String> photoList = new ArrayList<String>();
String city = request.getAttribute("city").toString();
String cityTLA = request.getAttribute("citySearch").toString();
photoList.addAll((ArrayList<String>)request.getAttribute("photoList"));
%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html" title="HOME"><i class="ion-paper-airplane"></i> trover <span>holidays</span></a>
			</div> <!-- /.navbar-header -->
	  	</div><!-- /.container -->
	</nav>

	     <!-- Modal --> 
            <div id="demowrap">
            <div class="text-center">
						<h1><font color="black">Destination: <%out.println(city);%> - Real pictures by real people</font></h1>
					</div>
    <div>
    
        <div id="thumbnail-slider">
            <div class="inner">
                <ul>
                    
                    <li>
                        <a class="thumb" src="${photoList.get(0)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(1)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(2)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(3)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(4)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(5)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(6)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(7)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                    <li>
                        <a class="thumb" src="${photoList.get(8)}" href="https://wwwexpediacom.integration.sb.karmalab.net/things-to-do/search?location=<%=cityTLA%>&startDate=11/24/2016&endDate=11/25/2016"></a>
                    </li>
                </ul>
            </div>
        </div> 
    </div>
    </div>
<!--/ Modal -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-4">
					<div class="text-left">
						&copy;Trover Holidays
					</div>
				</div>
				<div class="col-xs-4">
					<div class="button" align="center">
						<a href="#header">
							<i class="ion-arrow-up-b"></i>
						</a>
					</div>
				</div>
			</div>
		</div>		
	</footer>


	<script src="assets/js/jquery-1.11.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/contact.js"></script>
    <script src="assets/js/jquery.flexslider.js"></script>
	<script src="assets/js/script.js"></script>
	<script src="assets/js/thumbnail-slider.js"></script>
	

</body>
</html>