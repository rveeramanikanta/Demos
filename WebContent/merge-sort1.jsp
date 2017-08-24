<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-latest.js"></script>
<script src="js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<link href="css/introjs.css" rel="stylesheet">
<link href="css/introjs-ct.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/font-awesome-animation.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/intro.js" type="text/javascript"></script>
<script src="js/alertify.js"></script>
<link rel="stylesheet" href="css/alertify/alertify.bootstrap.css"/>
<link rel="stylesheet" href="css/alertify/alertify.core.css"/>
<link rel="stylesheet" href="css/alertify/alertify.default.css"/>
<script src="js/typewriting.min.js" type="text/javascript"></script>
<script src="js/gs/TweenMax.min.js"></script>
<script src="js/gs/TimelineLite.min.js"></script>
<title>Merge Sort</title>
<style type="text/css">

.popover.top > .arrow::after {
    border-top-color: blue !important; 
    margin-left: -5px !important;
}

.popover > .arrow::after {
    border-width: 5px !important;
}

.popover.top > .arrow {
    bottom: -6px !important;
}

/* .popover.top > .arrow::after {
	border-top-color: yellow;
    bottom: 1px;
    margin-left: -9px;
}
 */
 .popover-content {
    background-color: transparent !important; 
    border-radius: 4px;
    color: black; 
    font-size: 10px;
    margin: 4px;
    padding: 0px;
}

.popover {
	background-color: lightblue;
	border: 2px solid rgba(55, 55, 192, 0.73);
	border-radius: 5px;
	box-shadow: 0 10px 17px rgba(0, 0, 0, 0.2);
} 


.next-button {
	background-color: green !important; 
	border: 1px solid #d4d4d4;
    border-radius: 0.2em;
    display: inline-block;
    font: 11px sans-serif;
    padding: 3px;
}

.box-border {
	border: 1px solid gray;
	border-radius: 8px;
}

#codeDiv, #animationDiv {
	/* height: 670px; */
}

#tableDiv {
	display: inline-block;
	/* margin-left: 143px; */
}

/* svg {
	height: auto;
} */

#stack {
	height: 350px;
	border: 2px solid gray;
	margin:10px 4px 0px;
	border-radius:8px;
}

#recurCode {
	border: 2px solid gray;
	height : 170px;
}

.stackMthd {
	border:2px solid pink;
	position: relative;
	/* margin-bottom: 0px; */
	/* opacity:0; */
	height:139px;
}


.margin-top10 {
	margin-top: 10px;
}

.margin-top20 {
	margin-top: 20px;
}

.ct-demo-heading {
	font-family: serif;
}

.user-val {
	outline:none;
}

.split-span {
	border: 1px solid gray;
    display: table-cell;
    min-width: 36px;
    text-align: center;
}
.td-border {
	border: 2px solid gray;
	/* height: 30px; */
	min-width: 22px;
	text-align: center;
}

.td-edit-border {
	border: 2px solid gray;
	height: 26px;
	min-width: 56px;
	text-align: center;
}

.ct-code-b-yellow {
	font-family: monospace;
/* 	font-weight: bold; */
	color: yellow;
}


.padding0 {
	padding: 0;
	/* text-align: center; */
}

.position-relative {
	position: relative;
	/* display: inline-block; */
	
}

.opacity20 {
	opacity: 0;
}

.length-error-text {
	
}

.opacity025 {
	opacity:0.25;
}


.ui-effects-transfer { 
	border: 2px solid green;
	z-index: 9999999;
 }

.zIndex {
	z-index: 9999999;
	position: relative;
	background: white;
}

.index {
    color: green;
    font-weight: bold;
}

.method-declaration {
	/* background-color: lightblue;
    border: 2px solid lightblue; */
    border-radius: 3px;
    display: inline-block;
    font-size: 11px;
    height: 23px;
    text-align: center;
    /* width: 155px; */
    width:90%; 
    opacity: 0;
    margin-left:12px;
}

.method-placing {
	background-color: lightblue;
    border: 2px solid lightblue;
    border-radius: 3px;
    display: inline-block;
    font-size: 10px;
    height: 23px;
    text-align: center;
    width: 90%;
   /*  opacity: 0; */
}

pre {
	border-radius: 8px !important;
	background-color: #fffae6;
	font-size: 10px;
	-moz-tab-size: 2;
	overflow: auto;
	/* max-height: 235px; */
	/* height: 235px; */
}

#stackBorder1 {
	border-color: green;
	border-image: none;
	border-radius: 0 0 5px 5px;
	/* border-style: solid; */
	border-width: 0 2px 2px;
	/* height: 230px;
	width: 160px; */
	height: 283px;
	width: 100%;
	margin-top: 34px;
}

#stackBlock {
	background-color:lavender;
	border:2px solid gray;
	border-top:0;
	border-radius:3px;
	/* height: 70%; */
	height: 68%;
    margin-left: 32px;
    /*margin-right: auto;*/
    margin-top: 70px;
    overflow: auto;
    width: 90%;
}

#dummyMthd {
	border:2px solid pink;
	height: 139px;
	position: relative;
	margin-left: 142px;
	/* margin-left: 37px; */
	z-index:1;
	/* width: 88%; */
}

#dummyParent {
	/* margin-left: 90px; */
	/* top: 414px; */
	/* width: 81%; */
	position: relative;
	z-index:1;
}

#method {
	/* border: 2px solid pink; */
	display: inline-block;
	height: 30px; 
	/* width: 159px; */
	width:100%;
	position: static;
}

#svgDiv {
	height:100%;
	position:absolute;
}

.blinking-box-null-border2 {
	animation-name: blink-border-background-null-border2;
	animation-duration: 1.2s ;
	animation-iteration-count: 1;
	animation-direction: alternate ;
}

@keyframes blink-border-background-null-border2 { 
	50% {
		/* border-color: lightgreen; */
		/* box-shadow: 0 -4px 0 0 pink; */
		background-color: lightgreen;
	}
}

.introjs-tooltip {
	min-width: 350px !important;
	padding: 5px !important;
}

@keyframes bgblink {
    from {background-color: #fff;}
    50% {background-color:#9999ff}
    to {background-color: #fff;}
}

.width-zero {
	width: 0%;
}

.pulse {
	animation: bgblink 1s  infinite;
}

#animationDiv table, #animationDiv pre  {
	font-size: 10px;
} 

#animationDiv {
	background-color: lavenderblush;
}

/* #stackMthd > div {
	display: flex;
	align-content: center;
	height: 100%;
	font-size: 9px;
} */

.css-svg {
	top: 0;
	left: 0;
	position: absolute;
	height: 100%;
}

.line {
	stroke: gray;
	stroke-width: 2.5;
}
</style>
<script type="text/javascript">
var tl = new TimelineLite();
var low = 0;
var high = 5;
var mid = 0;

var a = 200;
var b = 18;

$(document).ready(function() {
 	$("[contenteditable=true]").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		/* if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			return;
		} */
		
		if ($(this).text().length > max && e.which!= 8 && e.which != 39 && e.which != 37) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Max length was restricted to 2 characters only.</div>");
			e.preventDefault();
		}
		if (e.keyCode == 13) {
			e.preventDefault();
		}
		
		if (e.keyCode === 110 || e.keyCode === 190) {
			e.preventDefault();
		}
	
		if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
			$('.length-error-text').remove();
			return;
		}
		if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		
		
	}) 
	
	$('.td-edit-border').on('keyup', function() {
		$('.user-val[index = ' + $(this).attr('index') + ']').text($(this).text());
		
	})
	
	 /* $('[data-toggle="popover"]').popover({
		placement : 'top',
		trigger : 'hover'
    });  */
    /* $('[data-toggle="popover"]').popover({
		placement : 'top',
		'data-trigger' : "show"
    }); */
	
	
	/* svgOffSet(); */
	intro =  introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [
					{
						element : "#tableEdit",
						intro : "",
						position : "bottom",
					},
					{
						element : "#mainMthd",
						intro : "",
						position : "bottom",
					},
					{
						element : "#splitAndMerge",
						intro : "",
						position : "top",
					},
					{
						element : "#mergeMthd",
						intro : "",
						position : "top"
					},
					{
						element :"#callMthd",
						intro:"",
						position:"top"
					},
					/* {
						element : "#stack",
						intro:"",
						position:"top",
						tooltipClass: 'hide'
					}, */
					{
						element : "#animationDiv",
						intro : "",
						position : "left",
						action: "transform"
					},
					/* {
						element : "#mergeSorting",
						intro : "",
						position : "right",
						action : "mergeSorting"
					}, */
					 /* {
						element : "#stack",
						intro : "",
						position : "right",
					},  */
					/* {
						element : "#mSortCondition",
						intro : "",
						position : "right",
						action : "checkCondition"
					}, */
					/* {
						element : "#midean",
						intro : "",
						position : "top",
						action: "midean"
					}, */
				/* 	{
						element : "#mergeSorting1",
						intro : "",
						position : "right",
						action : "mergeSorting1"
					} */
				]
	})
	intro.onafterchange(function(targetElement) {
			var ElementId = targetElement.id;
			var action = intro._introItems[intro._currentStep].action;
			switch (ElementId) {
			case "animationDiv" :
				$('.td-edit-border').attr('contenteditable', false);
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if (action == "transform") {
						/* $('#tableEdit').addClass('zIndex')
						$( "#tableEditTr" ).effect('transfer', { to: "#tableDivTr", className: "ui-effects-transfer" }, 1500, function() {
						$('#tableDiv > table').removeClass('visibility-hidden');
						$('#tableEdit').removeClass('zIndex');
						tl.to('.index',3,{opacity:1,onComplete: function() {
						}});
							var text = "Merge sort uses divide and concur technique"+
								" to sort the elements.finally it gathers elements of "+
								"lower value to the left side of the array marked as low an elements to the higher values to the right side marked as high.";
							writingText(text);
							dynamicIntroSteps("firstLeft");
					}) */
					eachStack(low, high, low+''+high);
					$('table:eq(1)').parent().addClass('margin-top20');
					var text = "Merge sort uses divide and concur technique lower.";
						writingText(text, function() {
							//stackFlow();
							$('.introjs-nextbutton').hide();
							$(".next-button").show();
							dynamicIntroSteps("firstLeft");
						});
						
						
					} else if (action == "firstLeft") {
							isReveal = true;
							var text = "Here the split is done with subscript "+ low +" to "+ mid +" and again it calls"
										+ " recursively untill the if condition false.";
							writingText(text, function() {
								/* $(".introjs-nextbutton").hide();
								dispatchTable(nthTable, isId);
								tableOffSet("leftHalf2", "first-half"); */
								//eachStack("02");
								eachStack(low, high, low+''+high);
								$("svg g:eq(0)").hide();
								$('.introjs-nextbutton').hide();
								$(".next-button").show();
								dynamicIntroSteps("secondLeft");
							});
							high = mid;
						} else if (action == "secondLeft") {
							var text = "Here the split is done with subscript "+ low +" to "+ mid +" and again it calls"
							+ "recursively untill the if condition false.";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								/* dispatchTable(nthTable, isId);
								tableOffSet("leftHalf3-1","left-half2-1"); */
								eachStack(low, high, low+''+high);
								$("svg g:eq(0)").hide();
								$('.introjs-nextbutton').hide();
								$(".next-button").show();
								dynamicIntroSteps("thirdLeft");
							})
							high = mid;
						} else if (action == "thirdLeft") {
							console.log("thirdLeft...");
							var text = "Here the split is done with subscript "+ low +" to "+ mid +" and again it calls"
							+ "recursively untill the if condition false.";
							writingText(text, function() {
								/* $(".introjs-nextbutton").hide();
								dispatchTable(nthTable, isId);
								tableOffSet("leftHalf4-01", "left-half3-1"); */
								eachStack(low, high, low+''+high);
								$("svg g:eq(0)").hide();
								$('.introjs-nextbutton').hide();
								$(".next-button").show();
								dynamicIntroSteps1("revSecondLeft");
							});
							high = mid;
						} else if (action == "revSecondLeft") {
							console.log('in the revSecondLeft..');
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
							+ ".";
							
							//Here u have to write the deletion of stack flow...
							
							writingText(text, function() {
							//	$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#leftHalf3-1').addClass('pulse');
							})
							low = 1;
							high = 1;
							
						} else if (action == "thirdRight") {
							console.log('in the thirdRight..');
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
							+ "recursively untill the if condition false.";
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								isId = true;
								dispatchTable(nthTable, isId);
								tableOffSet("leftHalf4-02", "left-half3-2");
								dynamicIntroSteps1('revFirstLeft');
							});
						} else if (action == "revFirstLeft") {
							console.log('in the revFirstLeft..');
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
							+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#leftHalf2').addClass('pulse');
							});
							mid = 1;
						} else if (action == "secondRight") {
							console.log('in the secondRight..');
							
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {//leftHalf3-2
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf3-2", "left-half2-2");
								dynamicIntroSteps("thirdSecondRight");
							})
						} else if (action == "thirdSecondRight") {
							console.log('in the thirdSecondRight..');
							high = low;
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-11", "right-half-1");
								dynamicIntroSteps1("revSecondRight");
							});
							
						} else if (action == "revSecondRight") {
							console.log('in the revSecondRight..');
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
										+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#leftHalf3-2').addClass('pulse');
							})
								//mid = mid + 1;
						} else if (action == "thirdSecondLeft") { //leftHalf4-12
							console.log('in the thirdSecondLeft..');
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";;
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-12", "right-half-12");
								dynamicIntroSteps1("revFirstStep");
							});
						} else if (action == "revFirstStep") {
							console.log('in the revFirstStep..');
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
										+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#tableDivTr').addClass('pulse');
								mid = 3;
								low = mid + 1;
							});
							high = 7;
						}  else if (action == "firstRight") {
							console.log('in the firstRight..');
							low = 4;
							high = 7;
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								tableOffSet("rightHalf2", "second-half");
								dynamicIntroSteps("firstRightSecondLeft");
							});
							
						} else if (action == "firstRightSecondLeft") {
							console.log('in the firstRightSecondLeft..');
							//low = 4;
							high = 5;
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								tableOffSet("rightHalf3-1", "right-half2-1");
								dynamicIntroSteps("firstRightThirdLeft");
							});
							
						} else if (action == "firstRightThirdLeft") {
							console.log('in the firstRightThirdLeft..');//left-half-1
							//low = 4;
							high = 4;
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-21", "left-half-1");
								dynamicIntroSteps1("revFirstRightSecondLeft");
							});
						} else if (action == "revFirstRightSecondLeft") {
							console.log('in the revFirstRightThirdLeft..');
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
										+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#rightHalf3-1').addClass('pulse');
							});
						} else if (action == "firstRightThirdRight") {
							console.log('in the firstRightThirdRight..');
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {//
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-22", "left-half-12");
								dynamicIntroSteps1("revFirstRight");
							})
						} else if (action == "revFirstRight") {
							console.log("in the revFirstRight...");
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
							+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#rightHalf2').addClass('pulse');
							});
						} else if (action == "firstRightSecondRight") {
							console.log("in the firstRightSecondRight");
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {//
								$(".introjs-nextbutton").hide();
								tableOffSet("rightHalf3-2", "right-half2-2");
								dynamicIntroSteps("firstRightSecondrightLeft");
							});
						} else if (action == "firstRightSecondrightLeft") {
							
							console.log("in the firstRightSecondrightLeft");
							high = low;
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {//
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-31", "right-half-11");
								dynamicIntroSteps1("revFirstRightSecondRight");
							})
						} else if (action == "revFirstRightSecondRight") {//rightHalf3-2
							console.log("in the revFirstRightSecondRight...");
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
									+ ".";
							writingText(text, function() {
								//$(".introjs-nextbutton").hide();
								$('.pulse').removeClass('pulse');
								$('#rightHalf3-2').addClass('pulse');
							});
						} else if (action == "firstRightSecondrightRight") {
							console.log("firstRightSecondrightRight");
							var text = "Here the split is done with subscript "+ low +" to "+ high +" and again it calls"
										+ "recursively untill the if condition false.";
							writingText(text, function() {//
								$(".introjs-nextbutton").hide();
								tableOffSet("leftHalf4-32", "right-half-21");
								createStep = false;
								dynamicIntroSteps1("divisionCompleted");
							})
						} else if (action == "divisionCompleted") {
							console.log("in the divisionCompleted..");
							var text = "Here the low is "+ low +" and the high is "+ high +" condition is false"
									+ ".";
							writingText(text, function() {
								$('.pulse').removeClass('pulse');
								$(".introjs-nextbutton").hide();
								//$('#rightHalf3-2').addClass('pulse');
								$("#arrow1").show();
								tl.to("#arrow1",1,{attr:{x2:"3.5%",y2:"37.5%"}, onComplete:function() {
									$("#text1").css({'opacity':'1'});
									$(".introjs-nextbutton").show();
								}});
								high++;
								mergeSteps("merge01");
							});
						} else if (action == "merge01") {
							console.log(" in the merge01...");
							concurency(); 
							setTimeout(function() {
								concAnimation();
								mergeSteps("merge23");
							},700);
						} else if (action == "merge23") {
							console.log(" in the merge23...");
							concurency();
							setTimeout(function() {
								concAnimation();
								mergeSteps("merge45");
							},700);
						} else if (action == "merge45") {
							console.log(" in the merge45...");
							concurency();
							setTimeout(function() {
								concAnimation();
								mergeSteps("merge67");
							},700);
						} else if (action == "merge67") {
							console.log(" in the merge67...");
							concurency();
							setTimeout(function() {
								concAnimation();
								mergeSteps("merge03");
							},700);
						} else if (action == "merge03") {
							console.log(" in the merge03.. ");
							concurency1();
							setTimeout(function() {
								merge("concurency", "concurency1", function() {
									$(".introjs-nextbutton").show();
								});
								mergeSteps("merge47");
							}, 700);
						} else if (action == "merge47") {
							console.log(" in the merge47.. ");
							concurency1();
							setTimeout(function() {
								//merge(low, mid, high);
								merge("concurency", "concurency1", function() {
									$(".introjs-nextbutton").show();
								});
								mergeSteps("merge037");
							},700)
						} else if (action == "merge037") {
							console.log(" in the merge037.. ");
							setTimeout(function() {
								$("#sortedDiv").removeClass("opacity20");
								merge("concurency1", "sortedDiv", function() {
									$("#arrow2").show();
									tl.to("#arrow2",1,{attr:{y2:"70.5%"}, onComplete:function() {
										$(".introjs-nextbutton").show();
									}});
								});	
							}, 700);
						}
					});
			break;
			case "tableDivTr":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$('#tableDivTr').removeClass('visibility-hidden');
					typing(".introjs-tooltiptext","", function() {
						$('.introjs-nextbutton').show();
					});
				})
			break;
			case "mainMthd":
			case "splitAndMerge":
			case "mergeMthd":
			case "callMthd":	
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					var text;
					if (ElementId == "mainMthd") {
						text = "The execution starts from the <span class='ct-code-b-yellow'>main(...)</span>method.In this method we are calling the <span class='ct-code-b-yellow'>splitAndMerge(...)</span>.";
						writingText(text);
					} else if (ElementId == "splitAndMerge") {
						text = "The <span class='ct-code-b-yellow'>splitAndMerge(...)</span> first splits the given input and then calls <span class='ct-code-b-yellow'>merge(...)</span>.";
						writingText(text);
					} else if (ElementId == "mergeMthd") {
						text = "The <span class='ct-code-b-yellow'>merge(...)</span> compares and sorts the elements.";
						writingText(text);
					} else if (ElementId == "callMthd") {
						console.log("in the call mthd...");
						text = "The <span class='ct-code-b-yellow'>main(...)</span> calling the <span class='ct-code-b-yellow'>splitAndMerge(...)</span>."
							writingText(text, function() {
								//stackMethod("low", "high");
								//stackMethod("low", "high", true, false, false)
								//stackMethod(low, high);
								//eachStack();
								/* stackFlow(); */
							});
					}
					
				})
			break;
			case "mergeSorting" :
			case "mergeSorting1":
			case "mergeSorting2":
			case "merge":
			case "vMerge":	
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if (action == "mergeSorting") {
						console.log("mergSorting ******");
						var text = "Calling the method mergerSorting(arr, "+ low +", "+ high +")";
						writingText(text);
						
					} else if (action == "mergeSorting1") {
						var text = "Calling the method mergeSorting(arr, "+ low +", "+ mid +")";
						writingText(text);
					} else if (action == "mergeSorting2") {
							if (mid == 0) {
								var text = "since the value for mid = 0 mergerSorting(arr, "+ (mid + 1) +", "+ (high) +")";
								writingText(text, function() {
									animationStep('thirdRight');
								});
								console.log(' in the mergeSorting2 mid == 0');
								//stackMethod("mid+1","high", false, false, true);
								stackMethod((mid+1), high);
								setTimeout(function() {
									//animationStep('thirdRight');
								}, 800);
							} else if (mid == 1) {
								low = 2;
								high = 3;
								console.log(' in the mergeSorting2 mid == 1');
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								animationStep('secondRight');
							} else if (mid == 2) {
								low = high = mid + 1;
								console.log(' in the mergeSorting2 mid == 2')
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								animationStep("thirdSecondLeft");
							} else if (mid == 3) {
								console.log(' in the mergeSorting2 mid == 3')
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								animationStep("firstRight");
							} else if (mid == 4) {
								console.log(' in the mergeSorting2 mid == 4');
								low = mid + 1;
								high = 5;
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								mid = low;
								animationStep("firstRightThirdRight");
							} else if (mid == 5) {
								console.log(' in the mergeSorting2 mid == 5');
								high = 7;
								low  = mid + 1;
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								animationStep("firstRightSecondRight");
							} else if (mid == 6) {
								console.log(' in the mergeSorting2 mid == 6');
								high = 7;
								low = mid + 1;
								var text = "since the vlaue for mid = " + mid + " mergerSorting(arr, "+ low +", "+ high +")";
								writingText(text);
								animationStep("firstRightSecondrightRight");
							}
					} else if (action == "merge") {
						console.log("in the merge condition ...");
						if (mid == 6 && high == 8) {
							console.log("in merge of mid=6 && high=7")
							low = 0;mid = 0;high = 1;
						} else if ( low == 0 && high == 1 ) {
							console.log("in merge of low = 0 && high=1")
							low = mid = 2;high = 3;
						} else if (low == 2 && high == 3) {
							console.log("in merge of low = 2 && high=3")
							low = mid = 4;high = 5;
						} else if (low == 4 && high == 5 ) {
							console.log("in merge of low = 4 && high=5")
							low = mid = 6;high = 7;
						} else if (low == 6 && high == 7) {
							console.log("in merge of low = 6 && high=7")
							low = 0;mid = 1;high = 3;
						} else if ( low == 0 && high == 3 ) {
							console.log("in merge of low = 0 && high=3")
							low = 4;mid = 5;high = 7;
						} else if (low == 4 && high == 7 ) {
							console.log("in merge of low = 4 && high=7")
							low = 0;mid = 3;high = 7;
						} 
						var text = "since the value for mid = " + mid + " merge(arr, "+ low +", "+ mid +", " + high + ")";
						writingText(text);
					} else if (action == "vMerge") {
						var text = "The merge method is invoked  merge(arr, "+ low +", "+ mid +", " + high + ")";
						writingText(text);
					}
				})
			break;
			case "while":
				var text = "The while block is executed.";
				writingText(text);
			break;
			case "stack" :
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					$('.method-placing').removeClass('opacity00');
					 tl.to('.method-placing', 3, {opacty:1,top:0,left:0,onComplete: function() {
						$("#" + ElementId).addClass("zIndex");
						intro.nextStep();
					}}); 
				});
			break;
			case "midean":
			case "mSortCondition":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one("transitionend", function() {
					if (action == "checkCondition") {
						if (low < high) {
							console.log('in the checkCondition of low < high..');
							var text = "since the " + low + " &lt; " + high + " which is true the if block will be executed.";
							writingText(text);
						} else {
							console.log('in the checkCondition of low > high..');
							var text = "since the "+ low +" &lt; " + high + " which is false the if block will not be executed.";
							writingText(text);
						}
					} else if (action == "midean") {
						console.log('in the midean.');
						 mid = Math.floor((low+high)/2);
						 console.log("in the midean is = " + mid);
						//var text = "The ("+ low +" + "+ high + ") / 2 = "+ mid + " stored in a varible mid."
						var text = "dividing and getting the result were mid = " + mid;
						writingText(text, function() {
							//stackMethod(low, mid);
							$("#mid").popover({
								trigger : "focus",
								content : ""+mid,
								placement:"top",
								html: true
							});
							$("#mid").popover("show");
							$("#mid").removeAttr("id");
						});
					}
				});
			break;	
		}
		})
		
		intro.start();
		//eachStack();
		$(".introjs-tooltipbuttons").append('<span class="btn next-button">Next →</span>');
		$(".next-button").hide();
		$("#arrow1, #arrow2").hide();
		$("#text1").css({'opacity':'0'});
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		var text = "Let us consider a few random values in an array.";//animate all the values being filled up.
		writingText(text, function() {
			$('.introjs-nextbutton').show();
		});
		
		// clicking the predefined next button..
		var isReveal = false;
		$(".next-button").click(function() {
			$(".next-button").hide();
			stackFlow(low, high, function() {
				$('.introjs-nextbutton').show();
				if (isReveal) {
					arrowRevealEffect();
				}
			})
		})
})

function writingText(text, callBackFunction) {
	var typingSpeed = 10;
	$(".introjs-nextbutton").hide();
	$(".introjs-tooltiptext").typewriting( text , {
		"typing_interval": typingSpeed,
		"cursor_color": 'white',
	}, function() {
		$(".introjs-tooltiptext").removeClass("typingCursor");
		$('.introjs-nextbutton').show();
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	})
}


var nthTable = 1;
var isId = false;
function dispatchTable(nthTable, isId) {
	for (var i = 0; i < 8 ;i++) {
		var val = $('#tableDiv table tr:eq(2) td:eq('+ i +')').text();
			if (isId) {
		  		$('#tableDiv'+ nthTable +' table td:eq('+ i +')').text(val).attr('id', val);
			} else {
				$('#tableDiv'+ nthTable +' table td:eq('+ i +')').text(val);
			}
		}
}




function dynamicIntroSteps(action) {
	var nextStep = {
			element : "#mergeSorting",
			intro : "",
			position: "top",
			action: "mergeSorting"
		}
		intro.insertOption(intro._currentStep + 1, nextStep);
		var nextStep = {
				element : "#mSortCondition",
				intro : "",
				position : "top",
				action : "checkCondition"
		}
		intro.insertOption(intro._currentStep + 2, nextStep);
			var nextStep = {
					element : "#midean",
					intro : "",
					position : "top",
					action: "midean"
			}
			intro.insertOption(intro._currentStep + 3, nextStep);
			
			
			
		var nextStep = {
				element : "#mergeSorting1",
				intro : "",
				position : "top",
				action : "mergeSorting1" 
		}
		intro.insertOption(intro._currentStep + 4, nextStep);
		
		/* var nextStep = {
				element : "#stack",
				intro : "",
				position : "top",
		}
		intro.insertOption(intro._currentStep + 5, nextStep); */
		
		
		var nextStep = {
					element : "#animationDiv",
					intro : "",
					position : "left",
					action: action
		}
		intro.insertOption(intro._currentStep + 5, nextStep);
		
		$(".introjs-nextbutton").removeClass("introjs-disabled");
		/* var nextStep = {
			element : "#methodBlock",
			intro : "",
		}
		intro.insertOption(intro._currentStep + 5, nextStep); */
		++nthTable; 
}

var createStep = true;
function dynamicIntroSteps1(action) {
		var nextStep = {
				element : "#mSortCondition",
				intro : "",
				position : "top",
				action : "checkCondition"
		}
		intro.insertOption(intro._currentStep + 1, nextStep);
		var nextStep = {
				element : "#animationDiv",
				intro : "",
				position : "left",
				action: action
		}
		intro.insertOption(intro._currentStep + 2, nextStep);
		if (createStep) {
			var nextStep = {
					element : "#mergeSorting2",
					intro : "",
					position : "top",
					action : "mergeSorting2" 
			}
			intro.insertOption(intro._currentStep + 3, nextStep);
		}
		
		$(".introjs-nextbutton").removeClass("introjs-disabled");
		/*var nextStep = {
				element : "#animationDiv",
				intro : "",
				position : "left",
				action: action
		}
		intro.insertOption(intro._currentStep + 4, nextStep); */
		
}

function animationStep(action) {
	
	/* var nextStep = {
			element : "#stack",
			intro : "",
			position : "left",
			tooltipClass:"hide"
	}
	intro.insertOption(intro._currentStep + 1, nextStep); */
	var nextStep = {
			element : "#animationDiv",
			intro : "",
			position : "left",
			action: action
	}
	intro.insertOption(intro._currentStep + 1, nextStep);
	$(".introjs-nextbutton").removeClass("introjs-disabled");
}



function mergeSteps(action) {
	var nextStep = {
			element : "#merge",
			intro : "",
			position : "top",
			action : "merge" 
	}
	intro.insertOption(intro._currentStep + 1, nextStep);
	var nextStep = {
			element : "#vMerge",
			intro : "",
			position : "top",
			action : "vMerge"
	}
	intro.insertOption(intro._currentStep + 2, nextStep);
	//if (createStep) {
		var nextStep = {
				element : "#while",
				intro : "",
				position : "right",
				action : "while" 
		}
		intro.insertOption(intro._currentStep + 3, nextStep);
	//}
	
		var nextStep = {
				element : "#animationDiv",
				intro : "",
				position : "left",
				action : action  
		}
		intro.insertOption(intro._currentStep + 4, nextStep);
		$(".introjs-nextbutton").removeClass("introjs-disabled");
	
		/* var nextStep = {
				element : "#secondIf",
				intro : "",
				position : "top",
				action : "secondIf" 
		}
		intro.insertOption(intro._currentStep + 5, nextStep);
		 */
		/* var nextStep = {
				element : "#animationDiv",
				intro : "",
				position : "top",
				
		}
		intro.insertOption(intro._currentStep + 5, nextStep); */
		/* var nextStep = {
				element : "#secondFor",
				intro : "",
				position : "top",
				action : "" 
		}
		intro.insertOption(intro._currentStep + 5, nextStep); */
}

var i, h, j, k, clear;
function merge(concurency, concurency1, callBackFunction) {
	i = low, h = low, j = mid+1;
	if ( h <= mid && j <= high ) {
		loopingValues(concurency, concurency1, callBackFunction);
	}
}

var first;
var second;
var x;

function loopingValues(concurency, concurency1, callBackFunction) {
	console.log("in the loopingValues" + concurency + "..." + concurency1);
	if ( h <= mid && j <= high ) {
		  if (parseInt($("#"+ concurency +" td:eq("+ h +")").text()) <= parseInt($("#"+ concurency +" td:eq("+ j +")").text())) {
		    first = $("#"+ concurency +" td:eq("+ h +")");
		    second = $("#"+ concurency1 +" td:eq("+ i +")");
		    second.text(first.text()).addClass('opacity20');
		    x = 'h';
		    firstFourAnimation(first, second, x, concurency, concurency1, callBackFunction);
		    //h++;
		  } else {
		    first = $("#"+ concurency +" td:eq("+ j +")");
		    second = $("#"+ concurency1 +" td:eq("+ i +")");
		    second.text(first.text()).addClass('opacity20');
		    x = 'j';
		    firstFourAnimation(first, second, x, concurency, concurency1, callBackFunction);
		  }
	}  else	if (h > mid) {
    console.log(' in the merge else..')
		k=j;
		loopingElseIfBlock(concurency, concurency1, callBackFunction);
	} else {
		k = h;
		loopingElseBlock(concurency, concurency1, callBackFunction);
	}
}


function loopingElseIfBlock(concurency, concurency1, callBackFunction) {
	
	if (k <= high) {
		console.log("in the if condition of k <= high ..."+ k + " i " + i);
		first = $("#"+ concurency +" td:eq("+ k +")");
	    second = $("#"+ concurency1 +" td:eq("+ i +")");
	    second.text(first.text()).addClass('opacity20');
	    x = 'i';
	    firstFourAnimation(first, second, x, concurency, concurency1, callBackFunction, function() {
	      k++;
		    console.log("k is incremented in if condition.. " + k);
		    loopingElseIfBlock(concurency, concurency1, callBackFunction);
	    });
	} else {
		//$('.introjs-nextbutton').show();
		console.log("loooping values if statement");
		console.log(callBackFunction);
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}
	
}

function loopingElseBlock(concurency, concurency1, callBackFunction) {
	if (k <= mid) {
		console.log("in the else part of k <=mid" + k + " i " + i);
		first = $("#"+ concurency +" td:eq("+ k +")");
	    second = $("#"+ concurency1 +" td:eq("+ i +")");
	    second.text(first.text()).addClass('opacity20');
	    x = 'i';
    firstFourAnimation(first, second, x, concurency, concurency1, callBackFunction, function() {
      k++;
      console.log("k is incremented in else part " + k);
      loopingElseBlock(concurency, concurency1, callBackFunction);
    });
		
	} else {
		//$('.introjs-nextbutton').show();
		
		console.log("loooping values else statement");
		console.log(callBackFunction)
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}
}

var append = true;
function concurency() {
	
	/* if (append) {
		$("#concurency").append('<div class="col-xs-offset-1 col-xs-1 padding0">'
								+'<table class="position-relative"><tr><td class="td-border position-relative"></td>'
								+'<td class="td-border position-relative"></td></tr></table></div>');
		append = false;						
	} else {
		$("#concurency").append('<div class="col-xs-offset-2 col-xs-1 padding0">'
				+'<table class="position-relative"><tr><td class="td-border position-relative"></td>'
				+'<td class="td-border position-relative"></td></tr></table></div>');
		append = true;
	} */
	
	if (append) {
		$("#concurency").append('<div class="col-xs-offset-1 col-xs-1 padding0" style="width:12%; margin-left:12%;">'
								+'<table class="position-relative"><tr><td class="td-border position-relative"></td>'
								+'<td class="td-border position-relative"></td></tr></table></div>');
		append = false;						
	} else {
		$("#concurency").append('<div class="col-xs-offset-1 col-xs-1 padding0" style="width:12%;">'
				+'<table class="position-relative"><tr><td class="td-border position-relative"></td>'
				+'<td class="td-border position-relative"></td></tr></table></div>');
		//append = true;
	}
	
}

function concurency1() {
	
	$("#concurency1").append("<div class='col-xs-offset-2 col-xs-3' style='width:22%;'>"
	+"<table class='position-relative'><tr><td class='td-border position-relative'></td><td class='td-border position-relative'></td>"
	 +"<td class='td-border position-relative'></td><td class='td-border position-relative'></td>" 
	  +"</tr></table></div>");
}

var x = 0;
var con = 0;


function concAnimation() {
	var first = $("#tableDiv4 table:eq("+ x + ") td:first-child");
	var second = $("#tableDiv4 table:eq("+ (x+1) +") td:first-child");
	if (parseInt(first.text()) <= parseInt(second.text())) {
		var fval = $("#concurency table:eq(" + con +") td:nth-child(1)").text(first.text()).addClass('opacity20');
		var mval = $("#concurency table:eq("+ con +") td:nth-child(2)").text(second.text()).addClass('opacity20');
    //abc($("#tableDiv4 table:eq(0) td:first-child").offset(), fval.offset());
    //first.offset()
    var l = first.offset();
    $(fval).offset({'top':l.top,'left' : l.left}) 
    tl.to(fval,1,{opacity:1, top:0,left:0, onComplete:function() {
      var m = second.offset();
      $(mval).offset({'top':m.top,'left' : m.left});
      tl.to(mval,1,{opacity:1, top:0,left:0, onComplete:function() {
	      $('.introjs-nextbutton').show();
      }})
    }})
	} else {
		var fsec = $("#concurency table:eq("+ con +") td:nth-child(1)").text(second.text()).addClass('opacity20');
		var msec = $("#concurency table:eq("+ con +") td:nth-child(2)").text(first.text()).addClass('opacity20');
	var l = second.offset();
    $(fsec).offset({'top':l.top,'left' : l.left}); 
    tl.to(fsec,1,{opacity:1, top:0,left:0,onComplete:function() {
     var m = first.offset();
      $(msec).offset({'top' : m.top,'left' : m.left});
      tl.to(msec, 1 , {opacity:1,top:0,left:0, onComplete:function() {
	      $('.introjs-nextbutton').show();
      }});
    }})
}
	x = x+2;
	++con;
}

function firstFourAnimation(first, second, x, concurency, concurency1, callBackFunction, callBackFunction1) {
	 console.log("in the firstFourAnimation...");
		$(second).offset({'top':first.offset().top,'left':first.offset().left})
		tl.to(second, 1,{opacity:1, top:0, left:0,onComplete: function() {
		if (x == "h") {
			h++;
			i++;
			loopingValues(concurency, concurency1, callBackFunction);	
		} else if (x == "j") {
			j++;
			i++;
			loopingValues(concurency, concurency1, callBackFunction);	
		} else if (x == "i") {
			i++; 
		}
     if (typeof callBackFunction1 === "function") {
			callBackFunction1();
		}
		//$('.introjs-nextbutton').show();
		}})
}
 
/* function stackMethod(second, third, spliting, midean, midean1) {
	if (spliting) {
	 $('#stackDivsParent').prepend("<div class='method-placing opacity00' style='position:relative;'>"
	 								+"splitAndMerge(<span>arr</span>, <a href='#' title="+ low +">"
	 								+"<span>"+ second +"</span></a>, <a href='#' title="+ high +"><span>"+ third +"</span></a>)</div>");
	} else if (midean) {
	  $('#stackDivsParent').prepend("<div class='method-placing opacity00' style='position:relative;'>"
								+"splitAndMerge(<span>arr</span>, <a href='#' title="+ low +">"
								+"<span>"+ second +"</span></a>, <a href='#' title="+ mid +"><span>"+ third +"</span></a>)</div>");
	} else if (midean1) {
		$('#stackDivsParent').prepend("<div class='method-placing opacity00' style='position:relative;'>"
				+"splitAndMerge(<span>arr</span>, <a href='#' title="+ (mid+1) +">"
				+"<span>"+ (second) +"</span></a>, <a href='#' title="+ high +"><span>"+ third +"</span></a>)</div>");
	}  
	/* $('#method > div').addClass('method-declaration'); 
     $('a').tooltip({'background-color': 'green'});
	var stacktop = $('#stackBorder1').height()- $('#stackDivsParent').height();
	$('#stackDivsParent').css({'top': stacktop});
	//$('.method-declaration').empty();
	/* $('#method > div').append('<span>mergeSorting(<span>arr</span>, <span>'+ second +'</span>, <span>'+ third +'</span>)</span>'); 
	var l = $('#stackDivsParent div:first-child').offset();
	var m = $('.method-declaration').offset();
	$('#stackDivsParent div:first-child').css({'top': m.top - l.top, 'left' : m.left - l.left, onComplete: function() {
		$(".introjs-nextbutton").show();
	}})
} */


function stackMethod(first, second) {
	 /* $('#stackDivsParent').prepend("<div class='method-placing opacity00' style='position:relative;'>"
	 								+"splitAndMerge(<span>arr</span>,"
	 								+"<span>low</span>,<span>high</span>);<span style='float:right;'>low = <span>"+ first +"</span>;high = <span>"+ second +"</span>;</span></div>"); */
	/* $('#method > div').addClass('method-declaration'); */
     $('a').tooltip({'background-color': 'green'});
	var stacktop = $('#stackBorder1').height()- $('#stackDivsParent').height();
	$('#stackDivsParent').css({'top': stacktop});
	//$('.method-declaration').empty();
	/* $('#method > div').append('<span>mergeSorting(<span>arr</span>, <span>'+ second +'</span>, <span>'+ third +'</span>)</span>'); */
	var l = $('#stackDivsParent div:first-child').offset();
	var m = $('.method-declaration').offset();
	$('#stackDivsParent div:first-child').css({'top': m.top - l.top, 'left' : m.left - l.left, onComplete: function() {
		$(".introjs-nextbutton").show();
	}})
}



function eachStack(ll, h, val) {	
	/* var stacktop = $("#stackBlock").height()- $('#mainStack').height()- 128;
	$('#mainStack').css({'top': stacktop}); */
$("#low, #high").removeAttr('id');
$("#mainStack > div").prepend('<div id="stackMthd" class="col-xs-offset-2 col-xs-10 padding0 stackMthd opacity00"><div class="col-xs-7 padding0">'
+'<pre style="margin-bottom:2px;"><span>splitAndMerge(<span class="arr">arr</span>, <span id="low" class="low">low</span>, <span id="high" class="high">high</span>) {</span>\n'+
	'\t<span id="ifCondition">if (<span class="low">low</span> &lt; <span class="high">high</span>) {</span>\n'+
	'\t\t<span>int <span id="mid" class="mid">mid</span> = (<span class="low">low</span> + <span class="high">high</span>) /2;</span>\n'+
	'\t\t<span>splitAndMerge(<span class="arr">arr</span>, <span class="low">low</span>, <span class="mid">mid</span>);</span>\n'+
	'\t\t<span id=sm'+val+' class="visibility-hidden">splitAndMerge(<span class="arr">arr</span>, <span class="mid1"><span class="mid">mid</span>+1</span>, <span class="high">high</span>);</span>\n'+
	'\t\t<span id=m'+val+' class="visibility-hidden">merge(<span class="arr">arr</span>,<span class="low">low</span>,<span class="mid">mid</span>,<span class="high">high</span>);</span>\n'+
	'\t<span>}</span>\n'+
'<span>}</span></pre>'+
'</div><div class="col-xs-5 padding0 text-center">'+
'<table align="center"><tr><th class="visibility-hidden">low</th><th class="visibility-hidden">high</th><th class="visibility-hidden">high</th><th class="visibility-hidden">high</th><th class="visibility-hidden">high</th><th class="visibility-hidden">high</th></tr><tr><td class = "opacity025">0</td><td class = "opacity025">1</td><td class = "opacity025">2</td><td class= "opacity025">3</td><td class="opacity025">4</td><td class="opacity025">5</td></tr>'+
'<tr><td class="user-val td-border opacity025" index="0">15</td><td class="user-val td-border opacity025" index="1">6</td><td class="user-val td-border opacity025" index="2">'+
'9</td><td class="user-val td-border opacity025" index="3">12</td><td class="user-val td-border opacity025" index="4">16</td><td class="user-val td-border opacity025" index="5">7</td></tr></table></div></div>');
var stacktop = $("#stackBlock").height()- $('#mainStack').height();

$("#mainStack table:first tr:first th:eq("+ h +")").removeClass("visibility-hidden");
$("#mainStack table:first tr:first th:eq("+ ll +")").removeClass("visibility-hidden")

if (stacktop > 0) {
	$('#mainStack > div').css({'top': stacktop});
	if ($(".stackMthd").length > 1) {
		svgArrow(a, b);
		a = a + $(".stackMthd").height() + 5;
		b = b + $(".stackMthd").height() + 5;
	}
} else {
	console.log(' in the else block of the height.....')
	//var h1 = $("svg").height();
	
	//$("svg").css('height', $("svg").height() + $('#dummyMthd').height());
	var h1 = parseInt($("#dummyMthd").height());
	var h2 = parseInt($('svg').css('top'));
	console.log("h1 = " + h1 + "h2 = " + h2 + "h");
	if ($(".stackMthd").length > 1) {
		svgArrow(a, b);
		a = a + $(".stackMthd").height() + 5;
		b = b + $(".stackMthd").height() + 5;
	}
	
	//$('svg').css('top', (h1 + h2) + "px" );
	//$("svg").css('top', $('#dummyMthd').height())
	//var h2 = $("svg").height();
}

 for (var i = ll; i <= h ; i++) {
	console.log(' in the for loop' + i);
	  $('table:eq(1) tr:eq(1) td:eq('+i+')').removeClass('opacity025');
	  $('table:eq(1) tr:eq(2) td:eq('+i+')').removeClass('opacity025');
	} 
 
//stackFlow(ll,h);
}


function stackFlow(ll, h, callBackFunction) {
	console.log('in the stack flow.. ');
	/* $("#mainStack table:last tr:first th:eq("+ h +")").removeClass("visibility-hidden");
	$("#mainStack table:last tr:first th:eq("+ ll +")").removeClass("visibility-hidden") */
	$("#dummyMthd").append($("#stackMthd").html());
	var l = $('#stackMthd').offset();
	var m = $('#dummyMthd').offset();
	
	tl.to("#dummyMthd",1,{opacity:1,top:l.top - m.top,left:l.left - m.left, onComplete: function() {
		$("#stackMthd").removeClass("opacity00").removeAttr('id');
		$("#dummyMthd").empty().removeAttr("style");
		console.log("In the stackFlow() ....");
		/* if ($(".stackMthd").length > 1) {
			svgArrow(a, b);
			a = a + $(".stackMthd").height() + 5;
			b = b + $(".stackMthd").height() + 5;
		} */
		
		$("#low").popover({
			trigger : "focus",
			content : ""+ll,
			placement:"top",
			html: true
		});
		$("#high").popover({
			trigger : "focus",
			content : ""+h,
			placement:"top",
			html: true
		});
		$("#low,#high").popover("show");
		
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
		
	}});
}

function tableOffSet(last, prev) {
		$('.pulse').removeClass('pulse');
		var l = $('#' + last).offset(); //leftHalf
		var m = $('.' + prev).offset(); //first-half
		$('#' + last).css({'top': m.top - l.top, 'left': m.left - l.left});
		tl.to('#' + last, 1, {opacity:1, top:0, left:0, onComplete:function() {
			$('#' + last).addClass("pulse");
			$(".introjs-nextbutton").show();
		}})
}

function scrollBottom() {
	var container = $('.output-console-body');
	scrollTo = $('#output > div:last-child');
		container.animate({
		scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
	});
}

function svgArrow(a, b) {
	//$("svg g:eq(0) line:eq(2)").removeAttr("style");
    var g = document.createElementNS("http://www.w3.org/2000/svg", "g");
    g.setAttribute('class', 'group');
    $("svg").append(g);
	
	var newLine = document.createElementNS('http://www.w3.org/2000/svg', 'line');
	newLine.setAttribute('class', 'line line1');
	newLine.setAttribute('x1', '145px');
	//newLine.setAttribute('x2', '225px');
	newLine.setAttribute('x2', '35px');
	newLine.setAttribute('y1', a + 'px');
	newLine.setAttribute('y2', a + 'px');
	$("svg g").eq($("svg g").length - 1).append(newLine);
	
	var newLine = document.createElementNS('http://www.w3.org/2000/svg', 'line');
	newLine.setAttribute('class', 'line line2');
	newLine.setAttribute('x1', '35px');
	newLine.setAttribute('x2', '35px');
	newLine.setAttribute('y1', a + 'px');
	newLine.setAttribute('y2', b + 'px');
	//newLine.setAttribute('y2', b + 'px');
	
	$("svg g").eq($("svg g").length - 1).append(newLine);
	
	var newLine = document.createElementNS('http://www.w3.org/2000/svg', 'line');
	newLine.setAttribute('class', 'line line3');
	newLine.setAttribute('x1', '35px');
	//newLine.setAttribute('x2', '308px');
	newLine.setAttribute('x2', '109px');
	newLine.setAttribute('y1', b + 'px');
	newLine.setAttribute('y2', b + 'px');
	newLine.setAttribute("style", "marker-end: url('#arrow')");
	
	$("svg g").eq($("svg g").length - 1).append(newLine);
	$("svg g:eq(0) line:eq(2)").removeAttr("style");
	
/* 	$("svg g").eq(0).find(".line1").attr("x2", "105px").css("marker-end", "url('#arrow')").hide();
	$("svg g").eq(0).find(".line2").attr("y2", "181px").css("marker-end", "url('#arrow')").hide();
	$("svg g").eq(0).find(".line3").attr("x2", "35px").css("marker-end", "url('#arrow')").hide(); */
	
	$('g').off("mouseover, mouseout");
	
	 $('g').on('mouseover', function (e) {
		$(this).find('.line').css({"stroke" : "red"});
	});
	
	$('g').on('mouseout', function (e) {
		$(this).find('.line').css({"stroke" : "gray"});
	});  
}

function arrowRevealEffect() {
	//$("svg g:eq(0) line:eq(2)").removeAttr("style");
	$("svg g:eq(0) line:eq(0)").attr("x2","146px");// 35
	$("svg g:eq(0) line:eq(1)").attr("y2", "200px") //18px
	$("svg g:eq(0) line:eq(2)").attr("x2","35px"); //109px
	$("svg g:eq(0)").show();
		$("svg g:eq(0) line:eq(0)").css("marker-end", "url('#arrow')");
		tl.to($("svg g:eq(0) line:eq(0)"), 1, {attr:{x2: "35px"}, onComplete: function() {
			$("svg g:eq(0) line:eq(0)").css("marker-end", "");
			$("svg g:eq(0) line:eq(1)").css("marker-end", "url('#arrow')");
		}})
		.to($("svg g:eq(0) line:eq(1)"), 1, {attr: {y2: "18px"}, onComplete: function() {
			$("svg g:eq(0) line:eq(1)").css("marker-end", "");
			$("svg g:eq(0) line:eq(2)").css("marker-end", "url('#arrow')");
		}})
		.to($("svg g:eq(0) line:eq(2)"), 1, {attr: {x2: "109px"}, onComplete: function() {
			//$("svg g:eq(0) line:eq(2)").css("marker-end", "");
		}})
}

/* function arrowRevealEffect(callBackFunction) {
	//$("svg g").eq(0).find(".line1").css("marker-end", "url('#arrow')");
	$("svg g").eq(0).find(".line1").show()
	tl.to($("svg g").eq(0).find(".line1"), 1, {attr:{x2: "308px"}, onComplete:function() {
		$("svg g").eq(0).find(".line1").css("marker-end", "");
		$("svg g").eq(0).find(".line2").show();
		//$("svg g").eq(0).find(".line2").css("marker-end", "url('#arrow')");
	}});
	
	tl.to($("svg g").eq(0).find(".line2"), 1, {attr:{y2: (b - $("svg g").length * 105) + "px"}, onComplete:function() {
		$("svg g").eq(0).find(".line2").css("marker-end","");
		$("svg g").eq(0).find(".line3").show();
	}});
	
	tl.to($("svg g").eq(0).find(".line3"), 1, {attr:{x2: c + "px"}, onComplete:function() {
		$(".introjs-nextbutton").show();
	}});
} */


/* function svgOffSet() {
	var l1 = $('#svgDiv').offset();
	var l2 = $('#animationDiv').offset();
	$('#svgDiv').css({'top':l2.top - l1.top, 'left': l2.left - l1.left})
	
} */

function typing(selector, text, callBackFunction) {
		var typingSpeed = 10;
		$(".introjs-nextbutton").addClass("opacity00");
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").removeClass("opacity00");
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
</script>
</head>
<body>
	<div class="text-center margin-top10">
		<span class="label label-default ct-demo-heading">MergeSort</span>
	</div>
	<div class="col-xs-offset-4 col-xs-2 margin-top10 padding0">
		<table id='tableEdit'>
				<tr id='tableEditTr'>
					<td class='td-edit-border' maxlength='1' contenteditable='true' index='0'>15</td>
					<td class='td-edit-border' maxlength='1' contenteditable='true' index='1'>6</td>
					<td class='td-edit-border' maxlength='1' contenteditable='true' index='2'>9</td>
					<td class='td-edit-border' maxlength='1' contenteditable ='true' index='3'>12</td>
					<td class='td-edit-border' maxlength='1' contenteditable = 'true' index='4'>16</td>
					<td class='td-edit-border' maxlength='1' contenteditable = 'true' index='5'>7</td>
					<!-- <td class='td-edit-border' maxlength='1' contenteditable = 'true' index='6'>1</td>
					<td class='td-edit-border' maxlength='1' contenteditable = 'true' index='7'>29</td> -->
				</tr>
			</table>
	</div>
	<div class='col-xs-12 margin-top10'>
		<div class='col-xs-4' style="padding-left: 0px; padding-right: 0px;">
			<pre class='box-border' id='codeDiv'>
<span>public class MergeSort {
	<span id="mainMthd">public static void main(String[] args) {
			<span>int[] arr = { 15, 6, 9, 12, 16, 7};</span>
			<span>int n = arr.length;</span>
			MergeSort mergeSort = new MergeSort();
			<span id="callMthd">mergeSort.splitAndMerge(arr, 0, n - 1);</span>
	<span>}</span></span>
		
	<span id="splitAndMerge"><span id='mergeSorting'>public void splitAndMerge(<span id='arrId'>int[] arr</span>, int <span id='lowId'>low</span>, int <span id='highId'>high</span>)</span> {
		<span id='mSortCondition'>if (low < high)</span> {
			<span id='midean'>int mid = (low + high) / 2;</span>
			<span id='mergeSorting1'>splitAndMerge(arr, low, mid);</span>
			<span id='mergeSorting2'>splitAndMerge(arr, mid + 1, high);</span>
			<span id='merge'>merge(arr, low, mid, high);</span>
		<span>}</span>
	<span>}</span></span>
	
	<span id="mergeMthd"><span id='vMerge'>void merge(int[] arr, int low, int mid, int high)</span> {
		int i = low, h = low, j = mid + 1, k;
		int[] temp = new int[arr.length];
		<span id='while'>while (h <= mid && j<=high) {
			if (arr[h] <= arr[j]) {
				temp[i] = arr[h];
				h++;
			} else {
				temp[i] = arr[j];
				j++;
			}
			i++;
		}
		<span id='secondIf'>if (h > mid) {
			for (k = j; k <= high; k++) {
				temp[i] = arr[k];
				i++;
			}
		} else {
			for (k = h; k <= mid; k++) {
				temp[i] = arr[k];
				i++;
			}
		}</span></span></span>
		<span id='secondFor'>for (k = low; k <= high; k++)
			arr[k] = temp[k];</span>
	}
	
}
</span>			
</pre>



<!-- void print(int[] arr, int n) {
		int i;
		for (i = 0; i < n; i++)
			System.out.print("  " + arr[i]);
	} -->
		</div>
		<div class="col-xs-offset-1 col-xs-7 padding0" style='height: 690px'>
			<div class='col-xs-offset-0 col-xs-4 box-border padding0' id='animationDiv' style='width: 100%; height: 100%'>
				<!-- <div id="dummyParent" class="col-xs-offset-2 col-xs-10"> -->
				<div id="dummyParent" class="col-xs-12 padding0">
					<div id="dummyMthd" class="col-xs-offset-2 col-xs-9 padding0 opacity00"></div>
				</div>
				<div id="stackBlock" class="col-xs-12 padding0">
					<!-- <svg class='col-xs-2' style="height:411px;">
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="86%" x2="15%" y1="86%" x1="99%" id="line123"/>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="63%" x2="11%" y1="86%" x1="11%"/>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="63%" x2="11%" y1="63%" x1="98%"/>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="60%" x2="104%" y1="60%" x1="7%"/>  
						<line x1="7%" y1="60%" x2="11%" y2="42%" style="stroke:rgb(255,0,0);stroke-width:2"/>  
						<line x1="99%" y1="42%" x2="11%" y2="42%" style="stroke:rgb(255,0,0);stroke-width:2"/>   
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="38%" x2="104%" y1="38%" x1="7%"/>
						<line x1="7%" y1="38%" x2="11%" y2="20%" style="stroke:rgb(255,0,0);stroke-width:2"/>
 						<line x1="99%" y1="20%" x2="11%" y2="20%" style="stroke:rgb(255,0,0);stroke-width:2"/>  -->
 						<!-- <g>
						<line x1="11%" y1="352px" x2="136%" y2="352px" style="stroke:rgb(255,0,0);stroke-width:2"/>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="259px" x2="11%" y1="353px" x1="13%"/>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="259px" x2="11%" y1="259px" x1="98%"/>
						</g>
						<g>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="246px" x2="104%" y1="246px" x1="7%"/>
						<line x1="7%" y1="247px" x2="8%" y2="173px" style="stroke:rgb(255,0,0);stroke-width:2"/>
						<line x1="99%" y1="173px" x2="11%" y2="174px" style="stroke:rgb(255,0,0);stroke-width:2"/>
						</g>
						<g>
						<line style="stroke:rgb(255,0,0);stroke-width:2" y2="156px" x2="104%" y1="155px" x1="7%"/>
						<line x1="7%" y1="156px" x2="11%" y2="81px" style="stroke:rgb(255,0,0);stroke-width:2"/>
						<line x1="99%" y1="82px" x2="11%" y2="82px" style="stroke:rgb(255,0,0);stroke-width:2"/>
						</g> -->
					<!-- </svg> -->
					<div id="mainStack" class="col-xs-12 padding0">
						<div class='col-xs-12 padding0' id="mainChildDiv">
							<svg class='css-svg col-xs-12 padding0'>
								<marker id="arrow" refX="4" refY="2.5" markerWidth="5" markerHeight="5" orient="auto" style="fill: gray;">
				               		<path d="M0,0 L5,2.5 L0,5 Z" class="arrow"/>
				           		</marker>
							</svg>
						</div>
						<!-- <svg>
							<line x1="0" y1="0" x2="200" y2="200" style="stroke:rgb(255,0,0);stroke-width:2" />
						</svg> -->
					</div>
				</div>
				<!-- <div id="stackMthd" class="col-xs-12 padding0">
				
				<line style="stroke:rgb(255,0,0);stroke-width:2" y2="86%" x2="136%" y1="86%" x1="11%"/>
<line x1="13%" y1="353px" x2="11%" y2="259px" style="stroke:rgb(255,0,0);stroke-width:2"/>
<line x1="98%" y1="63%" x2="11%" y2="63%" style="stroke:rgb(255,0,0);stroke-width:2"/>
<line x1="7%" y1="60%" x2="104%" y2="60%" style="stroke:rgb(255,0,0);stroke-width:2"/>
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="173px" x2="8%" y1="247px" x1="7%"/>
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="42%" x2="11%" y1="42%" x1="99%"/>
<line x1="7%" y1="38%" x2="104%" y2="38%" style="stroke:rgb(255,0,0);stroke-width:2"/>
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="81px" x2="11%" y1="156px" x1="7%"/>
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="20%" x2="11%" y1="20%" x1="99%"/>
				
					<div class='col-xs-6 padding0'>
					<line x1="11%" y1="352px" x2="136%" y2="352px" style="stroke:rgb(255,0,0);stroke-width:2">
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="259px" x2="11%" y1="353px" x1="13%">
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="259px" x2="11%" y1="259px" x1="98%">
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="246px" x2="104%" y1="246px" x1="7%">
<line x1="7%" y1="247px" x2="8%" y2="173px" style="stroke:rgb(255,0,0);stroke-width:2">
<line x1="99%" y1="173px" x2="11%" y2="174px" style="stroke:rgb(255,0,0);stroke-width:2">
<line style="stroke:rgb(255,0,0);stroke-width:2" y2="156px" x2="104%" y1="155px" x1="7%">
<line x1="7%" y1="156px" x2="11%" y2="81px" style="stroke:rgb(255,0,0);stroke-width:2">
<line x1="99%" y1="82px" x2="11%" y2="82px" style="stroke:rgb(255,0,0);stroke-width:2">
					
					
					<pre><span>splitAndMerge(<span class="arr">arr</span>, <span class="low">low</span>, <span class="high">high</span>) {</span>
<span>if (<span class="low">low</span> &lt; <span class="high">high</span>) {</span>
<span>int <span class="mid">mid</span>=(<span class="low">low</span>+<span class="high">high</span>)/2;</span>
<span>splitAndMerge(<span class="arr">arr</span>, <span class="low">low</span>, <span class="mid">mid</span>);</span>
<span>splitAndMerge(<span class="arr">arr</span>, <span class="mid1">mid+1</span>, <span class="high">high</span>);</span>
<span>merge(<span class="arr">arr</span>,<span class="low">low</span>,<span class="mid">mid</span>,<span class="high">high</span>);</span>
<span>}</span>
<span>}</span></pre>
					</div>
					<div class='col-xs-6 padding0'>
						<table>
							<tr>
								<th colspan="7">low</th>
								<th>high</th>
							</tr>
							<tr>
								<td>0</td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
							</tr>
							<tr>
								<td class='user-val td-border'></td>
								<td class='user-val td-border'></td>
								<td class='user-val td-border'></td>
								<td class='user-val td-border'></td>
								<td class='user-val td-border'></td>
								<td class='user-val td-border'></td>
							</tr>
							
						</table>
					</div>
				</div> -->
			</div>
		</div>
		<!-- div  class="col-xs-3">
			<div id="stack">
				<div id='method'>
					<div class='method-declaration'></div>
				</div>
				<div id='stackBorder1'>
					<div id='stackDivsParent' class='position-relative col-xs-12 padding0'></div>
				</div>
			</div>
			<div id="recurCode">
				<pre style="height:100%;">
<span>public void splitAndMerge(arr, <span class='low'></span>, <span class='high'></span>) {</span>
	<span>if (<span class='low'></span> &lt; <span class='high'></span>) {</span>
	<span>int mid = (<span class='low'></span> + <span class='high'></span>)/2;</span>
	<span>splitAndMerge(arr, <span class='low'></span>, <span class='mid'></span>);</span>
	<span>splitAndMerge(arr, <span class='mid1'></span>, <span class='high'></span>);</span>
	<span>merge(arr, <span class=''></span>, <span></span>, <span></span>);</span>
		<span>}</span>
	<span>}</span>
				</pre>
			</div>
		</div> -->
		<!-- <div class="col-xs-1 padding0" style="height:350px" id="stack"></div> -->
		<!-- <div class='col-xs-5 padding0' style='height:620px'>
			<div class='box-border' id='animationDiv' style='width:100%; height:100%'>
			<div id='svgDiv' class='box-border'>
					 <svg width='100%' height='100%'> 
						<marker style="fill: gray;" orient="auto" markerHeight="5" markerWidth="5" refY="2.5" refX="4" id="arrow">
	               			<path class="arrow" d="M0,0 L5,2.5 L0,5 Z"/>
	           			</marker>
						<line style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;" class="line" id="arrow1" y2="4.5%" x2="3.5%" y1="4.5%" x1="3.5%"/>
						<text id="text1" style="writing-mode:tb; font-size:17px;"  x="32" y="80" fill="gray">Division Part</text>
						<line style="marker-end: url(#arrow);stroke: gray; stroke-width: 2;" class="line" id="arrow2" y2="39.5%" x2="3.5%" y1="39.5%" x1="3.5%"/>												
						</svg>
				</div>
				<div id='tableDiv' class="margin-top10 col-xs-offset-3 col-xs-6 padding0">
					<table class='visibility-hidden'>
						<tr class='index opacity00'>
							<th colspan="7">low</th>
							<th>high</th>
						</tr>
						<tr >
							<td class='index opacity00'>0</td>
							<td class='index opacity00'>1</td>
							<td class='index opacity00'>2</td>
							<td class='index opacity00'>3</td>
							<td class='index opacity00'>4</td>
							<td class='index opacity00'>5</td>
							<td class='index opacity00'>6</td>
							<td class='index opacity00'>7</td>
						</tr>
						<tr id='tableDivTr'>
							<td class='user-val first-half td-border' index='0'>15</td>
							<td class='user-val  td-border' index='1'>6</td>
							<td class='user-val  td-border' index='2'>9</td>
							<td class='user-val  td-border' index='3'>12</td>
							<td class='user-val second-half td-border' index='4'>16</td>
							<td class='user-val  td-border' index='5'>7</td>
							<td class='user-val  td-border' index='6'>1</td>
							<td class='user-val  td-border' index='7'>29</td>
						</tr>
					</table>
				</div>
				<div id="tableDiv2" class="col-xs-12 margin-top20 padding0">
					<div class="col-xs-offset-2 col-xs-3 padding0">
						<table id='leftHalf2' class='position-relative opacity20'>
						<tr>
							<td class='left-half2-1 td-border'></td>
							<td class='td-border'></td>
							<td class='left-half2-2 td-border'></td>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-2 col-xs-3 padding0">
						<table id='rightHalf2' class='position-relative opacity20'>
						<tr>
							<td class='right-half2-1 td-border'></td>
							<td class='td-border'></td>
							<td class='right-half2-2 td-border'></td>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
				</div>
				
				 <div id="tableDiv3" class="col-xs-12 margin-top20 padding0">
					<div class="col-xs-offset-1 col-xs-1 padding0" style="margin-left:12%; width: 3%;">
						<table id='leftHalf3-1' class='position-relative opacity20'>
						<tr>
							<td class='left-half3-1 td-border'></td>
							<td class='left-half3-2 td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-2 col-xs-2 padding0" style="width:22%;">
						<table id='leftHalf3-2' class='position-relative opacity20'>
						<tr>
							<td class='right-half-1 td-border'></td>
							<td class='right-half-12 td-border'></td>
						</tr>
						</table>
					</div>
					
					<div class="col-xs-offset-0 col-xs-1 padding0" style="width:3%;">
						<table id='rightHalf3-1' class='position-relative opacity20'>
						<tr>
							<td class='left-half-1 td-border'></td>
							<td class='left-half-12 td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-2 col-xs-2 padding0">
						<table id='rightHalf3-2' class='position-relative opacity20'>
						<tr>
							<td class='right-half-11 td-border'></td>
							<td class='right-half-21 td-border'></td>
						</tr>
						</table>
					</div>
				</div>
				<div  id="tableDiv4" class=" col-xs-12 margin-top20 padding0">
					<div class="col-xs-offset-1 col-xs-1 padding0" style="margin-left:10%;">
						<table id='leftHalf4-01' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-0 col-xs-1 padding0" style="width:12%;">
						<table id='leftHalf4-02' class='position-relative opacity20 '>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-0 col-xs-1 padding0" style="width:8%;">
						<table id='leftHalf4-11' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-0 col-xs-1 padding0" style="width:5%;">
						<table id='leftHalf4-12' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-1 col-xs-1 padding0" style="width:8%;">
						<table id='leftHalf4-21' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-0 col-xs-1 padding0" style="width:12%;">
						<table id='leftHalf4-22' class='position-relative opacity20'>
						<tr>
							<td class=' td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-1 padding0">
						<table id='leftHalf4-31' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
					<div class="col-xs-offset-0 col-xs-1 padding0">
						<table id='leftHalf4-32' class='position-relative opacity20'>
						<tr>
							<td class='td-border'></td>
						</tr>
						</table>
					</div>
				</div> 
				<div id="concurency"  class="col-xs-12 margin-top20 padding0"></div>
				<div class="col-xs-12 margin-top20 padding0" id="concurency1"></div>
				<div class="col-xs-offset-3 col-xs-5 margin-top20 padding0 opacity20" id="sortedDiv">
					<div class="col-xs-offset-3 col-xs-5 margin-top20 padding0">
					<table>
						<tr>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
							<td class='td-border position-relative'></td>
						</tr>
						</table>
					</div>
				</div>
			</div> 
			// comment this below div......
				 <div id='svgDiv' class='box-border' style='position:relative;'>
					<svg width='100%' height='100%'></svg>
				// The splitAndMerge() method  first splits the given input and then calls merge.the merge(...)  compares and sorts the elements
				// for mid ---- The midPosition variable is used to store the value used for spliting
				</div> 
		</div> -->
	</div>
</body>
</html>

  


