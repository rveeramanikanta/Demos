<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/introjs.css">
<link rel="stylesheet" href="css/introjs-ct.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="js/intro.js"></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>
<title>All Servlet Objects</title>


<style type="text/css">
.margin-top-20 {
	margin-top: 20px; 
}

.margin-top-60 {
	margin-top: 60px; 
}

.padding0 {
	padding: 0;
}

.box-border {
	border: 2px solid gray;
	border-radius: 8px;
}

#contextObj {
	background-color: #2cab05;
	color: white;
	font-size: 25px;
	font-family: monospace;
	font-weight: bold;
	padding: 5px;
}

#servletContainerDiv {
	min-height: 300px;
	padding: 20px;
}

.servlet-box {
	min-width: 25%;
	max-width: 27%;
	display: inline-block;
	margin: 0 2%;
	min-height: 150px;
	padding: 10px 0; 
}

.req-div {
	background-color: rgba(0, 39, 255, 0.46);
	color: white;
}

.res-div {
	background-color: #376898;
	color: white;
}

.user-btn {
	background-color: green;
}

.opacity03 {
	opacity: 0.3;
}

.zIndex {
	position: relative;
	z-index: 9999999;
}

.servlet-div {
    background-color: #0e7e62;
    color: white;
}

.config-div {
    background-color: #5a5a29;
    color: white;
}
</style>


<script type="text/javascript">
var typingSpeed = 5;
var introjs;
var tl = new TimelineLite();
var tooltipCount = 1;

$(document).ready(function() {
	initIntroJS();
	$('#restart').click(function() {
		location.reload();
	});
});

function initIntroJS() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#contextObj",
			intro : "",
			position : "right",
		}, {
			element : "#servletContainerDiv",
			intro : "",
			position : "bottom",
			tooltipClass : "hide"
		}, {
			element : "#servlet1",
			intro : "",
			position : "left",
		}, {
			element : "#servlet2",
			intro : "",
			position : "bottom-middle-aligned",
		}, {
			element : "#servlet3",
			intro : "",
			position : "right",
		}, {
			 element : "#restart",
			 intro : "",
			 position : "right",
		}]
	});
	introjs.onafterchange(function(targetElement) {
		introjs.refresh();
		var elementId = targetElement.id;
		$(".duplicate-tooltip").removeClass("opacity00");
		switch (elementId) {
			case"contextObj":
				$('.introjs-nextbutton').hide();
				
				var text = "<span class='ct-code-b-yellow'>ServletContext</span> is an application level object, it exists as one " 
							+ "object per <b>web application</b>. This object is returned when " 
							+ "<span class='ct-code-b-yellow'>getSevletContext()</span>" 
							+ " is called.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				});
				break;
				
				
			case "servletContainerDiv":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					/* var text = "Let us assume <span class='ct-code-b-yellow'>web container</span> has three <b>servlet objects</b>.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='initServlet()'>Next →</a>");
					}); */
					
					setTimeout(function() {
						introjs.nextStep();
					}, 1000);
				});
				break;
				
			case "servlet1":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					initRequest();
				});
				break;
				
			case "servlet2":
				//$(".duplicate-tooltip").removeClass("opacity00");
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					initResponse();
				});
				break;
				
			case "servlet3":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					initConfig();
				});
				break;
				
				
			case "restart":
				$(".introjs-nextbutton").hide();
				$(".opacity03").removeClass("opacity03");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#restart").removeClass("opacity00");
					var text = "Click here to restart.";
					typing($(".introjs-tooltipReferenceLayer .introjs-tooltiptext"), text);
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

function initServlet() {
	$(".user-btn").remove();
	tl.to(".servlet-box", 1, {opacity: 1, onComplete: function() {
		$(".servlet-box").removeClass("opacity00");
		$('.introjs-nextbutton').show();
	}});
}


function initRequest() {
	$(".servlet-box .box-border").addClass("opacity03");
	$(".req-div").removeClass("opacity03");
	$(".servlet-box").addClass("zIndex").css("background-color", "rgba(255,255,255,.9)");
	var text = "<span class='ct-code-b-yellow'>request</span> : A request object is an object of either the " 
		+ "<span class='ct-code-b-yellow'>HTTPServletRequest</span> or <span class='ct-code-b-yellow'>ServletRequest</span>" 
		+ " interface. It holds the data related to the request.";
		
	$(".introjs-tooltipReferenceLayer .introjs-tooltiptext").append("<div></div>");
	typing($(".introjs-tooltipReferenceLayer .introjs-tooltiptext > div:last-child"), text, function() {
		$('.introjs-nextbutton').show();
		generateDuplicateTooltip();
	});
}

function initResponse() {
	$(".servlet-box .box-border").addClass("opacity03");
	$(".res-div").removeClass("opacity03");
	var text = "<span class='ct-code-b-yellow'>request</span> : A response object is an object of either the " 
		+ "<span class='ct-code-b-yellow'>HTTPServletResponse</span> or <span class='ct-code-b-yellow'>ServletResponse</span>" 
		+ " interface. It is created by the by the servlet container and it is passed as an " 
		+ "argument to servlet service <span class='ct-code-b-yellow'>method</span>. " 
		+ " It helps the servlet in sending a response to client.";
		
	$(".introjs-tooltipReferenceLayer .introjs-tooltiptext").append("<div></div>");
	typing($(".introjs-tooltipReferenceLayer .introjs-tooltiptext > div:last-child"), text, function() {
		$('.introjs-nextbutton').show();
		generateDuplicateTooltip();
	});
}

function initConfig() {
	$(".servlet-box .box-border").addClass("opacity03");
	$(".config-div").removeClass("opacity03");
	
	var text = "<span class='ct-code-b-yellow'>ServletConfig</span> : ServletConfig object is implemanted " 
			+ "by the servlet container to initialize to a single servlet.";
		
	$(".introjs-tooltipReferenceLayer .introjs-tooltiptext").append("<div></div>");
	typing($(".introjs-tooltipReferenceLayer .introjs-tooltiptext > div:last-child"), text, function() {
		$('.introjs-nextbutton').show();
		generateDuplicateTooltip();
	});
}

function generateDuplicateTooltip() {
	$("body").append("<div id='newTooltip" + tooltipCount + "' class='duplicate-tooltip opacity00'>" 
					+ $(".introjs-tooltipReferenceLayer").html() + "</div>");
	$("#newTooltip" + tooltipCount).offset({
		"top" : $(".introjs-tooltipReferenceLayer").offset().top,
		"left" : $(".introjs-tooltipReferenceLayer").offset().left
	}).css({"width" : $(".introjs-tooltipReferenceLayer").css("width"),
		 "height" : $(".introjs-tooltipReferenceLayer").css("height"),
		 "position" : "relative",
		 "z-index" : "9999999"
 	}).find(".introjs-tooltipbuttons").remove();
	tooltipCount++;
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
		<h4 class='label ct-demo-heading'>Servlet Objects</h4>
	</div>
	
	<div class="text-center margin-top-20 col-xs-12">
		<a class="btn btn-warning opacity00" id="restart">Restart</a>
	</div>
	
	<div class='col-xs-12 text-center padding0 margin-top-20'>
		<div class='col-xs-12 text-center padding0 ' style="font-size: 16px; font-weight: bold; font-family: monospace;">Web Container</div>
	
		<div class='col-md-offset-2 col-md-8 col-xs-offset-1 col-xs-10 padding0 box-border' id='servletContainerDiv'>
			<div class='col-xs-12 text-center padding0 '
				style="font-size: 16px; font-weight: bold; font-family: monospace;">Servlet Container/Servlet Engine</div>

			<div class='col-xs-12 padding0 margin-top-20' id='contextObjDiv'>
				<span id='contextObj' class='box-border'>ServletContext Object</span>
			</div>
			
			<div class='col-xs-12 padding0 margin-top-60' style="font-family: monospace; font-weight: bold;">
				<div class='servlet-box box-border' id='servlet1'>
					<div class='col-xs-12 req-res-div padding0'>
						<div class='col-xs-6'>
							<div class='box-border req-div' style="padding: 5px;">request</div>
						</div>
						
						<div class='col-xs-6'>
							<div class='box-border res-div' style="padding: 5px;">response</div>
						</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div class='box-border servlet-div' style="padding: 5px;">Servlet1</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div id='config1' class='box-border config-div' style="padding: 5px;">ServletConfig</div>
					</div>
				</div>
				<div class='servlet-box box-border' id='servlet2'>
					<div class='col-xs-12 req-res-div padding0'>	
						<div class='col-xs-6'>
							<div class='box-border req-div' style="padding: 5px;">request</div>
						</div>
						
						<div class='col-xs-6'>
							<div class='box-border res-div' style="padding: 5px;">response</div>
						</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div class='box-border servlet-div' style="padding: 5px;">Servlet2</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div id='config2' class='box-border config-div' style="padding: 5px;">ServletConfig</div>
					</div>
				</div>
				<div class='servlet-box box-border' id='servlet3'>
					<div class='col-xs-12 req-res-div padding0'>
						<div class='col-xs-6'>
							<div class='box-border req-div' style="padding: 5px;">request</div>
						</div>
						
						<div class='col-xs-6'>
							<div class='box-border res-div' style="padding: 5px;">response</div>
						</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div class='box-border servlet-div' style="padding: 5px;">Servlet3</div>
					</div>
					
					<div class='col-xs-12 margin-top-20'>
						<div id='config3' class='box-border config-div' style="padding: 5px;">ServletConfig</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>