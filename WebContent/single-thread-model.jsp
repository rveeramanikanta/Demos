<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/introjs.css">
<link rel="stylesheet" href="css/introjs-ct.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/font-awesome-animation.min.css">
<link rel="stylesheet" href="css/animate.css"/>

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src='js/intro.js'></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>

<title>Single Thread Model</title>
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

</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Single thread model</span>
</div>
<div id="architecture" class="col-xs-offset-1 col-xs-10 z-index introjs-showElement padding0" style="border: 1px solid grey; margin-top: 30px;">
		 <svg class="svg-css">
			<marker id="myMarker" refX="4" refY="2.5" markerWidth="5"
				markerHeight="5" orient="auto" style="fill: #556b2f;"> <path
				d="M0,0 L5,2.5 L0,5 Z" class="arrow" /></marker>
				
			<line id="arrow1" class="svg-line" style="marker-end: url(&quot;#myMarker&quot;); display: inline;" y2="32%" x2="41%" y1="32%" x1="16%"/>
			<line x1="16%" y1="68%" x2="41%" y2="68%" style="marker-end: url(&quot;#myMarker&quot;); display: inline;" class="svg-line" id="arrow2"/>
			<line x1="16%" y1="84%" x2="41%" y2="84%" style="marker-end: url(&quot;#myMarker&quot;); display: inline;" class="svg-line" id="arrow3"/>
			<line x1="59%" y1="32%" x2="67%" y2="32%" style="marker-end: url(&quot;#myMarker&quot;);" class="svg-line" id="arrow4"/>
			<line id="arrow5" class="svg-line" style="marker-end: url(&quot;#myMarker&quot;);" y2="68%" x2="67%" y1="68%" x1="59%"/>
			<line id="arrow6" class="svg-line" style="marker-end: url(&quot;#myMarker&quot;);" y2="84%" x2="67%" y1="84%" x1="59%"/>
			<line id="arrow7" class="svg-line" style="marker-end: url(&quot;#myMarker&quot;);" y2="32%" x2="79%" y1="32%" x1="76%"/>
			<line x1="76%" y1="68%" x2="79%" y2="68%" style="marker-end: url(&quot;#myMarker&quot;);" class="svg-line" id="arrow8"/>
			<line x1="76%" y1="84%" x2="79%" y2="84%" style="marker-end: url(&quot;#myMarker&quot;);" class="svg-line" id="arrow9"/>
			
			<text id="text1" fill="brown" y="29%" x="26%" style="display: inline; opacity: 1; font-weight: bold;">request1</text>
			<text id="text2" fill="brown" y="65%" x="26%" style="display: inline; opacity: 1; font-weight: bold;">request2</text>
			<text id="text3" fill="brown" y="81%" x="26%" style="display: inline; opacity: 1; font-weight: bold;">request3</text>
		</svg> 
		<div style="margin-top: 30px;" class="col-xs-12  introjs-showElement padding0">
			<div class="col-xs-offset-1 col-xs-3 padding0" id="browser"> 
				<div id="browser1" class="">
					<i aria-hidden="true" class="fa fa-laptop fa-5x"></i>
					<div style="font-weight: bold; color: #008080;">Browser/Client</div>
				</div>
				<div style="margin-top: 20px;" id="browser2" class=""> 
					<i aria-hidden="true" class="fa fa-laptop fa-5x"></i>
					<div style="font-weight: bold; color: #008080;">Browser/Client</div> 
				</div>			
			</div>
			<div>
				<div class="col-xs-offset-1 col-xs-2 padding0 text-center" id="webServer" style="border: 1px solid grey; height: 194px;">
					<span style="color: #008080; font-weight: bold;">Web Server</span></div>
			</div>
			 <div style="font-size: 12px; padding: 10px;" class="col-xs-offset-1 col-xs-3">
			    <div class="col-xs-12 padding0" style='margin-top: 25px'>
			    	<div style="border: 1px solid grey;" class="col-xs-4 padding0"><span class="">Create an instance</span></div>
             		<div style="border: 1px solid grey;" class="col-xs-offset-2 col-xs-6 padding0">Call its service method</div>
			    </div>
  				 <div class="col-xs-12 padding0" style='margin-top: 28px'>
			    	<div style="border: 1px solid grey;" class="col-xs-4 padding0"><span class="">Create an instance</span></div>
             		<div style="border: 1px solid grey;" class="col-xs-offset-2 col-xs-6 padding0">Call its service method</div>
			    </div>
  			 <div class="col-xs-12 padding0" style='margin-top: 20px'>
			    	<div style="border: 1px solid grey;" class="col-xs-4 padding0"><span class="">Create an instance</span></div>
             		<div style="border: 1px solid grey;" class="col-xs-offset-2 col-xs-6 padding0">Call its service method</div>
			    </div>
			 </div>
		</div>
	</div>
	<div class="button col-xs-12 text-center " id="button">
		<button class="btn btn-warning glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:4px'>Restart</button>
	</div>
</body>
<script type="text/javascript">
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
			element :'#architecture',
			intro :'',
			position:"bottom" 
		},{
			element :'#restartBtn',
			intro :'',
			position:"bottom" 
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		case "architecture" :
			$('.introjs-nextbutton').hide();
				$('#architecture').removeClass('opacity00');
				$('#browser1').removeClass('opacity00');
				typing('.introjs-tooltiptext', "Lets look at the url requested on the browser.<br>"+
						"", function() { 
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep()">Next →</a>');
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
	arrowReveal("#arrow1", function() {
		$("#webServer").removeClass('opacity00');
			$("#text1").fadeTo(1000, 1, function() {
				typing('.introjs-tooltiptext', ""+
						".", function() { 
			 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep1()">Next →</a>');
			});
		});
	});
}
function firstStep1() {
	$(".user-btn").remove();
	arrowReveal("#arrow4");
	arrowReveal("#arrow7");
	typing('.introjs-tooltiptext', ".", function() {  
	 	$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep2()">Next →</a>');
	});
}
function firstStep2() {
	$(".user-btn").remove();
	$('#browser2').removeClass('opacity00');
	arrowReveal("#arrow2");
	$("#text2").fadeTo(1000, 1, function() {
		typing('.introjs-tooltiptext', "The servlet container creates an instance of the required servlet.", function() {  
	 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep3()">Next →</a>');
		});
	});
}
function firstStep3() {
	$(".user-btn").remove();
	arrowReveal("#arrow5");
	arrowReveal("#arrow8");
	$("#text3").fadeTo(1000, 1, function() {
		typing('.introjs-tooltiptext', ".", function() {  
	 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep4()">Next →</a>');
		});
	});
}
function firstStep4() {
	$(".user-btn").remove();
	arrowReveal("#arrow3");
	$("#singleThread").removeClass("opacity00");
	typing('.introjs-tooltiptext', ".", function() {  
	 	$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep5()">Next →</a>');
	});
}
function firstStep5() {
	$(".user-btn").remove();
	arrowReveal("#arrow6");
	arrowReveal("#arrow9");
	$('.introjs-nextbutton').show();
	/* TweenMax.to("#arrow5", 1, {attr:{y2 : "52%"}, onComplete:function() {
		typing('.introjs-tooltiptext', "The server picks up the required web page based on the request. ", function() {  
		 	$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep6()">Next →</a>');
		 });
	}}); */
}
/* function firstStep6() {
	$(".user-btn").remove();
	arrowReveal("#arrow6");
	$("#text3").fadeTo(1000, 1, function() {
	typing('.introjs-tooltiptext', ".", function() {  
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep7()">Next →</a>');
		});
 	});
}

function firstStep7() {
	$(".user-btn").remove();
	arrowReveal("#arrow7", function() {
		arrowReveal("#arrow8");
		$("#text4").fadeTo(1000, 1, function() {
			typing('.introjs-tooltiptext', ".", function() {  
				$('.introjs-nextbutton').show();
			});
		});
	 });
} */

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