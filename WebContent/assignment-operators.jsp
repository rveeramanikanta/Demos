
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
<title>assignment-operators</title>
<style type="text/css">
.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 120px;
}

#assignSpan {
	display: inline-block;
	width: 65%;
}

#animationDiv {
	border: 2px solid gray;
	border-radius: 15px;
}

#operatorAnimation {
	border: 1px solid gray;
	border-radius: 10px;
	height: 240px;
	margin-bottom: 10px;
	padding: 3px;
}

#animationMemory {
	border: 2px solid gray;
	border-radius: 10px;
	height: 97px;
	text-align: center;
}

#animationExp {
	height: 95px;
}

#allocate1, #allocate2 {
	display: inline-block;
	height: 28px;
}

.background-color {
	background-color: lavender;
}

.margin-top20 {
	margin-top: 20px;
}


.position-relative {
	position: relative;
	display: inline-block;
} 

.next-button {
	background-color: green !important;
	border: 1px solid #d4d4d4;
	border-radius: 0.2em;
	/*color: #333;
    cursor: pointer;*/
	display: inline-block;
	font: 11px sans-serif;
	padding: 3px;
}

.display-none {
	display: none;
}

.padding0 {
	padding: 0px;
}

.inputWidth {
	width: 17%;
	text-align: center;
}

.margin-top06 {
	margin-top: 6px;
}

.length-error-text {
	color: red;
}

.opacity00 {
	opacity: 0;
}

.memory-blk {
	background-color: lightblue;
	border: 1px solid blue;
	border-radius: 4px;
	display: inline-block;
	box-shadow: 2px 2px 0 0 blue;
	height: 28px;
	margin-left: 5px;
	width: 28px;
}

.margin-top10 {
	margin-top: 10px;
}

.margin-top27 {
	margin-top: 27px;
}

.layer {
	border: 2px solid red;
	display: inline-block;
	height: 40px;
	position: relative;
	text-align: center;
	width: 75px;
	z-index: 10000000;
}

.memory-based {
	border: 1px solid gray;
	display: inline-block;
	height: 21px;
	position: unset;
	width: 34px;
}

.panel {
	background-color: transparent;
	border-color: 2px solid rgb(51, 102, 255) !important;
	width: 76px !important;
	display: inline-block;
	position: relative;
	border-radius: 7px;
	/* z-index: 999999; */
}

.panel-primary>.panel-heading {
	border-color: rgb(51, 102, 255);
	color: #fff;
	/* padding: 5px 9px; */
	padding: 0;
	text-align: center;
	font-weight: bold;
	font-family: monospace;
}

.panel-primary {
	border-color: #337ab7;
	border-width: 2px;
}

.panel-body {
	height: 36px !important;
	background-color: rgba(244, 251, 252, 0.85);
	text-align: center;
	padding: 10px;
}

.panel-body>span {
}

.zIndex {
	z-index: 99999999;
	position: relative;
}

.font-size {
	font-size: 8px;
}

.expXY {
	border: 2px solid gray;
    height: 96px;
	border-radius: 5px;
}

.margin-left23 {
	margin-left: 23px;
}

.zIndex {
	z-index: 9999999;
}

#operatorExpX > div, #operatorExpY > div {
    margin-left: 65px;
}

.ct-code-b-green {
	color: green;
}
</style>
<script type="text/javascript">
var tl = new TimelineLite();
var firstVal = 25;
var secondVal = 11;
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
	
	
	var options = [
	              "<option value = 'none'>--</option>",
	               "<option value = '='> = </option>",
	               "<option value = '+='> += </option><option value = '-='> -= </option><option value = '/='> /= </option><option value = '*='> *= </option>",
	               "<option value = 'exp'>y%(x%10)</option>"
				];
	
	
	$("#selectAssign").on("change", function() {
		
		console.log('in the change function...');
		var value = $(this).val();
		if ($("#selectAssign").val() == "0") {
			console.log(" in the if condition of change.. ");
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the assignment operator from the menu.</div>");
			$("#submit").attr("disabled", "disabled");
		} else {
			$('.length-error-text').remove();
			console.log(' in the value = ' + value);
			$("#selectSub").html(options[value]);
			$("#submit").removeAttr("disabled");
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
						intro : "in the informaionDiv..",
						position : "bottom",
						tooltipClass: "hide"
					},
					
					{
						element : "#assignSpan",
						intro : "",
						position : "right"
					},
					{
						element: "#operatorsDiv",
						intro: "",
						position: "top"
					},
					{
						element: "#operatorAnimation",
						intro: "",
						position: "top"
					},
					{
						element: "#animationDiv",
						intro: "",
						position: "right"
					}
				]
	})
	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		var action = intro._introItems[intro._currentStep].action;
		switch (ElementId) {
		
		case "assignSpan":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#animationDiv").removeClass("visibility-hidden");
				var text = "Enter values in <span class='ct-code-b-yellow'>x</span> and <span class='ct-code-b-yellow'>y</span> boxes."
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				});
			});
		break;
		
		case "operatorsDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltipbuttons").append('<span class="btn visibility-hidden next-button">Next &rarr;</span>');
				var text = "Select an <span class='ct-code-b-yellow'>assignment operator</span> and click on evaluation button."
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				});
			});
			break;
		
		case "animationDiv":
			$(".introjs-nextbutton").addClass("visibility-hidden");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "You can check all the operators by selecting <span class='ct-code-b-yellow'>assignment</span> again.<br/>"
							+" <div class='text-center'>(or)</div> Click to <span class='ct-code-b-yellow'>restart</span> the session.";
				typing(".introjs-tooltiptext", text, function() {
					$("#restart").removeClass("opacity00");
					$("#restart").addClass("zIndex");
				});
			});
		break;
		
		case "operatorAnimation":
			$(".introjs-helperLayer").one("transitionend", function() {
				console.log(" in the operatorAnimation..")
				$(".introjs-nextbutton").hide();
					$(".next-button").removeClass("visibility-hidden");
					nextClick();
			})
		break;
		}
	})
	intro.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$("#submit").attr("disabled","disabled");
	$("#animationDiv").addClass("visibility-hidden");
	 spanOffSet("allocate1", "panel1");
	 spanOffSet("allocate2", "panel2");
	var execute = true;
	
	var text = "<ul><li>In any programming language <span class='ct-code-b-green'>assignment operator</span> is the most commonly used <span class='ct-code-b-green'>operator</span> to "
		+"assign a value to a particular variable.</li><li>In <span class='ct-keywords-color'>C</span> there are three types of <span class='ct-code-b-green'>Assignment "
		+"operators</span>. They are:</li><ol><li>Simple assignment</li><li>Compound assignment</li><li>Assignment as expression</li></ol></ul>"
		typing("#informationDiv", text, function() {
			$("#informationDiv").addClass("zIndex");
			intro.nextStep();
			
		});
	
		$("#restart").click(function() {
			location.reload(true);
		})
		
		
	$("#submit").click(function() {
		
		if (execute) {
			console.log(' in the if condition of submit..');
			intro.nextStep();
			$(".next-button").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				typing("#memoryText", "Memory occupied by int : 2 bytes", function() {
				//$("#panel1, #panel2").addClass("zIndex");
				$("#animationMemory").removeClass("opacity00");
				setTimeout(function() {
					tl.to("#panel1", 1, {opacity:1, onComplete: function() {
						$("#panel1 .panel-body span").removeClass("opacity00").text($('#firstNum').val());
						$("#panel1").removeClass("opacity00");
					}})
					tl.to("#panel2", 1, {opacity:1, onComplete: function() {
						$("#panel2").removeClass("opacity00");
						$("#panel2 .panel-body span").removeClass("opacity00").text($('#secondNum').val());
						$("#operatorExpX").fadeIn(800, function() {
							$("#operatorExpY").fadeIn(600, function() {
								execute = false;
								switchCondition();
								var text= "Each variable occupies 2 bytes in the memory, because the given variables are of <span class='ct-code-b-yellow '>int</span> data type.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").hide();
									$(".next-button").show();
								}) 
							})
						})
					}});
				}, 1000);
				$(".introjs-nextbutton").hide();
				})
				//switchCondtion();
		});
		} else {
			console.log('in the else...pp')
			$('#operatorExpX, #operatorExpY').empty();
			switchCondition(function() {
				console.log(' in the else statment of switch.. ');
				$(".next-button").show();
			});
		}		
	})
	
})

function switchCondition(callBackFunction) {
	var selectList = $("#selectAssign option:selected").val();
	
	switch(selectList) {
	case "1":
		$("#operatorExpX").append("<div class='display-none'>x = x * (y + 10);</div><div class='display-none'>x = <span class='xVal position-relative' id='valOfX'>x</span>"+
								" * (<span class='position-relative' id='valOfY'>y</span> + 10);</div><div class='display-none'>x = <span class='xVal'></span>"+
								" * <span id='expressionX' class='position-relative'>(<span class='yVal'></span> + <span>10</span>)</span></div><div id='finalStepX' class='display-none'>"+
								"<span class='visibility-hidden'>x</span> = <span id='finalValX' class='position-relative'><span class='xVal'></span> * <span id='evalExpX'></span></span></div>");
		
		$("#operatorExpY").append("<div class='display-none'>y = y + (x * 10);</div><div class='display-none'>y = <span class='position-relative' id='valOfYX'>y</span>"+
				" + (<span class='position-relative' id='valOfXy'>x</span> * 10);</div><div class='display-none'>y = <span class='yVal'></span>"+
				" + <span id='expressionY' class='position-relative'>(<span class='xVal'></span> * <span>10</span>)</span></div><div id='finalStepY' class='display-none'>"+
				"<span class='visibility-hidden'>y</span> = <span id='finalValY' class='position-relative'><span class='yVal'></span> + <span id='evalExpY'></span></span></div>");
		
	break;
	case "2":
		$("#operatorExpX, #operatorExpY").empty();
		$("#operatorExpX").append("<div class='display-none'><span>x</span><span id='cAssgnOpX'></span>"+
					"<span class='valOfX'>y</span></div><div class='display-none'><span>x</span><span> = </span> "+
					"<span id='cngValX' class='position-relative'>x</span>"+
					"<span id='operatorX'></span><span class='valOfX position-relative' id='valOfX'>y</span></div><div>"+
					"<span class='display-none'>x</span><div class='display-none'><span class='visibility-hidden'>x</span><span> = </span>"+
					"<span id='finalValX'></span></div></div>");
		$("#operatorExpY").append("<div class='display-none'><span>y</span><span id='cAssgnOpY'></span>"+
				"<span class='valOfY'>x</span></div><div class='display-none'><span>y</span><span> = </span> "+
				"<span id='cngValY' class='position-relative'>y</span>"+
				"<span id='operatorY'></span><span class='valOfY position-relative' id='valOfY'>x</span></div><div>"+
				"<span class='display-none'>y</span><div class='display-none'><span class='visibility-hidden'>y</span><span> = </span>"+
				"<span id='finalValY'></span></div></div>");
		var selectSub = $("#selectSub option:selected").val();
		
		if (selectSub == "+=") {
			
			$("#cAssgnOpX").text(" += ");
			$("#operatorX").text(" + ");
			
			$("#cAssgnOpY").text(" += ");
			$("#operatorY").text(" + ");
			
		} else if (selectSub == "-=") {
			
			$("#cAssgnOpX").text(" -= ");
			$("#operatorX").text(" - ");
			
			$("#cAssgnOpY").text(" -= ");
			$("#operatorY").text(" - ");
			
		} else if (selectSub == "/=") {
			
			$("#cAssgnOpX").text(" /= ");
			$("#operatorX").text(" / ");
			
			$("#cAssgnOpY").text(" /= ");
			$("#operatorY").text(" / ");
			
		} else if (selectSub == "*=") {
			
			$("#cAssgnOpX").text(" *= ");
			$("#operatorX").text(" * ");
			
			$("#cAssgnOpY").text(" *= ");
			$("#operatorY").text(" * ");
		} 
	break;
	case "3":
		$("#operatorExpX, #operatorExpY").empty();
		$("#operatorExpX").append("<div class='display-none'>x %= (y % 10);</div><div class='display-none'>x = <span class='xVal position-relative' id='valOfX'>x</span>"+
								" % (<span class='position-relative' id='valOfY'>y</span> % 10);</div><div class='display-none'>x = <span class='xVal'></span>"+
								" % <span id='expressionX' class='position-relative'>(<span class='yVal'></span> % <span>10</span>)</span></div><div id='finalStepX' class='display-none'>"+
								"<span class='visibility-hidden'>x</span> = <span id='finalValX' class='position-relative'><span class='xVal'></span> % <span id='evalExpX'></span></span></div>");
		
		$("#operatorExpY").append("<div class='display-none'>y %= (x % 10);</div><div class='display-none'>y = <span class='position-relative' id='valOfYX'>y</span>"+
				" % (<span class='position-relative' id='valOfXy'>x</span> % 10);</div><div class='display-none'>y = <span class='yVal'></span>"+
				" % <span id='expressionY' class='position-relative'>(<span class='xVal'></span> % <span>10</span>)</span></div><div id='finalStepY' class='display-none'>"+
				"<span class='visibility-hidden'>y</span> = <span id='finalValY' class='position-relative'><span class='yVal'></span> % <span id='evalExpY'></span></span></div>");
	break;
}
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
}


var next = 1;
	function nextClick() {
	$(".next-button").click(function() {
		
		var selectSub = $("#selectSub option:selected").val();
		$(".next-button").hide();
		if (selectSub == "+=") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#cngValX", $("#firstNum").val(), function() {
						flipEffect("#valOfX", $("#secondNum").val(), function() {
							$("#xMemory").addClass("opacity00");
							 $("#finalValX").text(parseInt($("#cngValX").text()) + parseInt($("#valOfX").text()));
							finalValOffset("finalValX" , "xMemory", function() {
								
								$(".introjs-nextbutton").hide();
								$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
									$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
										flipEffect("#cngValY", $("#secondNum").val(), function() {
											flipEffect("#valOfY", $("#firstNum").val(), function() {
												$("#yMemory").addClass("opacity00");
												$("#finalValY").text(parseInt($("#cngValY").text()) + parseInt($("#valOfY").text()));
												finalValOffset("finalValY" , "yMemory", function() {
													$(".next-button").hide();
												});
											});
										})
									});
								});
							}) 
						});
					});
				});
			});
		} else if (selectSub == "-=") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#cngValX", $("#firstNum").val(), function() {
						flipEffect("#valOfX", $("#secondNum").val(), function() {
							$("#xMemory").addClass("opacity00");
							 $("#finalValX").text(parseInt($("#cngValX").text()) - parseInt($("#valOfX").text()));
							finalValOffset("finalValX" , "xMemory", function() {
								
								$(".introjs-nextbutton").hide();
								$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
									$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
										flipEffect("#cngValY", $("#secondNum").val(), function() {
											flipEffect("#valOfY", $("#firstNum").val(), function() {
												$("#yMemory").addClass("opacity00");
												$("#finalValY").text(parseInt($("#cngValY").text()) - parseInt($("#valOfY").text()));
												finalValOffset("finalValY" , "yMemory", function() {
													$(".next-button").hide();
												});
											});
										})
									});
								});
							}) 
						});
					});
				});
			});
		} else if (selectSub == "/=") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#cngValX", $("#firstNum").val(), function() {
						flipEffect("#valOfX", $("#secondNum").val(), function() {
							$("#xMemory").addClass("opacity00");
							 $("#finalValX").text(parseFloat(parseInt($("#cngValX").text()) / parseInt($("#valOfX").text())).toFixed(2));
							finalValOffset("finalValX" , "xMemory", function() {
								
								$(".introjs-nextbutton").hide();
								$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
									$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
										flipEffect("#cngValY", $("#secondNum").val(), function() {
											flipEffect("#valOfY", $("#firstNum").val(), function() {
												$("#yMemory").addClass("opacity00");
												$("#finalValY").text(parseFloat(parseInt($("#cngValY").text()) / parseInt($("#valOfY").text())).toFixed(2));
												finalValOffset("finalValY" , "yMemory", function() {
													$(".next-button").hide();
												});
											});
										})
									});
								});
							}) 
						});
					});
				});
			});
		} else if (selectSub == "*=") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#cngValX", $("#firstNum").val(), function() {
						flipEffect("#valOfX", $("#secondNum").val(), function() {
							$("#xMemory").addClass("opacity00");
							 $("#finalValX").text(parseInt($("#cngValX").text()) * parseInt($("#valOfX").text()));
							finalValOffset("finalValX" , "xMemory", function() {
								
								$(".introjs-nextbutton").hide();
								$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
									$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
										flipEffect("#cngValY", $("#secondNum").val(), function() {
											flipEffect("#valOfY", $("#firstNum").val(), function() {
												$("#yMemory").addClass("opacity00");
												$("#finalValY").text(parseInt($("#cngValY").text()) * parseInt($("#valOfY").text()));
												finalValOffset("finalValY" , "yMemory", function() {
													$(".next-button").hide();
												});
											});
										})
									});
								});
							}) 
						});
					});
				});
			});
		} else if (selectSub == "exp") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#valOfX", $("#firstNum").val(), function() {
						$(".xVal").text($("#firstNum").val());
						flipEffect("#valOfY", $("#secondNum").val(), function() {
							$(".yVal").text($("#valOfY").text());
							$("#operatorExpX div:nth-child(3)").fadeIn(600, function() {
								flipEffect("#expressionX", parseInt($("#valOfY").text()) % 10, function() {
									$("#evalExpX").text($("#expressionX").text())
									$("#operatorExpX div:nth-child(4)").fadeIn(800, function() {
										flipEffect("#finalValX",parseInt($("#valOfX").text()) % parseInt($("#expressionX").text()), function() {
											$("#xMemory").addClass("opacity00");
											$("#xMemory").text($("#finalValX").text());
											finalValOffset("finalValX" , "xMemory", function() {
												
												$(".introjs-nextbutton").hide();
												
												$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
													$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
														 flipEffect("#valOfYX", $("#secondNum").val(), function() {
															//$(".yVal").text($("#secondNum").val());
															flipEffect("#valOfXy", $("#firstNum").val(), function() {
																$(".xVal").text($("#valOfXy").text());
																$("#operatorExpY div:nth-child(3)").fadeIn(600, function() {
																	flipEffect("#expressionY", parseInt($("#valOfXy").text()) % 10, function() {
																		$("#evalExpY").text($("#expressionY").text())
																		$("#operatorExpY div:nth-child(4)").fadeIn(800, function() {
																			flipEffect("#finalValY",parseInt($("#valOfYX").text()) % parseInt($("#expressionY").text()), function() {
																				finalValOffset("finalValY", "yMemory", function() {
																					$(".next-button").hide();
																				})
																			})
																		})
																	})
																})
															})
														}) 
													})
												})
											})
										})
									})
								})
							})
						})
					})
				})
			})
		} else if (selectSub == "=") {
			$("#operatorExpX div:nth-child(1)").fadeIn(600, function() {
				$("#operatorExpX div:nth-child(2)").fadeIn(800, function() {
					flipEffect("#valOfX", $("#firstNum").val(), function() {
						$(".xVal").text($("#firstNum").val());
						flipEffect("#valOfY", $("#secondNum").val(), function() {
							$(".yVal").text($("#valOfY").text());
							$("#operatorExpX div:nth-child(3)").fadeIn(600, function() {
								flipEffect("#expressionX", parseInt($("#valOfY").text()) + 10, function() {
									$("#evalExpX").text($("#expressionX").text())
									$("#operatorExpX div:nth-child(4)").fadeIn(800, function() {
										flipEffect("#finalValX",parseInt($("#valOfX").text()) * parseInt($("#expressionX").text()), function() {
											$("#xMemory").addClass("opacity00");
											$("#xMemory").text($("#finalValX").text());
											finalValOffset("finalValX" , "xMemory", function() {
												
												$(".introjs-nextbutton").hide();
												
												$("#operatorExpY div:nth-child(1)").fadeIn(600, function() {
													$("#operatorExpY div:nth-child(2)").fadeIn(800, function() {
														flipEffect("#valOfYX", $("#secondNum").val(), function() {
															//$(".yVal").text($("#secondNum").val());
															flipEffect("#valOfXy", $("#firstNum").val(), function() {
																$(".xVal").text($("#valOfXy").text());
																$("#operatorExpY div:nth-child(3)").fadeIn(600, function() {
																	flipEffect("#expressionY", parseInt($("#valOfXy").text()) * 10, function() {
																		$("#evalExpY").text($("#expressionY").text())
																		$("#operatorExpY div:nth-child(4)").fadeIn(800, function() {
																			flipEffect("#finalValY",parseInt($("#valOfYX").text()) + parseInt($("#expressionY").text()), function() {
																				finalValOffset("finalValY", "yMemory", function() {
																					$(".next-button").hide();
																				})
																			})
																		})
																	})
																})
															})
														})
													})
												})
												
											})
										})
									})
								})
							})
						})
					})
				})
			})
		}
		 
	next++;
	});
	}


	
function finalValOffset(from , to, callBackFunction) {
		$("#" + to).text($("#" + from).text());
		var a = $("#" + from).offset();
		$("#" + to).offset({top: a.top, left:a.left})
		$("#" + to).removeClass("opacity00");
		tl.to("#" + to, 1, {top:0,left:0, onComplete: function() {
			$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}	
	
function spanOffSet(from, to) {
		var allocate = $("#" + from ).offset();
		$("#" + to).offset({'top': allocate.top - ($(".panel-body").width() - $(".panel-body").height()) ,'left': allocate.left});
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
		<h2 class="text-center">
			<span class="label label-default ct-demo-heading">Assignment Operators</span>
		</h2>
		<!-- <div class="margin-top20 text-center">
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
		</div> -->
		<div id="informationDiv" class="col-xs-offset-2 col-xs-8 border margin-top20 background-color"></div>
		<div class="col-xs-12">
			 <div id="animationDiv" class="col-xs-offset-3 col-xs-6 border margin-top20">
		<div class="col-xs-12 padding0">
			<div  class="margin-top06 text-center"><div id="assignSpan"><span>int&nbsp;</span><span>x</span> = <span><input id="firstNum" type="text" placeholder="Number" contenteditable="true"  class="inputWidth empty" name="usrname" maxlength="2"></span>
			 	<!-- <div id="yInitialize" class="margin-top06"> --><span>, </span><span>y</span> = <span><input id="secondNum" type="text" placeholder="Number" contenteditable="true"  class="inputWidth empty" name="usrname" maxlength="2">;</span></div>
			</div>
				<div class="margin-top06" id='operatorsDiv' >
				<div class="text-center">
					<span>Assignment :</span> <span> <select id="selectAssign">
							<option value="0">--select--</option>
							<option value="1">simple assignment</option>
							<option value="2">compound assignment</option>
							<option value="3">assignment as expression</option>
					</select>
					</span> <span> <select id="selectSub">
							<option value='none'>---</option>
					</select>
					</span>
					 </div>
					<div> 
					<div class="text-center">
						<button id="submit" type="button">&nbsp;evaluation&nbsp;</button>
					</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="margin-top20 col-xs-12" id="operatorAnimation">
					<div id='animationExp' class="col-xs-12 padding0">
						<div id='memoryText' class="col-xs-12 padding0 margin-left23"></div>
						<div class='col-xs-12 padding0'>
							<div id='operatorExpX' class='col-xs-offset-1 col-xs-5 padding0 expXY margin-left23 display-none'></div>
							<div id='operatorExpY' class='col-xs-offset-1 col-xs-5 padding0 expXY display-none'></div>
						</div>
					</div>
					<div class='col-xs-12 margin-top27'>
						<div id='animationMemory' class='opacity00 col-xs-offset-2 col-xs-8 padding0'>
							<div class='col-xs-12 margin-top10'>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								<span id="allocate1">
									<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
									<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								</span>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk display-none'><span class='font-size'>1 byte</span></span>							
							</div>
													
							<div class='col-xs-12 margin-top10'>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								<span id="allocate2">
									<span class='memory-blk'><span class='font-size'>1 byte</span></span>
									<span class='memory-blk'><span class='font-size'>1 byte</span></span>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>	
		</div>
		 <div class="col-xs-12 margin-top20 text-center">
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
		</div>
	</div>
	
	 <div class="panel panel-primary zIndex opacity00" id='panel1'>
		<div class="panel-heading"><span>x</span><div class='font-size'>(2 bytes)</div></div>
		<div class="panel-body">&nbsp;<span id="xMemory" class='opacity00'></span></div>
	</div>
	<div class="panel panel-primary zIndex opacity00" id='panel2'>
		<div class="panel-heading"><span>y</span><div class='font-size'>(2 bytes)</div></div>
		<div class="panel-body">&nbsp;<span id="yMemory"  class='opacity00'></span></div>
	</div>
</body>
</html>