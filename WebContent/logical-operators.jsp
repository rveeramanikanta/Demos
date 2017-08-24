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
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/font-awesome-animation.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="js/intro.js"></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>
<title>Logical-operators</title>
<style type="text/css">
.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 200px;
}

#animationDiv {
	/* height: 320px;
	font-family: monospace;*/
	border: 2px solid gray;
	border-radius: 15px;
	}

.table-border {
	border: 2px solid gray;
	padding: 4px 6px;
}

.background-color {
	background-color: lavender;
}

.margin-top20 {
	margin-top: 20px;
}

.input-text {
	/* width: 40px; */
	border: 2px solid orange;
	text-align: center;
	border-radius: 5px;
	width: 35%;
}

.line-div {
	border: 1px solid gray;
}

.nextButton {
	background-color: green;
}

.ct-code-b-green {
	color: green;
}

/* .ct-code-b-green {
	color: green;
	font-family: monospace;
	font-weight: bold;
} */

th {
	text-align: center;
}

table {
	table-layout: fixed;
	text-align: center;
	width: 100%;
}

td, th {
    padding: 2px;
   /*  width: 2%; */
}

.fontSize {
	font-size: 12px;
}

.reveal-right {
	position: relative;
	overflow: hidden;
	-moz-animation: reveal-right 1s ease;
	-moz-animation-fill-mode: forwards; 
}

@-moz-keyframes reveal-right {
	0%   {width: 0%;}
	100% {width: 100%;}
}

.position-relative {
	position: relative;
	display: inline-block;
}

.next-button {
	background-color: green !important; 
	border: 1px solid #d4d4d4;
    border-radius: 0.2em;
    /* color: #333;
    cursor: pointer; */
    display: inline-block;
    font: 11px sans-serif;
    padding: 3px;
}
.blinking-circle {
	border: 1px solid red;
	border-radius : 50%;
	padding: 2px 3px;
}

.display-none {
	display: none;
}

.operator-color {
	color: green;
}

.boolean-color {
	color: red;
}

.ofBrace {
	color: blue;
}

.zIndex {
	z-index: 9999999;
	position: relative;
}

.length-error-text {
	color: red;
}

.introjs-tooltip {
	min-width: 300px;
}
</style>
<script type="text/javascript">
var tl = new TimelineLite();
var firstVal = 0;
var secondVal = 0;
$(document).ready(function() {
	
	
	
	$(".inputWidth").on("keydown keyup", function(e) {
		$(".length-error-text").remove();
		if ($(this).val() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		//introjs.refresh();
		if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the integers.</div>");
			e.preventDefault();
		}
		if ($(this).val().length >= max) {
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Max Length 2 digits only</div>")
			e.preventDefault();
		}
	});
	
	
	intro =  introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [
					{
						element : "#informationDiv",
						position : "bottom",
						tooltipClass:"hide"
					},
					{
						element : "#inputDiv",
						intro : "",
						position : "right"
					},
					{
						element : "#animationDiv",
						intro : "",
						position : "right"
					},
					{
						element : "#restart",
						intro : "Click to restart.",
						position : "right",
						
					}
				]
	})
	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		switch (ElementId) {

		case "inputDiv":
			$("#" + ElementId).removeClass("visibility-hidden");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Enter <span class='ct-code-b-green'>integer</span> values in both the boxes."
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				});
			});
		break;	
		
		case "animationDiv":
			$("#" + ElementId).removeClass("visibility-hidden");
			firstVal = parseInt($("#firstNum").val());
			secondVal = parseInt($("#secondNum").val());
			$(".introjs-nextbutton").addClass("visibility-hidden");
			$(".introjs-tooltipbuttons").append('<span class="btn visibility-hidden next-button">Next →</span>');
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<span id='first'>Here, we can see different <span class='ct-code-b-green'>logical operators</span> with expressions.</span><ul><span id='amperson'></span></ul>";
				typing(".introjs-tooltiptext", text, function() {
					nextClick();
					$(".next-button").removeClass("visibility-hidden");
				});
			});
		break;
		
		case "restart":
			$(".introjs-nextbutton").hide();
			$("#informationDiv").removeClass("zIndex")
				$("#restart").text("Restart").removeClass("visibility-hidden");
		break;
		
		}
	})
	intro.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	
	$(".introjs-nextbutton").hide();
	$("#informationDiv").removeClass("visibility-hidden");
	 var text = "<ul><li>In addition to the <span class='ct-code-b-green'>relational and equality operators</span>, C has two <span class='ct-code-b-green'>binary logical"
		+" operators</span> and one <span class='ct-code-b-green'>unary logical operator</span>. They are :  </li>"
		+"<ol><li><span class='ct-code-b-green'>&&</span> - logical AND</li><li><span class='ct-code-b-green'>||</span> - logical OR</li><li><span class='ct-code-b-green'>!</span> - logical NOT</li></ol>"
		+"<li>The result of <span class='ct-code-b-green'>&&</span> is <span class='ct-code-b-green'>non-zero(true)</span> if and only if both operands are <span class='ct-code-b-green'>non-zero</span>;"
		+" otherwise, the result is <span class='ct-code-b-green'>zero(false)</span>.</li><li>The result of <span class='ct-code-b-green'>||</span> is <span class='ct-code-b-green'>zero(false)</span> if and only if both the"
		+" operators are <span class='ct-code-b-green'>zero</span>; otherwise, the result is <span class='ct-code-b-green'>non-zero(true)</span>.</li><li>The logical operator <span class='ct-code-b-green'>!(NOT)</span>"
		+" requires only one operand which represents a logical value <span class='ct-code-b-green'>0</span> or <span class='ct-code-b-green'>non-zero</span>.The result of"
		+" operation is <span class='ct-code-b-green'>non-zero</span> if and only if the operand is <span class='ct-code-b-green'>0</span>, otherwise the result is <span class='ct-code-b-green'>0</span>.</li></ul>"
		typing("#informationDiv", text, function() {
			$("#informationDiv").addClass("zIndex");
			intro.nextStep();
		}) 
	
	var isVisible = false;
	$("#restart").click(function() {
		location.reload(true);
	})
	
})


var next = 0;
	function nextClick() {
	$(".next-button").click(function() {
		
		 if (next == 0) {
			 $(".next-button").addClass("visibility-hidden");
			$("table tr:eq(1) td:eq(0)").removeClass("opacity00");
			setTimeout(function() {
			var text = "<li>Logical <span class='ct-code-b-yellow'>AND(&&)</span> : If both the operands"
						+" or expression are non-zero, then the condition becomes <span class='ct-code-b-yellow'>true</span>."
						+"If not it returns <span class='ct-code-b-yellow'>false</span>.</li><span id='lOR'></span>"
				typing("#amperson", text, function() {
					$(".next-button").removeClass("visibility-hidden");
				});
			},400);
		} else if (next == 1) {
			var isBoolean = (parseInt(firstVal) >= 16) && (parseInt(secondVal) == 25);
			$(".next-button").addClass("visibility-hidden");
			flipEffect($("table tr:eq(1) td:eq(0) span:eq(1)"),parseInt(firstVal), function() {
				  flipEffect($("table tr:eq(1) td:eq(0) span:eq(7)"), parseInt(secondVal), function() {
					  
					  $("table tr:eq(1) td:eq(1) > span").append("<span class='position-relative'><span>"+ (parseInt(firstVal) >= 16) +"</span> && <span>"+ (parseInt(secondVal) == 25) +"</span></span>")
						$("table tr:eq(1) td:eq(1) > span").fadeIn(600, function() {
							$("table tr:eq(1) td:eq(2) > span").text(Number((parseInt(firstVal) >= 16) && (parseInt(secondVal) == 25)));
							flipEffect($("table tr:eq(1) td:eq(1) > span :nth-child(1)"), isBoolean, function() {
								$("table tr:eq(1) td:eq(2) > span").fadeIn( 800, function() {
						    		$(".next-button").removeClass("visibility-hidden");
						    	})
							})
						})
				  })
				})
		} else if (next  == 2) {
			 $(".next-button").addClass("visibility-hidden");
				$("table tr:eq(2) td:eq(0)").removeClass("opacity00");
				setTimeout(function() {
					var text = "<li>Logical <span class='ct-code-b-yellow'>OR(||)</span> : If any of the two"
							+" operands or expression is non-zero, then the condition becomes <span class='ct-code-b-yellow'>true</span>"
							+" else returns <span class='ct-code-b-yellow'>false</span>.</li><span id='lNOT'></span>"
						typing("#lOR", text, function() {
							//$(".introjs-nextbutton").hide();
							$(".next-button").removeClass("visibility-hidden");
						});
					},400);
		} else if (next == 3) {
			$(".next-button").addClass("visibility-hidden");
			var isBoolean = (parseInt(firstVal) < 11) || (parseInt(secondVal) > 100);
			flipEffect($("table tr:eq(2) td:eq(0) span:eq(1)"),parseInt(firstVal), function() {
				  flipEffect($("table tr:eq(2) td:eq(0) span:eq(7)"), parseInt(secondVal), function() {
					  
					  $("table tr:eq(2) td:eq(1) > span").append("<span class='position-relative'><span>"+ (parseInt(firstVal) < 11) +"</span> || <span>"+ (parseInt(secondVal) > 100) +"</span></span>")
						$("table tr:eq(2) td:eq(1) > span").fadeIn(600, function() {
							$("table tr:eq(2) td:eq(2) > span").text(Number((parseInt(firstVal) < 11) || (parseInt(secondVal) > 100)));
							flipEffect($("table tr:eq(2) td:eq(1) > span :nth-child(1)"), isBoolean, function() {
								$("table tr:eq(2) td:eq(2) > span").fadeIn( 800, function() {
						    		$(".next-button").removeClass("visibility-hidden");
						    	})
							})
						})
				  })
				})
		} else if (next == 4) {
			$(".next-button").addClass("visibility-hidden");
			$("table tr:eq(3) td:eq(0)").removeClass("opacity00");
			setTimeout(function() {
				var text = "<li>Logical <span  class='ct-code-b-yellow'>NOT(!)</span> : It is used to reverse the logical state of its operand."
						+"If a condition is <span class='ct-code-b-yellow'>true</span>, then logical"
						+" <span class='ct-code-b-yellow'>NOT</span> operator will make it <span class='ct-code-b-yellow'>false</span>.</li>"
					typing("#lNOT", text, function() {
						//$(".introjs-nextbutton").hide();
						$(".next-button").removeClass("visibility-hidden");
					});
				},400);
		} else if (next == 5) {
			$(".next-button").hide();
			var isBoolean = !(parseInt(firstVal) <= 3);
			flipEffect($("table tr:eq(3) td:eq(0) span:eq(2)"),parseInt(firstVal), function() {
				$("table tr:eq(3) td:eq(1) > span").append("<span class='position-relative'><span>!</span>(<span>"+ (parseInt(firstVal) <= 3) +"</span>)</span>")
				$("table tr:eq(3) td:eq(1) > span").fadeIn(600, function() {
					$("table tr:eq(3) td:eq(2) > span").text(Number(!(parseInt(firstVal) <= 3)));
					flipEffect($("table tr:eq(3) td:eq(1) > span :nth-child(1)"), isBoolean, function() {
						$("table tr:eq(3) td:eq(2) > span").fadeIn( 800, function() {
							$(".introjs-nextbutton").removeClass("visibility-hidden");
				    	})
					})
				})
				
			})
		}
		next++;
	});
	}

function typing(selector, text, callBackFunction) {
		var typingSpeed = 40;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
	
function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}	
</script>
</head>
<body>
	<div class="col-xs-12">
		<h2 class="text-center">
			<span class="label label-default ct-demo-heading">Logical Operators</span>
		</h2>
		 <div class="margin-top20 text-center">
			<span class="btn btn-warning visibility-hidden" id="restart">restart</span>
		</div> 
		<div id="informationDiv" class="col-xs-offset-2 col-xs-8 border margin-top20 background-color visibility-hidden"></div>
		<div class="col-xs-12 margin-top20">
			<div class="col-xs-offset-5 col-xs-3 visibility-hidden" id="inputDiv">
					<span>A = <input type="text" id="firstNum" class="input-text inputWidth empty"	contenteditable="true" maxlength="2" placeholder="Number"></span>
					<span>&emsp; B = <input type="text" id="secondNum" class="input-text inputWidth empty"	contenteditable="true" maxlength="2" placeholder="Number"></span>
			</div>
		</div>
		<div class="col-xs-offset-4 col-xs-5 margin-top20 background-colr visibility-hidden" id="animationDiv">
			<table>
				<tbody>
					<tr>
						<th>Expression</th>
						<th>Interpretation</th>
						<th>Value</th>
					</tr>
					<tr class="fontSize">
						<td class="opacity00"><span class="ofBrace">(</span><span class="position-relative">A</span>&nbsp;<span class="operator-color">>=</span>&nbsp;
							<span>16</span><span class="ofBrace">)</span>&nbsp;<span class="operator-color">&&</span>&nbsp;
							<span class="ofBrace">(</span><span class="position-relative">B</span> 
							<span class="operator-color">==</span>
							<span>25</span><span class="ofBrace">)</span>
						</td>
						<td><span class="display-none boolean-color"></span></td>
						<td><span class="display-none"></span></td>
					</tr>
					<tr class="fontSize">
						<td class="opacity00 ">
						<span class="ofBrace">(</span><span class="position-relative">A</span>&nbsp; <span class="operator-color"> < </span> &nbsp;<span>11</span><span class="ofBrace">)</span>
						&nbsp;<span class="operator-color">||</span>&nbsp;
						<span class="ofBrace">(</span><span class="position-relative">B</span>&nbsp;<span class="operator-color">></span>&nbsp;<span>100</span><span class="ofBrace">)</span></td>
						<td><span class="display-none boolean-color"></span></td>
						<td><span class="display-none"></span></td>
					</tr>
					<tr class="fontSize">
						<td class="opacity00"><span class="operator-color"><b>!</b></span><span class="ofBrace">(</span><span class="position-relative">A</span>&nbsp;<span class="operator-color"> <= </span>&nbsp;<span>3</span><span class="ofBrace">)</span></td>
						<td><span class="display-none boolean-color"></span></td>
						<td><span class="display-none"></span></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
