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

<title>relational-operators</title>
<style type="text/css">
.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 165px;
}

.animation-div-border {
	height: 320px;
	font-family: monospace;
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

.margin-top06 {
	margin-top: 6px;
}

.input-text {
	border: 2px solid orange;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.line-div {
	border: 1px solid gray;
}

.nextButton {
	background-color: green;
}

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
    width: 2%;
}

.reveal-right {
	position: relative;
	overflow: hidden;
	-moz-animation: reveal-right 1s ease;
	-moz-animation-fill-mode: forwards; 
}

.inputBox {
	height: 26px;
	width: 9%;
}

.inputWidth {
	width: 19%;
	text-align: center;
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
    /* color: #333;*/
    cursor: pointer; 
    display: inline-block;
    font: 11px sans-serif;
    padding: 3px;
}
.blinking-circle {
	border: 1px solid red;
	border-radius : 50%;
	padding: 2px 3px;
}

.padding0 {
	padding: 0;
}

#animationDiv {
	background-color: #eeeefe;
}

#operatorAnimation {
	background-color: #fffbf5;
	font-family: monospace;
}

#selectList {
	color: #FF308F;
	text-align: center;
}

.length-error-text {
	color: red;
}

.zIndex9999999 {
	z-index: 9999999;
	position: relative;
}

.ct-code-b-green {
	color: green;
    font-family: monospace;
    font-weight: bold;
}

.dropdown, .dropup {
    display: inline-block;
    position: relative;
}

.dropDown-btn {
    font-family: monospace;
    padding: 2px 8px;
}

ul {
	margin-top: 8px;
}

#initialize {
	font-family: monospace;
}

.padding3 {
	padding: 3px;
}
</style>
<script type="text/javascript">
var tl = new TimelineLite();
var firstVal = 0;
var secondVal = 0;
var next = 1;
$(document).ready(function() {
	$(".inputWidth").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		
		if ( e.which == 8 || e.which == 37 || e.which == 39 || e.which == 46) {
			$('.length-error-text').remove();
			return true;
		}
		
		if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
			$('.length-error-text').remove();	
		} 
		
		if($(this).val().length >= max) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Max length was restricted to 2 characters only.</div>");
			e.preventDefault();
		} 
		
		if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {

			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the integers.</div>");
			e.preventDefault();
		}
	})
	
	/* $("#selectList").on("change", function() {
		var value = $(this).val();
		if ($("#selectList").val() == "0") {
			console.log(" in the if condition of change.. ");
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the relational operator from the menu.</div>");
			$("#submit").attr("disabled", "disabled");
		} else {
			$('.length-error-text').remove();
			$("#submit").removeAttr("disabled");
		}
	}) */
	
	$(".inputWidth").bind("keyup", function() {
		console.log('in the bind...');
		//var select = $("#selectList option:selected").val();
		var select  = $('.active').text().trim();
		if (($("#firstNum").val().length != 0) && ($("#secondNum").val().length != 0)) {
			if (intro._currentStep == 1) {
				$(".introjs-nextbutton").show();
			} else if (select !== "--select--") {
				$("#submit").removeAttr("disabled");
			}
		} else {
			$(".introjs-nextbutton").hide();
			$("#submit").attr("disabled", "disabled");
		}
	})
	
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
						intro : "",
						position : "bottom",
						tooltipClass: "hide"
					},
					{
						element : "#initialize",
						intro : "",
						position : "right"
					},
					{
						element : "#selectDiv",
						intro : "",
						position : "right"
					},
					{
						element : "#operatorAnimation",
						intro : "",
						position : "right"
					},
					{
						element : "#animationDiv",
						intro : "",
						position : "right"
					}
				]
	})
	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		switch (ElementId) {
		case "initialize":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#animationDiv").removeClass("visibility-hidden");
				var text = "Enter <span class='ct-code-b-yellow'>integer</span> values.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				})
			});
		break;
		case "selectDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Select a <span class='ct-code-b-yellow'>relational</span> operator and click on <b>Evaluate</b> button.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
					$(".introjs-tooltipbuttons").append('<span class="next-button visibility-hidden">Next →</span>');
					nextClick();	
				})
			});
		break;
		case "operatorAnimation":
			$(".introjs-helperLayer").one("transitionend", function() {
				$('.introjs-nextbutton').hide();
				var text = "Evaluating...<ul><span id='charStep'></span></ul>";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').hide();
					relationalAnimation();
				});
			});
		break;
		case "animationDiv":
			
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Feel free to try other combinations to learn how <span class='ct-code-b-yellow'>relational operators</span> work.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
					$("#firstNum").val("");
					$("#secondNum").val("")
					$("#restart").removeClass("opacity00");
					$("#restart").addClass("zIndex9999999");
					$("#submit").attr('disabled','disabled');
				})
			});
		break;
		}
	})
	intro.start();
	$("#submit").attr('disabled','disabled');
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	
		$("#informationDiv").append("<ul><li class='opacity00'><span class='ct-code-b-green'>Relational and equality</span> operators are used to test or to compare two numeric values or"
				+" numeric expressions.They require <span class=''>two operands</span>.</li><li class='opacity00'><span class=''>When relational and equality</span> operators are"
				+" applied on the operands they produce an integer value. When ever the condition evaluates to <span class='ct-code-b-green'>false</span>"
				+" the return value is <span class='ct-code-b-green '>0</span>, when ever the condition evaluates to <span class='ct-code-b-green'>true</span> the return value is <span class='ct-code-b-green '>1</span>. These values are often referred to as logical values.</li>"
				+"<li  class='opacity00'>Relational Operators: <span class='ct-code-b-green '> > </span>, <span class='ct-code-b-green '> >= </span>,"
				+" <span class='ct-code-b-green '> < </span>, <span class='ct-code-b-green'> <= </span></li><li  class='opacity00'>Equality Operators: "
				+"<span class='ct-code-b-green '> == </span> (equal to), <span class='ct-code-b-green '>!=</span> (not equal to)</li></ul>");
	
		//tl.to()
		 tl.to($("#informationDiv li:eq(0)"), 1,  {opacity: 1, onComplete: function() {
			tl.to($("#informationDiv li:eq(1)"), 1, {opacity: 1, onComplete: function() {
				tl.to($("#informationDiv li:eq(2)"), 1, {opacity: 1, onComplete: function() {
					tl.to($("#informationDiv li:eq(3)"), 1, {opacity: 1, onComplete: function() {
						$("#informationDiv").addClass("zIndex9999999");
						intro.nextStep();
					}})
				}})
			}})
		}}) 
					
	$("#submit").click(function() {
		if (next > 1) {
			relationalAnimation();
		}
		if (next == 1) {
			console.log(" in the next step " + next)
			next = 2;
			intro.nextStep();
		}
	});
					
	$("#restart").click(function() {
		location.reload(true);
	})	
	
	$('.dropdown').on( 'click', '.dropdown-menu li a', function() { 
		$('.dropdown-menu').css({'min-width':$(".dropdown").width()})
	   var target = $(this).html();
	   $(this).parents('.dropdown-menu').find('li').removeClass('active');
	   $(this).parent('li').addClass('active');
	   $(this).parents('.dropdown-select').find('.dropdown-toggle').html(target + ' <span class="caret"></span>');
	   
	   var value = $('.active').text().trim();
		if (value === "--select--") {
			console.log(" in the if condition of change.. ");
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the relational operator from the menu.</div>");
			$("#submit").attr("disabled", "disabled");
		} else if ($("#firstNum").val().length == 0 || $("#secondNum").val().length == 0) {
			$("#submit").attr("disabled", "disabled");
		} else {
			$('.length-error-text').remove();
			//$("#selectSub").html(options[value]);
			$("#submit").removeAttr("disabled");
		}
	});
})



	function nextClick() {
	$(".next-button").click(function() {
		 
			$(".next-button").hide();
			$("#operatorAnimation > div div:nth-child(2)").removeClass('visibility-hidden');
			flipEffect("#num1Val", $("#firstNum").val(), function() {
				flipEffect("#num2Val", $("#secondNum").val(), function() {
					
					//var operator = $("#selectList option:selected").text().trim();
					var operator = $('.active').text().trim();
					var first = $("#num1Val").text().trim();
					var second=	$("#num2Val").text().trim();
					if (operator === ">") {
						console.log(" in the " + operator);
						$("#result").text(Number(parseInt(first) > parseInt(second)));
					} else if (operator === "<") {
						$("#result").text(Number(parseInt(first) < parseInt(second)));
					} else if (operator === ">=") {
						$("#result").text(Number(parseInt(first) >= parseInt(second)));
					} else if (operator === "<=") {
						$("#result").text(Number(parseInt(first) <= parseInt(second)));
					} else if (operator === "==") {
						$("#result").text(Number(parseInt(first) == parseInt(second)));
					} else if (operator === "!=") {
						$("#result").text(Number(parseInt(first) != parseInt(second)));
					}
					$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
					
					$("button").removeAttr('disabled');
					$("#boolean").text(Boolean(parseInt($("#result").text())));
					$("#booleanSpan").removeClass("opacity00");
					if (next == 2) {
						setTimeout(function() {
							//$('.introjs-nextbutton').show();
							//$('.introjs-nextbutton').hide();
							var text = "Since the condition <span class='ct-code-b-yellow'>"+$("#firstNum").val()+" "+$('.active').text().trim()+" "+$("#secondNum").val()+"</span>"
										+" evaluates to <span class='ct-code-b-yellow'>"+$("#boolean").text()+"</span> we get the result as"
										+" <span class='ct-code-b-yellow'>"+$("#result").text()+"</span>.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							//	relationalAnimation();
							});
							next++;
						}, 1000);
					}
				});	
			});
		
	});
	}

function relationalAnimation() {
	
	$("#operatorAnimation").empty();
	$("button").attr('disabled','disabled');
	$('.length-error-text').remove();
	$("#operatorAnimation").append("<div class='col-xs-offset-3'><div><span><b>int</b></span> <span>result</span> = <span id='exp1'>num1</span><span class='select-operator ct-code-b-green'></span><span id='exp2'>num2</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'>int</span> <span class='visibility-hidden'>result  </span> = <span id='num1Val' class='position-relative'>num1</span><span class='select-operator ct-code-b-green'></span><span id='num2Val' class='position-relative'>num2</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'>int</span> <span class='visibility-hidden'>result  </span> = <span></span><span id='result' class='position-relative'></span> <span class='opacity00' id='booleanSpan'>(<span id='boolean' class='ct-code-b-green'></span>)</span></div></div>");
	//var operator = $("#selectList option:selected").text();
	var operator = " "+$('.active').text().trim()+" ";
	$(".select-operator").text(operator);
	var firstVal = $("#firstNum").val();
	var secondVal = $("#secondNum").val();
	$(".next-button").click();
	
}

function typing(selector, text, callBackFunction) {
		var typingSpeed = 15;
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
			<span class="label label-default ct-demo-heading">Relational Operators</span>
		</h2>
		<div id="informationDiv" class="col-xs-offset-2 col-xs-8 border margin-top20 background-color padding0"></div>
		<div class="col-xs-offset-4 col-xs-4 border margin-top20 visibility-hidden" id="animationDiv">
		<div class="col-xs-12 padding0">
			<div class="col-xs-12 padding0">
				<div class="col-xs-12">
					<div class="margin-top06" id="initialize"><span>int&nbsp;</span><span>num1</span> = <span><input maxlength=2 type="text" placeholder="eg:6" id='firstNum' class='inputWidth'></span>,
				 	<span>num2</span> = <span><input maxlength=2 type="text" id='secondNum' placeholder="eg:6" class='inputWidth'></span>;</div>
				 </div>
				 <div class="col-xs-12 margin-top06" id="selectDiv">
					<div class="col-xs-12 margin-top06"><span>Relational Operator:</span>
				 		<%-- <span>
					 			<select id='selectList'>
					 				<option value="0" selected>--select--</option>
									<option value=">"> > </option>
									<option value="<"> < </option>
									<option value=">="> >= </option>
									<option value="<="> <= </option>
									<option value="=="> == </option>
									<option value="!="> != </option>
								</select>
							</span> --%>
							<div class="dropdown dropdown-select">
							    <button class="btn btn-primary dropdown-toggle dropDown-btn" type="button" data-toggle="dropdown">--select--
							    <span class="caret"></span></button>
							    <ul class="dropdown-menu" style="text-align: center;">
							      <li><a class="dropdown-item"> > </a></li>
							      <li><a class="dropdown-item"> < </a></li>
							      <li><a  class="dropdown-item"> >= </a></li>
							      <li><a  class="dropdown-item"> <= </a></li>
							      <li><a class="dropdown-item"> == </a></li>
							      <li><a class="dropdown-item"> != </a></li>
							    </ul>
						  </div>
					</div>
					<div class='col-xs-12 text-center' style="margin-top: 4px; margin-left: 15px;"><button type="button" id='submit'  class="btn btn-success padding3">&nbsp;Evaluate&nbsp;</button></div>
				</div>
				</div>
				<div class="col-xs-12">
					<div id='operatorAnimation' class='margin-top20' style='height:135px;border:1px solid gray;margin-bottom: 10px;border-radius: 10px;'></div>
				</div>	
			</div>
		</div>
		<!-- <div class="col-xs-12 margin-top20 text-center">
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
		</div> -->
	</div>
</body>
</html>