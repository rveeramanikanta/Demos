<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Linear Search</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
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

<style type="text/css">
.margin-top-20 {
	margin-top: 20px;	
}

.padding0 {
	padding: 0;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
}

.creampretab4 {
	tab-size: 2;
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 13px;
	font-style: inherit;
	padding: 5px;
	overflow-y: auto;
	white-space: pre;
	word-spacing: -3px;
}

#outputDiv {
	margin-top: 25px;
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
	height: 85px;
	padding: 10px;
}

#animationDiv {
	height: 250px;
}

.table-border {
	border: 2px solid;
	padding: 5px;
	font-weight: bold;
}

table {
	table-layout: fixed;
	width: 90%;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

.errorMsg {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.ui-effects-transfer {
	border: 2px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 9999999;
}

#arrName {
	font-weight: bold;
	font-size: 18px;
}

.zIndex {
	position: relative;
	z-index: 9999999;
}

.fa-check {
	color: green;
}

.fa-times {
	color: red;
}

.user-btn {
	background-color: green;
}

#arrInit > div {
	display: inline-block;
}

.introjs-tooltiptext  pre {
	background-color: #003399;
	border: medium none;
	color: white;
	margin-top: 10px;
	padding: 2px
}

.introjs-tooltip {
	min-width: 300px;
}

.flip-css {
	position: relative;
	display: inline-block;
}

.ct-code-b-red {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

.introjs-tooltiptext br {
	margin-bottom: 10px; 
}
</style>
<script type="text/javascript">
var introjs;
var typingSpeed = 10;

$(document).ready(function() {
	//introGuide();
	
	var l1 = $("#searchElmt").offset();
	$("#searchVal").offset({"top": l1.top, "left": l1.left});
	
	$("[contenteditable=true]").on("keydown", function(e) {
		introjs.refresh();
		$(".errorMsg").remove();
		$(".introjs-tooltiptext .new-val").text($(this).text());
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$('.introjs-tooltiptext').append("<div class='errorMsg'><br/>Enter a number of maximum 2 digits.</div>");
			e.preventDefault();
		}
	});
	
	$("[contenteditable=true]").on("keyup", function(e) {
		introjs.refresh();
		$(".introjs-tooltiptext .new-val").text($(this).text());
		if ($(this).text() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		if ($(".empty").length > 0) {
			$('.errorMsg').remove();
        	$('.introjs-tooltiptext').append("<div class='errorMsg'><br/><br/>Please enter a value.</div>");
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
	});
	
	
	$('#restart').click(function() {
		location.reload();
	});
	
	introGuide();
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#cCode",
			intro : "",
			position : "right"
		}, {
			element : "#arrInit",
			intro : "",
			position: "bottom"
		}, {
			element : "#animationDiv",
			intro : "",
			position: "left",
			tooltipClass: "hide"
		}, {
			element : "#searchElmtInit",
			intro : "",
			position: "right"
		}, {
			element : "#animationDiv",
			intro : "",
			position: "left",
			tooltipClass: "hide"
		}, {
			element : "#elmtIndex",
			intro : "",
			position: "right",
		}, {
			element : "#animationDiv",
			intro : "",
			position: "left",
			tooltipClass: "hide"
		}, {
			element : "#iInit",
			intro : "",
			position: "right",
		}, {
			element : "#animationDiv",
			intro : "",
			position: "left",
			tooltipClass: "hide"
		},{
			element : "#forLoop",
			intro : "",
			position: "right"
		}, {
			element : "#ifBlk",
			intro : "",
			position: "right"
		}, {
			element : "#animationDiv",
			intro : "",
			position: "left"
		}, {
			element : "#ifElseBlk",
			intro : "",
			position: "top"
		}, {
			element : "#outputDiv",
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
		case "cCode":
			$(".introjs-nextbutton").hide();
			$("[contenteditable=true]").attr("contenteditable", false);
			var text = "In this program we will learn how a <span class='ct-code-b-yellow'>linear search</span>" 
						+ " algorithm works over an array.";
			typing($(".introjs-tooltiptext"), text, function() {
				$(".introjs-nextbutton").show();
			});
			break;
			
		case "arrInit":
			$(".introjs-nextbutton").hide();
			$("[contenteditable=false]").attr("contenteditable", true);
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Let us consider an array of <span class='ct-code-b-yellow'>8</span> elements. " 
							+ "<br/>Feel free to modify the values in the array."
				typing(".introjs-tooltiptext", text, function() {
					charAtEnd("val3");
					$(".introjs-nextbutton").show();
				});
			});
			break;
		case "animationDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				if (introjs._currentStep == 2) {
					$("#arrInit > div").attr("contenteditable", false);
					$.each($("#arrInit > div"), function(index, value) {
						$("#arrTable tr:nth-child(3) span").eq(index).text($(this).text());
					});
					
					$('#arrInit').effect( "transfer", { to: $("#arrTable"), className: "ui-effects-transfer" }, 1000, function() {
						$("#arrTable").removeClass("opacity00");
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
					});
				} else if (introjs._currentStep == 4) {
					$("#searchElmt").attr("contenteditable", false);
					TweenMax.to("#searchBox", 0.5, {opacity: 1, onComplete:function() {
						$("#searchBox").removeClass("opacity00");
						$("#searchVal").text($("#searchElmt").text()).removeClass("opacity00");
						$("#searchElmt").addClass("zIndex").effect("highlight", {color: '#FFFFFF'}, 1000);
						TweenMax.to("#searchVal", 0.5, {top: 0, left:0, onComplete:function() {
							$("#searchElmt").removeClass("zIndex");
							/* $("#searchVal").css({"border": "1px solid gray;" , "border-radius" : "50%", "padding" : "5px"}); */
							setTimeout(function() {
								introjs.nextStep();
							}, 500);
						}});
					}})
				} else if (introjs._currentStep == 6) {
					TweenMax.to("#elmtIndexBox", 0.5, {opacity: 1, onComplete:function() {
						TweenMax.to("#elmtIndexBox", 0.5, {opacity: 1, onComplete:function() {
							$("#elmtIndexBox").removeClass("opacity00");
							setTimeout(function() {
								introjs.nextStep();
							}, 500);
						}});
					}})
				} else if (introjs._currentStep == 8) {
					TweenMax.to("#iValSpan", 0.5, {opacity: 1, onComplete:function() {
						$("#iValSpan").removeClass("opacity00");
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
					}});
				} else if (introjs._currentStep == 11) {
					var text = "In the <span class='ct-code-b-yellow'>for-loop</span> we initialize the value" 
							+ " of <span class='ct-code-b-yellow'>i</span> to " 
							+ "<span class='ct-code-b-yellow'>0</span> and start searching" 
							+ " from <span class='ct-code-b-yellow'>0<sup>th</sup> index</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#iValSpan").append(" = <span id='iVal'>0</span>");
						$("#iVal").addClass("animated zoomIn").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
							$("#arrowsTr td:eq(1) i").removeClass("opacity00");
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='tooltipIfCndtn()'>Next &#8594;</a>");
						});
					});
					
					//$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='verify()'>Next &#8594;</a>");
					//verify();
				}
			});
			break;
			
		case "searchElmtInit":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				
				var text = "Let us declare an <span class='ct-code-b-yellow'>int</span>" 
					+ " variable called <span class='ct-code-b-yellow'>searchElement</span>" 
					+ " and initialize it with a value <span class='ct-code-b-yellow new-val'>4</span>, " 
					+ "which will be searched in the array for its <span class='ct-code-b-yellow'>index</span>.<br/>" 
					+ "You can also change the value <span class='ct-code-b-yellow new-val'>4</span> to any other value.";
				
				typing(".introjs-tooltiptext", text, function() {
					$("#searchElmt").effect("highlight", {color: '#ffff00'}, 500, function() {
						charAtEnd("searchElmt");
						$(".introjs-nextbutton").show();
					});
				});
			});
			break;
			
		case "iInit":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Let us declare an <span class='ct-code-b-yellow'>int</span>" 
						+ " variable called <span class='ct-code-b-yellow'>i</span> that will" 
						+ " work as the <span class='ct-code-b-yellow'>loop-counter</span> variable.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "forLoop":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "In this <span class='ct-code-b-yellow'>for-loop</span> we will iterate through the elements" 
						+ " of the array to find a match with the given <span class='ct-code-b-yellow'>searchElement</span>.";
				
				
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "ifBlk":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "This <span class='ct-code-b-yellow'>if</span> condition is use to verifies if the" 
							+ " <span class='ct-code-b-yellow'>element</span> at current " 
							+ "index <span class='ct-code-b-yellow'>i</span> is " 
							+ "same as the <span class='ct-code-b-yellow'>searchElement</span>.<br/> " 
							+ "If it is the same as the element index is initialize to <span class='ct-code-b-yellow'>i</span>" 
							+ " and the control will " 
							+ "break out of the <span class='ct-code-b-yellow'>for-loop</span>.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "elmtIndex":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				/* var text = "Now we are declaring an int variable <span class='ct-code-b-yellow'>elmtIndex</span> and " 
						+ "initialized into <span class='ct-code-b-yellow'>-1</span>."; */
						
				var text = "Let us declare another <span class='ct-code-b-yellow'>int</span> variable " 
						+ "called <span class='ct-code-b-yellow'>elementIndex</span>" 
						+ " which is initialize to <span class='ct-code-b-yellow'>-1</span>.<br/>" 
						+ "This variable is used to store the <span class='ct-code-b-yellow'>index</span>" 
						+ " of the array where the element is found.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "ifElseBlk":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#flagVal").effect("highlight", {color: 'pink'}, 1000);
				
				$(".introjs-tooltiptext").append("<span id='tooltipIfCndtn' style='font-family: monospace;'>" 
								+ "<span id='tooltipElementIndex' class='flip-css'>elementIndex</span> != -1</span>");
				
				
				var l = $("#ifCndtn").offset();
				$("#tooltipIfCndtn").offset({
					"top" : l.top,
					"left" : l.left
				});
				
				TweenMax.to("#tooltipIfCndtn", 1, {top : 0, left : 0, onComplete : function() {
					flipEffect("#tooltipElementIndex", parseInt($("#elmtIndexVal").text()), function() {
					//$("#flagTrue").effect("highlight", {color: 'pink'}, 1000, function() {
						var text;
						if (parseInt($("#elmtIndexVal").text()) != -1) {
							$("#output").append("<div class='opacity00'>Search element " + $("#searchVal").text() + " is found at index : " + (count - 2) + ".</div>");
							text = "Since the above condition evalutes to <span class='ct-code-b-yellow'>true</span>, control enters " 
									+ "into the <span class='ct-code-b-yellow'>if-block</span>.";
							var nextStep = {
								element : "#ifBody",
								intro : "",
								tooltipClass : "hide"
							}
							introjs.insertOption(introjs._currentStep + 1, nextStep);
						} else {
							$("#output").append("<div class='opacity00'>Search element " + $("#searchVal").text() + " is not found.</div>");
							text = "Since the above condition evalutes to <span class='ct-code-b-red'>false</span>, control enters into " 
									+ "the <span class='ct-code-b-yellow'>else-block</span>.";
							var nextStep = {
								element : "#elseBody",
								intro : "",
								tooltipClass : "hide"
							}
							introjs.insertOption(introjs._currentStep + 1, nextStep);
						}
						$(".introjs-tooltiptext").append("<div></div>");
						typing($(".introjs-tooltiptext > div:last-child"), text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				}});
				//});
			});
			break;
			
		case "ifBody":
		case "elseBody":
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 1000);
			});
			break;
			
		case "outputDiv":
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = $("#output > div:last-child").removeClass("opacity00").text();
				typing($("#output > div:last-child"), text, function() {
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
				});
			});
			break;
			
		case "restart":
			introjs.refresh();
			$(".introjs-tooltip").css("min-width", "200px");
			$('.introjs-nextbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click to restart.";
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
	$(selector).typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function charAtEnd(elementId) {
	var element = document.getElementById(elementId);
	element.focus();
	var range = document.createRange();
	range.selectNodeContents(element);
	range.collapse(false);
	var sel = window.getSelection();
	sel.removeAllRanges();
	sel.addRange(range);
}

var count = 2;

function verify() {
	$(".user-btn").remove();
	$("#tooltipReuseArea").empty();
	$("#tooltipIfCndtn").effect("highlight", {color: '#ffff00'}, 500, function() {
		$("#tooltipReuseArea").append("<br/><div><span style='font-family: monospace; font-size:13px;' id='tooltipCndtn'>" 
								+ "<span id='tooltipSearchElmt' class='flip-css'>searchElement</span> == <span class='flip-css' id='tooltipArr'>" 
								+ "arr[<span id='tooltipI' class='flip-css'>i</span>]</span></span></div>");
		
		var l1 = $("#tooltipIfCndtn").offset();
		$("#tooltipCndtn").offset({
			"top" : l1.top,
			"left" : l1.left
		});
		
		TweenMax.to("#tooltipCndtn", 0.5, {top : 0, left : 0, onComplete : function() {
			flipEffect("#tooltipI", $("#iVal").text(), function() {
				flipEffect("#tooltipArr", $("#arrTable tr:eq(2) td:eq(" + (parseInt($("#iVal").text()) + 1) + ") span").text(), function() {
					flipEffect("#tooltipSearchElmt", $("#searchVal").text(), function() {
						$("#tooltipReuseArea > div:last-child").append("<div></div>");
						var text = "";
						if (parseInt($("#tooltipSearchElmt").text()) == parseInt($("#tooltipArr").text())) {
								text = "Since the above condition evaluates to <span class='ct-code-b-yellow'>true</span> the control enters into the" 
									+ " <span class='ct-code-b-yellow'>if-block</span>, initialize the <span class='ct-code-b-yellow'>elementIndex</span>" 
									+ " with the current value in <span class='ct-code-b-yellow'>i</span> and exits " 
									+ "the <span class='ct-code-b-yellow'>for-loop</span>.";
						} else {
							text = "Since the above condition evaluates to <span class='ct-code-b-red'>false</span>, " 
								+ "the <span class='ct-code-b-yellow'>if-block</span> is skipped and the control " 
								+ "goes to the <span class='ct-code-b-yellow'>for-loop</span> and increments the " 
								+ "value of <span class='ct-code-b-yellow'>i</span> by <span class='ct-code-b-yellow'>1</span>.";
						}
						
						typing($("#tooltipReuseArea > div:last-child > div:last"), text, function() {
							if (parseInt($("#tooltipSearchElmt").text()) == parseInt($("#tooltipArr").text())) {
								$("#arrTable tr:nth-child(4) td:nth-child(" + count + ") .fa-check").removeClass("hide");
								$("#arrTable tr:nth-child(2) td:nth-child(" + count + ") span").css({"color" : "green", "font-weight" : "bold"});
								$("#elmtIndexVal").text(count - 2).effect("highlight", {color: 'pink'}, 1000, function() {
									$(".introjs-nextbutton").show();
								});
							} else {
								$("#arrTable tr:nth-child(4) td:nth-child(" + count + ") .fa-times").removeClass("hide");
								var l = $("#arrTable tr:nth-child(1) td:nth-child(" + count + ") i").addClass("opacity00").offset();
								$("#arrTable tr:nth-child(1) td:nth-child(" + (count + 1) + ") i").removeClass("opacity00").offset({
									"top" : l.top,
									"left" : l.left
								});
								TweenMax.to($("#arrTable tr:nth-child(1) td:nth-child(" + (count + 1) + ") i"), 0.5, {top : 0, left : 0, onComplete : function() {
									if (count <= 9) {
										$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='verify()'>Next &#8594;</a>");
									} else {
										$(".introjs-nextbutton").show();
									}
									$("#iVal").text(parseInt($("#iVal").text()) + 1);
								}});
								count++;
							}
						});
					});
				});
			});
		}});
	});
	
	
	
	
	/* var text = "Compare Search Element(" + $("#searchVal").text() + ") with arr[" + (count - 2) + "] value";
	typing($(".introjs-tooltiptext > div:last-child"), text, function() {
		$("#searchVal").effect("highlight", {color: 'pink'}, 1000, function() {
			$("#arrTable tr:nth-child(3) td").eq(count - 1).effect("highlight", {color: 'pink'}, 1000, function() {
				var searchElmt = parseInt($("#searchVal").text());
				var arrElmt = parseInt($("#arrTable tr:nth-child(3) td:nth-child(" + (count) +  ") span").text());
				if (searchElmt == arrElmt) {
					$("#arrTable tr:nth-child(3) td:nth-child(" + count + ") .fa-check").removeClass("hide");
					$("#arrTable tr:nth-child(1) td:nth-child(" + count + ") span").css({"color" : "green", "font-weight" : "bold"});
					$("#elmtIndexVal").text(count - 2).effect("highlight", {color: 'pink'}, 1000, function() {
						$(".introjs-tooltiptext").append("<div></div>");
						var text = "Finally Search Element(" + $("#searchVal").text() + ") found at index " + (count - 2) + ".";
						typing($(".introjs-tooltiptext > div:last-child"), text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				} else {
					$("#arrTable tr:nth-child(4) td:nth-child(" + count + ") .fa-times").removeClass("hide");
					if (count <= 8) {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='verify()'>Next &#8594;</a>");
					} else {
						$(".introjs-tooltiptext").append("<div></div>");
						var text = "Search Element(" + $("#searchVal").text() + ") not found at given array.";
						typing($(".introjs-tooltiptext > div:last-child"), text, function() {
							$(".introjs-nextbutton").show();
						});
					}
					count++;
				}
			});
		});
	}); */
}

/* var count = 2;

function verify() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").append("<div></div>");
	var text = "Compare Search Element(" + $("#searchVal").text() + ") with arr[" + (count - 2) + "] value";
	typing($(".introjs-tooltiptext > div:last-child"), text, function() {
		$("#searchVal").effect("highlight", {color: 'pink'}, 1000, function() {
			$("#arrTable tr:nth-child(3) td").eq(count - 1).effect("highlight", {color: 'pink'}, 1000, function() {
				var searchElmt = parseInt($("#searchVal").text());
				var arrElmt = parseInt($("#arrTable tr:nth-child(3) td:nth-child(" + (count) +  ") span").text());
				if (searchElmt == arrElmt) {
					$("#arrTable tr:nth-child(3) td:nth-child(" + count + ") .fa-check").removeClass("hide");
					$("#arrTable tr:nth-child(1) td:nth-child(" + count + ") span").css({"color" : "green", "font-weight" : "bold"});
					$("#elmtIndexVal").text(count - 2).effect("highlight", {color: 'pink'}, 1000, function() {
						$(".introjs-tooltiptext").append("<div></div>");
						var text = "Finally Search Element(" + $("#searchVal").text() + ") found at index " + (count - 2) + ".";
						typing($(".introjs-tooltiptext > div:last-child"), text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				} else {
					$("#arrTable tr:nth-child(4) td:nth-child(" + count + ") .fa-times").removeClass("hide");
					if (count <= 8) {
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='verify()'>Next &#8594;</a>");
					} else {
						$(".introjs-tooltiptext").append("<div></div>");
						var text = "Search Element(" + $("#searchVal").text() + ") not found at given array.";
						typing($(".introjs-tooltiptext > div:last-child"), text, function() {
							$(".introjs-nextbutton").show();
						});
					}
					count++;
				}
			});
		});
	});
} */


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

function tooltipIfCndtn() {
	$(".user-btn").remove();
	$(".introjs-tooltiptext").append("<br/><pre class='opacity00'>if (<span id='tooltipIfCndtn'>searchElement == arr[i]</span>) {\\n   elementIndex = i;\\n   break;\\n}</pre>");
	$(".introjs-tooltiptext").append("<div id='tooltipReuseArea'></div>");
	$(".introjs-tooltiptext pre").removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
		$(this).removeClass("animated fadeIn");
		$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='verify()'>Next &#8594;</a>");
	});
	
}

</script>
</head>
<body>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading' id='demoTitle'>Linear-Search</h4>
	</div>
	
	<div class='col-xs-12 margin-top-20 padding0'>
		<div class='col-xs-6'>
			<pre class='box-border creampretab4' id='cCode'>#include&lt;stdio.h&gt;
			
void <span id='main'>main()</span> {
	<div id='arrInit' style='display: inline-block;'>int arr[] = {<div contenteditable=true maxlength='1' id='val0'>5</div>, <div contenteditable=true maxlength='1' id='val1'>8</div>, <div contenteditable=true maxlength='1' id='val2'>1</div>, <div contenteditable=true maxlength='1' id='val3'>4</div>, <div contenteditable=true maxlength='1' id='val4'>7</div>, <div contenteditable=true maxlength='1' id='val5'>6</div>, <div contenteditable=true maxlength='1' id='val6'>2</div>, <div contenteditable=true maxlength='1' id='val7'>10</div>};</div>
	<div id='searchElmtInit' style="display: inline-block;">int searchElement = <div id='searchElmt' contenteditable=true maxlength='1' style="display: inline-block;">4</div>;</div>
	<span id='elmtIndex'>int elementIndex = -1;</span>
	<span id='iInit'>int i;</span>
	<span id='forLoop'>for (i = 0; i < arr.length; i++) {
		<span id='ifBlk'>if (searchElement == arr[i]) {
			elementIndex = i;
			break;
		}</span>
	}</span>

	<span id='ifElseBlk'><span>if (<span id='ifCndtn'>elementIndex != -1</span>)</span> {
		<span id='ifBody'>printf("Search element %d is found at index : %d.", searchElement, elementIndex);</span>
	} else {
		<span id='elseBody'>printf("Search element %d is not found.", searchElement);</span>
	}</span>
}
</pre>
		</div>
		<div class='col-xs-6' style="padding-left: 0;">
			<div class='box-border' id='animationDiv'>
				<div class="col-xs-12 margin-top-20 text-center" style="font-family: monospace;">
					<!-- <div id="searchBox" class="col-xs-4 opacity00 padding0">Search element = <span id="searchVal" class="opacity00">5</span></div>
					<div id="elmtIndexBox" class="col-xs-3 col-xs-offset-5 opacity00 padding0" style='text-align: right;'>elementIndex = <span id="elmtIndexVal">-1</span></div> -->
					<span id="searchBox" class="opacity00">Search
						element = <span id="searchVal" class="opacity00">4</span>
					</span> <span id="elmtIndexBox" class="opacity00" style="margin-left: 30px;">elementIndex = <span id="elmtIndexVal">-1</span>
					</span>
				</div>
				
				<div class="col-xs-12 margin-top-20 text-center" style="font-family: monospace;"><span id='iValSpan' class='opacity00' style="font-weight: bold;">i</span></div>
				<div class="col-xs-12 text-center" style="margin-top: 40px;">
					<table class='opacity00' align='center' id='arrTable'>
						<tr id='arrowsTr'>
							<td></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
							<td><i aria-hidden="true" class="fa fa-arrow-down opacity00"></i></td>
						</tr>
						
						<tr>
							<td></td>
							<td><span>0</span></td>
							<td><span>1</span></td>
							<td><span>2</span></td>
							<td><span>3</span></td>
							<td><span>4</span></td>
							<td><span>5</span></td>
							<td><span>6</span></td>
							<td><span>7</span></td>
						</tr>
						
						<tr>
							<td id='arrName'>arr : </td>
							<td class='table-border'><span>5</span></td>
							<td class='table-border'><span>8</span></td>
							<td class='table-border'><span>1</span></td>
							<td class='table-border'><span>4</span></td>
							<td class='table-border'><span>7</span></td>
							<td class='table-border'><span>6</span></td>
							<td class='table-border'><span>2</span></td>
							<td class='table-border'><span>10</span></td>
						</tr>
						<tr>
							<td></td>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i>
							<td><i aria-hidden="true" class="fa fa-check hide"></i><i
								class="fa fa-times hide" aria-hidden="true"></i></td>
						</tr>
					</table>
				</div>
			</div>
			<div id="outputDiv" class='col-xs-offset-2 col-xs-8'>
				<div class="output-console-title-bar">
					<span class="title">Output</span>
				</div><div class="output-console-body"><span id="output"></span>
				</div>
			</div>
		</div>
	</div>
	
	<div class="text-center margin-top-20 col-xs-12">
		<a class="btn btn-warning opacity00" id="restart">&nbsp;Restart</a>
	</div>
</body>
</html>
