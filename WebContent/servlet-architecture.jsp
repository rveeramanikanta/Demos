<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/introjs.css">
<link rel="stylesheet" href="css/introjs-ct.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/font-awesome-animation.min.css">
<link rel="stylesheet" href="css/animate.css"/>

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src='js/intro.js'></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>
	
<title>Servlet Architecture</title>
</head>
<style>
#totaldiv {
	margin-top: 25px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0.0;
	border-radius: 10px;
	font-size: 20px;
	position: relative;
	z-index: 9999999;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
}

#informationdiv {
	background-color: rgb(243, 235, 212);
    border-radius: 0px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 42px;
    margin-top: 30px;
    color: black;
}

.padding0 {
	padding: 0px;
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

.ct-code-b-green {
	color: green;
	font-weight: bold;
}

.popover-content {
	font-size: 14px;
}

.popover {
	width: 200px;
	font-size: 15px !important;
	min-height: 100px;
}

.popover-content {
	min-height: 100px;
}
</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Servlet Architecture</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 z-index' style='padding: 10px;'>
		<ul id='defination'></ul>
	</div>
</div>


<div id="architecture" class="col-xs-offset-2 col-xs-8 opacity00 z-index introjs-showElement" style="padding: 0px; 
		border: 1px solid grey; margin-top: 30px;">
		<svg class="svg-css">
			<marker id="myMarker" refX="4" refY="2.5" markerWidth="5"
				markerHeight="5" orient="auto" style="fill: #556b2f;"> <path
				d="M0,0 L5,2.5 L0,5 Z" class="arrow" /></marker>
			<line id="arrow1" class="svg-line"
				style="marker-end: url('#myMarker'); " y2="19%" x2="29%" y1="19%"
				x1="16%" />
			<line id="arrow8" class="svg-line" style="marker-end: url('#myMarker');"
				y2="27%" x2="16%" y1="27%" x1="28%" />
  			<line id="arrow2" class="svg-line"
				style="marker-end: url('#myMarker');" y2="19%" x2="49%" y1="19%"
				x1="37%" />
			<line id="arrow7" class="svg-line" style="marker-end: url('#myMarker');"
				y2="27%" x2="38%" y1="27%" x1="49%" />
  
  			<line id="arrow3" class="svg-line"
				style="marker-end: url('#myMarker');" y2="19%" x2="74%" y1="19%"
				x1="59%" />
			<line id="arrow6" class="svg-line" style="marker-end: url('#myMarker');"
				y2="27%" x2="59%" y1="27%" x1="74%" />
  
 			<line id="arrow4" class="svg-line"
				style="marker-end: url('#myMarker');" y2="52%" x2="85%" y1="52%"
				x1="85%" />

  			<line id="arrow5" class="svg-line"
				style="marker-end: url('#myMarker');" y2="67%" x2="81%" y1="67%"
				x1="81%" />
				<text style="display: inline; opacity: 1; font-weight: bold;" x="37%" y="17%" fill="brown" id="text1">http request</text>
				<text style="display: inline; opacity: 1; font-weight: bold;" x="64%" y="17%" fill="brown" id="text2">request</text>
				<text style="display: inline; opacity: 1; font-weight: bold;" x="64%" y="32%" fill="brown" id="text3">response</text>
				<text style="display: inline; opacity: 1; font-weight: bold;" x="19%" y="32%" fill="brown" id="text4">http response</text>
		</svg>
		<div style="margin-top: 30px; font-weight: bold;" class="col-xs-12  introjs-showElement padding0">
		<div class="col-xs-3 padding0 text-center" id="browser"> 
			<i aria-hidden="true" class="fa fa-laptop fa-5x"></i>
			<div style="font-weight: bold; color: #008080;">Browser/Client</div> 
		</div>
		 
		<div class="col-xs-2 text-center padding0 opacity00" id="cloud"> 
			<i aria-hidden="true" class="fa fa-cloud fa-5x"></i>
			<div style="font-weight: bold; color: #008080;">Internet</div> 
		</div>
		<div class="col-xs-3 text-center padding0 opacity00" id="server">
				<i class="fa fa-server fa-5x" id='serverImage'></i>
			<div style="color: #008080; font-weight: bold;" id='serverName'>Server</div>
		</div>
		
		<div id="servletContainer" class="col-xs-offset-1 col-xs-2 opacity00" style="border: 1px solid grey; text-align: center; padding: 10px;">
		  <span style="color: #008080;">Servlet Container</span>
		  <div class="col-xs-12 text-center" style="border: 1px solid grey"><span>S1</span></div>
		  <div class="col-xs-12 text-center" style="border: 1px solid grey"><span>S2</span></div>
		  <div class="col-xs-12 text-center" style="border: 1px solid grey"><span>S3</span></div>
  		</div>
	</div>
	<div class="col-xs-12" style="padding: 0px; margin-top: 50px;">
		<div class="col-xs-offset-9 col-xs-2 text-center padding0 opacity00" id="dataBase">
			<i aria-hidden="true" class="fa fa-database fa-5x"></i>
			<div>
				<div style="font-weight: bold; color: #008080;" id='dataBaseName'>File system/Data base</div>
			</div>
		</div>
	</div>
</div>
<div class="button col-xs-12 text-center " id="button" style="margin-top: 15px;">
	<button class="btn btn-warning opacity00" type="button" id='restartBtn' style='margin-top:4px'><i class='glyphicon glyphicon-refresh'></i> Restart</button>
</div>
</body>
<script>
var count = 0;
$(document).ready(function() {
	$("line").hide();
	$("text").hide();
	intro = introJs();
	$('#restartBtn').click(function() {
		location.reload();
	});
	$("body").keypress(function(e) {
		if (e.which === 13) {
			 e.preventDefault();
		}
	});
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		steps :	[{
			element :'#informationdiv',
			intro :'',
			position:"bottom",
			tooltipClass:'hidden'
		},{
			element :'#architecture',
			intro :'',
			position:"bottom",
			tooltipClass:'hidden'
		},{
			element :'#restartBtn',
			intro :'',
			position:"right" 
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
				$("#informationdiv").removeClass("visibility-hidden");
			  	$('#informationdiv').html("<ul><li id='line1'>Servlet technology is used to create web application"+
			  	".</li></ul>");
		  		setTimeout(function () {
					$("#line1").fadeTo(300, 1, function() {
						intro.nextStep();
				})}, 1000);
			break;
		case "architecture" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#architecture').removeClass('opacity00');
				$('#browser').removeClass('opacity00');
				popover('#browser', 'left');
				typing('#popover' + count,  "A user types in a url in the browser.This request is sent from the browser to the client.The protocol followed is HTTP.<br>"+
						"", function() { 
					$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep()">Next →</a>');
				 	});
				 });
			break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing('.introjs-tooltiptext', "Click to restart.", function() {
					$("#restartBtn").removeClass("opacity00");
					});
				});
			break;
		}
	});
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	});
function firstStep() {
	$(".user-btn").remove();
	$(".popover").hide();
	arrowReveal("#arrow1", function() {
		$('#cloud').removeClass('opacity00');
		arrowReveal("#arrow2", function() {
			$("#text1").fadeTo(1000, 1, function() {
				popover('#cloud', 'bottom');
				typing('#popover' + count, "This Http request is sent over the internet to the web server.", function() { 
			 		$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep1()">Next →</a>');
				});
			})
		});
	});
}
function firstStep1() {
	$(".user-btn").remove();
	$(".popover").hide();
	$('#server').removeClass('opacity00');
	popover('#server', 'bottom');
	typing('#popover' + count, "The http server looks up the request url and if it is to a servlet ,sends it to the servlet container.", function() {  
	 	$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep2()">Next →</a>');
	});
}
function firstStep2() {
	$(".user-btn").remove();
	$(".popover").hide();
	arrowReveal("#arrow3");
	$('#servletContainer').removeClass('opacity00');
	$("#text2").fadeTo(1000, 1, function() {
		popover('#servletContainer', 'bottom');
		typing('#popover' + count, "The servlet container loads the servlet class,creates an instance and initializes the required servlet.", function() {  
	 		$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep3()">Next →</a>');
		});
	});
}
function firstStep3() {
	$(".user-btn").remove();
	$(".popover").hide();
	$("#arrow4").show();
	TweenMax.to("#arrow4", 1, {attr:{y2 : "67%"}, onComplete:function() {
		$('#myMarker4').removeAttr('class');
		$('#dataBase').removeClass('opacity00');
		popover('.fa-database', 'right');
		typing('#popover' + count, " A thread is created and passed on to the servlet's service method which talks to the db and builds the content for response to be sent back.", function() {  
		 	$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep4()">Next →</a>');
		});
	}});
}
function firstStep4() {
	$(".user-btn").remove();
	$(".popover").hide();
	popover('#dataBaseName', 'bottom');
	typing('#popover' + count,  "Database/File system is a place where the  static pages or data required for building dynamic pages exist.", function() {  
	 	$("#popover" + count+"").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep5()">Next →</a>');
	});
}
function firstStep5() {
	$(".user-btn").remove();
	$(".popover").hide();
	$("#arrow5").show();
	TweenMax.to("#arrow5", 1, {attr:{y2 : "52%"}, onComplete:function() {
		popover('.fa-database', 'left');
		typing('#popover5', "The required page /data is returned ", function() {  
		 	$("#popover5").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep6()">Next →</a>');
		 });
	}});
}
function firstStep6() {
	$(".user-btn").remove();
	$(".popover").hide();
	arrowReveal("#arrow6", function() {
		$("#text3").fadeTo(1000, 1, function() {
			popover('.fa-database', 'left');
			typing('#popover5', "The server sends this response built by servlet over the internet using the Http Protocol.", function() {  
				$("#popover5").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep7()">Next →</a>');
			});
		 });
	});
}

function firstStep7() {
	$(".user-btn").remove();
	$(".popover").hide();
	arrowReveal("#arrow7", function() {
		arrowReveal("#arrow8");
		$("#text4").fadeTo(1000, 1, function() {
			popover('#cloud', 'bottom');
			typing('#popover2',  "dddddd12121212.", function() {  
				$("#popover2").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep8()">Next →</a>');
			});
		});
	 });
}

function firstStep8() { 
	$(".user-btn").remove();
	$(".popover").hide();
	intro.nextStep();
}

function arrowReveal(lineId, callBackFunction) {
	var x2 = $(lineId).attr("x2");
	var y2 = $(lineId).attr("y2");
	$(lineId).attr("x2", $(lineId).attr("x1"));
	$(lineId).attr("y2", $(lineId).attr("y1"));
	$(lineId).show();
	TweenMax.to(lineId, 1, {attr:{x2 : x2, y1 : y2}, onComplete:function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function popover(selector, position) {
	count++;
	$(selector).popover({
		placement: position,
		viewport: $(selector),
		html: true,
		trigger: "focus",
		content: '<div id="popover'+count+'"></div>',
		container: '#architecture'
	});
	$(selector).popover('show');
	//$(".popover").css("top" , "0");
}

function typing(selector, text, callBackFunction) {
	var typingSpeed = 5;
	$(selector).typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		$(".introjs-nextbutton").removeClass("opacity00");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	})
}
</script>
	</html>