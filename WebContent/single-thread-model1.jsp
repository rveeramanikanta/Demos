
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

.padding4 {
	padding: 4px;
}

.color {
	color: seagreen;
}

.border-radius5 {
	border-radius: 5px;
}

.thread {
	background-color: seagreen;
    border-radius: 5px;
    min-height: 14px;
}

.thread-w {
	background-color: seagreen;
    border-radius: 5px;
    min-height: 14px;
}

.font-size {
	font-size: 11px;
}

.margin-left9 {
	margin-left: 9.723%;
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
			
		<line id="arrow1" class="svg-line" style="marker-end:  url('#myMarker'); display: inline;" y2="11%" x2="25%" y1="11%" x1="9%"/>
		<line x1="9%" y1="56%" x2="25%" y2="56%" style="marker-end: url('#myMarker'); display: inline;" class="svg-line" id="arrow2"/>
		<line id="arrow3" class="svg-line" style="marker-end: url('#myMarker'); display: inline;" y2="83%" x2="25%" y1="83%" x1="9%"/>
		<line id="arrow4" class="svg-line" style="marker-end: url('#myMarker'); display: inline;" y2="17%" x2="62%" y1="17%" x1="57%"/>
		<line x1="57%" y1="56%" x2="62%" y2="56%" style="display: inline; marker-end: url('#myMarker');" class="svg-line" id="arrow5"/>
		<line x1="57%" y1="83%" x2="62%" y2="83%" style="marker-end: url('#myMarker'); display: inline;" class="svg-line" id="arrow6"/>
		<line id="arrow7" class="svg-line" style="marker-end: url('#myMarker'); display: inline;" y2="17%" x2="76%" y1="17%" x1="71%"/>
		<line x1="71%" y1="56%" x2="76%" y2="56%" style="marker-end: url('#myMarker'); display: inline;" class="svg-line" id="arrow8"/>
		<line x1="71%" y1="83%" x2="76%" y2="83%" style="marker-end: url('#myMarker'); display: inline;" class="svg-line" id="arrow9"/>
		
		<text id="text1" fill="brown" y="26%" x="14%" style="display: inline; opacity: 1; font-weight: bold; font-size: 12px;">request1</text>
		<text style="display: inline; opacity: 1; font-size: 12px; font-weight: bold;" x="14%" y="54%" fill="brown" id="text2">request2</text>
		<text id="text3" fill="brown" y="81%" x="14%" style="display: inline; opacity: 1; font-weight: bold; font-size: 12px;">request3</text>
	</svg> 
		<div style="padding: 10px;" class="col-xs-12  introjs-showElement padding0">
			<div class="col-xs-3 padding0" id="browser" style=''> 
				<div id="browser1" class="opacity00" style='margin-top: 4px;'>
					<i aria-hidden="true" class="fa fa-laptop fa-4x"></i>
					<div style="font-weight: bold; color: #008080; font-size: 11px;">Browser/Client</div>
				</div>
				<div style="margin-top:26px;" id="browser2" class="opacity00"> 
					<i aria-hidden="true" class="fa fa-laptop fa-4x"></i>
					<div style="font-weight: bold; color: #008080; font-size: 11px;">Browser/Client</div> 
				</div>
				<div style="margin-top: 24px;" id="browser3" class="opacity00"> 
					<i aria-hidden="true" class="fa fa-laptop fa-4x"></i>
					<div style="font-weight: bold; color: #008080; font-size: 11px;">Browser/Client</div> 
				</div>				
			</div>
			<!-- <div style="color: #008080; font-weight: bold;" class='text-center'>Web Server</div> -->
			<div id='singleThreadModelBox' class='col-xs-9 padding4 opacity00 border-radius5' style='border: 1px solid grey;'>
			<div class="col-xs-5 padding0">
				<div class="col-xs-12 padding0 text-center opacity00" id="webServer" style="min-height: 300px;">
					<div style="border: 1px solid grey; background-color: linen; border-top: none; 
						padding: 3px; min-height: 40px; display: flex; justify-content: center; align-items: baseline;" 
						class="col-xs-12 padding0 border-radius5">
						
						<img id='thread1' src="images/thread-green.png" style="width: 10%; filter: saturate(6);">
  						<img id='thread2' src="images/thread-red.png" style="width: 10%; filter: saturate(6);">
  						<img id='thread3' src="images/thread-green.png" style="width: 10%; filter: saturate(6);">
						<img id='thread4' src="images/thread-red.png" style="width: 10%; filter: saturate(6);">
						<img id='thread5' src="images/thread-green.png" style="width: 10%; filter: saturate(6);">
							<!-- <svg fill="#70C041" xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
								y="0px" viewBox="0 0 96 96" enable-background="new 0 0 96 96"
								xml:space="preserve">
							<path
								d="M43.812,28.232c6.208,0,37.168-0.4,37.168-8.236c0-7.828-30.961-8.232-37.168-8.232c-6.208,0-37.168,0.404-37.168,8.232  C6.648,27.832,37.608,28.232,43.812,28.232z" />
							<path
								d="M72.195,67.684c-1.063-0.308-2.172,0.309-2.475,1.368c-0.305,1.064,0.312,2.173,1.375,2.476  c5.196,1.496,5.86,2.828,5.896,2.828c-0.637,2.053-12.584,5.877-33.168,5.877c-20.596,0-32.544-3.828-33.172-5.789  c0.004-0.016,0.52-1.275,5.38-2.752c1.056-0.319,1.652-1.436,1.332-2.496c-0.32-1.055-1.42-1.651-2.496-1.331  c-5.524,1.68-8.208,3.815-8.208,6.54c0,7.764,23.36,9.836,37.168,9.836c13.809,0,37.168-2.072,37.168-9.836  C80.98,71.584,78.1,69.389,72.195,67.684z" />
							<path
								d="M65.137,30.588c-6.156,1.08-13.529,1.64-21.325,1.64c-8.004,0-15.808-0.62-21.972-1.752c-1.092-0.204-2.128,0.52-2.328,1.6  c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.82,22.696,1.82c8.016,0,15.636-0.588,22.008-1.704  c1.084-0.188,1.812-1.232,1.619-2.312C67.256,31.128,66.229,30.404,65.137,30.588L65.137,30.588z" />
							<path
								d="M65.137,38.588c-6.156,1.08-13.529,1.64-21.325,1.64c-8.004,0-15.808-0.62-21.972-1.752c-1.092-0.208-2.128,0.52-2.328,1.6  c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.82,22.696,1.82c8.016,0,15.636-0.588,22.008-1.704  c1.084-0.188,1.812-1.232,1.619-2.312C67.256,39.128,66.229,38.408,65.137,38.588L65.137,38.588z" />
							<path
								d="M65.137,46.588c-6.156,1.08-13.529,1.64-21.325,1.64c-8.004,0-15.808-0.62-21.972-1.752c-1.092-0.208-2.128,0.52-2.328,1.6  c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.819,22.696,1.819c8.016,0,15.636-0.588,22.008-1.704  c1.084-0.188,1.812-1.231,1.619-2.312C67.256,47.128,66.229,46.404,65.137,46.588L65.137,46.588z" />
							<path
								d="M65.137,62.588c-6.156,1.08-13.529,1.641-21.325,1.641c-8.004,0-15.808-0.621-21.972-1.752  c-1.092-0.205-2.128,0.52-2.328,1.6c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.819,22.696,1.819  c8.016,0,15.636-0.588,22.008-1.704c1.084-0.188,1.812-1.231,1.619-2.312C67.256,63.128,66.229,62.408,65.137,62.588L65.137,62.588z  " />
							<path
								d="M65.137,70.588c-6.156,1.08-13.529,1.641-21.325,1.641c-8.004,0-15.808-0.621-21.972-1.752  c-1.092-0.209-2.128,0.52-2.328,1.6c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.82,22.696,1.82  c8.016,0,15.636-0.589,22.008-1.705c1.084-0.188,1.812-1.231,1.619-2.312C67.256,71.128,66.229,70.404,65.137,70.588L65.137,70.588z  " />
							<path
								d="M88.988,55.288c-0.641-0.899-1.889-1.108-2.784-0.472c-4.076,2.884-6.265,2.076-9.584,0.859  c-2.845-1.048-6.392-2.336-11.472-1.084h-0.004c-6.156,1.08-13.528,1.641-21.325,1.641c-8.004,0-15.808-0.621-21.972-1.752  c-1.092-0.2-2.128,0.52-2.328,1.6c-0.2,1.084,0.52,2.128,1.604,2.324c6.396,1.176,14.456,1.82,22.696,1.82  c8.02,0,15.64-0.589,22.004-1.705c0.031-0.004,0.048-0.023,0.076-0.027c0.027-0.004,0.052,0.004,0.084-0.004  c3.968-1.021,6.539-0.076,9.26,0.924c1.768,0.652,3.664,1.344,5.844,1.344c2.141,0,4.568-0.664,7.424-2.691  C89.408,57.439,89.628,56.191,88.988,55.288z" /></svg> -->
						</div>
				</div>
			</div>
			 <div id='threadModel' style="padding: 3px; border: 1px solid grey;" 
			 	class="padding0 col-xs-offset-1 col-xs-4 opacity00 border-radius5">
			    <div id='model1' class="col-xs-12 padding0 font-size" style='margin-top: 10px'>
			    	<div  id='model10' style="border: 1px solid grey;" class="opacity00 col-xs-4 padding0 text-center padding4">
			    		<span>Create an instance</span></div>
             		<div  id='model11' style="border: 1px solid grey;" class="opacity00 col-xs-offset-3 col-xs-5 padding0 text-center padding4">
             			Call its service method</div>
			    </div>
  				 <div id='model2' class="col-xs-12 padding0 font-size" style='margin-top: 61px'>
			    	<div id='model20' style="border: 1px solid grey;" class="opacity00 col-xs-4 padding0 text-center padding4">
			    		<span>Create an instance</span></div>
             		<div id='model21' style="border: 1px solid grey;" class="opacity00 col-xs-offset-3 col-xs-5 padding0 text-center padding4">
             			Call its service method</div>
			    </div>
  			 	<div id='model3' class="col-xs-12 padding0 font-size" style='margin-top: 54px'>
			    	<div id='model30' style="border: 1px solid grey;" class="opacity00 col-xs-4 padding0 text-center padding4">
			    		<span>Create an instance</span></div>
             		<div id='model31' style="border: 1px solid grey;" class="opacity00 col-xs-offset-3 col-xs-5 padding0 text-center padding4">
             			Call its service method</div>
			    </div>
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
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep()">Next</a>');
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
		$("#singleThreadModelBox").removeClass('opacity00');
		$("#webServer").removeClass('opacity00');
		$("#text1").fadeTo(1000, 1, function() {
			typing('.introjs-tooltiptext', ""+
						".", function() { 
			 	$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep1()">Next</a>');
			});
		});
	});
}
function firstStep1() {
	$(".user-btn").remove();
	$("#threadModel").removeClass('opacity00');
	$("#model10").removeClass('opacity00');
	arrowReveal("#arrow4", function() {
		$("#model11").removeClass('opacity00');
		arrowReveal("#arrow7", function() {
			typing('.introjs-tooltiptext', ".", function() {  
	 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep2()">Next</a>');
			});
		});
	});
}
function firstStep2() {
	$(".user-btn").remove();
	$('#browser2').removeClass('opacity00');
	arrowReveal("#arrow2", function() {
		$("#text2").fadeTo(1000, 1, function() {
			typing('.introjs-tooltiptext', ".", function() {  
	 			$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep3()">Next</a>');
			});
		});
	});
}
function firstStep3() {
	$(".user-btn").remove();
	$("#model20").removeClass('opacity00');
	arrowReveal("#arrow5", function() {
		$("#model21").removeClass('opacity00');
		arrowReveal("#arrow8", function() {
			typing('.introjs-tooltiptext', ".", function() {  
		 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep4()">Next</a>');
			});
		});
	});
}
function firstStep4() {
	$(".user-btn").remove();
	$('#browser3').removeClass('opacity00');
	arrowReveal("#arrow3", function(){
		$("#text3").fadeTo(1000, 1, function() {
			typing('.introjs-tooltiptext', ".", function() {  
		 		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="firstStep5()">Next</a>');
			});
		});
	});
}
function firstStep5() {
	$(".user-btn").remove();
	$("#model30").removeClass('opacity00');
	arrowReveal("#arrow6", function() {
		$("#model31").removeClass('opacity00');
		arrowReveal("#arrow9", function() {
			$('.introjs-nextbutton').show();
		});
	});
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