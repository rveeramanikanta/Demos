<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/introjs.css">
<link rel="stylesheet" href="css/introjs-ct.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome-animation.min.css">
<link rel="stylesheet" href="css/animate.css" />

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src='js/intro.js'></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>


<style type="text/css">
#totaldiv {
	margin-top: 25px;
}

.svg-css	{
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line	{
	position: relative;
	stroke:	gray;
	stroke-width: 2;	
}

.z-index {
	position: relative;
	z-index: 9999999;
	background-color: white;
}

.user-btn {
	background-color: green;
}

.padding0 {
	padding: 0px;
}

.box-border {
    border: 2px solid gray;
    border-radius: 8px;
}

.margin-top-bottom-10 {
    margin: 10px 0;
}
</style>


</head>
<body>
	<div id="totaldiv" class="totaldivclass col-xs-12 text-center">
		<span id="title" class="label ct-demo-heading">Single thread
			model</span>
	</div>
	<div id="architecture"
		class="col-xs-offset-2 col-xs-8 z-index introjs-showElement padding0 introjs-showElement"
		style="margin-top: 30px; border-radius: 8px; border: 2px solid grey; padding: 5px;">
		<div style="margin-top: 10px;"
			class="col-xs-12  introjs-showElement padding0">
			
			<!-- <svg class="svg-css">
				<marker style="fill: #556b2f;" orient="auto" markerHeight="5" markerWidth="5" refY="2.5" refX="4" id="myMarker">
					<path class="arrow" d="M0,0 L5,2.5 L0,5 Z"/>
				</marker>
				<line x1="21%" y1="19%" x2="41%" y2="36%" style="marker-end: url('#myMarker'); " class="svg-line" id="arrow1"/>
				<line x1="21%" y1="62%" x2="41%" y2="53%" style="marker-end: url('#myMarker');" class="svg-line" id="arrow2"/>
	  			<line x1="21%" y1="73%" x2="41%" y2="72%" style="marker-end: url('#myMarker');" class="svg-line" id="arrow3"/>
	  			
	  			<line x1="21%" y1="19%" x2="41%" y2="36%" style="marker-end: url('#myMarker'); " class="svg-line" id="arrow4"/>
				<line x1="21%" y1="62%" x2="41%" y2="53%" style="marker-end: url('#myMarker');" class="svg-line" id="arrow5"/>
	  			<line x1="21%" y1="73%" x2="41%" y2="72%" style="marker-end: url('#myMarker');" class="svg-line" id="arrow6"/>
	  			
			</svg> -->
			
			
			
			<svg class="svg-css">
				<marker id="myMarker" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: #556b2f;">
					<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
				</marker>
				<line id="arrow1" class="svg-line" style="marker-end: url('#myMarker'); " y2="36%" x2="41%" y1="24%" x1="21%"/>
				<line id="arrow2" class="svg-line" style="marker-end: url('#myMarker');" y2="54%" x2="41%" y1="64%" x1="21%"/>
	  			<line id="arrow3" class="svg-line" style="marker-end: url('#myMarker');" y2="72%" x2="41%" y1="69%" x1="21%"/>
	  			
	  			<line id="arrow4" class="svg-line" style="marker-end: url('#myMarker'); " y2="35%" x2="71%" y1="35%" x1="62%"/>
				<line id="arrow5" class="svg-line" style="marker-end: url('#myMarker');" y2="61%" x2="71%" y1="61%" x1="62%"/>
	  			<line id="arrow6" class="svg-line" style="marker-end: url('#myMarker');" y2="85%" x2="71%" y1="85%" x1="62%"/>
			</svg>
			
			
			<div class="col-xs-offset-1 col-xs-2 text-center padding0"
				id="browser">
				<div id="browser1" style="margin-top: 20px;">
					<i aria-hidden="true" class="fa fa-laptop fa-5x"></i>
					<div style="font-weight: bold; color: #008080;">Browser/Client</div>
				</div>
				<div style="margin-top: 30px;" id="browser2">
					<i aria-hidden="true" class="fa fa-laptop fa-5x"></i>
					<div style="font-weight: bold; color: #008080;">Browser/Client</div>
				</div>
			</div>
			<div style="font-family: monospace; font-weight: bold;"
				id="webContainer" class="col-xs-offset-2 col-xs-6 padding0">
				<div style="" class="col-xs-12 text-center">Web Container</div>

				<div class="col-xs-12 padding0 box-border" style="padding: 5px;">
					<div style="margin-top: 5px;" class="col-xs-12 text-center">Servlet
						Container</div>

					<div style="font-size: 12px;"
						class="col-xs-12 padding0 margin-top-bottom-10">
						<div class="col-xs-offset-1 col-xs-4 text-center">
							<div class="box-border" id='newInstance1' style="padding: 5px;">Create
								an instance</div>
						</div>

						<div class="col-xs-offset-2 col-xs-4 text-center">
							<div class="box-border" id='service1' style="padding: 5px;">Call
								its service method</div>
						</div>
					</div>

					<div style="font-size: 12px;"
						class="col-xs-12 padding0 margin-top-bottom-10">
						<div class="col-xs-offset-1 col-xs-4 text-center">
							<div class="box-border" id='newInstance2' style="padding: 5px;">Create
								an instance</div>
						</div>

						<div class="col-xs-offset-2 col-xs-4 text-center">
							<div class="box-border" id='service2' style="padding: 5px;">Call
								its service method</div>
						</div>
					</div>
					<div style="font-size: 12px;"
						class="col-xs-12 padding0 margin-top-bottom-10">
						<div class="col-xs-offset-1 col-xs-4 text-center">
							<div class="box-border" id='newInstance3' style="padding: 5px;">Create
								an instance</div>
						</div>

						<div class="col-xs-offset-2 col-xs-4 text-center">
							<div class="box-border" id='service3' style="padding: 5px;">Call
								its service method</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>