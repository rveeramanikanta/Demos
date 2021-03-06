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
<title>arithmetic-operators</title>
<style type="text/css">
.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 335px;
}

.animation-border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 285px;
}

.border > ul {
	margin-top: 10px;
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
	/* width: 40px; */
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

.ct-code-b-red {
	color: red;
    font-family: monospace;
    font-weight: bold;
}

.drop-down {
	min-width: 92px;
	text-align: center;
}

tr, td, th {
	border: 1px solid gray;
}

th {
    background-color: black;
    color: white;
}

.dropdown, .dropup {
    display: inline-block;
    position: relative;
}

/* .dropdown-menu {
	min-width: 0px;
} */

.dropDown-btn {
	padding: 2px 8px;
	font-family: monospace;
}

.common-expression {
	background-color: black;
	border: 2px solid green;
	border-radius: 6px;
	color: white;
	padding: 2px 2px 3px 5px;
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
var first;
var second;
$(document).ready(function() {
	
	$(".inputWidth").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		
		if ( e.which == 8 || e.which == 37 || e.which == 39 || e.which == 46) {
			$('.length-error-text').remove();
			return true;
		}
		
		if($(this).val().length >= max) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Max length was restricted to "+ max +" characters only.</div>");
			//e.preventDefault();
			return false;
		} 
		
		
		 if ($("#selectType").val() == "int") {
			 //$('.length-error-text').remove();
			 if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
				$('.length-error-text').remove();	
			} 
			
			if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {
				$('.length-error-text').remove();
				$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the integers.</div>");
				e.preventDefault();
			} 
		
		} 
		 
		 if ($("#selectType").val() == "float") {
				if (e.keyCode == 190 || e.keyCode == 110) {
					$('.length-error-text').remove();
					return true;
				}
				
				if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
					$('.length-error-text').remove();	
				} 
				
				if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {
	
					$('.length-error-text').remove();
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the Float.</div>");
					e.preventDefault();
				}
		} 
		
		
		 if ($("#selectType").val() == "char") {
			 
				if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 106)) {
					$('.length-error-text').remove();
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the 1 Character.</div>");
					e.preventDefault();
				}
				
		} 
		 
	})
	
	
	$("#selectType").on("change", function() {
		console.log(" select option changed..");
		$("#charStep > li").remove();
		$(".inputWidth").val("");
		var type = $("#selectType").val();
		$(".dataType").text(type);
		if (type === "int") {
			repeatSteps = true;
			$("#firstNum").attr({'placeholder':'eg: 5'})
			$("#secondNum").attr({'placeholder':'eg: 6'})
			$("#typeChange").text("integer");
			$(".inputWidth").attr("maxlength","2");
		} else if (type === "char") {
			repeatSteps = false;
			$("#var1, #exp1").text("char1");
			$("#var2, #exp2").text("char2");
			$("#typeChange").text("char");
			$("#firstNum").attr({'placeholder':'eg: a'})
			$("#secondNum").attr({'placeholder':'eg: b'})
			$(".inputWidth").attr("maxlength","1");
		} else if (type === "float") {
			$("#var1, #exp1").text("num1");
			$("#var2, #exp2").text("num2");
			$("#firstNum").attr({'placeholder':'eg: 5.5'})
			$("#secondNum").attr({'placeholder':'eg: 6.6'})
			$("#typeChange").text("float");
			$(".inputWidth").attr("maxlength","3");
		}
	})
	
	/* $("#selectList").on("change", function() {$('.active').text().trim()
	//	$("#selectList").val("0").change();
		var value = $(this).val();
		if ($("#selectList").val() == "0") {
			console.log(" in the if condition of change.. ");
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the relational operator from the menu.</div>");
			$("#submit").attr("disabled", "disabled");
		} else {
			$('.length-error-text').remove();
			//$("#selectSub").html(options[value]);
			$("#submit").removeAttr("disabled");
		}
		
	}) */
	
	var count1 = 0;
	
	$(".inputWidth").bind("keyup", function(e) {
		//var select = $("#selectList option:selected").val();
		var select = $(".active").text().trim();
		
		if ($("#firstNum").val().startsWith('.') || $("#firstNum").val().endsWith('.')) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter valid Float value.</div>");
			//e.preventDefault();
			return false;
		}
		
		if ($("#secondNum").val().startsWith('.') || $("#secondNum").val().endsWith('.')) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter valid Float value.</div>");
			return false;
		}
		
		if (($("#firstNum").val().length != 0) && ($("#secondNum").val().length != 0)) {
			if (intro._currentStep == 1) {
				$(".introjs-nextbutton").show();
			} else /* if (select !==0){ */
				if (select !== "--select--"){
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
				var text = "Enter <span id='typeChange' class='ct-code-b-yellow'>integer</span> values.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				})
			});
		break;
		
		case "selectDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Select an <span class='ct-code-b-yellow'>arithmetic</span> operator and click on <b>Evaluate</b> button.";
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
			repeatSteps = true;
			firstAttempt = false;
			showIt = false;
			nextShow = true;
			$(".introjs-helperLayer").one("transitionend", function() {
				intro.refresh();
					 var text = "Feel free to try other combinations to learn how <span class='ct-code-b-yellow'>arithmetic operators</span> work."
					+"<ul><span id='charStep'></span></ul>"; 
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
					$("#firstNum").val("");
					$("#secondNum").val("")
					$("#restart").removeClass("opacity00");
					$("#restart").addClass("zIndex9999999");
					arithmeticRepeatMethod();
				})
			});
		break;
		}
	})
	intro.start();
	//$("button").attr('disabled','disabled');
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
								
								$("#informationDiv").append("<ul><li class = 'opacity00'>The arithmetic operators are: "
									+" <span class='ct-code-b-green'>+</span>, <span class='ct-code-b-green'>-</span>, <span class='ct-code-b-green'>*</span>, <span class='ct-code-b-green'>/</span>, <span class='ct-code-b-green'>%</span></li>"
									+" <li class = 'opacity00'>The rules for the arithemetic operators are: "
									+" <div style='width:98%;margin-bottom: 10px;'><table>"
									+" <th style='width: 1%;'>Operators</th>"
									+" <th>Rules</th>"
									+" <tr><td><span> <span class='ct-code-b-green'>+</span> (Addition)</span><br><span> <span class='ct-code-b-green'>-</span> (Substraction)</span><br><span> <span class='ct-code-b-green'>*</span> (Multiplication)</span></td>"
												+"<td><span>Both sides of the operators <span class='ct-code-b-green'>+</span>, <span class='ct-code-b-green'>-</span> (or) <span class='ct-code-b-green'>*</span> should be numerical values.</span><br><span><b>For example: </b>In <span class='common-expression'>int <b>total</b> = x + y;</span><br><span>both <b>x</b> and <b>y</b> should be numbers.</span></span></td></tr>"
									+" <tr><td><span> <span class='ct-code-b-green'>/</span> (Division)</span></td><td><span>Division operator requires the second operand to be non-zero.</span>"
												+"<br><span><b>For example: </b>In <span class='common-expression'>int <b>z</b> = x / y;</span><br><span><b>y</b> should be non-zero.</span></span></td></tr>"
									+" <tr><td><span> <span class='ct-code-b-green'>%</span> (Modules)</span></td><td><span>While using <span class='ct-code-b-green'>%</span> (modules) operator both operands should be of integer values.<br> And the second operand must be non-zero.</span><span>"
												+"<br><span><b>For example: </b>In <span class='common-expression'>int <b>z</b> = x % y;</span><br><span>both <b>x</b> and <b>y</b> should be integers and <b>y</b> should be non-zero.</span></span>"
												+"<br><b>Note</b>: <span class='ct-code-b-green'>%</span> operator does not work with <b>float</b> values.</span></td></tr>"
									+" </table></div>"
									+" </li></ul>");
								
								tl.to($("#informationDiv li:eq(0)"), 1, {opacity : 1, onComplete: function() {
									tl.to($("#informationDiv li:eq(1)"), 1, {opacity : 1, onComplete: function() {
										$("#informationDiv").addClass("zIndex9999999");
										intro.nextStep();
										$('.dropdown-menu').css({'min-width':$(".dropdown").width()})
									}})
								}})
					
	$("#submit").click(function() {
		$("#charStep > li").remove();
		if (next > 1) {
			relationalAnimation();
		}
		if (next == 1) {
			console.log(" in the next step " + next);
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
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the arithmetic operator from the menu.</div>");
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


var repeatSteps = false;
var firstAttempt = true;
var showIt = true;
var nextShow = false;
	function nextClick() {
	$(".next-button").click(function() {
		$("#charStep > li").remove();
		 
			$(".next-button").hide();
			$("#operatorAnimation > div div:nth-child(2)").removeClass('visibility-hidden');
			
			var firstNum = $("#firstNum").val();
			var secondNum = $("#secondNum").val();
			
			if ($("#selectType").val() === "float") {
				 if (firstNum.indexOf('.') === -1) {
					 firstNum = firstNum + ".00";
				 }
				 
				 if (secondNum.indexOf('.') === -1) {
					 secondNum = secondNum + ".00";
				 }
				 
			 } 
			
			flipEffect("#num1Val", firstNum, function() {
				flipEffect("#num2Val", secondNum, function() {
					console.log("in the line 565");
					$("#result").removeClass("length-error-text");
					 if ($('.active').text().trim() === "%" && $("#selectType").val() === "float") {
						repeatSteps = false;
						$(".length-error-text").remove();
						console.log(" in the % and float...");
						$("#result").text("Error").addClass("length-error-text");
								$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
								
								var text = "<span class='length-error-text'>Error : </span><span class='ct-code-b-yellow'>%</span> operator is not applicable for"
											+" <span class=''>float</span> values."; 
								typing(".introjs-tooltiptext", text, function() {
									//$(".introjs-nextbutton").hide();
									if (nextShow) {
										setTimeout(function() {
											frequentStepText()
										}, 800)
									} else {
										
									}
								})
								
					} else  if (Math.floor(secondNum) === 0 && $("#selectType").val() !== "char") {
						
								if ($('.active').text().trim() === "%" || $('.active').text().trim() === "/") {
									$(".length-error-text").remove();
									repeatSteps = false;
									$("#result").text("Error").addClass("length-error-text");
									$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
										//$(".length-error-text").remove();
										var text = "<span class='ct-code-b-red'>Error</span> : The second operand of </span><span class='ct-code-b-yellow'>"+ $('.active').text().trim() +"</span>"
												+" operator must be non-zero.";
										typing(".introjs-tooltiptext", text, function() {
											//repeatSteps = false;
											if (nextShow) {
												setTimeout(function() {
													frequentStepText()
												}, 800)
											} else {
												
											}
										})
								} else  {
									repeatSteps = false;
									console.log("in the line 609")
									handlingExceptionAnimation()
								}
					} else {
						repeatSteps = false;
						console.log("in the line 613")
						handlingExceptionAnimation();
					}	
					
				if (repeatSteps) {
						console.log(" In the repeat Steps ************")
						 var text = "To know the working of another operator feel free to provide select datatype provide appropriate values and "
					 			+"select the operator to evaluate the result.<br/>";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").hide();
							$("#firstNum").val("");
							$("#secondNum").val("")
							$("#restart").removeClass("opacity00");
							$("#restart").addClass("zIndex9999999");
							arithmeticRepeatMethod();
						})
					
					}   
				});	
			});
		
	});
	}

	
	function frequentStepText() {
		/* var text = "To know the working of another operator feel free to provide select datatype provide appropriate values and "
 			+"select the operator to evaluate the result.<br/>";
		typing(".introjs-tooltiptext", text, function() { */
			$(".introjs-nextbutton").hide();
			$("#firstNum").val("");
			$("#secondNum").val("")
			$("#restart").removeClass("opacity00");
			$("#restart").addClass("zIndex9999999");
			arithmeticRepeatMethod();
	//})
	}
function handlingExceptionAnimation() {
	if ($("#selectType").val() === "char") {
		var text = "<li>Here we convert the character to the <span class='ct-code-b-yellow'>ASCII</span> value.</li>";
		$(".introjs-nextbutton").hide();
		typing("#charStep", text, function() {
			$(".introjs-nextbutton").hide();
			flipEffect("#num1Val", $("#num1Val").text().charCodeAt(0), function() {
				flipEffect("#num2Val", $("#num2Val").text().charCodeAt(0), function() {
					console.log("in the line 657");
					operatorEvaluationAnimaton(function() {
						var text = "<li>The result value of the <span class='ct-code-b-yellow'>char</span>"
								+" will convert into <span class='ct-code-b-yellow'>ASCII</span> code and"
								+" stores in a variable <span class='ct-code-b-yellow'>result</span>.</li>";
								$(".introjs-nextbutton").hide();
								typing("#charStep", text, function() {
									
									//if (repeatSteps) {
										console.log(" In the repeat Steps ************")
										$(".introjs-nextbutton").hide();
										setTimeout(function() {
											var text = "To know the working of another operator feel free to provide select datatype provide appropriate values and "
									 			+"select the operator to evaluate the result.<br/>"
											typing(".introjs-tooltiptext", text, function() {
												$(".introjs-nextbutton").hide();
												$("#firstNum").val("");
												$("#secondNum").val("")
												$("#restart").removeClass("opacity00");
												$("#restart").addClass("zIndex9999999");
												arithmeticRepeatMethod();
											})
										}, 800);
									if (firstAttempt) {
										$(".introjs-nextbutton").show();
									}
								});
					});
				})
			})
		});
	} else if ($("#selectType").val() === "float") {
		operatorEvaluationAnimaton(function() {
			gettingResult();
		});
	}  else if ($("#selectType").val() === "int") {
		operatorEvaluationAnimaton(function() {
			gettingResult();
		});
	} 
}


function gettingResult() {
	if (intro._currentStep == 3) {
		var text = "After the evaluation we get the result as <span class='ct-code-b-yellow'>"+ $("#result").text()+"</span>";
		typing(".introjs-tooltiptext", text, function() {
			 if (next == 2) {
					$('.introjs-nextbutton').show();
					next++;
				} 
		})
	}
}

function relationalAnimation() {
	$("#operatorAnimation").empty();
	//$("button").attr('disabled','disabled');
	$("#submit").attr('disabled','disabled');
	$('.length-error-text').remove();
	console.log(" in the relationalAnimation **********")
	var dataType = $("#selectType").val();
	$("#operatorAnimation").append("<div class='col-xs-offset-3'><div><span class=''><b class='dataType'>"+ dataType +"</b></span> <span>result</span> = <span id='exp1'>num1</span><span class='select-operator ct-code-b-green'></span><span id='exp2'>num2</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'><b class='dataType'>"+ dataType +"</b></span> <span class='visibility-hidden'>result  </span> = <span id='num1Val' class='position-relative'>num1</span><span class='select-operator ct-code-b-green'></span><span id='num2Val' class='position-relative'>num2</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'><b class='dataType'>"+ dataType +"</b></span> <span class='visibility-hidden'>result  </span> = <span></span><span id='result' class='position-relative'></span></div></div>");
	var operator = $("#selectList option:selected").text();
	//$(".select-operator").text(operator);
	var operator = " "+$(".active").text().trim()+" ";
	$(".select-operator").text(operator);
	var firstVal = $("#firstNum").val();
	var secondVal = $("#secondNum").val();
	$(".next-button").click();
}

function arithmeticRepeatMethod() {
	$("#operatorAnimation").empty();
	$("#submit").attr('disabled','disabled');
	$('.length-error-text').remove();
	console.log(" in the arithmeticRepeatMethod **********");
	var dataType = $("#selectType").val();
	$("#operatorAnimation").append("<div class='col-xs-offset-3'><div><span class=''><b class='dataType'>"+ dataType +"</b></span> <span>result</span> = <span id='exp1'>"+ $("#var1").text() +"</span><span class='select-operator ct-code-b-green'></span><span id='exp2'>"+$("#var2").text()+"</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'><b class='dataType'>"+dataType+"</b></span> <span class='visibility-hidden'>result  </span> = <span id='num1Val' class='position-relative'>num1</span><span class='select-operator ct-code-b-green'></span><span id='num2Val' class='position-relative'>num2</span></div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'><b class='dataType'>"+dataType+"</b></span> <span class='visibility-hidden'>result  </span> = <span></span><span id='result' class='position-relative'></span></div></div>");
	var operator = $("#selectList option:selected").text();
	//$(".select-operator").text(operator);
	var operator = " "+$(".active").text().trim()+" ";
	$(".select-operator").text(operator);
}

function operatorEvaluationAnimaton(callBackFunction) {
	
	//var operator = $("#selectList option:selected").text().trim();
	var operator = $(".active").text().trim();
	console.log("operator ::: ");
	console.log(operator);
	/*  if ($("#selectType").val() === "float") {
		 
	 }  */
	 
	 first = $("#num1Val").text().trim();
	 second = $("#num2Val").text().trim();
	if ($("#selectType").val() === "float") {
		if (operator === "+") {
			console.log(" in the " + operator);
			$("#result").text(Number(first) + Number(second));
		} else if (operator === "-") {
			$("#result").text(Number(first) - Number(second));
		} else if (operator === "%") {
			$("#result").text(Number(first) % Number(second));
		} else if (operator === "/") {
			$("#result").text((Number(first) / Number(second)).toFixed(6));
		} else if (operator === "*") {
			$("#result").text(Number(first) * Number(second));
		}
	} else {
		if (operator === "+") {
			console.log(" in the " + operator);
			$("#result").text((Number(first) + Number(second)));
		} else if (operator === "-") {
			$("#result").text(Number(first) - Number(second));
		} else if (operator === "%") {
			$("#result").text(Math.floor(Number(first) % Number(second)));
		} else if (operator === "/") {
			$("#result").text(Math.floor(Number(first) / Number(second)));
		} else if (operator === "*") {
			$("#result").text(Number(first) * Number(second));
		}
		
	}
	if ($("#selectType").val() === "float") {
		
		if ($("#result").text().indexOf('.') === -1) {
			$("#result").text($("#result").text() + '.00');
			$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
		} else {
			$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
		}
	} else {
		$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
	}
	
	$("button").removeAttr('disabled');
	/* if (next == 2) {
		$('.introjs-nextbutton').show();
		next++;
	} */
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
}

function typing(selector, text, callBackFunction) {
		var typingSpeed = 15;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			if (showIt) {
				$(".introjs-nextbutton").show();
			}
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
			<span class="label label-default ct-demo-heading">Arithmetic Operators</span>
		</h2>
		<div id="informationDiv" class="col-xs-offset-2 col-xs-8 border margin-top20 background-color padding0"></div>
		<div class="col-xs-offset-3 col-xs-5 animation-border margin-top20 visibility-hidden" id="animationDiv">
		<div class="col-xs-12 padding0">
			<div class="col-xs-12 padding0">
				<div class="col-xs-12">
					<div class="margin-top06" id="initialize"><!-- <span class='opacity00'>int&nbsp;</span> -->
					<span>Data type: </span>
					<span>
						<select id='selectType'>
					 				<!-- <option value="0" selected>--select--</option> -->
									<option value="int">int</option>
									<option value="char">char</option>
									<option value="float">float</option>
								</select>
					</span>
					<span id='var1'>num1</span> = <span><input maxlength=2 type="text" placeholder="eg:3" id='firstNum' class='inputWidth'></span>,
				 	<span id='var2'>num2</span> = <span><input maxlength=2 type="text" id='secondNum' placeholder="eg:3" class='inputWidth'></span>;</div>
				 </div>
				 <div class="col-xs-12 margin-top06" id="selectDiv">
					<div class="col-xs-12 margin-top06"><span>Arithmetic Operator:</span>
							<div class="dropdown dropdown-select">
							    <button class="btn btn-primary dropdown-toggle dropDown-btn" type="button" data-toggle="dropdown">--select--
							    <span class="caret"></span></button>
							    <ul class="dropdown-menu" style="text-align: center;">
							      <li><a class="dropdown-item"> + </a></li>
							      <li><a class="dropdown-item"> - </a></li>
							      <li><a  class="dropdown-item"> / </a></li>
							      <li><a  class="dropdown-item"> % </a></li>
							    </ul>
						  </div>							
					</div>
					<div class='col-xs-12 text-center' style="margin-top: 4px; margin-left: 15px;"><button type="button" id='submit' class="btn btn-success padding3">&nbsp;Evaluate&nbsp;</button></div>
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