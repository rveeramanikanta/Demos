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
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>


<script type="text/javascript" src="disc-animations.js"></script>
<title>tower-of-hanoi</title>

<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.margin-top-40 {
	margin-top: 40px;
}

.padding0 {
	padding: 0;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
}

#informationDiv {
	letter-spacing: 0.5px;
	min-height: 155px;
	padding: 15px 0;
	z-index: 9999999;
}

#animationDiv {
	height: 480px;
}

.creampretab4 {
	-moz-tab-size: 2;
	tab-size: 2;
	background-color: lavender !important;
	font-style: inherit;
	margin-bottom: 0;
	padding: 5px;
	overflow-y: auto;
}

#outputDiv {
	margin-top: 100px;
	padding: 0;
	z-index: 9999999;
}

.output-console-title-bar {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.output-console-body {
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
	height: 100px;
	padding: 10px;
}

.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: red;
}

#animationDiv .panel-body, #invisibleDiv .panel-body {
	font-family: monospace;
	font-size: 10px;
	padding: 5px;
}

#mainStack {
	border: 2px solid;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	border-top: none;
	height: 350px;
	overflow: auto;
}

#invisibleDiv {
	height: 120px;
	border: 2px solid rgba(255, 255, 255, 0);
}

.panel-heading {
	padding: 3px 0;
}

.panel {
	margin-bottom: 5px;
	position: relative;
}

.ui-effects-transfer {
	border: 2px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 9999999;
}

#numberVal {
	outline: none;
}

.errMsg {
	font-family: monospace;
	font-weight: bold;
	color: red;
}

.flip-css {
	position: relative;
	display: inline-block;
}

#arrow1, #arrow2, #arrow3 {
	marker-end: url('#myMarker');
}

.arrow-display-none {
	display: none;
}

.user-btn {
	background-color: green;
}

.ct-code-b-green {
	color: green;
	font-family: monospace;
	font-weight: bold;
}

.introjs-button {
	margin: 0 !important;
}

.introjs-fixParent {
	position: relative !important;
}

.padding0 {
	padding: 0;
}


.svg-css {
	top: 0;
	left: 0;
	height: 100%;
	position: absolute;
	width: 100%;
}

.svg-line {
	position: relative;
	stroke-width: 3;
}

#discsStand .svg-line, #stackSvg .svg-line {
	stroke: gray;
}

.padding0 {
	padding: 0;
}

.svg-text {
	font-family: monospace;
	font-size: 100%;
	font-weight: bold;
}

/* .svg-disc {
	transform: rotateX(70deg);
	fill: white;
} */

.svg-disc {
	transform: rotateX(75deg);
	fill: white;
}

.stand1-disc1 {
	stroke: orange;
}

.stand1-disc2 {
	stroke: blue;
}

.stand1-disc3 {
	stroke: green;
}

.stand1-disc4 {
	stroke: red;
}

/* .stand1-disc5 {
	stroke: violet;
} */

.stand1-disc5 {
	stroke: brown;
}

.circles-lines line {
	stroke-width: 4;
}

#animationDialog {
	position: relative;
	z-index: 10000000;
}

#myAnimationModal.modal {
	z-index: 100000050 !important;
	width: 98%;
	margin-left: 1%;
}


#myAnimationModal .modal-dialog {
	width: 100%;
}

.dynamic-popover {
	color: yellow;
	font-family: monospace;
	font-weight: bold;
}

/* .opacity00 {
	opacity: 1;
} */

.opacity05 {
	opacity: 0.5;
}

.bg-color-greenyellow {
	background-color: greenyellow;
}
</style>

<script type="text/javascript">
	var typingSpeed = 5;
	var introjs;
	var tl = new TimelineLite();
	var number = 3;
	var idsArr = [];
	var animationFlag = false;
	var source = 'A';
	var temporary = 'B';
	var destination = 'C';

	$(document).ready(function() {
		$(".circles-lines line").hide();
		$("circle").hide();
		$(".circles-text text").hide();
		
		initIntroJS();
		$('#restart').click(function() {
			location.reload();
		});
	});

	function initIntroJS() {
		introjs = introJs();
		introjs.setOptions({
			steps : [{
				element : "#informationDiv",
				intro : "",
				position : "bottom",
				tooltipClass : "hide"
  			}, {
				element : "#cCode",
				intro : "",
				position : "right"
			}, {
				 element : "#mainStack",
				 intro : "",
				 position : "left",
				 tooltipClass: "hide"
			}, {
				 element : "#main",
				 intro : "",
				 position : "right"
			}, {
				 element : "#animationDiv",
				 intro : "",
				 position : "left",
				 tooltipClass : "hide"
			}]
		});

	introjs.onafterchange(function(targetElement) {
		introjs.refresh();
		var elementId = targetElement.id;
		switch (elementId) {
			case"informationDiv":
			$('.introjs-nextbutton').hide();
			$("#informationDiv").append("<ul></ul>");
			$("#informationDiv ul").append("<li><span class='ct-code-b-green'>Towers of hanoi</span> is a classic puzzle used in computer programming." 
					+ " In this there are three rods, one of the rod will contains a <span class='ct-code-b-green'>few discs</span>, " 
					+ "which is known as the <span class='ct-code-b-green'>source</span>." 
					+ " The objective of the puzzle is to move the entire stack present in the <span class='ct-code-b-green'>source</span> rod into another rod which is" 
					+ " known as <span class='ct-code-b-green'>destination</span> rod.</li>");
			$("#informationDiv ul li:last-child").hide().fadeIn(500, function() {
				$("#informationDiv ul").append("<li>While doing this we need to follow the following simple rules : </li>");
				$("#informationDiv ul li:last-child").hide().fadeIn(500, function() {
					$("#informationDiv ul").append("<ol><li>Only one disc can be moved at a time.</li></ol>");
					$("#informationDiv ol li:last-child").hide().fadeIn(500, function() {
						$("#informationDiv ol").append("<li>While moving a disc care should be taking that only the top most disc can be moved at a time.</li>");
						$("#informationDiv ol li:last-child").hide().fadeIn(500, function() {
							$("#informationDiv ol").append("<li>Larger disc can't be placed on top of the smaller disc.</li>");
							$("#informationDiv ol li:last-child").hide().fadeIn(500, function() {
								$("#informationDiv ol li:last-child").append("<a class='introjs-button user-btn opacity00' onclick='userNextStep()'>Next →</a>");
								$(".user-btn").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
									$(this).removeClass("animated zoomIn");
								});
							});
						});
					});
	   			});
			});
			break;
   
			case "mainStack":
				$('.introjs-nextbutton').hide();
				$("#animationDiv").removeClass("opacity00");
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep();
						$("#aboutStack").popover("hide");
					}, 1000)
				});
			break;
	   
			case "cCode":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#cCode").removeClass("opacity00");
					var text = "In the below code we will learn how a recursive function calls happen while executing the  "
						+ "<span class='ct-code-b-yellow'>solveHanoi</span> function.";
					typing($(".introjs-tooltiptext"), text, function() {
						$(".introjs-nextbutton").show();
					});
				});
		   break;
	   
		case "main":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Since the main function is the first function to be executed," 
					+ " it is the first function to be pushed into the <span class='ct-code-b-yellow'>stack</span>.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
	   
		case "animationDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var fromId;
				if (introjs._currentStep == 4) {
					createMainStack();
					fromId = "#mainBlk";
				} else if (number >= 0) {
					createHanoiStack();
					fromId = "#solveHanoiFun";
	    		}
	    		if (number >= 0) {
	     			$(fromId).effect( "transfer", { to: $("#invisibleDiv .panel"), className: "ui-effects-transfer" }, 1000, function() {
	 					$("#invisibleDiv .panel").removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
							if (introjs._currentStep == 4) {
								stackDropEffect(function() {
									setTimeout(function() {
										introjs.nextStep();
									}, 1000);
								});
							} else {
								stackDropEffect();
							}
						});
	     			});
				} else {
					reverseRevealEffect();
	    		}
			});
		break;
	   
		case "mainStackNumDec":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			var text = "The <span class='ct-code-b-yellow'>int</span> variable <span class='ct-code-b-yellow'>num</span>" 
				+ " determines the number of disc to be used in the <span class='ct-code-b-yellow'>towers of hanoi</span> example."
				+ "<br/><br/>You can also change the number of discs by changing the value of <span class='ct-code-b-yellow'>num</span>" 
				+ ", to be a number between <span class='ct-code-b-yellow'>1</span> to <span class='ct-code-b-yellow'>5</span>.";
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-nextbutton").show();
				blinkCursorAtEnd("numberVal");
			});
		});
	   break;
	   
		case "stack" + number + "ElseBlk":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("[contenteditable=true]").attr("contenteditable", false);
				setTimeout(function() {
					introjs.nextStep();
				}, 500);
				/* flipEffect($("#stack" + number + "ElseBlk .number"), number, function() {
					flipEffect($("#stack" + number + "ElseBlk .number").parent(), number - 1, function() {
						setTimeout(function() {
							introjs.nextStep();
						}, 800);
					});
				}); */
			});
	   break;
	   
		/* case "mainStackPrintf":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			var text = "Finally the value <span class='ct-code-b-yellow'>" + $(".returned-val").text() + "</span>" 
				+ ", which is the factorial of number <span class='ct-code-b-yellow'>" + $("#numberVal").text() + "</span>" 
				+ " will be printed to the output. ";
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-nextbutton").show();
				blinkCursorAtEnd("numberVal");
			});
		});
	   break; */
   
		case "mainHanoiCall":
			$(".introjs-nextbutton").hide();
			//removeAdditionalDiscs();
			idsArr.push("#stack" + number + functionName);
			$(".introjs-helperLayer").one("transitionend", function() {
				
				var text = "The initial call to <span class='ct-code-b-yellow'>solveHanoi</span> in main function" 
					+ " will pass the number of discs followed by the " 
					+ "character <span class='ct-code-b-yellow'>codes</span> of the three rods."
				/* var text = "When the system enters into the function <span class='ct-code-b-yellow'>hanoi(num, A, B, C)</span>" 
					+ " to execute it, and it will push the <span class='ct-code-b-yellow'>hanoi(num, A, B, C)</span> function" 
					+ " along with paramenters <span class='ct-code-b-yellow'>" + number + "</span>, " 
					+ " <span class='ct-code-b-yellow'>A</span>, <span class='ct-code-b-yellow'>B</span>, "
					+ "<span class='ct-code-b-yellow'>C</span> "
					+ "into the <span class='ct-code-b-yellow'>stack</span> above " 
					+ "the <span class='ct-code-b-yellow'>main</span> function."; */
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "stack" + number + "IfBlk":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("Since the condition : <br/><span class='ct-code-b-yellow'>number <= 1</span> " 
					+ "<br/><span id='tooltipIfCndtn'><span id='tooltipNumber' class='flip-css'>number</span> &lt;= 1</span>");
				var ifCndtnOffset = $("#stack" + number + "IfCdtn").offset();
				$("#tooltipIfCndtn").offset({
					"top" : ifCndtnOffset.top,
					"left" : ifCndtnOffset.left
				}).css("font-family", "monospace");
	   
				tl.to("#tooltipIfCndtn", 1, {top : 0, left : 0, onComplete:function() {
					flipEffect("#tooltipNumber", number, function() {
					var text = "";
					if (number <= 1) {
						text = "evaluates to <span class='ct-code-b-yellow'>true</span>, the control enters into the <span class='ct-code-b-yellow'>if-block</span>.";
						introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number + "IfBlkPrintStmt", "", "left"));
					} else {
	      				text = "evaluates to <span class='ct-code-b-red'>false</span>, the control enters into the <span class='ct-code-b-yellow'>else-block</span>.";
						introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number + "ElseBlk", "", "top", "hide"));
						introjs.insertOption(introjs._currentStep + 2, getStep("#stack" + number + "Hanoi1", "", "top", "hide"));
					}
					$(".introjs-tooltiptext").append("<div></div>");
					typing($(".introjs-tooltiptext div:last-child"), text, function() {
						$(".introjs-nextbutton").removeClass("introjs-disabled").show();
					});
				});
			}});
		});
		break;
	   
		case "stack" + $(".number:eq(0)").text() + "Hanoi1":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				number--;
				source = $(".source").eq(0).text();
				temporary = $(".destination").eq(0).text();
				destination = $(".temporary").eq(0).text();
				idsArr.push("#stack" + number + functionName);
				introjs.insertOption(introjs._currentStep + 1, getStep("#animationDiv", "", "left", "hide"));
				flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi1 .number"), parseInt($(".number:eq(0)").text()), function() {
					flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi1 .number").parent(), parseInt($(".number:eq(0)").text()) - 1, function() {
						flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".source").text()  , function() {
							flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg2"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".destination").text()  , function() {
								flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg3"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".temporary").text()  , function() {
									setTimeout(function() {
										introjs.nextStep();
									}, 500);
								});
							});
						});
					});
				});
			});
	   break;
   
		case "stack" + $(".number:eq(0)").text() + "Hanoi2":
			$("#stack" + $(".number:eq(0)").text() + "Hanoi2").attr("iscompleted", true);
			//$("#stack" + $(".number:eq(0)").text() + "ElseBlkPrintStmt").addClass("opacity05");
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				number = parseInt($(".panel:eq(0) .number:eq(0)").text()) - 1;
				functionName = "Hanoi2";
				source = $(".temporary").eq(0).text();
				temporary = $(".source").eq(0).text();
				destination = $(".destination").eq(0).text();
				var index = idsArr.lastIndexOf("#stack" + (number + 1) + "Hanoi1");
				idsArr.splice(index, 0, "#stack" + (number + 1) + "Hanoi2");
				idsArr.pop();
				idsArr.push("#stack" + number + "Hanoi1");
				introjs.insertOption(introjs._currentStep + 1, getStep("#animationDiv", "", "left", "hide"));
				flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi2 .number"), parseInt($(".number:eq(0)").text()), function() {
					flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi2 .number").parent(), parseInt($(".number:eq(0)").text()) - 1, function() {
						flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi2 .arg1"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".temporary").text()  , function() {
							flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi2 .arg2"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".source").text()  , function() {
								flipEffect($("#stack" + $(".number:eq(0)").text() + "Hanoi2 .arg3"), $("#stack" + $(".number:eq(0)").text() + "Hanoi1 .arg1").parents(".panel").find(".destination").text()  , function() {
									setTimeout(function() {
										introjs.nextStep();
									}, 500);
								});
							});
						});
					});
				});
			});
		break;
	
		case "stack" + $(".number:eq(0)").text() + "Hanoi1":
			$("stack" + $(".number:eq(0)").text() + "Hanoi1").attr("isCompleted", true);
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				number = parseInt($(".panel:eq(0) .number:eq(0)").text()) - 1;
				functionName = "Hanoi1";
				var text = "Here the return of the value previous function call is being substituted in the current location.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
	    		});
			});
		break;
   
		case "stack" + number + "IfBlkPrintStmt":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This operation will print the output to the console and also perform the moment of discs.";
				typing($(".introjs-tooltiptext"), text, function() {
					introjs.insertOption(introjs._currentStep + 1, getStep("#outputDiv", "", "top", "hide"));
					$("#output").append("<div class='opacity00'>Move disc " + number + " from " + source + " to " + destination + "</div>");
					fromPoint = getStandNames[source];
					toPoint = getStandNames[destination];
					introjs.insertOption(introjs._currentStep + 2, getStep("#discsSvgDiv", "", "left", "hide"));
					introjs.insertOption(introjs._currentStep + 3, getStep("#animationDiv", "", "left", "hide"));
					dynamicPopover("#stack" + number + "IfBlkPrintStmt .number", number, "bottom");
					dynamicPopover("#stack" + number + "IfBlkPrintStmt .aVal", source, "top");
					dynamicPopover("#stack" + number + "IfBlkPrintStmt .cVal", destination, "bottom");
					number = -1;
					$(".introjs-nextbutton").removeClass("introjs-disabled").show();
				});
			});
 			break;
 			
		case "stack" + $(".number:eq(0)").text() + "ElseBlkPrintStmt":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This operation will print the output to the console and also perform the moment of discs.";
				typing($(".introjs-tooltiptext"), text, function() {
					//$("#stack" + $(".number:eq(0)").text() + "Hanoi1").addClass("opacity05");
					number = $(".panel:eq(0) .number:eq(0)").text();
					introjs.insertOption(introjs._currentStep + 1, getStep("#outputDiv", "", "top", "hide"));
					$("#output").append("<div class='opacity00'>Move disc " + number + " from " + source + " to " + temporary + "</div>");
					fromPoint = getStandNames[source];
					toPoint = getStandNames[temporary];
					introjs.insertOption(introjs._currentStep + 2, getStep("#discsSvgDiv", "", "left", "hide"));
					introjs.insertOption(introjs._currentStep + 3, getStep("#stack" + number + "Hanoi2", "", "left", "hide"));
					dynamicPopover("#stack" + number + "ElseBlkPrintStmt .number", number, "bottom");
					dynamicPopover("#stack" + number + "ElseBlkPrintStmt .aVal", source, "top");
					dynamicPopover("#stack" + number + "ElseBlkPrintStmt .cVal", temporary, "bottom");
					$(".introjs-nextbutton").removeClass("introjs-disabled").show();
				});
			});
			break;
  
		case "outputDiv":
			$("#outputDiv").removeClass("opacity00");
			$(".dynamic-popover").parents(".popover").remove();
			$(".introjs-helperLayer").one("transitionend", function() {
				animationFlag = true;
				$(".output-console-body").scrollTo($("#output > div:last()"), 500, function() {
					$("#output > div").last().removeClass("opacity00").hide().fadeIn(500, function() {
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
						/* $('#myAnimationModal').off('shown.bs.modal');
						$('#myAnimationModal').modal('show').on('shown.bs.modal', function() {
							if (animationFlag) {
								animationFlag = !animationFlag;
								moveDisc(fromPoint, toPoint, function() {
									setTimeout(function() {
										$('#myAnimationModal').modal('hide');
										setTimeout(function() {
											introjs.nextStep();
										}, 500);
									}, 500);
								});
							}
						}); */
					});
				});
				
	   		});
	   break;
	   
		case "discsSvgDiv":
			$(".introjs-nextbutton").hide();
			$("#discsSvgDiv").parent().removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 6) {
					removeAdditionalDiscs();
					/* introjs.insertOption(introjs._currentStep + 1, getStep("#baseStand1", "", "right"));
					introjs.insertOption(introjs._currentStep + 2, getStep("#baseStand2", "", "right"));
					introjs.insertOption(introjs._currentStep + 3, getStep("#baseStand3", "", "right")); */
					$(".introjs-tooltiptext").append("<ul><li></li></ul>");
					var text = "Let us name the <span class='ct-code-b-yellow'>source</span> rod as character" 
							+ " <span class='ct-code-b-yellow'>A</span>.";
					
					typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
						$(".introjs-tooltiptext ul").append("<li></li>");
						var text = "Let us name the <span class='ct-code-b-yellow'>temporary</span> rod as character" 
							+ " <span class='ct-code-b-yellow'>B</span>.";
						typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
							$(".introjs-tooltiptext ul").append("<li></li>");
							var text = "Let us name the <span class='ct-code-b-yellow'>destination</span> rod as character" 
								+ " <span class='ct-code-b-yellow'>C</span>.";
							typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
								$(".introjs-nextbutton").show();	
							});
						});
					});
				} else {
					moveDisc(fromPoint, toPoint, function() {
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
					});
				}
			});
			break;
			
		/* case "baseStand1":
		case "baseStand2":
		case "baseStand3":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 7) {
					
					
				} else if (introjs._currentStep == 8) {
					
					
				} else {
					
					
				}
			});
			break; */
			
	  case "restart":
		$(".introjs-nextbutton").hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			tl.to($("#stackBody .panel").eq(0), 1, {top : "-400", onComplete:function() {
				$("#stackBody .panel").eq(0).remove();
			}});
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
	
function stackDropEffect(callBackFunction) {
	$(".blinking").removeClass("blinking");
	$(".user-btn").remove();
	var invisibleDivOffset = $("#invisibleDiv .panel").offset();
	var lastStackOffset = $("#stackBody > div:first-child").offset();
	
	var topLength = lastStackOffset.top - invisibleDivOffset.top;
	var leftLength = lastStackOffset.left - invisibleDivOffset.left;
	tl.to($("#invisibleDiv > div"), 1, {top : topLength, left : leftLength, onComplete:function() {
		$("#stackBody .panel").removeAttr("style");
		$("#invisibleDiv").empty();
		$("#stackBody > div:first-child").removeClass("opacity00");
		if ($("#stackBody .panel").length > 1) {
			setStackLocationToBottom();
			reArrangeArrows(true, function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 800);
			});
  		}
  
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
 	}});
}

function createMainStack() {
	$("#stackBody").prepend("<div class='panel panel-primary opacity00'>" 
			+ "<div class='panel-heading text-center'>main</div>" 
			+ "<div class='panel-body'>" 
			+ "<div><div id='mainStackNumDec' style='display: inline-block;'>int num = <div id='numberVal' contenteditable='true' maxlength='0' style='display: inline-block;'>3</div>;</div></div>" 
			+ "<div id='mainHanoiCall' style='font-weight: bold; display: inline-block;'>solveHanoi(num, 'A', 'B', 'C');</div>" 
			+ "</div></div>");
	introjs.insertOption(introjs._currentStep + 1, getStep("#mainStackNumDec", "", "top"));
	introjs.insertOption(introjs._currentStep + 2, getStep("#discsSvgDiv", "", "right"));
	introjs.insertOption(introjs._currentStep + 3, getStep("#mainHanoiCall", "", "top"));
	introjs.insertOption(introjs._currentStep + 4, getStep("#animationDiv", "", "left", "hide"));
	keyDownEvent();
	createInvisiableDiv();
	setStackLocationToBottom();
	idsArr.push("#mainHanoiCall");
}

function keyDownEvent() {
	$("[contenteditable=true]").on("keydown", function(e) {
		introjs.refresh();
		$('.errMsg').remove();
		$("#changedVal").text($(this).text());
		number = $(this).text();
		$(".new-number").text(number);
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 49 || e.keyCode > 53)) && ((e.keyCode < 97) || (e.keyCode > 101))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$('.introjs-tooltiptext').append("<div class='errMsg'><br/>Enter a number of maximum 1 digit.</div>");
			e.preventDefault();
		}
	});
 
 	$("[contenteditable=true]").on("keyup", function(e) {
		introjs.refresh();
		$("#changedVal").text($(this).text());
		number = $(this).text();
		$(".new-number").text(number);
		if ($(this).text().length > 0) {
			$(".introjs-nextbutton").show();
		} else {
			$('.errMsg').remove();
			$('.introjs-tooltiptext').append("<div class='errMsg'><br/><br/>Please enter a value.</div>");
			$(".introjs-nextbutton").hide();
		}
	});
}

function createHanoiStack() {
	$("#stackBody").prepend("<div class='panel panel-primary opacity00'>"
		   + "<div class='panel-heading text-center'>solveHanoi(<span class='number'>" + number + "</span>, " 
		   + "<span class='source'>" + source + "</span>, " 
		   + "<span class='temporary'>" + temporary + "</span>, " 
		   + "<span class='destination'>" + destination + "</span>)</div>" 
		   + "<div class='panel-body'>" 
		   + "<div><span id='stack" + number + "IfBlk'>if (<span id='stack" + number + "IfCdtn'>num == 1</span>) {</span></div>" 
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "IfBlkPrintStmt'>printf(\"Move disc %d from %c to %c\\n\"," 
		   + " <span class='number'>num</span>, <span class='aVal'>A</span>, <span class='cVal'>C</span>);</span></div>" 
		   + "<div id='stack" + number + "ElseBlk'>} else { " 
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "Hanoi1' style='font-weight: bold;' isCompleted=false>" 
		   + "solveHanoi(<span style='display: inline-block;'><span class='number' style='display: inline-block;'>number</span> - 1</span>, " 
		   + "<span class='arg1' style='display:inline-block;'>A</span>, <span class='arg2' style='display:inline-block;'>C</span>, " 
		   + "<span class='arg3' style='display:inline-block;'>B</span>);</span></div>" 
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "ElseBlkPrintStmt'>printf(\"Move disc %d from %c to %c\\n\"," 
		   + " <span class='number'>num</span>, <span class='aVal'>A</span>, <span class='cVal'>C</span>);</span></div>"
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "Hanoi2' style='font-weight: bold;' isCompleted=false>" 
		   + "solveHanoi(<span style='display: inline-block;'><span class='number' style='display:inline-block;'>number</span> - 1</span>, " 
		   + "<span class='arg1' style='display:inline-block;'>B</span>, <span class='arg2' style='display:inline-block;'>A</span>, " 
		   + "<span class='arg3' style='display:inline-block;'>C</span>);</span></div>"
		   + "}</div>" 
		   + "</div></div>");
	reChangeArrowHeight();
	introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number + "IfBlk", "", "top"));
	createInvisiableDiv();
	setStackLocationToBottom();
}

function createInvisiableDiv() {
	$("#invisibleDiv").append("<div class='col-xs-offset-1 col-xs-11 padding0'>" 
		+ "<div class='col-xs-12 padding0'>" 
		+ "<div class='col-xs-10 padding0 opacity00 panel panel-primary'>" 
		+ $("#stackBody > div:first-child").html() 
		+  "</div></div></div>");
}

function setStackLocationToBottom() {
	var setTop =  $("#mainStack").height() - $("#mainStack > div").height();
	if (setTop > 0) {
		$("#mainStack > div").css({"top" : setTop});
	} else {
		$("#invisibleDiv .panel").css("width", $("#stackBody .panel").outerWidth());
	}
}
	
function reArrangeArrows(flag, callBackFunction) {
	$('#stackSvg .svg-line').remove();
	var y1, y2, x1;
	for (var i = 0; i < idsArr.length - 1; i++) {
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
		line.setAttribute('class', 'svg-line');
		x1 = Math.abs($(idsArr[i]).offset().left - $('#stackBody').offset().left + $(idsArr[i]).width());
		y1 = Math.abs($(idsArr[i]).offset().top - $('#stackBody').offset().top + $(idsArr[i]).height() / 2);
		x1 = Math.abs(x1 / ($("#stackSvg").width() / 100));
		line.setAttribute('x1', x1 + "%");
		line.setAttribute('y1', y1);
		line.setAttribute('x2', '90%');
		line.setAttribute('y2', y1);
		$('#stackSvg').append(line);
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
		//y1 = Math.abs(($(idsArr[(idsArr.length - i) - 1]).offset().top - $('#stackBody').offset().top) - ($(idsArr[(idsArr.length - i) - 1]).height() / 2));
		//y2 = Math.abs(($('#stackBody').height() - y1) - $('#stackBody .panel').height());
		y2 = ($(idsArr[i]).parents(".panel").prev().offset().top - $('#stackBody').offset().top) + $('#stackBody .panel .panel-heading').height() / 2;
		line.setAttribute('class', 'svg-line');
		line.setAttribute('x1', '90%');
		line.setAttribute('y1', y2);
		line.setAttribute('x2', '85%');
		line.setAttribute('y2', y2);
		line.style.markerEnd = 'url("#grayMarker")';
		$('#stackSvg').append(line);
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
		y1 = Math.abs($(idsArr[i]).offset().top - $('#stackBody').offset().top + $(idsArr[i]).height() / 2);
		line.setAttribute('class', 'svg-line');
		line.setAttribute('x1', '90%');
		line.setAttribute('y1', y1);
		line.setAttribute('x2', '90%');
		line.setAttribute('y2', y2);
		$('#stackSvg').append(line);
 	}
	$("#stackSvg .svg-line").eq($("#stackSvg .svg-line").length - 3).attr("id", "arrow1").css({"display" : "none", "stroke" : "blue"});
	$("#stackSvg .svg-line").eq($("#stackSvg .svg-line").length - 2).attr("id", "arrow2").css({"display" : "none", "stroke" : "blue"});
	$("#stackSvg .svg-line").eq($("#stackSvg .svg-line").length - 1).attr("id", "arrow3").css({"display" : "none", "stroke" : "blue"});
	if (flag) {
		$("#arrow1").attr("x2" , $("#arrow1").attr("x1")).css({"display" : "", "marker-end" : "url('#blueMarker')"});
		tl.to($("#arrow1"), 1, {attr : {x2 : "90%"}, onComplete: function() {
			$("#arrow1").css("marker-end", "url()");
			$("#arrow3").attr("y2" , $("#arrow3").attr("y1")).css({"display" : "", "marker-end" : "url('#blueMarker')"});
			tl.to($("#arrow3"), 1, {attr : {y2 : $("#arrow2").attr("y1")}, onComplete: function() {
				$("#arrow3").css("marker-end", "url()");
				$("#arrow2").attr("x2", "90%").css({"display" : "", "marker-end" : "url('#blueMarker')" });
				tl.to($("#arrow2"), 1, {attr : {x2 : "85%"}, onComplete: function() {
					if (typeof callBackFunction === "function") {
						callBackFunction();
     				}
				}});
   			}});
  		}});
 	}
}

function reChangeArrowHeight() {
	$.each($('#stackSvg .svg-line'), function (index) {
		$($('#stackSvg .svg-line').eq(index)).attr({
			"y1" : parseInt($(this).attr("y1")) + $('#stackBody .panel').outerHeight() + 5,
			"y2" : parseInt($(this).attr("y2")) + $('#stackBody .panel').outerHeight() + 5
		});
	});
}

function valueReplaceEffect() {
	$("body").append("<span id='dummySpan'>" + $(".returned-val").eq(0).text() + "</span>");
	var l1 = $(".returned-val").eq(0).removeClass("bg-blinking").css("z-index", "1").offset();
	$("#dummySpan").offset({
		"top" : l1.top,
		"left" : l1.left
	}).addClass("bg-blinking");
	var l2 = $(".returned-val:eq(1) .number:last").parent().offset();
	var topLength = l2.top - l1.top;
	var leftLength = l2.left - l1.left;
	TweenMax.to($(".returned-val").eq(0), 1, {top : topLength, left : leftLength});
	TweenMax.to($(".returned-val:eq(1) .number:last").parent(), 0.5, {opacity: 0, delay: 0.5, onComplete:function() {
		$(".returned-val:eq(1) .number:last").parent().text($(".returned-val").eq(0).text()).css("opacity", "1");
		stackVanishEffect();
	}});
}

function stackVanishEffect() {
	$("#dummySpan").remove();
	tl.to($("#stackBody .panel").eq(0), 1, {top : "-400", onComplete : function() {
		$("#stackBody .panel").eq(0).remove();
		setStackLocationToBottom();
		idsArr.pop();
		reArrangeArrows();
		$("#arrow1, #arrow3").css({"display" : "", "marker-end" : "url()"});
		$("#arrow2").css({"display" : "", "marker-end" : "url('#blueMarker')"});
		if ($("#stackBody .panel").length >= 2) {
			if (!$.parseJSON($("#stack" + $("#stackBody .panel:eq(0) .number:eq(0)").text() + "Hanoi2").attr("isCompleted"))) {
				$("#stack" + $("#stackBody .panel:eq(0) .number:eq(0)").text() + "Hanoi1").addClass("opacity05 bg-color-greenyellow");
				introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + $(".number:eq(0)").text() + "ElseBlkPrintStmt", "", "left"));
				introjs.nextStep();
			} else {
				$("#stack" + $("#stackBody .panel:eq(0) .number:eq(0)").text() + "Hanoi2").addClass("opacity05 bg-color-greenyellow");
				source = $(".source").eq(0).text();
				temporary = $(".temporary").eq(0).text();
				destination = $(".destination").eq(0).text();
				reverseRevealEffect();
			}
		} else {
			$("#mainHanoiCall").addClass("opacity05 bg-color-greenyellow");
			introjs.insertOption(introjs._currentStep + 1, getStep("#restart", "", "right", ""));
			introjs.nextStep();
		}
	}});
}

function reverseRevealEffect() {
	$("#arrow2").css("marker-end" , "url('#blueMarker')")
	tl.to($("#arrow2"), 1, {attr : {x2 : "90%"}, onComplete: function() {
		$("#arrow2").css("marker-end", "url()");
		$("#arrow3").css("marker-end", "url('#blueMarker')");
		tl.to($("#arrow3"), 1, {attr : {y2 : $("#arrow3").attr("y1")}, onComplete: function() {
			$("#arrow3").css("marker-end", "url()");
			$("#arrow1").css("marker-end", "url('#blueMarker')");
			tl.to($("#arrow1"), 1, {attr : {x2 : $("#arrow1").attr("x1")}, onComplete: function() {
				$("#arrow1").css("marker-end", "url()");
				/* console.log(ids) */
				//$(idsArr[idsArr.length - 2].trim()).addClass("opacity05 bg-color-greenyellow");
				stackVanishEffect();
			}});
		}});
	}});
}

function removeAdditionalDiscs() {
	for (var i = 5 - number; i >= 1; i--) {
		$("#discsSvg circle").last().remove();
		$(".circles-lines line").last().remove();
		$(".circles-text text").last().remove();
		sourceArr.pop();
	}
	sourceDiscsCount = number;
	$.each($(".circles-lines line"), function(index) {
		lineYPosMap[index] = {"y1" : $(this).attr("y1"), "y2" : $(this).attr("y2")}; 
	});
	$.each($("circle"), function(index) {
		circleYPosMap[index] = {"cy" : $(this).attr("cy")}; 
	});
	
	$.each($(".circles-text text"),function(i) {
		$(this).text(number - (i));
	});
	
	$("circle").show();
	$(".circles-lines line").show();
	$(".circles-text text").show();
	
	$("#discsSvgDiv").parent().removeClass("opacity00");
	
}

function userNextStep() {
	$(".user-btn").remove();
	introjs.nextStep();
}

function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			introjs.refresh();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}

function dynamicPopover(id, val, placement) {
	$(id).popover({
		 html: true,
		 placement: placement,
		 content: "<span class='dynamic-popover'>" + val + "</span>"
	}).popover("show");
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

function getStep(element, intro, position, tooltipClass) {
	var step = {};
	if (typeof element != 'undefined') {
		step['element'] = element;
	}
	if (typeof intro != 'undefined') {
		step['intro'] = intro;
	}
	if (typeof position != 'undefined') {
		step['position'] = position;
	}
	if (typeof tooltipClass != 'undefined') {
		step['tooltipClass'] = tooltipClass;
	}
	return step;
}

function blinkCursorAtEnd(elementId) {
	var element = document.getElementById(elementId);
	element.focus();
	var range = document.createRange();
	range.selectNodeContents(element);
	range.collapse(false);
	var sel = window.getSelection();
	sel.removeAllRanges();
	sel.addRange(range);
}
</script>

</head>
<body>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading'>Tower of Hanoi</h4>
	</div>

	<div
		class='col-xs-offset-2 col-xs-8 box-border margin-top-20 bg-info padding0'
		id='informationDiv'></div>
	<!-- <div class="text-center margin-top-20 col-xs-12 opacity00">
		<a class="btn btn-warning" id="animationDialog" data-toggle="modal" data-target="#myAnimationModal">Animation</a>
	</div> -->
	<div class='col-xs-12 margin-top-20'>
		<div class='col-xs-7 padding0'>
			<pre class='creampretab4 opacity00 col-xs-10' id='cCode'>#include &lt;stdio.h&gt;
			
<span id='mainBlk'>void <span id='main'>main() {</span>
	int num = <span class='new-number'>3</span>;
	solveHanoi(num, 'A', 'B', 'C');
}</span>

<span id='solveHanoiFun'>void solveHanoi(int num, char A, char B, char C) {
	if (num == 1) {
		printf("Move disc %d from %c to %c\n", num, A, C);
	} else {
		solveHanoi(num - 1, A, C, B);
		printf("Move disc %d from %c to %c\n", num, A, C);
		solveHanoi(num - 1, B, A, C);
	} 
}</span></pre>
	
	<div class="margin-top-2 opacity00">
		<div style="height: 250px;" id="discsSvgDiv" class="col-xs-6 padding0 ">
			<svg id="discsSvg" class="svg-css">
				<circle class="svg-disc stand1-disc1 disc1" r="33" cx="17.5%" cy="300%" stroke-width="39" discidx="1"/>
				<circle class="svg-disc stand1-disc2 disc2" r="28" cx="17.5%" cy="270%" stroke-width="35" discidx="2"/>
				<circle class="svg-disc stand1-disc3 disc3" r="24" cx="17.5%" cy="240%" stroke-width="28" discidx="3"/>
				<circle class="svg-disc stand1-disc4 disc4" r="19" cx="17.5%" cy="210%" stroke-width="22" discidx="4"/>
				<circle class="svg-disc stand1-disc5 source-disc source-top-disc disc5" r="16" cx="17.5%" cy="180%" stroke-width="17" discidx="5"/>
			
			
				<!-- <circle class="svg-disc stand1-disc1 disc1" r="7%" cx="30%" cy="300%" stroke-width="39" discidx="1"/>
				<circle class="svg-disc stand1-disc2 disc2" r="6%" cx="30%" cy="270%" stroke-width="35" discidx="2"/>
				<circle class="svg-disc stand1-disc3 disc3" r="5.5%" cx="30%" cy="240%" stroke-width="28" discidx="3"/>
				<circle class="svg-disc stand1-disc4 disc4" r="4.5%" cx="30%" cy="210%" stroke-width="22" discidx="4"/>
				<circle class="svg-disc stand1-disc5 source-disc source-top-disc disc5" r="4%" cx="30%" cy="180%" stroke-width="17" discidx="5"/> -->
				<g id="discsStand">
					<!-- <line y2="85%" y1="85%" x2="80%" x1="20%" class="svg-line" id="baseStand"/> -->
					<g id="baseStand1">
						<line y2="85%" y1="85%" x2="30%" x1="5%" class="svg-line"/>
						<line y2="85%" y1="30%" x2="17.5%" x1="17.5%" class="svg-line"/>
						<text y="92%" x="16.7%" class="svg-text">A</text>
						<text y="99%" x="11%" class="svg-text">(Source)</text>
					</g>
					
					<g id="baseStand2">
						<line y2="85%" y1="85%" x2="60%" x1="35%" class="svg-line"/>
						<line y2="85%" y1="30%" x2="47.5%" x1="47.5%" class="svg-line"/>
						<text class="svg-text" x="46.7%" y="92%">B</text>
						<text class="svg-text" x="39%" y="99%">(Temporary)</text>
					</g>
					
					<g id="baseStand3">
						<line y2="85%" y1="85%" x2="90%" x1="65%" class="svg-line"/>					
						<line y2="85%" y1="30%" x2="77.5%" x1="77.5%" class="svg-line"/>
						<text y="92%" x="76.6%" class="svg-text">C</text>
						<text y="99%" x="68%" class="svg-text">(Destination)</text>
					</g>
				</g>
				
				<g class="circles-lines">
					<line stroke="orange" y2="83%" y1="78.9%" x2="17.5%" x1="17.5%" class="svg-line" style="display: inline;"/>
					<line stroke="blue" y2="74.5%" y1="71%" x2="17.5%" x1="17.5%" class="svg-line" style="display: inline;"/>
					<line stroke="green" y2="66.1%" y1="63.3%" x2="17.5%" x1="17.5%" class="svg-line" style="display: inline;"/>
					<line stroke="red" y2="57.5%" y1="55.3%" x2="17.5%" x1="17.5%" class="svg-line" style="display: inline;"/>
					<line stroke="brown" y2="49.1%" y1="47.3%" x2="17.5%" x1="17.5%" class="svg-line top-disc-line" style="display: inline;"/>
				</g>
				
				<g class='circles-text'>
					<text x="12%" y="78.9%" class="svg-text" fill="white" style="font-size: 9px;" fixedTop='16.9'>5</text>
					<text x="12%" y="71%" class="svg-text" fill="white" style="font-size: 8px;" fixedTop='16'>4</text>
					<text x="12%" y="63.3%" class="svg-text" fill="white" style="font-size: 8px;" fixedTop='16.3'>3</text>
					<text x="13%" y="55.3%" class="svg-text" fill="white" style="font-size: 7px;" fixedTop='16.3'>2</text>
					<text x="13%" y="47.3%" class="svg-text" fill="white" style="font-size: 7px;" fixedTop='16.3'>1</text>
				</g>
				
				<!-- <g class="circles-lines">
					<line stroke="orange" y2="83%" y1="78.9%" x2="30%" x1="30%" class="svg-line" style="display: inline;"/>
					<line stroke="blue" y2="74.3%" y1="71%" x2="30%" x1="30%" class="svg-line" style="display: inline;"/>
					<line stroke="green" y2="66.3%" y1="63.5%" x2="30%" x1="30%" class="svg-line" style="display: inline;"/>
					<line stroke="red" y2="55%" y1="57.4%" x2="30%" x1="30%" class="svg-line" style="display: inline;"/>
					<line stroke="brown" y2="49%" y1="47.8%" x2="30%" x1="30%" class="svg-line top-disc-line" style="display: inline;"/>
				</g> -->
				<!-- <g class="circles-lines">
					<line class="svg-line" x1="30%" x2="30%" y1="78.9%" y2="83%" stroke="orange"/>
					<line class="svg-line" x1="30%" x2="30%" y1="71%" y2="74.3%" stroke="blue"/>
					<line class="svg-line" x1="30%" x2="30%" y1="60.7%" y2="63.3%" stroke="green"/>
					<line class="svg-line" x1="30%" x2="30%" y1="52.9%" y2="55%" stroke="red"/>
					<line class="svg-line top-disc-line" x1="30%" x2="30%" y1="45%" y2="46.5%" stroke="brown"/>
				</g> -->
			</svg>
		</div>
		<div id="outputDiv" class='opacity00 col-xs-4 padding0'>
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body"><span id="output"></span>
		</div>
	</div>	
	</div>
	
	<!-- <div class='margin-top-20 opacity00'>
		<div class='col-xs-12 padding0 ' id='discsSvgDiv' style="height: 200px;">
			<svg class='svg-css' id='discsSvg'>
				<circle discidx="1" stroke-width="45" cy="230%" cx="30%" r="4%"
								class="svg-disc stand1-disc1 disc1" />
				<circle discidx="2" stroke-width="40" cy="205%" cx="30%" r="3.5%"
								class="svg-disc stand1-disc2 disc2" />
				<circle discidx="3" stroke-width="37" cy="180%" cx="30%" r="3.3%"
								class="svg-disc stand1-disc3 disc3" />
				<circle discidx="4" stroke-width="34" cy="155%" cx="30%" r="3%"
								class="svg-disc stand1-disc4 disc4" />
				<circle discidx="5" stroke-width="30" cy="130%" cx="30%" r="2.6%"
								class="svg-disc stand1-disc5 source-disc source-top-disc disc5" />
				<g id='discsStand'>
					<line id='baseStand' class='svg-line' x1="20%" x2="80%" y1="85%"
								y2="85%" />
					<g>
						<line class='svg-line' x1="30%" x2="30%" y1="30%" y2="85%" />
						<text class='svg-text' x='28%' y='90%'>Source</text>
					</g>
					
					<g>
						<line class='svg-line' x1="50%" x2="50%" y1="30%" y2="85%" />
						<text class='svg-text' x='47.5%' y='90%'>Temporary</text>
					</g>
					
					<g>
						<line class='svg-line' x1="70%" x2="70%" y1="30%" y2="85%" />
						<text class='svg-text' x='67%' y='90%'>Destination</text>
					</g>
				</g>
				
				<g class='circles-lines'>
					<line stroke="orange" y2="83%" y1="79.9%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="blue" y2="74.0%" y1="71.2%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="green" y2="65%" y1="62.6%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="red" y2="56.3%" y1="54%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="violet" y2="47.2%" y1="45.3%" x2="30%" x1="30%"
								class="svg-line top-disc-line" />
				</g>
			</svg>
		</div>
	</div> -->
	<!-- <div id="outputDiv" class='opacity00 col-xs-12 padding0'>
		<div class="output-console-title-bar">
			<span class="title">Output</span>
		</div>
		<div class="output-console-body"><span id="output"></span>
		</div>
	</div>	 -->		
</div>
		<div class='col-xs-5'>
			<div class='box-border opacity00' id='animationDiv'>
				<div class='col-xs-12'>
					<div id='invisibleDiv' class='col-xs-12 padding0'></div>
					<div id='mainStack' class='col-xs-12 padding0'>
						<div class='col-xs-offset-1 col-xs-11 padding0'>
							<div class='col-xs-12 padding0'>
								<div id='stackBody' class='col-xs-10 padding0'></div>
								<svg class="svg-css" id="stackSvg">
					               <marker style="fill: gray;" orient="auto" markerHeight="5"
					                 markerWidth="5" refY="2.5" refX="4" id="grayMarker">
					                              <path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
					               </marker>
					               <marker style="fill: blue;" orient="auto" markerHeight="5"
					                 markerWidth="5" refY="2.5" refX="4" id="blueMarker">
					                              <path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
					               </marker>
					               <line class="svg-line" id="arrow2" y2="0%" x2="0%" y1="0%" x1="0%" style="display: none; marker-end: url('#grayMarker')"/>
								</svg>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center margin-top-20 col-xs-12">
		<a class="btn btn-warning opacity00" id="restart">Restart</a>
	</div>
	<!-- <div class="modal fade" id="myAnimationModal1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-center">Tower of Hanoi</h4>
				</div>
				<div class="modal-body">
					<div class='col-xs-12 padding0' id='discsSvgDiv' style="height: 500px;">
						<svg class='svg-css' id='discsSvg'>
							<circle discidx="1" stroke-width="45" cy="230%" cx="30%" r="4%"
											class="svg-disc stand1-disc1 disc1" />
							<circle discidx="2" stroke-width="40" cy="205%" cx="30%" r="3.5%"
											class="svg-disc stand1-disc2 disc2" />
							<circle discidx="3" stroke-width="37" cy="180%" cx="30%" r="3.3%"
											class="svg-disc stand1-disc3 disc3" />
							<circle discidx="4" stroke-width="34" cy="155%" cx="30%" r="3%"
											class="svg-disc stand1-disc4 disc4" />
							<circle discidx="5" stroke-width="30" cy="130%" cx="30%" r="2.6%"
											class="svg-disc stand1-disc5 source-disc source-top-disc disc5" />
							<g id='discsStand'>
								<line id='baseStand' class='svg-line' x1="20%" x2="80%" y1="85%"
											y2="85%" />
								<g>
									<line class='svg-line' x1="30%" x2="30%" y1="30%" y2="85%" />
									<text class='svg-text' x='27%' y='90%'>Source (A)</text>
								</g>
								
								<g>
									<line class='svg-line' x1="50%" x2="50%" y1="30%" y2="85%" />
									<text class='svg-text' x='46.5%' y='90%'>Temporary (B)</text>
								</g>
								
								<g>
									<line class='svg-line' x1="70%" x2="70%" y1="30%" y2="85%" />
									<text class='svg-text' x='66%' y='90%'>Destination (C)</text>
								</g>
							</g>
							<g class='circles-lines'>
								<line stroke="orange" y2="83%" y1="79.9%" x2="30%" x1="30%"
											class="svg-line" />
								<line stroke="blue" y2="74.0%" y1="71.2%" x2="30%" x1="30%"
											class="svg-line" />
								<line stroke="green" y2="65%" y1="62.6%" x2="30%" x1="30%"
											class="svg-line" />
								<line stroke="red" y2="56.3%" y1="54%" x2="30%" x1="30%"
											class="svg-line" />
								<line stroke="violet" y2="47.2%" y1="45.3%" x2="30%" x1="30%"
											class="svg-line top-disc-line" />
							</g>
						</svg>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div> -->
	<!-- <div class='col-xs-12 margin-top-20 opacity00'>
		<div class='col-xs-12 padding0 ' id='discsSvgDiv' style="height: 500px;">
			<svg class='svg-css' id='discsSvg'>
				<circle discidx="1" stroke-width="45" cy="230%" cx="30%" r="4%"
								class="svg-disc stand1-disc1 disc1" />
				<circle discidx="2" stroke-width="40" cy="205%" cx="30%" r="3.5%"
								class="svg-disc stand1-disc2 disc2" />
				<circle discidx="3" stroke-width="37" cy="180%" cx="30%" r="3.3%"
								class="svg-disc stand1-disc3 disc3" />
				<circle discidx="4" stroke-width="34" cy="155%" cx="30%" r="3%"
								class="svg-disc stand1-disc4 disc4" />
				<circle discidx="5" stroke-width="30" cy="130%" cx="30%" r="2.6%"
								class="svg-disc stand1-disc5 source-disc source-top-disc disc5" />
				<g id='discsStand'>
					<line id='baseStand' class='svg-line' x1="20%" x2="80%" y1="85%"
								y2="85%" />
					<g>
						<line class='svg-line' x1="30%" x2="30%" y1="30%" y2="85%" />
						<text class='svg-text' x='28%' y='90%'>Source</text>
					</g>
					
					<g>
						<line class='svg-line' x1="50%" x2="50%" y1="30%" y2="85%" />
						<text class='svg-text' x='47.5%' y='90%'>Temporary</text>
					</g>
					
					<g>
						<line class='svg-line' x1="70%" x2="70%" y1="30%" y2="85%" />
						<text class='svg-text' x='67%' y='90%'>Destination</text>
					</g>
				</g>
				
				<g class='circles-lines'>
					<line stroke="orange" y2="83%" y1="79.9%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="blue" y2="74.0%" y1="71.2%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="green" y2="65%" y1="62.6%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="red" y2="56.3%" y1="54%" x2="30%" x1="30%"
								class="svg-line" />
					<line stroke="violet" y2="47.2%" y1="45.3%" x2="30%" x1="30%"
								class="svg-line top-disc-line" />
				</g>
			</svg>
		</div>
	</div> -->
</body>
</html>