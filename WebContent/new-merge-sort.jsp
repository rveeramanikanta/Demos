<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/animate.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src="/js/jquery.scrollTo.js"></script>
<title>Merge Sort</title>
<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.padding0 {
	padding: 0;
}

.creampretab4 {
	/* -moz-tab-size: 2;
	tab-size: 2;
	background-color: lavender !important;
	font-style: inherit;
	margin-bottom: 0;
	padding: 5px;
	overflow-y: auto; */
	-moz-tab-size: 2;
	background-color: lavender !important;
	border-radius: 8px !important;
	font-size: 10px;
	font-style: inherit;
	margin-bottom: 0;
	padding: 5px;
	/* overflow-y: auto; */
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
	height: 450px;
	overflow: auto;
}

#invisibleDiv {
	height: 200px;
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

#informationDiv {
	letter-spacing: 0.5px;
	min-height: 155px;
	padding: 15px 0;
	z-index: 9999999;
}

/* #animationDiv {
	height: 480px;
} */
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
	stroke: "orange";
}

#mainStackArrDec>div {
	display: inline-block;
}

.split-and-merge-div {
	background-color: #fffae6;
	border: 1px solid gray;
	border-radius: 8px;
	height: 200px;
	overflow: auto;
}

.opacity25 {
	opacity: 0.25;
}

.display-inline-block {
	display: inline-block;
}

.arr-width {
	width: 60px;
}

.arr-border {
	border: 2px solid gray;
}

.td-border {
	border: 2px solid gray;
}

.dynamic-popover {
	color: yellow;
	font-family: monospace;
	font-weight: bold;
}

.introjs-fixParent {
	position: relative !important;
}

.panel {
	position: relative;
}

.zIndex {
	z-index: 10000001;
	
}

.fa {
	color: blue;
}

.position-relative {
	position: relative;
	display: inline-block;
}

.user-btn {
	background-color: green;
	 margin-top: 4px !important;
}

pre {
	height: 690px;
	overflow: initial;
}
/* .opacity00 {
	opacity: 1;
} */

.background-color-lightgreen {
	background-color: lightgreen;
}


.introjs-tooltip {
	min-width: 250px !important;
}

.font-monospace {
	font-family: monospace;
}

[contenteditable=true] {
	outline: none;
	font-family: monospace;
}
</style>

<script type="text/javascript">
var typingSpeed = 5;
var introjs;
var tl = new TimelineLite();
var number = 6;
var idsArr = [];
var low = 0;
var high = 5;
var mid = 2;
var flag1 = true;
var flag2 = false;
var funName, i, h, j, count = 0;
var animateId = ['split1'];

var count1 = 0, count2 = 0;

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
				element : "#mainBlk",
				intro : "",
				position : "bottom",
			},{
				element : "#splitAndMergeFun",
				intro : "",
				position : "top",
			},{
				element : "#mergeFun",
				intro : "",
				position : "right"
			},{
				 element : "#main",
				 intro : "",
				 position : "right"
			},{
				 element : "#animationDiv",
				 intro : "",
				 position : "left",
				 tooltipClass : "hide"
			}]
	});
	
	introjs.onafterchange(function(targetElement) {
		introjs.refresh();
		var elementId = introjs._options.steps[introjs._currentStep].element;
		$(".split-and-merge-div").removeClass("opacity25");
		switch (elementId) {
		case "#main": // available
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Since the main function is the first function to be executed," 
					+ " it is the first function to be pushed into the <span class='ct-code-b-yellow'>stack</span>.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
	   
		case "#animationDiv": // available
			$(".introjs-nextbutton").hide();
			$(".split-and-merge-div").addClass("opacity25");
			$(".introjs-helperLayer").one("transitionend", function() {
				var fromId;
				if (introjs._currentStep == 4) {
					createMainStack();
					fromId = "#mainBlk";
				}  else if (number >= 0 && flag1) {
					splitAndMerge();
					fromId = "#splitAndMergeFun";
	    		}  else if (flag2 && number >= 0) {
	    			fromId = "#mergeFun";
	    			$(".dynamic-popover").parents(".popover").remove();
	    			merge();
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
	   
		case "#mainStackArrDec":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			var text = "Here the <span class='ct-code-b-yellow'>int</span>" 
				+ " variable <span class='ct-code-b-yellow'>num</span> " 
				+ "is declared." 
				+ "<br/><br/>You can also change the value of <span class='ct-code-b-yellow'>num</span>" 
				+ " between the <span class='ct-code-b-yellow'>1</span> and <span class='ct-code-b-yellow'>5</span>.";
			typing(".introjs-tooltiptext", text, function() {
				charAtEnd("val1")
				$(".introjs-nextbutton").show();
			});
		});
	   break;
	   
		case ".ifBlk": // available
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("Since the condition : <br/><span class='ct-code-b-yellow'>low < high</span> " 
					+ "<br/><span id='tooltipIfCndtn'><span id='tooltipLowNumber' class='flip-css'>low</span> &lt; "
					+ "<span id='tooltipHighNumber' class='flip-css'>high</span></span>");
				var ifCndtnOffset = $(".ifCdtn").offset();
				$("#tooltipIfCndtn").offset({
					"top" : ifCndtnOffset.top,
					"left" : ifCndtnOffset.left
				}).css("font-family", "monospace");
	   
				tl.to("#tooltipIfCndtn", 1, {top : 0, left : 0, onComplete:function() {
					flipEffect("#tooltipLowNumber", low, function() {
						flipEffect("#tooltipHighNumber", high, function() {
						var text = "";
						if (low < high) {
							text = "evaluates to <span class='ct-code-b-yellow'>true</span>, "
								+ "the control enters into the <span class='ct-code-b-yellow'>if-block</span>.";
								introjs.insertOption(introjs._currentStep + 1, getStep(".midDec", "", "top"));
								introjs.insertOption(introjs._currentStep + 2, getStep(".split1", "", "left"));
						} else {
		      				text = "evaluates to <span class='ct-code-b-red'>false</span>, the control enters into the <span class='ct-code-b-yellow'>else-block</span>.";
							introjs.insertOption(introjs._currentStep + 1, getStep("#animationDiv", "", "top", "hide"));
							number = -1;
						}
						$(".introjs-tooltiptext").append("<div></div>");
						typing($(".introjs-tooltiptext div:last-child"), text, function() {
							$(".introjs-nextbutton").removeClass("introjs-disabled").show();
						});
					})
				});
			}});
		});
		break;
		case ".midDec": //available
		$(".introjs-nextbutton").hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			var text = "mid declaration......";
			/* mid = parseInt($("#stackBody .panel:eq(0) .low:eq(0)").attr("low")) + parseInt($("#stackBody .panel:eq(0) .high:eq(0)").attr("high"));
			mid = parseInt(mid / 2); */
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-nextbutton").show();
			});
		});
		break;
		
		case "#mergeFun":
			$(".introjs-nextbutton").hide();
			$(".dynamic-popover").parents(".popover").remove();
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".split-and-merge-div").addClass("zIndex");
				if (introjs._currentStep == 2) {
					var text = "MergeFun of step 2";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").show();
					});
				} else {
					number = -1;
					$(".introjs-nextbutton").hide();
					i = low, h = low, j = mid + 1;
					count1 = 0;
					count2 = 0;
					$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=whileSteps('split1',"+ h +","+ mid +","+ j +","+ high +")>Next &#8594;</a>");
				}
				
			});
			break;
		
		case ".split1":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			/* high = mid; */
			
			low = parseInt($("#stackBody .panel:eq(0) .low:eq(0)").attr("low"));
			mid = parseInt($("#stackBody .panel:eq(0) .arr:eq(0)").attr("mid"));
			high = parseInt($("#stackBody .arr:eq(0)").attr("mid"));
			
			introjs.insertOption(introjs._currentStep + 1, getStep(".split-and-merge-div", "", "left", "hide"));
			introjs.insertOption(introjs._currentStep + 2, getStep("#animationDiv", "", "left", "hide"));
			dynamicPopover(".split1:eq(0) .low", low, "top");
			dynamicPopover(".split1:eq(0) .mid", mid, "top");
			var text = "split1";
			
			$(".split1:eq(0)").attr("id", "split1" + low + mid);
			idsArr.push("#split1" + low + mid);
			
			typing(".introjs-tooltiptext", text, function() {
				$(".introjs-nextbutton").removeClass("introjs-disabled").show();
			});
			
		});
		break;
		
		case ".split2":
			$(".introjs-nextbutton").hide();
			$(".split2:eq(0)").attr("isCompleted", true);
			$(".introjs-helperLayer").one("transitionend", function() {
				flag1 = true; 
				flag2 = false;
				
				low = parseInt($("#stackBody .panel:eq(0) .arr:eq(0)").attr("mid")) + 1;
				/* mid = parseInt($("#stackBody .panel:eq(0) .arr:eq(0)").attr("mid")) + 1; */
				high = parseInt($("#stackBody .panel:eq(0) .high:eq(0)").attr("high"));
				
				introjs.insertOption(introjs._currentStep + 1, getStep(".split-and-merge-div", "", "left", "hide"));
				introjs.insertOption(introjs._currentStep + 2, getStep("#animationDiv", "", "left", "hide"));
				
				dynamicPopover(".split2:eq(0) .mid", low, "top");
				dynamicPopover(".split2:eq(0) .high", high, "top");
				
				//low = parseInt($("#stackBody .low:eq(0)").attr("low")) + 1;
				
				var text = "split2";
				
				$(".split2:eq(0)").attr("id", "split2" + low + high);
				idsArr.push("#split2" + low + high);
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").removeClass("introjs-disabled").show();
				});
		});
		break;
		
		case ".merge":
			$(".finished").removeClass("[class^='split']").removeClass("finished");
			$(".introjs-nextbutton").hide();
			$(".merge:eq(0)").attr("isCompleted", true);
			
			$(".introjs-helperLayer").one("transitionend", function() {
				//introjs.insertOption(introjs._currentStep + 1, getStep(".split-and-merge-div", "", "left", "hide"));
				introjs.insertOption(introjs._currentStep + 1, getStep("#animationDiv", "", "left", "hide"));
				//introjs.insertOption(introjs._currentStep + 2, getStep("#mergeFun", "", "left", ""));
				
				dynamicPopover(".merge:eq(0) .low", parseInt($("#stackBody .low:eq(0)").attr("low")), "top");
				flag1 = false; 
				flag2 = true;
				
				low = parseInt($("#stackBody .panel:eq(0) .low:eq(0)").attr("low"));
				mid = parseInt($("#stackBody .panel:eq(0) .arr:eq(0)").attr("mid"));
				high = parseInt($("#stackBody .panel:eq(0) .high:eq(0)").attr("high"));
				
				i = low;
				h = low;
				j = mid + 1;
				dynamicPopover(".merge:eq(0) .mid", mid, "top");
				dynamicPopover(".merge:eq(0) .high", $("#stackBody .high:eq(0)").attr("high"), "top");
				var text = "From the merge";
				$(".merge:eq(0)").attr("id", "merge" + low + mid + high);
				idsArr.push("#merge" + low + mid + high);
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").removeClass("introjs-disabled").show();
				});
		});
		break;
		
		case ".split-and-merge-div": // available
			$(".dynamic-popover").parents(".popover").remove();
		
			if (introjs._currentStep == 6) {
				$("#mainStackArrDec div").each(function(idx) {
					$("#myTable tr:eq(1) td").eq(idx).text($(this).text());
				});
			}
		
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 6) {
					$("#myTable").removeClass("opacity00");
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
				} else if ($.parseJSON($(".merge:eq(0)").attr("isCompleted"))) {
					$(".merge"+low + mid + high).removeClass("opacity00");
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
					
				}  else if (high <= 2) {
					split1Animation();
				} else {
					split2Animation();
				}
			});
		break;
   
		case "outputDiv":
			$("#outputDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				animationFlag = true;
				$(".output-console-body").scrollTo($("#output > div:last()"), 500, function() {
					$("#output > div").last().removeClass("opacity00").hide().fadeIn(500, function() {
						setTimeout(function() {
							$(".dynamic-popover").parents(".popover").remove();
							introjs.nextStep();
						}, 500);
					});
				});
	   		});
	   break;
	   
	  case "restart":
		$(".introjs-nextbutton").hide();
		$("#restart").removeClass("opacity00");
		$(".introjs-helperLayer").one("transitionend", function() {
			tl.to($("#stackBody .panel").eq(0), 1, {top : "-400", onComplete:function() {
				$("#stackBody .panel").eq(0).remove();
			}});
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

function dynamicPopover(id, val, placement) {
	$(id).popover({
		 html: true,
		 placement: placement,
		 content: "<span class='dynamic-popover'>" + val + "</span>"
	}).popover("show");
}

function whileSteps(className, h, mid, j, high) {
	$(".introjs-tooltiptext *").remove();
	$(".user-btn").remove();
	/* if (count == 0) { */
		$(".introjs-tooltiptext").append("<div style='font-family: monospace; color: yellow'><span id='tooltipCndtn' class='opacity00'><span id='whileCond' class=''>"
								+" <span class='position-relative'><span id='whileH' class='position-relative'>h</span>"
								+" <span class='position-relative'>&lt;=</span>  <span class='position-relative' id='whileMid'>mid</span> "
								+"</span> <span class='position-relative'>&nbsp;&&&nbsp;</span><span class='position-relative'>"
								+" <span class='position-relative' id='whileJ'>j</span> <span class='position-relative'> &lt;= </span>"
								+" <span id='whileHigh' class='position-relative'>high</span></span></span></span></div>");
	
		highlight("#whileCndtn", function() {
			travelEffect("#tooltipCndtn", "#whileCndtn", function() {
				$("#tooltipCndtn").removeClass("opacity00");
				flipEffect($("#whileCond span:eq(1)"), h, function() {
					flipEffect($("#whileCond span:eq(3)"), mid, function() {
						flipEffect("#whileCond span:eq(0)", (h <= mid), function() {
							flipEffect($("#whileCond span:eq(3)"), j, function() {
								flipEffect($("#whileCond span:eq(5)"), high, function() {
									flipEffect($("#whileCond span:eq(2)"), (j <= high), function() {
										$(".introjs-tooltiptext div:eq(0)").append("<span> ===> <span class='ct-code-b-yellow'>"+ (h <= mid && j <= high) +"</span></span>")
										if ((h <= mid && j <= high)) {
											$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=insideWhile('"+className+"',"+ h +","+ mid +","+ j +","+ high +");>Next &#8594;</a>");
										} else {
											$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=secondIfCondition('"+className+"');>Next &#8594;</a>");
										}
									});
					        	});
							});
						});
					});
				});
			});
		});
}

var x, y;
function insideWhile(className, h, mid, j, high) {
	$(".user-btn").remove();
		$(".introjs-tooltiptext *").removeAttr("id");
		$(".introjs-tooltiptext").append("<div id='firstIf' style='font-family: monospace;'><span id ='tooltipIfCndtn1' class='opacity00'><span id='firstIfarrH' class='position-relative'>arr[<span id='firstIfH' class='position-relative'>h</span>]</span>"
									+" <span class='position-relative'><=</span> <span id='firstIfarrJindex' class='position-relative'>arr[<span id='firstIfarrJ' class='position-relative'>j</span>]</span></span></div>");
		
		highlight("#ifCndtn", function() {
			travelEffect("#tooltipIfCndtn1", "#ifCndtn", function() {
				$("#tooltipIfCndtn1").removeClass("opacity00");
				x = parseInt($(".split-" +  low +  mid).last().find("td").eq(count1).text());
				y = parseInt($(".split-" +  (mid + 1) + high).last().find("td").eq(count2).text());
				flipEffect($("#firstIf span:eq(2)"), h, function() {
					flipEffect($("#firstIf span:eq(1)"), x, function() {
						flipEffect($("#firstIf span:eq(4)"), j, function() {
							flipEffect($("#firstIf span:eq(3)"), y, function() {
								$("#firstIf").append("<span> ===> <span class='ct-code-b-yellow'>"+ (x <= y) +"</span></span>");
								if (x <= y) {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstIfBlk('"+className+"',"+ i +","+ h + ")>Next &#8594;</a>");
								} else {
									$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstIfElse('"+className+"',"+ i +","+ j +")>Next &#8594;</a>");
								}
							})
						})
					})
				})
			})
		})
}

function firstIfBlk(className, i, h) {
	$(".user-btn").remove();
	$(".introjs-tooltiptext *").removeAttr("id");
	$(".introjs-tooltiptext").append("<div id='firstIfblk' class='firstIfblk' style='font-family: monospace;'>"
			+ " <span id='travelEffect' class='opacity00'><span class='position-relative'>temp[<span id='firstIfblkI' class='position-relative'>i</span>]</span> "
			+ " <span class='position-relative'>=</span> <span id='firstIfblkAssign' class='position-relative'>arr["
			+ "<span id='firstIfblkH' class='position-relative'>h</span>]</span> </span></div>");

	highlight("#firstTemp", function() {
		travelEffect("#travelEffect", "#firstTemp",  function() {
			flipEffect($("#firstIfblk span:eq(2)"), i, function() {
				flipEffect($("#firstIfblk span:eq(5)"), h, function() {
					flipEffect($("#firstIfblk span:eq(4)"), x, function() {
						if (count == 0) {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstIfBlkSort('"+className+"')>Next &#8594;</a>");
						}
					})
				})
			})
		})
	})
}

function firstIfElse(className, i, j) {
	$(".user-btn").remove();
	$(".introjs-tooltiptext *").removeAttr("id");
	$(".introjs-tooltiptext").append("<div id='firstElsBlk' style='font-family: monospace;'><span id='travelEffect' class='opacity00'><span class='position-relative'>"
            +" temp[<span id='firstElsBlkI' class='position-relative'>i</span>]</span> <span class='position-relative'>=</span> <span id='firstElsBlkAssign' "
            +"class='position-relative'>arr[<span id='firstElsBlkJ' class='position-relative'>j</span>]</span></span></div>");
	
	highlight("#secondTemp", function() {
		travelEffect("#travelEffect", "#secondTemp", function() {
			flipEffect($("#firstElsBlk span:eq(2)"), i, function() {
				flipEffect($("#firstElsBlk span:eq(5)"), j, function() {
					
					flipEffect($("#firstElsBlk span:eq(4)"), y, function() {
						if (count == 0) {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstIfElseSort('"+className+"')>Next &#8594;</a>");
						}
					})
				})
			})
		})
	})
}


function firstIfBlkSort(className) {
	$(".user-btn").remove();
	$(".merge" + low + mid + high).removeClass("hide");
	
	var element = $(".merge" + low + mid + high + " td:empty").first().text(x);
	var l = $(".split-" +  low +  mid).last().find("td").eq(count1).offset();
	element.offset({
	    top : l.top,
	    left : l.left
	});
	
	$(".split-and-merge-div").scrollTo($(".merge" + low + mid + high), 1000, function() {	
		tl.to(element, 1, {top:0, left: 0,onComplete:function() {
			count1++;
			i++;
			h++;
			$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=whileSteps('split1',"+ h +","+ mid +","+ j +","+ high +")>Next &#8594;</a>");
		}});
	});
}


function firstIfElseSort(className) {
	$(".user-btn").remove();
	$(".merge" + low + mid + high).removeClass("hide");
	
	var elmt = $(".merge" + low + mid + high + " td:empty").first().text(y)
	var l = $(".split-" +  (mid + 1) + high).last().find("td").eq(count2).offset();
	elmt.offset({
	   top : l.top,
	   left : l.left
	});
	$(".split-and-merge-div").scrollTo($(".merge" + low + mid + high), 1000, function() {
		 tl.to(elmt, 1, {top:0, left: 0, onComplete:function() {
			  count2++;
			  j++;
			  i++;
			  $(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=whileSteps('split1',"+ h +","+ mid +","+ j +","+ high +")>Next &#8594;</a>");
		 }});
	});
}

function secondIfCondition(className) {
	$(".user-btn").remove();
	$(".introjs-tooltiptext *").removeAttr("id");
	$(".introjs-tooltiptext").append("<div class='font-monospace'><span id='secondIfCndtn' class='opacity00'><span class='position-relative'>h</span> &gt; <span class='position-relative'>mid</span></span></div>");
	
	highlight("#secondIfPre", function() {
		travelEffect("#secondIfCndtn", "#secondIfPre",  function() {
			flipEffect("#secondIfCndtn span:eq(0)", h, function() {
				flipEffect("#secondIfCndtn span:eq(1)", mid, function() {
					
					$("#secondIfCndtn").append("<span> ===> <span class='ct-code-b-yellow'>"+ (h > mid) +"</span></span>");
					if (h > mid) {
						$(".introjs-tooltiptext").append("<div id='highForToolTip' class='opacity00 font-monospace'><div>"
														+"<span>for (k = <span class='position-relative'>j</span>;<span id='exp'>"
														+"<span  class='position-relative'>k</span> &lt;= <span>high</span></span>; k++) "
														+"{</span></div><div>&nbsp;&nbsp;<span>temp[<span  class='position-relative'> i </span>]"
														+"</span> = <span  class='position-relative'>arr[<span  class='position-relative'> k </span>]"
														+"</span></div><div>&nbsp;&nbsp;<span>i++</span></div><div>}</div></div>");
						highlight("#firstFor", function() {
							$("#highForToolTip").removeClass("opacity00");
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstForLoop('"+className+"',"+ high +",'high',"+ j +")>Next &#8594;</a>");
						})	
					} else {
						$(".introjs-tooltiptext").append("<div id='midForToolTip' class='opacity00 font-monospace'><div>"
								+"<span>for (k = <span class='position-relative'>h</span>; <span id='exp'>"
								+"<span class='position-relative'>k</span> &lt;= <span>mid</span></span>; k++) {</span></div>"
								+"<div>&nbsp;&nbsp;<span>temp[<span  class='position-relative'> i </span>]</span> = "
								+"<span class='position-relative'>arr[<span  class='position-relative'> k </span>]</span></div>"
								+"<div>&nbsp;&nbsp;<span>i++</span></div><div>}</div></div>");
						highlight("#secondFor", function() {
							$("#midForToolTip").removeClass("opacity00");
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstForLoop('"+ className +"',"+ mid +",'mid',"+ h +")>Next &#8594;</a>");
						})	
					}
				})
			})
		})
	})
}

var k;
function firstForLoop(className, common, check ,kValue) {
	k = kValue;
	$("#"+ check +"ForToolTip div:eq(1) span:eq(2)").html("arr[<span>k</span>]");
	$("#"+ check +"ForToolTip div:eq(1) span:eq(1)").html("i");
	
		flipEffect($("#"+ check +"ForToolTip div:eq(0) span:eq(1)"), k, function() {
			  flipEffect($("#"+ check +"ForToolTip div:eq(0) span:eq(3)"), k, function() {
			    flipEffect($("#"+ check +"ForToolTip div:eq(0) span:eq(4)"), common, function() {
			    	if (k <= common) {
			 	       flipEffect($("#"+ check +"ForToolTip div:eq(1) span:eq(1)"), i, function() {
			 	         flipEffect($("#"+ check +"ForToolTip div:eq(1) span:eq(3)"), k, function() {
			 	        	if (check == "high") {
								var ext = $("."+className+"-"+ high +""+ high +" td:nth-child("+ count1 +")").text();
									flipEffect($("#"+ check +"ForToolTip div:eq(1) span:eq(2)"), y, function() {
										abc(className);
									})
			 	        	} else {
								var ext = $("."+className+"-"+ low +""+ low +" td:eq("+ count2 +")").text();
								x = parseInt($(".split-" +  low +  mid).last().find("td").eq(count1).text());
							
								flipEffect($("#"+ check +"ForToolTip div:eq(1) span:eq(2)"), x, function() {
									def(className);
								});
			 	        	}
			 	        })
			 	     })
			 	   } else {
				 		$("#exp").css("background-color","red");
				 		$(".user-btn").remove();
				 		$(".background-color-lightgreen").removeClass("background-color-lightgreen");
						introjs.insertOption(introjs._currentStep + 1, getStep("#animationDiv", "", "top", "hide"));
				 		$(".introjs-nextbutton").show();
					} 		    	
					})
				})
			})
}


function abc(className) {
	$(".user-btn").remove();
	var element = $(".merge" + low + mid + high + " td:empty").first().text(y);
	var m = $(".split-" +  (mid + 1) + high).last().find("td").eq(count2).offset();
	element.offset({
		top : m.top,
		left : m.left
	})
	tl.to(element, 1, {top : 0, left : 0, onComplete: function() {
		count2++;
		k++;
        i++;
        $(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstForLoop('split1'," + high + ",'high',"+ k +")>Next &#8594;</a>");
	}})
}

function def(className) {
	$(".user-btn").remove();
	x = parseInt($(".split-" +  low +  mid).last().find("td").eq(count1).text());
	var m = $(".split-" +  low +  mid).last().find("td").eq(count1).offset();
	var element = $(".merge" + low + mid + high + " td:empty").first().text( x  );
	element.offset({
	    top : m.top,
	    left : m.left
	  })
	tl.to(element, 1, {top : 0, left : 0, onComplete: function() {
		count1++;
		k++;
	    i++;
	    $(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick=firstForLoop('split1',"+ mid +",'mid',"+ k +")>Next &#8594;</a>");
	}})
}

function split1Animation() {
	for (var k = 0, i = low; i <= high; i++, k++) {
		$(".split1-" + (low + "" + high) + " tr td").eq(k).text($("#myTable tr:eq(1) td").eq(i).text());
	}
	$(".split1-" + (low + "" + high)).removeClass("opacity00").attr('show','true');
	var l = $($(".split1-" + (low + "" + high) + " table").attr("parent")).offset();
	$(".split1-" + (low + "" + high) + " table").offset({
		top : l.top,
		left : l.left
	});
	tl.to($(".split1-" + (low + "" + high) + " table"), 1, {top : 0, left : 0, onComplete: function() {
		setTimeout(function() {
			introjs.nextStep();
		}, 500);	
	}});
}

function split2Animation() {
	for (var k = 0, i = low; i <= high; i++, k++) {
		$(".split2-" + (low + "" + high) + " tr td").eq(k).text($("#myTable tr:eq(1) td").eq(i).text());
	}
	$(".split2-" + (low + "" + high)).removeClass("opacity00");
	var l = $($(".split2-" + (low + "" + high) + " table").attr("parent")).offset(); 
	$(".split2-" + (low + "" + high) + " table").offset({
		top : l.top,
		left : l.left
	});
	tl.to($(".split2-" + (low + "" + high) + " table"), 1, {top : 0, left : 0, onComplete: function() {
		setTimeout(function() {
			introjs.nextStep();
		}, 500);
	}});
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
			+ "<div><div id='mainStackArrDec' style='display: inline-block;'>int arr[] = {<div class='' maxlength='1' contenteditable='true'>15</div>," 
			+ " <div class='' maxlength='1' contenteditable='true' id='val1'>6</div>, " 
			+ "<div class='' maxlength='1' contenteditable='true'>9</div>, " 
			+ "<div class='' maxlength='1' contenteditable='true'>12</div>, " 
			+ "<div class='' maxlength='1' contenteditable='true'>16</div>, " 
			+ "<div class='' maxlength='1' contenteditable='true'>7</div>};</div></div>"
			+ "<div><span id='mainStackLenDec'>int n = 6;</span></div>"
			+ "<div id='mainStackSplitCall' style='font-weight: bold; display: inline-block;'>splitAndMerge(arr, 0, n - 1);</div>" 
			+ "</div></div>");
	introjs.insertOption(introjs._currentStep + 1, getStep("#mainStackArrDec", "", "top"));
	introjs.insertOption(introjs._currentStep + 2, getStep(".split-and-merge-div", "", "left", "hide"));
	introjs.insertOption(introjs._currentStep + 3, getStep("#mainStackLenDec", "", "top"));
	introjs.insertOption(introjs._currentStep + 4, getStep("#mainStackSplitCall", "", "top"));
	introjs.insertOption(introjs._currentStep + 5, getStep("#animationDiv", "", "left", "hide"));
	//keyDownEvent();
	createInvisiableDiv();
	setStackLocationToBottom();
	idsArr.push("#mainStackSplitCall");
	$("[contenteditable=true]").on("click keydown keyup", function(e) {
		$(".errMsg").remove();
		if ($(this).text() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		introjs.refresh();
		
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
			e.preventDefault();
		}
		if ($(this).text().length > max) {
			$(".introjs-tooltiptext").append("<div class='errMsg'>Max Length 2 digits only</div>")
			e.preventDefault();
		}
	});
}
function splitAndMerge() {
	$("#stackBody").prepend("<div class='panel panel-primary opacity00' number='" + number + "'>"
		   + "<div class='panel-heading text-center'>splitAndMerge(<span class='arr' mid=" + parseInt((low + high) / 2)  + ">arr</span>, " 
		   + "<span class='low' low=" + low + ">low</span>, " 
		   + "<span class='high' high=" + high + ">high</span>)</div>"
		   + "<div class='panel-body'>" 
		   + "<div><span id='stack" + number + "IfBlk' class='ifBlk'>if (<span id='stack" + number + "IfCdtn' class='ifCdtn'>low < high</span>) {</span></div>" 
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "MidDec' class='midDec'>int mid = <span class='flip-css'>(<span class='flip-css'><span class='flip-css low'>low</span> + " 
		   + "<span class='flip-css high'>high</span></span>) / 2 </span>;</span></div>"
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "Split1' class = 'split1'>splitAndMerge(<span class='arr'>arr</span>, <span class='low'>low</span>" 
		   + ", <span class='mid'>mid</span>);</span></div>"
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "Split2' class='split2' isCompleted='false'>splitAndMerge(<span class='arr'>arr</span>, <span class='mid'>mid  + 1</span>" 
		   + ", <span class='high'>high</span>);</span></div>"
		   + "<div>&nbsp;&nbsp;<span id='stack" + number + "merge' class='merge' isCompleted='false'>merge(<span class='arr'>arr</span>, <span class='low'>low</span>" 
		   + ", <span class='mid'>mid</span>, <span class='high'>high</span>);</span></div>"
		   + "}</div></div>" 
		   + "</div>");
	reChangeArrowHeight();
	//introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number + "IfBlk", "", "top"));
	introjs.insertOption(introjs._currentStep + 1, getStep(".ifBlk", "", "top"));
	createInvisiableDiv();
	setStackLocationToBottom();
	number--;
	funName = "split";
}

function merge() {
	$("#stackBody").prepend("<div class='panel panel-primary opacity00' number='" + number + "'>"
			   + "<div class='panel-heading text-center'>merge(<span class='arr'>arr</span>, " 
			   + "<span class='low' low=" + low + ">low</span>, "
			   + "<span class='mid' mid=" + mid + ">mid</span>, " 
			   + "<span class='high' high=" + high + ">high</span>)</div>" 
			   + "<div class='panel-body' style='font-family: monospace;'>low = " + low 
			   + "; mid = " + mid + "; high = " + high + ";" 
			   + "</div></div>");
		reChangeArrowHeight();
		introjs.insertOption(introjs._currentStep + 1, getStep("#mergeFun", "", "right"));
		createInvisiableDiv();
		setStackLocationToBottom();
		number--;
		funName = "merge";
		
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
	for (var i = 0; i <= idsArr.length - 1; i++) {
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
		line.setAttribute('class', 'svg-line');
		x1 = Math.abs( ($(idsArr[i]).offset().left - $('#stackBody').offset().left) + $(idsArr[i]).width());
		x1 = Math.abs(x1 / ($("#stackSvg").width() / 100));
		y1 = Math.abs($(idsArr[i]).offset().top - $('#stackBody').offset().top + $(idsArr[i]).height() / 2);
		line.setAttribute('x1', x1 + "%");
		line.setAttribute('y1', y1);
		line.setAttribute('x2', '90%');
		line.setAttribute('y2', y1);
		$('#stackSvg').append(line);
		var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
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
	$("#stackSvg .svg-line").css({"stroke" : "gray"});
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
		//stackVanishEffect();
	}});
}

function stackVanishEffect() {// available
	TweenMax.to($("#stackBody .panel").eq(0), 1, {top : "-400", onComplete : function() {
		$("#stackBody .panel").eq(0).remove();
		setStackLocationToBottom();
		$(idsArr.pop()).css("color", "red");
		reArrangeArrows();
		$("#arrow1, #arrow3").css({"display" : "", "marker-end" : "url()"});
		$("#arrow2").css({"display" : "", "marker-end" : "url('#blueMarker')"});	
		
		if ($("#stackBody .panel").length >= 2) {
			if (!$.parseJSON($(".split2:eq(0)").attr("isCompleted"))) {
				introjs.insertOption(introjs._currentStep + 1, getStep(".split2", "", "left"));
				number = 6;
				introjs.nextStep();
			} else if (!$.parseJSON($(".merge:eq(0)").attr("isCompleted"))) {
				introjs.insertOption(introjs._currentStep + 1, getStep(".merge", "", "left"));
				number = 6;
				introjs.nextStep();
			} else {
				reverseRevealEffect();
			}
		} else {
			introjs.insertOption(introjs._currentStep + 1, getStep("#restart", "", "right", ""));
			introjs.nextStep();
		}
	}});
}

function reverseRevealEffect() {
	$("#arrow2").css("marker-end" , "url('#blueMarker')");
	tl.to($("#arrow2"), 1, {attr : {x2 : "90%"}, onComplete: function() {
		$("#arrow2").css("marker-end", "url()");
		$("#arrow3").css("marker-end", "url('#blueMarker')");
		tl.to($("#arrow3"), 1, {attr : {y2 : $("#arrow3").attr("y1")}, onComplete: function() {
			$("#arrow3").css("marker-end", "url()");
			$("#arrow1").css("marker-end", "url('#blueMarker')");
			tl.to($("#arrow1"), 1, {attr : {x2 : $("#arrow1").attr("x1")}, onComplete: function() {
				$("#arrow1").css("marker-end", "url()");
				stackVanishEffect();
			}});
		}});
	}});
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
	
	introjs._options.steps.push({"element" : element});
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

function travelEffect(selector1, selector2, callBackFunction) {
	$("body").append("<span id='innerDiv' class='zIndex' style='font-family: monospace; color: rgb(5, 246, 255);'>" + $(selector1).html() + "</span>");
	$("#innerDiv *").removeAttr("id");
	var l = $(selector2).offset();
	$("#innerDiv").offset({
		"top" : l.top,
		"left" : l.left
	});
	var cssTop = $("#innerDiv").css("top");
	var cssLeft = $("#innerDiv").css("left")
	var l1 = $(selector1).offset();
	var l2 = $("#innerDiv").offset();
	var topLength = parseInt(cssTop.substring(0,cssTop.length - 2)) - (l2.top - l1.top);
	var leftLength = parseInt(cssLeft.substring(0,cssLeft.length - 2))- (l2.left - l1.left);
	TweenMax.to("#innerDiv", 1, {top : topLength, left : leftLength, onComplete:function() {
		$(selector1).removeClass("opacity00");
		$(selector2).removeClass("opacity00");
		$("#innerDiv").remove();
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}

var highlight = function(target, callBackFunction) {
	$(".background-color-lightgreen").removeClass("background-color-lightgreen");
	$(target).effect( "highlight", {color:"green"}, 500, function() {
		$(target).addClass("background-color-lightgreen");
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
</script>

</head>
<body>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading'>Merge Sort</h4>
	</div>
	<div class='col-xs-12 margin-top-20'>
		<div class='col-xs-offset-1 col-xs-4'>
			<pre class='creampretab4' id='codeDiv'>#include &lt;stdio.h&gt;
			
<span id='mainBlk'>void <span id='main'>main() {</span>
`	int arr[] = { 15, 6, 9, 12, 16, 7};
	int n = 6;
	splitAndMerge(arr, 0, n - 1);
}</span>
		
<span id="splitAndMergeFun"><span id='mergeSorting'>void splitAndMerge(<span
							id='arrId'>int[] arr</span>, int <span id='lowId'>low</span>, int <span
							id='highId'>high</span>)</span> {
	<span id='mSortCondition'>if (low < high)</span> {
		<span id='midean'>int mid = (low + high) / 2;</span>
		<span id='mergeSorting1'>splitAndMerge(arr, low, mid);</span>
		<span id='mergeSorting2'>splitAndMerge(arr, mid + 1, high);</span>
		<span id='merge'>merge(arr, low, mid, high);</span>
	<span>}</span>
<span>}</span></span>
	
<span id="mergeFun"><span id='vMerge'>void merge(int[] arr, int low, int mid, int high)</span> {
	int i = low, h = low, j = mid + 1, k, temp[6];
	<span id='while'><span>while (<span id='whileCndtn'>h <= mid && j<=high</span>)</span> {
		<span><span id='whileIf'>if (<span id='ifCndtn'>arr[h] <= arr[j]</span>)</span> {
			<span id=''><span id='firstTemp'>temp[i] = arr[h];</span>
			<span>h++;</span></span>
		<span id='endWhileIf'>}</span></span> else {
			<span id=''><span id='secondTemp'>temp[i] = arr[j];</span>
			<span>j++;</span></span>
		<span>}</span>
		
		<span id='IncOfI'>i++;</span>
	<span>}</span></span>
	
	<span id='secondIf'><span>if (<span id='secondIfPre'>h > mid</span>)</span> {
		<span id='firstFor'><span>for (k = j; k <= high; k++)</span> {
			<span id='thirdTemp'>temp[i] = arr[k];</span>
			<span>i++;</span>
		<span>}</span></span>
	}</span><span> else {
		<span id='secondFor'><span>for (k = h; k <= mid; k++)</span> {
			<span id=''><span id='fourthTemp'>temp[i] = arr[k];</span>
			<span>i++;</span></span>
		<span>}</span></span>
	<span>}</span></span>
		
	<span id='thirdFor'>for (k = low; k <= high; k++) {
		arr[k] = temp[k];</span>
	}
}
</span>			
</pre>
		</div>
		<div class='col-xs-5 col-xs-offset-1'>
			<div class='col-xs-12  box-border' id='animationDiv'>
				<div class='col-xs-12'>
					<div class='col-xs-12 padding0'>


						<!-- <div class='col-xs-12 padding0 split-and-merge-div opacity25'>
						<div class='col-xs-12'>
							<div class='table-css'>15</div>
							<div class='table-css'>15</div>
							<div class='table-css'>15</div>
							<div class='table-css'>15</div>
							<div class='table-css'>15</div>
							<div class='table-css'>15</div>		
						</div>
					</div> -->



						<div class='col-xs-12 padding0 split-and-merge-div opacity25'>
							<table class='opacity00'
								style="width: 70%; margin-left: 15%; text-align: center; table-layout: fixed; margin-top: 20px;"
								id='myTable'>
								<tr>
									<td>0</td>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td>4</td>
									<td>5</td>
								</tr>
								<tr>
									<td class='td-border td02'>15</td>
									<td class='td-border'>6</td>
									<td class='td-border'>9</td>
									<td class='td-border'>12</td>
									<td class='td-border'>16</td>
									<td class='td-border'>7</td>
								</tr>
							</table>

							<div class="col-xs-6 split-part-1 padding0">
								<div class="col-xs-12 padding0 opacity00 split1-02 split-02">
									<table
										style="table-layout: fixed; text-align: center; margin-top: 15px; width: 70%; margin-left: 15%;"
										parent='table:eq(0) tr:eq(1) td:eq(0)'>
										<tbody>
											<tr>
												<td class="td-border">15</td>
												<td class="td-border">6</td>
												<td class="td-border">9</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="col-xs-12">
									<div class="col-xs-7 padding0 opacity00 split1-01 split-01">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 93%;"
											parent='table:eq(1) tr td:eq(0)'>
											<tbody>
												<tr>
													<td class="td-border">15</td>
													<td class="td-border">6</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div
										class="col-xs-offset-2 col-xs-3 padding0 opacity00 split1-22 split-22">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 108%; margin-left: 15%;"
											parent='table:eq(1) tr td:eq(2)'>
											<tbody>
												<tr>
													<td class="td-border">9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>



								<div class="col-xs-12 padding0">
									<div class="col-xs-4 padding0 opacity00 split1-00 split-00">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 70%; margin-left: 15%;"
											parent='table:eq(2) tr td:eq(0)'>
											<tbody>
												<tr>
													<td class="td-border">15</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="col-xs-4 padding0 opacity00 split1-11 split-11">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 70%; margin-left: 15%;"
											parent='table:eq(2) tr td:eq(1)'>
											<tbody>
												<tr>
													<td class="td-border"></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col-xs-12">
									<div class="col-xs-7 padding0 hide merge001 split-01">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 93%;">
											<tbody>
												<tr>
													<td class="td-border"></td>
													<td class="td-border"></td>
												</tr>
											</tbody>
										</table>
									</div>

									<!--<div class="col-xs-offset-2 col-xs-3 padding0 opacity00 split1-22">
							<table style="table-layout: fixed; text-align: center; margin-top: 15px; width: 108%; margin-left: 15%;" parent='table:eq(1) tr td:eq(2)'>
								<tbody>
									<tr>
										<td class="td-border">9</td>
									</tr>
								</tbody>
							</table>
						</div> -->

								</div>


								<div class="col-xs-12 padding0 hide merge012 split-02">
									<table
										style="table-layout: fixed; text-align: center; margin-top: 15px; width: 70%; margin-left: 15%;">
										<tbody>
											<tr>
												<td class="td-border"></td>
												<td class="td-border"></td>
												<td class="td-border"></td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
							<div class='col-xs-6 split-part-2'>
								<div class="col-xs-12 padding0 opacity00 split2-35 split-35">
									<table
										style="table-layout: fixed; text-align: center; margin-top: 15px; width: 81%; margin-left: 15%;"
										parent='table:eq(0) tr:eq(1) td:eq(3)'>
										<tbody>
											<tr>
												<td class="td-border">12</td>
												<td class="td-border">16</td>
												<td class="td-border">7</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="col-xs-12">

									<div class="col-xs-7 padding0 opacity00 split2-34 split-34">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 109%;"
											parent='table:eq(8) tr td:eq(0)'>
											<tbody>
												<tr>
													<td class="td-border">12</td>
													<td class="td-border">16</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div
										class="col-xs-offset-2 col-xs-3 padding0 opacity00 split2-55 split-55">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 124%; margin-left: 15%;"
											parent='table:eq(8) tr td:eq(2)'>
											<tbody>
												<tr>
													<td class="td-border">7</td>
												</tr>
											</tbody>
										</table>
									</div>

								</div>


								<div class="col-xs-12 padding0">

									<div class="col-xs-4 padding0 opacity00 split2-33 split-33">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 81%; margin-left: 15%;"
											parent='table:eq(9) tr td:eq(0)'>
											<tbody>
												<tr>
													<td class="td-border">12</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="col-xs-4 padding0 opacity00 split2-44 split-44">
										<table
											style="table-layout: fixed; text-align: center; margin-top: 15px; width: 83%; margin-left: 15%;"
											parent='table:eq(9) tr td:eq(1)'>
											<tbody>
												<tr>
													<td class="td-border">16</td>
												</tr>
											</tbody>
										</table>
									</div>

								</div>

								<div class="col-xs-7 padding0 hide merge334 split-34">
									<table
										style="table-layout: fixed; text-align: center; margin-top: 15px; width: 109%;">
										<tbody>
											<tr>
												<td class="td-border"></td>
												<td class="td-border"></td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="col-xs-12 padding0 hide merge345 split-35">
									<table
										style="table-layout: fixed; text-align: center; margin-top: 15px; width: 81%; margin-left: 15%;">
										<tbody>
											<tr>
												<td class="td-border"></td>
												<td class="td-border"></td>
												<td class="td-border"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="col-xs-12 padding0 hide merge025 split-05">
								<table
									style="table-layout: fixed; text-align: center; margin-top: 15px; width: 81%; margin-left: 15%;">
									<tbody>
										<tr>
											<td class="td-border"></td>
											<td class="td-border"></td>
											<td class="td-border"></td>
											<td class="td-border"></td>
											<td class="td-border"></td>
											<td class="td-border"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div id='invisibleDiv' class='col-xs-12 padding0'
							style="position: absolute;"></div>
					</div>
					<div id='mainStack' class='col-xs-12 padding0'>
						<div class='col-xs-offset-1 col-xs-11 padding0'>
							<div class='col-xs-12 padding0'>
								<div id='stackBody' class='col-xs-10 padding0'></div>
								<svg class="svg-css" id="stackSvg">
					               <marker style="fill: gray;" orient="auto"
										markerHeight="5" markerWidth="5" refY="2.5" refX="4"
										id="grayMarker">
					                              <path class="arrow"
										d="M0,0 L5,2.5 L0,5 Z" />
					               </marker>
					               <marker style="fill: blue;" orient="auto"
										markerHeight="5" markerWidth="5" refY="2.5" refX="4"
										id="blueMarker">
					                              <path class="arrow"
										d="M0,0 L5,2.5 L0,5 Z" />
					               </marker>
					               <line class="svg-line" id="arrow2" y2="0%" x2="0%"
										y1="0%" x1="0%"
										style="display: none; marker-end: url('#grayMarker')" />
								</svg>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center margin-top-20 col-xs-12">
		<a class="btn btn-warning opacity00 restart" id="restart">Restart</a>
	</div>
</body>
</html>