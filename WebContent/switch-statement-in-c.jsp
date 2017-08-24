<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>switch</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/introjs.css" rel="stylesheet">
<link href="css/introjs-ct.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<script src="js/jquery-latest.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/intro.js" type="text/javascript"></script>
<script src="js/typewriting.min.js" type="text/javascript"></script>
<script src="js/gs/TweenMax.min.js"></script>
<style type="text/css">

.allowNumbers {
	background-color: transparent;
	border: none;
	width: 10px;
}

.allowNumbers:focus {
	outline: none;
}

.position-absolute {
	position: absolute;
	font-family: monospace;
}

body {
	-moz-tab-size: 4;
	tab-size: 4;
}

[contenteditable=true]:empty:before {
  content: attr(placeholder);
  color: #B8B8A0;
}

#outputDiv {
	position: relative;
	z-index: 1000000;
}

.output-console-title-bar {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
	margin-top: 14px;
}

.output-console-body {
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	height: 165px;
	margin-bottom: 14px;
	padding: 10px;
	font-weight: bold;
}

.title {
	font-size: 12px;
}

.creamePreTab4 {
	background-color: #fffae6;
	margin-top: 12px;
	white-space: pre;
}

.opacity00 {
	opacity: 0;
	pointer-events: none;
	cursor: default;
}

.introjs-nextbutton, .initializeBtn, .evaluateBtn,
.continueBtn, .tryNewValBtn {
	background-color: green !important;
}

.restartTutorialBtn {
	background-color: orange;
}

.errorText {
	color: red;
	font-weight: bold;
}

.color-blue {
	color: blue;
}

.introjs-tooltip-custom-width {
	min-width: -moz-fit-content;
	width: intrinsic; /* Safari/WebKit uses a non-standard name */
	width: -moz-max-content; /* Firefox/Gecko */
	width: -webkit-max-content;
}

.focus {
	background-color: rgba(255, 255, 255, 0.898);
	border: 1px solid rgba(0, 0, 0, 0.5);
	border-radius: 4px;
	box-shadow: 0 2px 15px rgba(0, 0, 0, 0.4);
	position: absolute;
	transition: all 1.3s ease-out 0s;
	z-index: 9999998;
	padding: 4px;
}

.introjs-arrow.left-bottom {
	bottom: 50% !important;
}

.introjs-tooltip-min-width-custom {
	min-width: 110px;
}

</style>

</head>
<body>
	<div class='col-xs-12'>
		<div class="text-center">
			<h4>
				<span class="label ct-demo-heading">switch-statement in Action</span>
			</h4>
		</div>
		<div class="col-xs-offset-1 col-xs-7">
			<div>
			<pre class="creamePreTab4">#include&lt;stdio.h&gt;
void main() {
   <span id='initialization'>int value = <input type="text" name="lname" id='initializationValue' class='allowNumbers'  maxlength="1" value='2'>;</span>
   <span id='switchBlock'><span id='switchKeyword'>switch (<span id='condition'>value</span>) </span><span id='openBrace'>{</span>
	 <span id='case1Blk'><span id='case1'>case 1:</span>
		<span id='case1Sop'>printf("One\n");</span>
		<span id='case1break'>break;</span></span>
	 <span id='case2Blk'><span id='case2'>case 2:</span>
		<span id='case2Sop'>printf("Two\n");</span>
		<span id='case2break'>break;</span></span>
	 <span id='case34Blk'><span id='case3Blk'><span id='case3'>case 3:</span>
		<span id='case3Sop'>printf("Three\n");</span></span>
	 <span id='case4Blk'><span id='case4'>case 4:</span>
		<span id='case4Sop'>printf("Four\n");</span>
		<span id='case4break'>break;</span></span></span>
	 <span id='case56Blk'><span id='case5'>case 5:</span>
	 <span id='case6'>case 6:</span>
	 	<span id='case56Sop'>printf("Five or Six\n");</span>
		<span id='case56break'>break;</span></span>
	 <span id='defaultBlk'><span id='casedefault'>default:</span>
		<span id='defaultSop'>printf("%d did not match any of the existing cases\n",value);</span></span>
   <span id='endBrace'>}</span></span>
<span id='mainEnd'>}</span>
</pre>
			</div>
		</div>
		<div class="col-xs-3" id="outputDiv">
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body"><span id="output"></span>
			</div>
		</div>

<script type="text/javascript">
var value = 2;
var caseNumber;
var tempVal;
var typingSpeed = 20;

var map = {1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 56 : "Five or Six"};

$(document).ready(function() {
	introJsGuide();
	$('.initializeBtn').click(function() {
		value = $('#initializationValue').val();
		$(this).addClass('hidden');
		evaluateSwitchBlk();
		
		introjs.nextStep();
		$("#initializationValue").attr("contenteditable", false);
	});
	
	$(".allowNumbers").keydown(function(e) { // conditions to enter text
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		
		if ($(this).text().length >= max) {
			e.preventDefault();
		}
	});
	
	document.getElementById("initializationValue").addEventListener("input", function() {
		introjs.refresh();
		$('.changeVal').text($(this).val());
		value = parseInt($('#initializationValue').val());
		if ($('#initializationValue').val().length > 0) {
			$(".initializeBtn").removeClass("opacity00");
			$('.errorText').empty();
		} else {
			$('.errorText').html("Please enter a value.");
			charAtEnd("initializationValue");
			$(".initializeBtn").addClass("opacity00");
		}
		
	});
	
	$("body").keydown(function(e){
		if (e.keyCode == 13) {
			e.preventDefault();
		}
	});
	
	$('.restartTutorialBtn').click(function() {
		location.reload();
	});
	
	$("#initialization").click(function() {
		$("#initializationValue").focus();
	});
	
	$(".tryNewValBtn").click(function() {
		$("#output").empty();
		$(this).addClass("hidden");
		$(".restartTutorialBtn").addClass("hidden");
		$(".tr").addClass("hidden");
		introjs.nextStep();
	})
});
	
function charAtEnd(elementId) {
	$('#' + elementId).select();
	var element = document.getElementById(elementId);
	var SearchInput = element;
    SearchInput.focus();
}
	
function evaluateSwitchBlk() {
	if (parseInt(value) > 0 && parseInt(value) <= 6) {
		
		tempVal = value;
		if (value == 5 || value == 6) {
			value = 56;
		}
		
		$('#output').append("<div class='opacity00'>" + map[value] + "</div>");
		
		var option1 = {
			element: '#case' + value + 'Blk',
			intro: '',
			position: 'bottom',
			tooltipClass : "hide"
		}
		introjs.insertOption(introjs._currentStep + 1, option1);
		var option2 = {
			element: '#case' + value + 'Sop',
			tooltipClass: "hide"
		}
		introjs.insertOption(introjs._currentStep + 2, option2);
		
		var option3 = {
			element: "#outputDiv",
			tooltipClass: "hide"
		}
		
		introjs.insertOption(introjs._currentStep + 3, option3);
		
		
		if (value != 3) {
			var option4 = {
				element: '#case' + value + 'break',
				intro: 'break',
				position: 'right'
			}
			introjs.insertOption(introjs._currentStep + 4, option4);
			
			var option4 = {
				element : "#mainEnd",
				intro : "",
				position: "right"
			}
			introjs.insertOption(introjs._currentStep + 5, option4);
				
			var option5 = {
				element : "#initialization",
				intro : "The <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>value</b> is declared and initialized to " 
						+ "<b class='changeVal ct-code-b-yellow'> " + $('#initializationValue').text() + "</b>. You can also change it to any other value." 
						+ "<br><span class='errorText'></span>",
				position : "bottom",
				tooltipClass : 'introjs-tooltip-custom-width'
			}
				
			introjs.insertOption(introjs._currentStep + 6, option5);
			
		} else {
			
			
			var option4 = {
				element : "#mainEnd",
				intro : "",
				position: "right"
			}
			introjs.insertOption(introjs._currentStep + 4, option4);
					
			var option5 = {
				element : "#initialization",
				intro : "The <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>value</b> is declared and initialized to " 
						+ "<b class='changeVal ct-code-b-yellow'> " + $('#initializationValue').text() + "</b>. You can also change it to any other value." 
						+ "<br><span class='errorText'></span>",
				position : "bottom",
				tooltipClass : 'introjs-tooltip-custom-width'
			}
			introjs.insertOption(introjs._currentStep + 5, option5);
		}
		value = tempVal;
	} else {
		$('#output').append("<div class='opacity00'>" + value + " did not match any of the existing cases.</div>");
		var option1 = {
				element: '#defaultBlk',
				intro: '',
				position: 'bottom'
			}
			introjs.insertOption(introjs._currentStep + 1, option1);
			var option2 = {
				element: '#defaultSop',
				tooltipClass: "hide"
			}
			introjs.insertOption(introjs._currentStep + 2, option2);
			
			var option3 = {
				element: "#outputDiv",
				tooltipClass: "hide"
			}
			introjs.insertOption(introjs._currentStep + 3, option3);
			
			
			var option4 = {
				element : "#mainEnd",
				intro : "",
				position: "right"
			}
			introjs.insertOption(introjs._currentStep + 4, option4);
				
				
			var option5 = {
				element : "#initialization",
				intro : "The <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>value</b> is declared and initialized to " 
						+ "<b class='changeVal ct-code-b-yellow'> " + $('#initializationValue').text() + "</b>. You can also change it to any other value." 
						+ "<br><span class='errorText'></span>",
				position : "bottom",
				tooltipClass : 'introjs-tooltip-custom-width'
			}
			
			introjs.insertOption(introjs._currentStep + 5, option5);
			
	}
}
	
	
function typing(id, content, callBackFunction) {
	$(".introjs-nextbutton").addClass("opacity00");
	$(id).typewriting( content , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(id).removeClass("typingCursor");
		$(".introjs-nextbutton").removeClass("hide opacity00");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function introJsGuide() {
	introjs = introJs();
	
	introjs.setOptions({
		steps : [ {
			element : "#switchBlock",
			intro : "Above code demonstrates the working of a <b class='ct-code-b-yellow'>switch</b> construct.",
			position : "bottom"
		}, {
			element : "#switchKeyword",
			intro : "This is a <b class='ct-code-b-yellow'>switch</b> statement.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#condition",
			intro : "This is the expression part of the <b class='ct-code-b-yellow'>switch</b> statement.",
			position: "bottom"
		}, {
			element : "#openBrace",
			intro : "The code inside the switch construct is called the <b class='ct-code-b-yellow'>switch body</b>.",
			position : "right"
		}, {
			element : "#case1Blk",
			intro : "This is how a normal <b class='ct-code-b-yellow'>case</b> label is written.<br/><br/>If the value of the expression" 
					+ " in the <b class='ct-code-b-yellow'>switch</b> statement matches the <b class='ct-code-b-yellow'>case</b> " 
					+ "constant the control enters into the <b class='ct-code-b-yellow'>case</b> block which follows the" 
					+ " <b class='ct-code-b-yellow'>case</b> label.<br/><br/>The <b class='ct-code-b-yellow'>break;</b> statement ensures" 
					+ " that the control comes out of the <b class='ct-code-b-yellow'>switch body</b> skipping all the other " 
					+ "<b class='ct-code-b-yellow'>case</b> blocks.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#case2Blk",
			intro : "Control enters into <b class='ct-code-b-yellow'>case 2</b>, if <b class='ct-code-b-yellow'>value</b> is equal to <b class='ct-code-b-yellow'>2</b>.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#case3Blk",
			intro : "This is an example of a <b class='ct-code-b-yellow'>case</b> where there is no <b class='ct-code-b-yellow'>break;</b> statement."
					+ "<br/><br/>When control enters into such a <b class='ct-code-b-yellow'>case</b> block, after the block execution,"
					+ " control enters into the <b class='ct-code-b-yellow'>case</b> block which follows it.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#case34Blk",
			intro : "It executes all the statements in the following <b class='ct-code-b-yellow'>case</b> blocks until it encounters a <b class='ct-code-b-yellow'>break;</b> statement.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#case56Blk",
			intro : "This is another way of clubbing two or more <b class='ct-code-b-yellow'>case</b> blocks.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#defaultBlk",
			intro : "The statements in the <b class='ct-code-b-yellow'>default</b> block are executed when the value of <b class='ct-code-b-yellow'>switch</b> expression does not match any available <b class='ct-code-b-yellow'>case</b>.",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}, {
			element : "#initialization",
			intro : "The <b class='ct-code-b-yellow'>int</b> variable <b class='ct-code-b-yellow'>value</b> is declared and initialized to " 
					+ "<b class='changeVal ct-code-b-yellow'>2</b>.<br> You can also change it to any other value." 
					+ "<br><span class='errorText'></span>",
			position : "bottom",
			tooltipClass : 'introjs-tooltip-custom-width'
		}]
	});
	introjs.setOption('showStepNumbers', false);
	introjs.setOption('exitOnOverlayClick', false);
	introjs.setOption('exitOnEsc', false);
	introjs.setOption('keyboardNavigation', false);
	introjs.start();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
	$(".introjs-tooltipbuttons").append("<a class='introjs-button initializeBtn hidden'>Next &#8594;</a>");
	$(".introjs-tooltipbuttons").append("<a class='introjs-button tryNewValBtn hidden' style='margin-left:20px; margin-right:20px;'>Try with a different value</a>");
	$(".introjs-tooltipbuttons").append("<a class='introjs-button restartTutorialBtn hidden'>Restart</a>");
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
			
		case "switchKeyword":
			introjs.refresh();
			$('.introjs-prevbutton').hide();
			break;
			
		case "condition":
			introjs.refresh();
			$('.introjs-prevbutton').show();
			$("#endBrace").removeClass("focus");
			break;
			
		case "initialization":
			$('.introjs-prevbutton').hide();
			$(".restartTutorialBtn").addClass("hidden");
			$("#initializationValue").attr("contenteditable", true);
			$('.introjs-helperLayer').one('transitionend', function () {
				charAtEnd("initializationValue");
				$('.introjs-nextbutton').addClass("hide");
				$('.initializeBtn').removeClass("hidden");
			});
			break;
			
		case "openBrace":
			
			$("#endBrace").addClass("focus");
			break;
			
		case "case1Sop":
		case "case2Sop":
		case "case3Sop":
		case "case4Sop":
		case "case56Sop":
		case "defaultSop":
			introjs.refresh();
			$('#case'+ caseNumber).removeClass('color-blue');
			$('.introjs-helperLayer').one('transitionend', function () {
				setTimeout(function() {
					introjs.nextStep();
				}, 800);
			});
			break;
			
		case "case1Blk":
		case "case2Blk":
		case "case3Blk":
		case "case4Blk":
		case "case56Blk":
		case "defaultBlk":
			
			if (introjs._currentStep >= 10) {
				$('.introjs-nextbutton').addClass("opacity00");
			}
			$("#endBrace").removeClass("focus");
			$('.introjs-helperLayer').one('transitionend', function () {
				
				if (introjs._currentStep >= 10) {
					caseNumber = (value > 0 && value <= 6 ? value : "default");
					
					if (caseNumber == "default") {
						var text = "Since the value <b class='ct-code-b-yellow'>" + $("#initializationValue").text() + "</b> does not match any <b class='ct-code-b-yellow'>case</b> constant " 
									+ "the control enters the <b class='ct-code-b-yellow'>default</b> block and executes the statements " 
									+ "under it."
						typing(".introjs-tooltiptext", text);
					} else {
						setTimeout(function() {
							introjs.nextStep();
						}, 1000);
					}
					$('#case'+ caseNumber).addClass('color-blue');
				}
			});
		break;
		case "outputDiv":
			$('.introjs-helperLayer').one('transitionend', function () {
				$('#output > div').fadeTo(500, 1);
				setTimeout(function() {
					if (value == 3) {
						value++;
						$('case4Blk').addClass("repeateCase4Blk");
						evaluateSwitchBlk();
						introjs.nextStep();
					} else {
						introjs.nextStep();
					}
				}, 1000);
			});
		break;
		case "case1break":
		case "case2break":
		case "case4break":
		case "case56break":
				$('.introjs-nextbutton').addClass("opacity00");
				$('.introjs-tooltipbuttons').hide();
			$('.introjs-helperLayer').one('transitionend', function () {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000)
			});
		break;
		
		case "mainEnd":
			introjs.refresh();
			$('.introjs-nextbutton').addClass("opacity00");
			$('.introjs-tooltipbuttons').show();
			$('.introjs-helperLayer').one('transitionend', function () {
				var text = "Control comes out of the <b class='ct-code-b-yellow'>switch</b> block and exits the main method.";
				
				typing(".introjs-tooltiptext", text, function() {
					$(".tryNewValBtn").removeClass("hidden");
					$(".restartTutorialBtn").removeClass("hidden");
					$(".introjs-nextbutton").addClass("hidden");
				});
			});
			break;
		}
	});
}

</script>		

</div>
</body>
</html>