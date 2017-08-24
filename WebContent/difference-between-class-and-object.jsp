<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/font-awesome-animation.min.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<title>Difference between Class and Object</title>
<style type="text/css">

.margin-top-20 {
	margin-top: 20px;
}

.box-border {
	border: 2px solid gray;
	border-radius: 8px;
}

.padding0 {
	padding: 0;
}

.creampretab4 {
	-moz-tab-size: 2;
	tab-size: 2;
	background-color: #fffae6;
	margin-bottom: 0;
	font-family: monospace;
	font-size: 12px;
	padding: 5px;
	overflow-y: auto;
}

.obj {
	border: 2px solid gray;
	border-radius: 50%;
	font-family: monospace;
	font-weight: bold;
	padding: 20px 0;
	text-align: center;
}

.obj-name {
	font-family: monospace;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
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
	stroke-width: 3;
	marker-end:	url('#myMarker');	
}

.keywords {
	color: #a81313;
	font-weight: bold;
}

.variables {
	color: #3535a7;
	font-weight: bold;
}

.user-btn {
	background-color: green;
}
/* .opacity00 {
	opacity: 1;
} */
</style>

<script type="text/javascript">
var typingSpeed = 5;
var introjs;
var tl = new TimelineLite();

$(document).ready(function() {
	initIntroJS();
	
	$("line").hide();
	$('#restart').click(function() {
		location.reload();
	});
});

function initIntroJS() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#classDeclaration",
			intro : "",
			position : "bottom",
		}, {
			element : "#animationDiv",
			intro : "",
			position : "left",
		}, {
			element : "#objsDeclaration",
			 intro : "",
			 position : "right",
		}, {
			element : "#animationDiv",
			intro : "",
			tooltipClass: "hide"
		}, {
			element : "#objsDeclaration",
			 intro : "",
			 position : "right",
		}, {
			element : "#animationDiv",
			intro : "",
			tooltipClass: "hide"
		}, {
			element : "#restart",
			intro : "",
			position : "right"
		}]
	});

	introjs.onafterchange(function(targetElement) {
		introjs.refresh();
		var elementId = targetElement.id;
		switch (elementId) {
			case "classDeclaration":
				$('.introjs-nextbutton').hide();
				var text = "When the java program is executed the <span class='ct-code-b-yellow'>.class</span> files are loaded into <b>memory</b>.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();	
				});
			break;
			
			case "binaryFile":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#binaryFile").removeClass("opacity00");
					$(".fa-cog").addClass("fa-spin");
					$("#dotClassFile").removeClass("opacity00").hide().slideDown(2000, function() {
						$(".fa-cog").removeClass("fa-spin");
						$(".loading").removeClass("loading");
						$(".fa-cog").parent().addClass("opacity00");
						$("#dotClassFile img").popover({
							placement: "left",
							viewport: $("#binaryFile"),
							html: true,
							content: "The loaded class acts as the <span class='ct-code-b-yellow'>blueprint</span> or a " 
										+ "<span class='ct-code-b-yellow'>template</span> to create <span class='ct-code-b-yellow'>instances</span>" 
										+ " of <span class='ct-code-b-yellow'>objects</span>.",
						}).popover('show')
					});
				});
			break;
			
			case "objsDeclaration":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#objsDeclaration").removeClass("opacity00");
					var text = "";
					if (introjs._currentStep == 2) {
						$(".introjs-tooltip").css("min-width", "300px");
						text = "When we want to create an <span class='ct-code-b-yellow'>instance</span> " 
								+ "of a <span class='ct-code-b-yellow'>class</span>, we use a keyword called <span class='ct-code-b-yellow'>new</span>." 
								+ "<br/><br/> For example : <br/><span style='font-family: monospace; font-weight: bold'>" 
								+ "Student st1 = <span class='ct-code-b-yellow'>new</span> Student(\"Ganga\", 25);</span>";
					} else {
						text = "Any number of instances can be created for the same loaded class <b>(template)</b>.";
					}
					
					typing (".introjs-tooltiptext", text, function() {
						if (introjs._currentStep == 2) {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='objSt1()'>Next →</a>");
						} else {
							
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='objSt23()'>Next →</a>");
							
							/* $("#obj2").removeClass("opacity00").hide().fadeIn(1000);
							$("#obj3").removeClass("opacity00").hide().fadeIn(1000, function() {
								$("#obj2").effect("highlight", {color: 'yellow'}, 500);
								$("#obj3").effect("highlight", {color: 'yellow'}, 500, function() {
									$(".introjs-nextbutton").show();
								});
							}); */
						}
					});
				});
			break;
			
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-tooltip").css("min-width", "200px");
				$(".introjs-helperLayer").one("transitionend", function() {
					if (introjs._currentStep == 1) {
						$("#animationDiv").removeClass("opacity00");
						var text = "During the execution <span class='ct-code-b-yellow'>Student.class</span> file is loaded into memory.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='classLoading()'>Next →</a>");
						});
					} else if (introjs._currentStep == 3) {
						$("#objSt1").removeClass("opacity00").hide().fadeIn(1000, function() {
							arrowRevealEffect("#line1", function() {
								setTimeout(function() {
									introjs.nextStep();
								}, 1000);
							});
						});
					} else {
						$("#obj2").effect("highlight", {color: 'yellow'}, 500, function() {
							$("#dotClassFile").effect("highlight", {color: 'yellow'}, 500, function() {
								$("#objSt2").removeClass("opacity00").hide().fadeIn(1000, function() {
									arrowRevealEffect("#line2", function() {
										
										$("#obj3").effect("highlight", {color: 'yellow'}, 500, function() {
											$("#dotClassFile").effect("highlight", {color: 'yellow'}, 500, function() {
												$("#objSt3").removeClass("opacity00").hide().fadeIn(1000, function() {
													arrowRevealEffect("#line3", function() {
														
														setTimeout(function() {
															introjs.nextStep();
														}, 1000);
														
													});
												});
											});
										});
										
									});
								});
							});
						});
						/* $("#objSt2").removeClass("opacity00").hide().fadeIn(1000);
						$("#objSt3").removeClass("opacity00").hide().fadeIn(1000, function() {
							arrowRevealEffect("#line2");
							arrowRevealEffect("#line3", function() {
								setTimeout(function() {
									introjs.nextStep();
								}, 1000);
							});
						}); */
					}
				});
				break;
				
			case "restart":
				$(".introjs-nextbutton").hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#restart").removeClass("opacity00");
					var text = "Click here to restart.";
					typing(".introjs-tooltiptext", text);
				});
				break;
		}
	});

	introjs.setOption('showStepNumbers', false);
	introjs.setOption('exitOnOverlayClick', false);
	introjs.setOption('exitOnEsc', false);
	introjs.setOption('keyboardNavigation', false);
	introjs.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
}

function userNextStep() {
	$(".user-btn").remove();
	introjs.nextStep();
}

function classLoading(){
	$(".user-btn").remove();
	$("#binaryFile").removeClass("opacity00");
	$(".fa-cog").addClass("fa-spin");
	$("#dotClassFile").removeClass("opacity00").hide().slideDown(2000, function() {
		$(".fa-cog").removeClass("fa-spin");
		$(".loading").removeClass("loading");
		$(".fa-cog").parent().addClass("opacity00");
		$("#dotClassFile img").popover({
			placement: "left",
			viewport: $("#binaryFile"),
			html: true,
			content: "The loaded class acts as the <span class='ct-code-b-yellow'>blueprint</span> or a " 
				+ "<span class='ct-code-b-yellow'>template</span> to create <span class='ct-code-b-yellow'>instances</span>" 
				+ " of <span class='ct-code-b-yellow'>objects</span>.",
		}).popover('show');
		$(".introjs-nextbutton").show();
	});
}

function objSt1() {
	$(".user-btn").remove();
	$("#obj1").removeClass("opacity00").hide().fadeIn(1000, function() {
		$("#obj1").effect("highlight", {color: 'yellow'}, 500, function() {
			$(".introjs-nextbutton").show();
		});
	});
}

function objSt23() {
	$(".user-btn").remove();
	$("#obj2").removeClass("opacity00").hide().fadeIn(1000, function() {
		$("#obj2").effect("highlight", {color: 'yellow'}, 500);
	});
	
	$("#obj3").removeClass("opacity00").hide().fadeIn(1000, function() {
		$("#obj3").effect("highlight", {color: 'yellow'}, 500, function() {
			$(".introjs-nextbutton").show();
		});
	});
}

function arrowRevealEffect(selector, callBackFunction) {
	var x2 = $(selector).attr("x2");
	var y2 = $(selector).attr("y2");
	$(selector).attr("x2", $(selector).attr("x1"));
	$(selector).attr("y2", $(selector).attr("y1"));
	$(selector).show();
	TweenMax.to(selector, 1, {attr:{x2 : x2, y2 : y2}, onComplete:function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

function typing(selector, text, callBackFunction) {
	$(selector).typewriting(text, {
		"typing_interval" : typingSpeed,
		"cursor_color" : 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}
</script>
</head>
<body>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading'>Difference between Class and Object</h4>
	</div>
	
	<div class='col-xs-12 margin-top-20'>
		<div class='col-xs-offset-1 col-xs-10 box-border' style="padding: 15px;">
			<div class='col-xs-4 padding0 margin-top-20'>
			<pre class='creampretab4' id='classDeclaration'><span class='keywords'>public</span> <span class='keywords'>class</span> Student {
	<span class='keywords'>private</span> String <span class='variables'>name</span>;
	<span class='keywords'>private</span> <span class='keywords'>int</span> <span class='variables'>id</span>;
					
	<span class='keywords'>public</span> Student(String name, <span class='keywords'>int</span> id) {
		<span class='keywords'>this</span>.<span class='variables'>name</span> = name;
		<span class='keywords'>this</span>.<span class='variables'>id</span> = id;
	}
}</pre>

<pre class='creampretab4 margin-top-20 opacity00' id='objsDeclaration'>


	<span id='obj1' class='opacity00'>Student st1 = <span class='keywords'>new</span> Student(<span class='variables'>"Ganga"</span>, 25);</span>
	
	<span id='obj2' class='opacity00'>Student st2 = <span class='keywords'>new</span> Student(<span class='variables'>"Yamuna"</span>, 26);</span>
	<span id='obj3' class='opacity00'>Student st3 = <span class='keywords'>new</span> Student(<span class='variables'>"Saraswati"</span>, 27);</span>

	
</pre></div>

	<div class='col-xs-offset-2 col-xs-6 padding0 box-border opacity00' id='animationDiv'>
		<div class='col-xs-12 padding0 margin-top-20'>
			<div class='col-xs-offset-7 col-xs-5 opacity00' id='objSt1'>
				<div class='col-xs-12 obj-name'>st1</div>
				<div class='obj col-xs-12 padding0'>
					<div> name = "Ganga"</div>
					<div> id = 25</div>
				</div>
			</div>
		</div>		
		<div class='col-xs-12 padding0 margin-top-20'>
			<div class='col-xs-offset-1 col-xs-3 text-center opacity00' id='binaryFile'>
				<div class='col-xs-12 padding0'>
					<i class="fa fa-cog" aria-hidden="true"></i>
					<span class='loading'>loading</span>
				</div>
				
				<div class='col-xs-12 padding0 opacity00' id='dotClassFile'>
					<img alt="binary-obj-file" src="images/binary.png" style="width: 75%;">
					<div class='col-xs-12 padding0' style="font-weight: bold; font-family: monospace;">Student.class</div>
				</div>
			</div>
			<div class='col-xs-offset-3 col-xs-5 opacity00' id='objSt2'>
				<div class='col-xs-12 obj-name'>st2</div>
				<div class='obj col-xs-12 padding0'>
					<div> name = "Yamuna"</div>
					<div> id = 26</div>
				</div>
			</div>
		</div>
		<div class='col-xs-12 padding0 margin-top-20'>
			<div class='col-xs-offset-7 col-xs-5 opacity00' id='objSt3'>
				<div class='col-xs-12 obj-name'>st3</div>
				<div class='obj col-xs-12 padding0'>
					<div> name = "Saraswati"</div>
					<div> id = 27</div>
				</div>
			</div>
		</div>
		
		<svg class="svg-css" id="mySvg">
			<marker style="fill: gray;" orient="auto" markerHeight="5" markerWidth="5" refY="2.5" refX="4" id="myMarker">
				<path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
			</marker>
			<line x1="27%" y1="50%" x2="60%" y2="25%" id="line1" class="svg-line"/>
			<line x1="27%" y1="53%" x2="60%" y2="53%" id="line2" class="svg-line"/>
			<line x1="27%" y1="56%" x2="60%" y2="86%" id="line3" class="svg-line"/>
		</svg>
		
		<div class='text-center' style="font-weight: bold; font-family: monospace;">Memory in JVM</div>
	</div>
		</div>
	</div>
	<div class="text-center margin-top-20 col-xs-12">
		<a class="btn btn-warning opacity00" id="restart">Restart</a>
	</div>
</body>
</html>