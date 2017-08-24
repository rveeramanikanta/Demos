						<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>single and double dimensional arrays</title>

<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/font-awesome.min.css" />
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css" />
<link rel="stylesheet" href="/css/animate.css" />

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src="/js/jquery.scrollTo.js"></script>

<style type="text/css">

.box-border {
	border: 2px solid gray;
	border-radius: 8px;
	min-height: 450px;
}

#animationDiv {
	margin-top: 20px;
	padding: 20px;
	overflow: auto;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}

[contenteditable=true]:empty:before, [contenteditable=false]:empty:before {
  content: attr(placeholder);
  color: gray;
}

#singleArrDec, #twoDArrDec {
	font-family: monospace; 
}

#rowsDiv {
	font-family: monospace;
}
.errorMsg {
	color: red;
	font-family: monospace;
}

.user-btn {
	background-color: green;
}

.padding0 {
	padding: 0;
}

.svg-css {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line {
	marker-end: url("#arrowEnd");
	position: relative;
	stroke: gray;
	stroke-width: 2;
}

.merged-array * {
	display: inline-flex;
}
</style>

<script type="text/javascript">
var typingSpeed = 5;
var introjs;

$(document).ready(function() {
	introjsInit();
	
	$("[contenteditable=true]").on("keydown", function(e) {
		introjs.refresh();
		$('.errorMsg').remove();
		var max = $(this).attr("maxlength");
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		}
		if (((e.shiftKey) || (e.keyCode <= 48 || e.keyCode > 57)) && ((e.keyCode <= 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$('.introjs-tooltiptext').append("<div class='errorMsg'><br/>Max Length 1 digit only.</div>");
			e.preventDefault();
		}
	});
	
	$("[contenteditable=true]").on("keyup", function(e) {
		introjs.refresh();
		if ($(this).text() == "") {
			$(this).text("");
			introjs.refresh();
			$('.errorMsg').remove();
	       	$('.introjs-tooltiptext').append("<div class='errorMsg'><br/>Please enter a value.</div>");
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
	});
	
	$("#restart").click(function() {
		location.reload();
	});
});


function introjsInit() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#heading",
			intro : "",
			position: "right"
		},{
			element : "#animationDiv",
			intro : "",
			tooltipClass: "hide"
		},{
			element : "#singleArrDec",
			intro : "",
			position: "bottom"
		},{
			element : "#animationDiv",
			intro : "",
			position: "left"
		},{
			element : "#twoDArrDec",
			intro : "",
			position: "left"
		},{
			element : "#rows",
			intro : "",
			position: "bottom"
		},{
			element : "#animationDiv",
			intro : "",
			tooltipClass : "hide"
		},{
			element : "#columns",
			intro : "",
			position: "bottom"
		},{
			element : "#animationDiv",
			intro : "",
			tooltipClass : "hide"
		},{
			element : "#twoDArrAnimation",
			intro : "",
			position: "bottom"
		},{
			element : "#animationDiv",
			intro : "",
			tooltipClass : "hide"
		},{
			element : "#restart",
			intro : "",
			position : "right"
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		introjs.refresh();
		switch (elementId) {
			case "heading":
				$(".introjs-nextbutton").hide();
				var text = "Here we will learn how memory is allocated for a <span class='ct-code-b-yellow'>single</span>" 
						+ " and <span class='ct-code-b-yellow'>two</span> dimensional array in the memory.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			break;
			
			case "animationDiv":
				$('.introjs-nextbutton').hide();
				introjs.refresh();
				if (introjs._currentStep == 8) {
					$("[contenteditable=true]").attr("contenteditable", false);
					for (var i = 0; i < parseInt($("#rows").text()); i++) {
						$("#row" + i).append("&emsp;<i class='fa fa-arrow-right' style='margin-top:15px;'></i>&emsp;");
						$("#row" + i).append("<table id='column" + i + "' class='opacity00' style='display: inline; text-align: center;'><tr>" 
										+ "</tr><tr></tr></table>");
						for (var j = 0; j < parseInt($('#columns').text()); j++) {
							$("#column" + i + " tr").eq(1).append("<td style='border:2px solid gray; width: 60px;'>&emsp;</td>");
							$("#column" + i + " tr").eq(0).append("<td>col-<span style='color: green;'>" + j + "</span></td>");
						}
					}
					introjs.refresh();
					//introjs.nextStep();
				}
				
				$(".introjs-helperLayer").one("transitionend", function() {
					if (introjs._currentStep == 1) {
						setTimeout(function() {
							$("#singleArrDec").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								$(this).removeClass("animated zoomIn");
								setTimeout(function() {
									introjs.nextStep();
								}, 100);
							});
						}, 100);
					} else if (introjs._currentStep == 3) {
						$("#singleArrDec [contenteditable=true]").attr("contenteditable", false);
						//var text = "In a single dimensional array the elements are stored in the index manner.";
						
						var text = "In a <span class='ct-code-b-yellow'>single</span> dimensional array the elements are stored in a " 
								+ "<span class='ct-code-b-yellow'>sequential</span> manner, starting from left to right."
						
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='singleArrayAnimation()'>Next &#8594;</a>");
						});
					} else if (introjs._currentStep == 6) {
						
						for (var i = 0; i < parseInt($("#rows").text()); i++) {
							$("#rowsDiv").append("<div id='row" + i +"' style='margin-top: 10px; display: flex; justify-content: center; align-items: center;'>" 
										+ "<div style='display:inline; margin-top: 15px;'>row - <span style='color: blue;'>" + i + "</span></div></div>");	
						}
						
						introjs.refresh();
						
						$("#rowsDiv").removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
							$(this).removeClass("animated fadeIn");
							introjs.nextStep();
						});
					} else if (introjs._currentStep == 8) {
						$("table:not(:last)").removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
							$(this).removeClass("animated fadeIn");
						});
						
						$("table").last().removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
							$(this).removeClass("animated fadeIn");
							introjs.nextStep();
						});
					} else {
						$("#animationDiv").append("<div class='text-center col-xs-12 merged-array' " 
								+ "style='margin-top: 50px; display: table; padding: 40px 0 0 0;'>" 
								+ "<span class='col-xs-12 index-div padding0' style='font-family: monospace;'></span>" 
								+ "<span class='col-xs-12 arrays-div padding0' style='font-family: monospace;'></span></div>");
						
						introjs.refresh();
						svgAppend(".merged-array", "svg");
						svgMarkerAppend("#svg", "arrow");
						
						var count = 0;
						var splitCount = 0;
						
						for (var i = 0; i < parseInt($('#rows').text()) * parseInt($('#columns').text()); i++) {
							$("#animationDiv > div:last .arrays-div").append("<div class='split" + splitCount + "1 opacity00' style='display: inline-block; border:2px solid gray; border-right: none; width: 60px;'>&emsp;</div>");
							$("#animationDiv > div:last .index-div").append("<div class='split" + splitCount + "0 opacity00' style='display: inline-block; width: 60px; text-align:center;'>col-<span style='color: green;'>" + count + "</span></div>");
							count++;
							if (count == parseInt($('#columns').text())) {
								count = 0;
								$(".split" + splitCount + "0").wrapAll("<span id='split" + splitCount + "0'></span>");
								$(".split" + splitCount + "1").wrapAll("<span id='split" + splitCount + "1'></span>");
								splitCount++;
							}
						}
						introjs.refresh();
						$("#animationDiv > div:last > div:nth-last-child(1)").css("border-right", "solid gray");
						twoDArryLinearAnimation();
					}
				});
				break;
				
			case "singleArrDec":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Please provide the <span class='ct-code-b-yellow'>size</span> of the array.";
					typing(".introjs-tooltiptext", text, function() {
						charAtEnd("size")
					});
				});
				break;
				
			case "twoDArrDec":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "In a <span class='ct-code-b-yellow'>two</span> dimensional array" 
								+ " we store the elements in the memory in the form of " 
								+ "<span class='ct-code-b-yellow'>rows</span>" 
								+ " and <span class='ct-code-b-yellow'>columns.</span>";
								
					$("#twoDArrDec *").attr("contenteditable", false);
					typing($(".introjs-tooltiptext").last(), text, function() {
						$("#twoDArrDec").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							introjs.refresh();
							$(this).removeClass("animated zoomIn");
							$(".introjs-nextbutton").show();
						});
					});
				});
				break;
				
			case "rows":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Please provide the number of <span class='ct-code-b-yellow'>rows</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#twoDArrDec #rows").attr("contenteditable", true);
						charAtEnd("rows")
					});
				});
				break;
				
			case "columns":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Please provide the number of <span class='ct-code-b-yellow'>columns</span>.";
					typing(".introjs-tooltiptext", text, function() {
						$("#twoDArrDec #columns").attr("contenteditable", true);
						charAtEnd("columns")
					});
				});
				break;
				
			case "twoDArrAnimation":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Click next to understand how the elements of a <span class='ct-code-b-yellow'>two</span>" 
							+ " dimensional array are stored in the memory.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				});
				break;
				
			case "restart":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#restart").removeClass("opacity00");
					var text = "Click to restart.";
					typing(".introjs-tooltiptext", text, function() {
						$("#restart").click(function() {
							location.reload();
						});
					});
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


var	count = 0;
function twoDArryLinearAnimation() {
	$("#column" + count).find("tbody").effect("highlight", {color: 'yellow'}, 500, function() {
		$(".split" + count + "1").last().css("border-right", "solid gray");
		$(".split" + count + "0").removeClass("opacity00");
		$(".split" + count + "1").removeClass("opacity00");
		var l1 = $("#column" + count + " tr").eq(0).offset();
		var l2 = $("#column" + count + " tr").eq(1).offset();
		$("#split" + count + "0").offset({
			"top" : l1.top,
			"left" : l1.left
		});
		
		$("#split" + count + "1").offset({
			"top" : l2.top,
			"left" : l2.left
		});
		//$("#animationDiv").scrollTo("#split00", 1000, function() {
			TweenMax.to($("#split" + count + "0"), 1, {top : 0, left : 0});
			TweenMax.to($("#split" + count + "1"), 1, {top : 0, left : 0, onComplete:function() {
				count++;
				if (count != parseInt($('#rows').text())) {
					$("#animationDiv").scrollTo("#split" + (count - 1) + "0", 1000);
					introjs.refresh();
					twoDArryLinearAnimation();
				} else {
					count = 0;
					$("#animationDiv").scrollTo("#split00", 1000, function() {
						svgAnimation();
					});
				}
			}});
		//});
	});
}


function svgAnimation() {
	
	if (count == parseInt($("#rows").text())) {
		$("#animationDiv").scrollTo(".merged-array", 1000, function() {
			setTimeout(function() {
				introjs.nextStep();
			}, 1000);
		});
	} else {
		var x1 = $("#split" + count + "1").offset().left - $(".merged-array").offset().left;
		var x2 = $("#split" + count + "1").offset().left - $(".merged-array").offset().left;
		var y1 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
		var y2 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
		
		x1 = (x1 / ($("#svg").width() / 100)) + "%";
		y1 = (y1 / ($("#svg").height() / 100)) + "%";
		x2 = (x2 / ($("#svg").width() / 100)) + "%";
		y2 = ((y2 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
		
		var line = document.createElementNS("http://www.w3.org/2000/svg", 'line');
		line.setAttribute('id', 'svgLine' + count + '1');
		line.setAttribute("class", "svg-line");
		line.setAttribute("x1", x1);
		line.setAttribute("y1", y1);
		line.setAttribute("x2", x1);
		line.setAttribute("y2", y1);
		line.style.markerEnd = 'url("#arrow")';
		$('#svg').append(line);
		
		TweenMax.to($('#svgLine' + count + '1'), 1, {attr: {x2: x2, y2: y2}, onComplete: function() {
			$('#svgLine' + count + '1').css('marker-end', '');
			
			var x1 = $("#split" + count + "1").offset().left  - $(".merged-array").offset().left;
			var x2 = $("#split" + count + "1").offset().left + ($("#split" + count + "1").width()/3) - $(".merged-array").offset().left;
			var y1 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
			var y2 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
			
			x1 = (x1 / ($("#svg").width() / 100)) + "%";
			y1 = ( (y1 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
			x2 = (x2 / ($("#svg").width() / 100)) + "%";
			y2 = ( (y2 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
			
			var line = document.createElementNS("http://www.w3.org/2000/svg", 'line');
			line.setAttribute('id', 'svgLine' + count + '2');
			line.setAttribute("class", "svg-line");
			line.setAttribute("x1", x1);
			line.setAttribute("y1", y1);
			line.setAttribute("x2", x1);
			line.setAttribute("y2", y1);
			line.style.markerEnd = 'url("#arrow")';
			$('#svg').append(line);
			
			TweenMax.to($('#svgLine' + count + '2'), 1, {attr: {x2: x2, y2: y2}, onComplete: function() {
				//$('svgLine' + count + '1').css('marker-end', '');
				var x = $("#split" + count + "1").offset().left - $(".merged-array").offset().left;
				x = (((x + ($("#split" + count + "1").width() / 2))  / ($("#svg").width() / 100)));
				var text = document.createElementNS("http://www.w3.org/2000/svg", 'text');
				text.setAttribute("x", (x - 1.5) + "%");
				text.setAttribute("y", (parseInt(y2) + 5.5) + "%");
				text.setAttribute('fill', '#000');
				text.setAttribute('style', 'font-family: monospace;')
				text.textContent = 'row-' + count;
				$('#svg').append(text);
				//$("text").last().attr("x", (x - parseInt($("text").last().outerWidth() / 2) / ($("#svg").outerWidth() / 100)) + "%");
				if (parseInt($("#columns").text()) <= 2) {
					$("text").last().attr('y', (parseInt(y2) - 5) + "%");
				}
				/* x = x + (parseInt($("text").last().outerWidth()/2) / ($("#svg").outerWidth() / 100));
				var text = document.createElementNS("http://www.w3.org/2000/svg", 'text');
				text.setAttribute("x", (x) + "%");
				text.setAttribute("y", (parseInt(y2) + 5.5) + "%");
				text.setAttribute('fill', 'blue');
				text.setAttribute('style', 'font-family: monospace;');
				text.textContent = count;
				$('#svg').append(text);
				$("text").last().prev().attr("x", (parseFloat(Math.abs(x))) + "%");
				if (parseInt($("#columns").text()) <= 2) {
					$("text").last().attr('y', (parseInt(y2) - 5) + "%");
					$("text").attr("font-size", "14px");
				} */
			}});
		}});
		
		
		var x1 = $("#split" + count + "1").offset().left + ($("#split" + count + "1").width()) - $(".merged-array").offset().left - 4;
		var x2 = $("#split" + count + "1").offset().left + ($("#split" + count + "1").width()) - $(".merged-array").offset().left - 4;
		var y1 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
		var y2 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
		
		x1 = (x1 / ($("#svg").width() / 100)) + "%";
		y1 = (y1 / ($("#svg").height() / 100)) + "%";
		x2 = (x2 / ($("#svg").width() / 100)) + "%";
		y2 = ( (y2 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
		
		var line = document.createElementNS("http://www.w3.org/2000/svg", 'line');
		line.setAttribute('id', 'svgLine' + count + '3');
		line.setAttribute("class", "svg-line");
		line.setAttribute("x1", x1);
		line.setAttribute("y1", y1);
		line.setAttribute("x2", x1);
		line.setAttribute("y2", y1);
		line.style.markerEnd = 'url("#arrow")';
		$('#svg').append(line);
		
		TweenMax.to($('#svgLine' + count + '3'), 1, {attr: {x2: x2, y2: y2}, onComplete: function() {
			$('#svgLine' + count + '3').css('marker-end', '');
			
			var x1 = $("#split" + count + "1").offset().left + ($("#split" + count + "1").width()) - $(".merged-array").offset().left - 4;
			var x2 = $("#split" + count + "1").offset().left + ($("#split" + count + "1").width() - $("#split" + count + "1").width()/3) - $(".merged-array").offset().left - 4;
			var y1 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
			var y2 = $("#split" + count + "1").offset().top - $(".merged-array").offset().top;
			
			x1 = (x1 / ($("#svg").width() / 100)) + "%";
			y1 = ( (y1 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
			x2 = (x2 / ($("#svg").width() / 100)) + "%";
			y2 = ( (y2 - ($("#split" + count + "0").height()) - 8) / ($("#svg").height() / 100) ) + "%";
			
			var line = document.createElementNS("http://www.w3.org/2000/svg", 'line');
			line.setAttribute('id', 'svgLine' + count + '4');
			line.setAttribute("class", "svg-line");
			line.setAttribute("x1", x1);
			line.setAttribute("y1", y1);
			line.setAttribute("x2", x1);
			line.setAttribute("y2", y1);
			line.style.markerEnd = 'url("#arrow")';
			$('#svg').append(line);
			
			TweenMax.to($('#svgLine' + count + '4'), 1, {attr: {x2: x2, y2: y2}, onComplete: function() {
				$("#animationDiv").scrollTo("#split" + count + "0", 1000, function() {
					count++;
					svgAnimation();
				});
			}});
		}});
	}
}

function singleArrayAnimation() {
	$(".user-btn").remove();
	
	$("<div id='singleArrInit' class='text-center col-xs-12 padding0 opacity00' style='margin-top: 10px;'>" 
		+ "<div class='col-xs-12 index-div padding0' style='font-family: monospace;'></div></div>").insertAfter($("#singleArrDec").parent());
	
	for (var i = 0; i < parseInt($('#size').text()); i++) {
		$("#singleArrInit .index-div").append("<div style='display: inline-block; width: 70px;'>index-" + i + "</div>");
		$("#singleArrInit").append("<div style='display: inline-block; border:2px solid gray; border-right: none; width: 70px;'>&emsp;</div>");
	}
	
	$("#singleArrInit > div").last().css("border-right", "solid gray");
	
	$("#singleArrInit").removeClass("opacity00").addClass("animated fadeIn").one("animationend", function() {
		$(this).removeClass("animated fadeIn");
		$(".introjs-nextbutton").show();
	});
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


function svgAppend(selector, svgId) {
	var code = '<svg class="svg-css" id="' + svgId + '"></svg>';
	$(selector).append(code);
}

function svgMarkerAppend(svgId, svgMarkerId) {
	var marker = document.createElementNS("http://www.w3.org/2000/svg", 'marker');
	marker.setAttribute('id', svgMarkerId);
	marker.setAttribute('refX', '5');
	marker.setAttribute('refY', '2.5');
	marker.setAttribute('markerWidth', '5');
	marker.setAttribute('markerHeight', '5');
	marker.setAttribute('orient', 'auto');
	marker.style.fill = 'gray';
	$(svgId).append(marker);
	var path = document.createElementNS("http://www.w3.org/2000/svg", 'path');
	path.setAttribute("d", "M0,0 L5,2.5 L0,5 Z");
	$('#' + svgMarkerId).append(path);
}

 

</script>

</head>
<body>
	<div class="text-center col-xs-12" style="margin-top: 20px;">
		<h1 id="heading" class="label ct-demo-heading text-center">	One
			and Two dimensional array</h1>
	</div>
	<div class='col-xs-offset-2 col-xs-8 box-border padding0' id='animationDiv'>
	
		<div class='col-xs-12 text-center padding0' style="margin-top: 10px;">
			<span id='singleArrDec' class='opacity00'>int arr[<div contenteditable=true maxlength='0' placeholder='size'
					style="display: inline-block;" id='size'></div>];
			</span>
		</div>
		
		
		<div class='col-xs-12 text-center padding0' style="margin-top: 50px;">
			<span id='twoDArrDec' class='opacity00'>int arr2D[<div contenteditable=true maxlength='0' placeholder='rows'
					style="display: inline-block; color: blue;" id='rows'></div>][<div contenteditable=true maxlength='0' placeholder='columns'
					style="display: inline-block; color: green;" id='columns'></div>];
			</span>
		</div>
		
		<div class='col-xs-offset-1 col-xs-10 padding0 text-center' id='twoDArrAnimation' style='margin-top: 10px;'>
			<div id='rowsDiv' class='opacity00'></div>
		</div>
	</div>
	
	<div class="col-xs-12 text-center" style="margin-top: 20px;">
		<span id="restart" class="btn btn-warning opacity00">Restart</span>
	</div>
</body>
</html>