<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<title>Matrix Multiplication</title>

<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.margin-top-5 {
	margin-top: 5px;
}

.box-border {
	border: 2px solid gray;
	border-radius: 8px;
}

.padding0 {
	padding: 0;
}

#expDiv {
	height: 400px;
	padding: 10px 0;
	font-size: 16px;
	z-index: 9999999;
	background-color: rgba(255, 255, 255, 0.9);
}

#animationDiv {
	min-height: 570px;
	font-size: 16px;
}

.user-btn {
	background-color: green;
	border-radius: 0 0.2em 0.2em 0;
}

.blinking {
	animation-name: blinking;
	animation-duration: 1s;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
	border-color: lightblue;
	border-width: 2px;
}

@keyframes blinking { 
	50% {
		background-color: lightgreen;
	}
}

.flip-css {
	position: relative;
	display: inline-block;
}
</style>

<script type="text/javascript">
var tl = new TimelineLite();
var typingSpeed = 5;
var splitCount = 1;

$(document).ready(function() {
	introGuide();
	
	$('#restart').click(function() {
		location.reload();
	});
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#expDiv",
			intro : "",
			tooltipClass : "hide"
		}, {
			element : "#animationDiv",
			intro : "",
			tooltipClass : "hide"
		}, {
			element : "#mapreduceExp",
			intro : "",
			position : "right"
		}, {
			element : "#animationDiv",
			intro : "",
			position: "top",
			tooltipClass : "hide"
		}, {
			element : "#expDiv",
			intro : "",
			tooltipClass : "hide"
		}, {
			element : "#animationDiv",
			intro : "",
			position: "top",
			tooltipClass : "hide"
		}, {
			element : "#animationDiv",
			intro : "",
			position : "right",
			tooltipClass : "hide"
		}, {
			element : "#restart",
			intro : "",
			position : "right"
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "expDiv":
			if (introjs._currentStep == 0) {
				$("#expDiv").append("<ul><li></li></ul>");
				var text = "Let us consider a 2X2 matrices of A and B.";
				typing($("#expDiv ul li:last-child"), text, function() {
					$("#expDiv ul").append("<li class='col-xs-12 padding0'></li>");
					var text = "Here the input is like as ";
					typing($("#expDiv ul li:last-child"), text, function() {
						$("#expDiv ul li:last-child").append("<div id='inputs' class='text-center'></div>")
						$("#inputs").append("<div class='col-xs-3'><div><span id='line1'>A, 0, 0, 5</span></div>" 
											+ "<div><span id='line2'>A, 0, 1, 6</span></div>" 
											+ "<div><span id='line3'>A, 1, 0, 4</span></div>" 
											+ "<div><span id='line4'>A, 1, 1, 3</span></div></div>");
						$("#inputs").append("<div class='col-xs-3'><div><span id='line5'>B, 0, 0, 3</span></div>" 
											+ "<div><span id='line6'>B, 0, 1, 4</span></div>" 
											+ "<div><span id='line7'>B, 1, 0, 5</span></div>" 
											+ "<div><span id='line8'>B, 1, 1, 6</span></div></div>");
						
						$("#expDiv ul").append("<li></li>");
						var text = "This input file is send to mapper phase.";
						typing($("#expDiv ul li:last-child"), text, function() {
							$("#expDiv ul").append("<li></li>");
							var text = "In map phase each input from the dataset is organized to produce a key value pairs. " 
										+ "&emsp; <a class='introjs-button user-btn' onclick='mapperPhase()'>next &#8594;</a>";
							typing($("#expDiv ul li:last-child"), text);
						});
					});
				});
				
			} else if (introjs._currentStep == 4) {
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#expDiv ul").append("<li></li>");
					var text = "After Map task the key values are :";
					typing($("#expDiv ul li:last-child"), text, function() {
						$("#expDiv ul li:last-child").append("<div class='animated zoomIn'><div>(0, 0) &emsp; [(A, 0, 5) (A, 1, 6) (B, 0, 3) (B, 1, 5)]</div>"
						+ "<div>(0, 1) &emsp; [(A, 0, 5) (A, 1, 6) (B, 0, 4) (B, 1, 6)]</div>"
						+ "<div>(1, 0) &emsp; [(A, 0, 4) (A, 1, 3) (B, 0, 3) (B, 1, 5)]</div>"
						+ "<div>(1, 1) &emsp; [(A, 0, 4) (A, 1, 3) (B, 0, 4) (B, 1, 6)]</div></div>").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
							$("#expDiv ul").append("<li></li>");
							var text = "In reduce phase each input to the reducer is the key that corresponds " 
										+ "to the output cell" 
										+ " of resultant matrix and values required to do computation of that cell."
										+ "&emsp; <a class='introjs-button user-btn' onclick='reducerPhase()'>next &#8594;</a>";
							typing($("#expDiv ul li:last-child"), text, function() {
								
							});
						});
					});
				});
			} else {
			}
			break;
			
		case "animationDiv":
			if (introjs._currentStep == 1) {
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#mapreduceExp").append("<ul><li></li></ul>");
					var text = "Key value contains row and column number.";
					typing($("#mapreduceExp ul li:last-child"), text, function() {
						$("#mapreduceExp ul").append("<li></li>");
						var text = "Value contains matrix name i.e. A or B, line number, value."
							+ "&emsp; <a class='introjs-button user-btn' onclick='mapperAnimation1()'>next &#8594;</a>";
						typing($("#mapreduceExp ul li:last-child"), text);
					});
				});
			} else if (introjs._currentStep == 3) {
				$(".introjs-nextbutton").hide();
				$("#mapreduceExp").removeClass("col-xs-8").addClass("col-xs-12");
				$(".split-div").removeClass("col-xs-3").addClass("col-xs-2");
				$(".itr-div").removeClass("col-xs-2").addClass("col-xs-1");
				$(".val-div").removeClass("col-xs-5").addClass("col-xs-3");
				$(".introjs-helperLayer").one("transitionend", function() {
					$(".introjs-tooltip").removeClass("hide");
					$(".introjs-tooltiptext").append("<ul><li></li></ul>");
					var text = "Let us consider the all keys that are : ";
					typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='getMapperKeys()'>next &#8594;</a>");
					});
				});
			} else if (introjs._currentStep == 5) {
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#mapreduceExp").append("<ul><li></li></ul>");
					var text = "In reducer task we use two hashmaps namely hashA and hashB for each key.";
					typing($("#mapreduceExp ul li:last-child"), text, function() {
						$("#mapreduceExp ul").append("<li></li>");
						var text = "Inside hashmap hashA we put all values that starts with matrix name A. i.e.";
						typing($("#mapreduceExp ul li:last-child"), text, function() {
							$("#mapreduceExp ul li:last-child").append("<div class='animated zoomIn'><div>A-0-5</div><div>A-1-6</div></div>").one("animationend", function() {
								$("#mapreduceExp ul").append("<li></li>");
								var text = "Similarly in hashmap hashB we put all values that starts with matrix name B. i.e.";
								typing($("#mapreduceExp ul li:last-child"), text, function() {
									$("#mapreduceExp ul li:last-child").append("<div class='animated zoomIn'><div>B-0-3</div><div>B-1-5</div></div>").one("animationend", function() {
										$("#mapreduceExp ul li:last-child div").last().append("&emsp; <a class='introjs-button user-btn' onclick='reducerStep1()'>next &#8594;</a>");
									});
								});
							});
						});
					});
				});
			} else {
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#animationDiv").append("<div class='col-xs-4 padding0 animated zoomIn'><div>0,0,45.0</div>"
						+	"<div>0,1,56.0</div><div>1,0,27.0</div><div>1,1,34.0</div></div>").one("animationend", function() {
							setTimeout(function() {
								introjs.nextStep();
							});
						});
				});
			}
			break;
			
		case "mapreduceExp":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				mapperAnimation2();
			});
			break;
			
		case "reducerSplitDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Let us consider first key i.e <div class='ct-code-b-yellow'>(0, 0)</div>";
				typing(".introjs-tooltiptext", text, function() {
					$("#reducerSplitDiv").append("<div class='margin-top-5 col-xs-12 padding0' style='display: flex; align-items: center;'></div>");
					$("#reducerSplitDiv > div").last().append("<div class='col-xs-1 padding0 animated zoomIn'>(0, 0)</div>").one("animationend", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep3()'>next &#8594;</a>");
					});
				});
			});
			break;
			
		case "restart":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click restart.";
				typing($(".introjs-tooltiptext"), text);
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

function mapperPhase() {
	$('.user-btn').remove();
	introjs.nextStep();
}

function reducerPhase() {
	$('.user-btn').remove();
	$(".mapreduce-title").html("<h4>Reducer-Phase</h4>");
	$("#mapreduceExp").empty().removeClass("col-xs-12").addClass("col-xs-8");
	introjs.nextStep();
}

function getSplitA() {
	$('.user-btn').remove();
	$("#mapreduceExp ul").append("<li></li>");
	var text = "Let us consider the number of rows of matrix A i.e. rows = 2." 
				+ "<br/>So we have two iterations in each line in matrix A."
				+ "&emsp; <a class='introjs-button user-btn' onclick='getLine1()'>next &#8594;</a>";
	typing($("#mapreduceExp ul li:last-child"), text);
}

function getLine1() {
	$('.user-btn').remove();
	$("#mapreduceExp ul").append("<li></li>");
	var text = "Let us take the line 1 from the input file. i.e.";
	typing($("#mapreduceExp ul li:last-child"), text, function() {
		$("#line1").addClass("blinking-border");
		setTimeout(function () {
			$("#mapreduceExp ul li:last-child").append("&emsp; <span id='matrixALine1'>A, 0, 0, 5</span>");
			var line1Offset = $("#line1").offset();
			$("#matrixALine1").offset( {
				top : line1Offset.top,
				left : line1Offset.left
			});
			tl.to("#matrixALine1", 1 , {top : 0, left : 0, onComplete : function() {
				$("#line1").removeClass("blinking-border");
				$("#mapreduceExp ul li:last-child").append("&emsp; <a class='introjs-button user-btn' onclick='getMatrixName()'>next &#8594;</a>");
			}});
		}, 1000);
	});
}

function getMatrixName() {
	$('.user-btn').remove();
	$("#mapreduceExp ul").append("<li></li>");
	var text = "Here matrix name is equals to A, so we store key value at " 
				+ "first iteration set of indicesAndValue[1] and 0 i.e.";
	typing($("#mapreduceExp ul li:last-child"), text, function() {
		$("#mapreduceExp ul li:last-child").append("&emsp;<span>(0, 0)</span>");
		$("#mapreduceExp ul").append("<li></li>");
		var text = "Similarly we store values " 
					+ "first iteration set of matrix name (A), indicesAndValue[2]  and indicesAndValue[3] i.e.";
		typing($("#mapreduceExp ul li:last-child"), text, function() {
			$("#mapreduceExp ul li:last-child").append("&emsp;<span>(A, 0, 5)</span>");
			
			$("#mapreduceExp ul").append("<li></li>");
			var text = "Similarly we store key and values at " 
						+ "second iteration is [(0,1) (A, 1, 6)].";
			typing($("#mapreduceExp ul li:last-child"), text, function() {
				$("#mapreduceExp ul li:last-child").append("&emsp; <a class='introjs-button user-btn' onclick='getAllMapVals()'>next &#8594;</a>");
			});
		});
	});
}

function getAllMapVals() {
	$('.user-btn').remove();
	$("#mapreduceExp ul").append("<li></li>");
	var text = "Similarly we get all key and values for each and every line.";
	typing($("#mapreduceExp ul li:last-child"), text, function() {
		$("#mapSplits").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$("#mapreduceExp ul").append("<li></li>");
			var text = "Finaly we send this data into reducer phase.";
			typing($("#mapreduceExp ul li:last-child"), text, function() {
				$("#mapreduceExp ul li:last-child").append("&emsp; <a class='introjs-button user-btn' onclick='ExpPhase()'>next &#8594;</a>");
			});
		});
	});
}

function ExpPhase() {
	$('.user-btn').remove();
	introjs.nextStep();
}

function mapperAnimation1() {
	introjs.refresh();
	$('.user-btn').remove();
	$("#mapreduceExp").append("<div class='col-xs-12 animated zoomIn margin-top-20 padding0 text-center' " 
		+ "style='font-weight: bold;'>" 
		+ "<div class='col-xs-3 padding0 split-div'>Split</div>" 
		+ "<div class='col-xs-2 padding0 itr-div'>Iterations (k)</div>" 
		+ "<div class='col-xs-2 padding0 key-div'>Key <div>(row/column, k)</div></div>" 
		+ "<div class='col-xs-5 padding0 val-div'>Value <div>(name, column/row Number, value)</div>" 
		+ "</div></div>").one("animationend", function() {
			setTimeout(function () {
				introjs.nextStep();
			}, 1000);
		});
}

function mapperAnimation2() {
	$("#mapreduceExp").append("<div class='col-xs-12 padding0 margin-top-5 text-center' id='split" + splitCount + "Div' " 
			+ "style='align-items: center; display: flex; font-weight: bold;'></div>");
	$('.user-btn').remove();
	$(".introjs-tooltiptext").empty().append("<ul><li></li></ul>");
	var text = "Let us consider the split from the input file i.e. <div class='ct-code-b-yellow'>" + $("#line" + splitCount).html() + "</div>";
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		var splitArr = $("#line" + splitCount).text().split(",");
		$("#split" + splitCount + "Div").append("<div class='col-xs-3 animated zoomIn padding0 split-div'>" 
				+ "<span class='matrix-name'>" + splitArr[0].trim() + "</span>, <span class='row-number'>" + splitArr[1].trim() + "</span>," 
				+ " <span class='row-number'>" + splitArr[2].trim() +"</span>, <span class='value'>" + splitArr[3].trim() + "</span></div>");
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='mapperStep1()'>next &#8594;</a>");
		introjs.refresh();
	});
}

function mapperStep1() {
	$('.user-btn').remove();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "";
	if ($("#split" + splitCount + "Div .split-div .matrix-name").last().html() == "A") {
		text = "Each line in a matrix A, evaluates depending upon the total number of columns of matrix B " 
				+ "i.e. <span class='ct-code-b-yellow'>2</span>.<br/> " 
				+ "So we have two iterations that are k = 0, k = 1.";
	} else {
		text = "Each line in a matrix B, evaluates depending upon the total number of rows of matrix A " 
				+ "i.e. <span class='ct-code-b-yellow'>2</span>.<br/> " 
				+ "So we have two iterations that are k = 0, k = 1.";
	}
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		$("#split" + splitCount + "Div").append("<div class='col-xs-2 padding0 animated zoomIn itr-div'><div class='k0'> k = 0 </div><div class='k1'> k = 1 </div></div>");
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='mapperStep2()'>next &#8594;</a>");
		introjs.refresh();
	});
}

function mapperStep2() {
	$('.user-btn').remove();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "";
	if ($("#split" + splitCount + "Div .split-div .matrix-name").last().html() == "A") {
		text = "Row number and iteration count (k) are stored into key. i.e." 
			+ "<div class='ct-code-b-yellow'>(" + $("#split" + splitCount + "Div .split-div .row-number").first().html() + ", 0)</div>" 
			+ "<div class='ct-code-b-yellow'>(" + $("#split" + splitCount + "Div .split-div .row-number").first().html() + ", 1)</div>";
	} else {
		text = "Iteration count (i), column number are stored into key. i.e."
			+ "<div class='ct-code-b-yellow'>(0, " + $("#split" + splitCount + "Div .split-div .row-number").last().html() + ")</div>" 
			+ "<div class='ct-code-b-yellow'>(1, " + $("#split" + splitCount + "Div .split-div .row-number").last().html() + ")</div>";
	}
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		if ($("#split" + splitCount + "Div .split-div .matrix-name").last().html() == "A") {
			$("#split" + splitCount + "Div").append("<div class='col-xs-2 padding0 animated zoomIn key-div'><div>" 
					+ "<span class='key" + $("#split" + splitCount + "Div .split-div .row-number").first().html() + "0'>(" 
					+ $("#split" + splitCount + "Div .split-div .row-number").first().html() + ", 0)</span></div>" 
					+ "<div><span class='key" + $("#split" + splitCount 
					+ "Div .split-div .row-number").first().html() + "1'>(" + $("#split" + splitCount + "Div .split-div .row-number").first().html() + ", 1)</span></div></div>");
			introjs.refresh();
		} else {
			$("#split" + splitCount + "Div").append("<div class='animated zoomIn padding0 key-div col-xs-2'><div>" 
					+ "<span class='key0" + $("#split" + splitCount + "Div .split-div .row-number").last().html() + "'>(0, " 
					+ $("#split" + splitCount + "Div .split-div .row-number").last().html() + ")</span></div>" 
					+ "<div><span class='key1" + $("#split" + splitCount + "Div .split-div .row-number").last().html() 
					+ "'>(1, " + $("#split" + splitCount + "Div .split-div .row-number").last().html() + ")</span></div></div>");
			introjs.refresh();
		}
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='mapperStep3()'>next &#8594;</a>");
	});			
}

function mapperStep3() {
	$('.user-btn').remove();
	$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "";
	if ($("#split" + splitCount + "Div .split-div .matrix-name").last().html() == "A") {
		text = "matrix name, column and value are stored into value. i.e." 
			+ "(A, " + $("#split" + splitCount + "Div .split-div .row-number").last().html() +  ", " 
			+ $("#split" + splitCount + "Div .split-div .value").last().html() +")</div>";
	} else {
		text = "matrix name, row and value are stored into value. i.e." 
			+ "(B, " + $("#split" + splitCount + "Div .split-div .row-number").first().html() +  ", " 
			+ $("#split" + splitCount + "Div .split-div .value").html() +")</div>";
	}
	
	typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
		if ($("#split" + splitCount + "Div .split-div .matrix-name").last().html() == "A") {
			$("#split" + splitCount + "Div").append("<div class='animated zoomIn padding0 col-xs-5 val-div'><div>" 
					+ "<span class='val" + $("#split" + splitCount + "Div .split-div .row-number").first().html() + "0'>(A, " 
					+ $("#split" + splitCount + "Div .split-div .row-number").last().html() +  ", " 
					+ $("#split" + splitCount + "Div .split-div .value").last().html() +")</span></div>" 
					+ "<div><span class='val" + $("#split" + splitCount + "Div .split-div .row-number").first().html() 
					+ "1'>(A, " + $("#split" + splitCount + "Div .split-div .row-number").last().html() +  ", " 
					+ $("#split" + splitCount + "Div .split-div .value").last().html() +")</span></div></div>");
			introjs.refresh();
		} else {
			$("#split" + splitCount + "Div").append("<div class='animated zoomIn col-xs-5 padding0 val-div'><div>" 
					+ "<span class='val0" + $("#split" + splitCount + "Div .split-div .row-number").last().html() + "'>(B, " 
					+ $("#split" + splitCount + "Div .split-div .row-number").first().html() +  ", " 
					+ $("#split" + splitCount + "Div .value").html() +")</span></div>" 
					+ "<div><span class='val1" + $("#split" + splitCount + "Div .split-div .row-number").last().html() 
					+ "'>(B, " + $("#split" + splitCount + "Div .row-number").first().html() +  ", " 
					+ $("#split" + splitCount + "Div .value").html() +")</span></div></div>");
			introjs.refresh();
		}
		splitCount++;
		if (splitCount <= 8) {
			$(".introjs-tooltiptext ul").append("<li></li>");
			var text = "Similarly done for next split.";
			typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='mapperAnimation2()'>next &#8594;</a>");
			});
		} else {
			$(".introjs-tooltiptext ul").append("<li></li>");
			var text = "Finally collect similar key and send to reducer phase.";
			typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
				$(".introjs-nextbutton").show();
			});
		}
	});
}

function getMapperKeys() {
	$(".user-btn").remove();
	$("#split1Div").append("<div class='col-xs-1 padding0 animated zoomIn'>(0, 0)</div>");
	$("#split2Div").append("<div class='col-xs-1 padding0 animated zoomIn'>(0, 1)</div>");
	$("#split3Div").append("<div class='col-xs-1 padding0 animated zoomIn'>(1, 0)</div>");
	$("#split4Div").append("<div class='col-xs-1 padding0 animated zoomIn'>(1, 1)</div>").one("animationend", function() {
		$(".introjs-tooltiptext ul").append("<li></li>");
		var text = "Collect all values of key (0, 0) i.e. ";
		typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
			$(".key00, .val00").addClass("blinking");
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='getMapKey00Vals()'>next &#8594;</a>");
		});
	});
}

function getMapKey00Vals() {
	$(".user-btn").remove();
	$(".key00, .val00").removeClass("blinking");
	$("#split1Div").append("<div class='col-xs-3 padding0 animated zoomIn'>(A, 0, 5)&emsp;(A, 1, 6)&emsp;(B, 0, 3)&emsp;(B, 1, 5)</div>").one("animationend", function() {
		$(".introjs-tooltiptext ul").append("<li></li>");
		var text = "Similarly we collect all values for corresponding keys.";
		typing($(".introjs-tooltiptext ul li:last-child"), text, function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='getAllMapKeysVals()'>next &#8594;</a>");
		});
	});
}

function getAllMapKeysVals() {
	$(".user-btn").remove();
	$("#split2Div").append("<div class='col-xs-3 padding0 animated zoomIn'>(A, 0, 5)&emsp;(A, 1, 6)&emsp;(B, 0, 4)&emsp;(B, 1, 6)</div>");
	$("#split3Div").append("<div class='col-xs-3 padding0 animated zoomIn'>(A, 0, 4)&emsp;(A, 1, 3)&emsp;(B, 0, 3)&emsp;(B, 1, 5)</div>");
	$("#split4Div").append("<div class='col-xs-3 padding0 animated zoomIn'>(A, 0, 4)&emsp;(A, 1, 3)&emsp;(B, 0, 4)&emsp;(B, 1, 6)</div>").one("animationend", function() {
		$(".introjs-nextbutton").show();
	});
}

function reducerStep1() {
	$(".user-btn").remove();
	$("#mapreduceExp ul").append("<li></li>");
	var text = "we take two float variables i.e. a_ij and b_jk;";
	typing($("#mapreduceExp ul li:last-child"), text, function() {
		$("#mapreduceExp ul li:last-child").append("<div class='animated zoomIn'><div>int n = 2;</div><div>float a_ij;</div><div>float b_jk;</div></div>").one("animationend", function() {
			$("#mapreduceExp ul li:last-child div").last().append("&emsp; <a class='introjs-button user-btn' onclick='reducerStep2()'>next &#8594;</a>");
		});
	});
}

function reducerStep2() {
	$(".user-btn").remove();
	$("#mapreduceExp").append("<div id='reducerSplitDiv' class='col-xs-12 margin-top-20 padding0 text-center' " 
		+ " style='font-weight: bold; min-height: 200px;'>" 
		+ "<div class='col-xs-12 animated zoomIn padding0'>" 
		+ "<div class='col-xs-1 padding0 split-div'>key</div>" 
		+ "<div class='col-xs-2 padding0 itr-div'>Iterations (n)</div>" 
		+ "<div class='col-xs-2 padding0 key-div'>Maps</div>" 
		+ "<div class='col-xs-2 padding0 val-div'>Value (a_ij)</div>"
		+ "<div class='col-xs-2 padding0 val-div'>Value (b_jk)</div>"
		+ "<div class='col-xs-2 padding0 val-div'>a_ij * b_jk</div>"
		+ "<div class='col-xs-1 padding0 val-div'>result</div>"
		+ "</div></div></div>").one("animationend", function() {
			introjs.insertOption(introjs._currentStep + 1, getStep("#reducerSplitDiv", "", "right"));
			setTimeout(function () {
				introjs.nextStep();
			}, 1000);
		});
}

function reducerStep3() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").append("<div></div>");
	var text = "Here we have done two iterations i.e n = 2";
	typing($(".introjs-tooltiptext div:last-child"), text, function() {
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-2 padding0 animated zoomIn'>" 
				+ "<div>n = 0</div><br/><div>n = 1</div><br/></div>").one("animationend", function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep4()'>next &#8594;</a>");
		});
	});
}

function reducerStep4() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").empty();
	var text = "We get hashmap values.";
	typing($(".introjs-tooltiptext"), text, function() {
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-2 padding0 animated zoomIn'>" 
				+ "<div>A-0-5</div><div>B-0-3</div><br/><div>A-1-6</div><div>B-1-5</div></div>").one("animationend", function() {
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep5()'>next &#8594;</a>");
		});
	});
}

function reducerStep5() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").append("<div></div>");
	var text = "We store the map values into a_ij and b_jk.";
	typing($(".introjs-tooltiptext > div:last-child"), text, function() {
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-2 padding0 animated zoomIn'><div>5</div><br/><br/><div>6</div></div>");
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-2 padding0 animated zoomIn'><div>3</div>" 
			+ "<br/><br/><div>5</div></div>").one("animationend", function() {
				$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep6()'>next &#8594;</a>");
			});
	});
}

function reducerStep6() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").empty();
	var text = "We multiple a_ij and b_jk values in each iteration and stored into result.";
	typing($(".introjs-tooltiptext"), text, function() {
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-2 padding0 animated zoomIn'><div class='a_ijb_jk flip-css'>5 * 3</div>" 
			+ "<br/><br/><div class='a_ijb_jk flip-css'>6 * 5</div></div>").one("animationend", function() {
				applyFlipping($("#reducerSplitDiv > div .a_ijb_jk").eq(0), "15", function() {
					applyFlipping($("#reducerSplitDiv > div .a_ijb_jk").eq(1), "30", function() {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep7()'>next &#8594;</a>");
					});
				});
		});
	});
}

function reducerStep7() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").empty();
	var text = "Finally we add a_ij and b_jk values we get final position of key (0, 0).";
	typing($(".introjs-tooltiptext"), text, function() {
		
		$("#reducerSplitDiv > div").last().append("<div class='col-xs-1 padding0 animated zoomIn'>" 
				+ "<div class='result'>45</div></div>").one("animationend", function() {
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='reducerStep8()'>next &#8594;</a>");	
			});
	});
}

function reducerStep8() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").append("<br/><br/><div></div>");
	var text = "Similarly we done for all keys.";
	typing($(".introjs-tooltiptext > div:last-child"), text, function() {
		$(".introjs-nextbutton").show();
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

function applyFlipping(selector, val, callBackFunction) {
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
	<div class="text-center margin-top-20">
		<span class="label ct-demo-heading" id='demoTitle'>Explanation
			of Matrices Multiplication</span>
	</div>
	
	<div class="text-center margin-top-20">
			<a class="btn btn-warning opacity00" id="restart">&nbsp;Restart</a>
	</div>
		
	<div class='col-xs-offset-2 col-xs-8 padding0 box-border margin-top-20'
		id='expDiv'></div>
	<div class='col-xs-12 margin-top-20 padding0'>
		<div class='col-xs-offset-1 col-xs-10'>
			<div class='box-border' id='animationDiv'>
				<div class='text-center mapreduce-title'>
					<h4>Mapper-Phase</h4>
				</div>
				<div id='mapreduceExp' class='col-xs-8 padding0' style="min-height: 300px;"></div>
			</div>
		</div>
	</div>
</body>
</html>