<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>map-reduce</title>
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

<style type="text/css">
.box-border {
	border: 2px solid gray;
	border-radius: 6px;
	height: 579px;
}

#animationDiv, #javaCodeDiv {
	padding: 0 5px;
}

#animationDiv {
	width: 60%;
}

#javaCodeDiv {
	width: 40%;
}

.creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 10.8px;
	font-style: inherit;
	line-height: 1.2;
	height: 575px;
	overflow-y: auto;
	padding: 5px;
	white-space: pre;
	word-spacing: -3px;
}

.margin-top40 {
	margin-top: 40px;
}

.icon-file-text-alt::before {
	content: "\f0f6";
}

.position-absolute {
	position: absolute;
}

.position-relative {
	position: relative;
}

.panel-heading {
	padding: 4px 0;
	font-weight: bold;
}

.margin-top-10 {
	margin-top: 10px;
}

textarea {
	resize: none;
}

.file-name {
	font-size: 11px;
	font-weight: bold;
}

#resourceManager {
	border: 1px solid blue;
	border-radius: 8px;
	height: 175px;
}

.padding0 {
	padding: 0;
}

#resourceMngrDiv .panel {
	height: 85px;
}

.margin-top-40 {
	margin-top: 40px;
}

#resourceMngrDiv .panel-heading {
	background-color: #4fb19d;
	border-color: #259579;
}

#hdfsDiv {
	border: 1px solid;
	border-radius: 15px;
	height: 140px;
	padding-top: 25px;
}

.node-mngr {
	border: 1px solid;
	border-radius: 10px;
	height: 212px;
}

.title {
	font-size: 14px;
	font-weight: bold;
}

#mrAppMstr {
	align-items: center;
	background-color: gray;
	border: 1px solid;
	border-radius: 10px;
	color: white;
	display: flex;
	height: 86px;
	justify-content: center;
	margin: 10px;
}

#container1 {
	border: 1px solid;
	border-radius: 8px;
	height: 110px;
	margin: 55px 15px 0;
}

#container2 {
	border: 1px solid;
	border-radius: 8px;
	height: 156px;
	margin: 28px 10px 0;
	padding: 7px;
}

#yarnChild {
	border: 1px solid;
	border-radius: 8px;
	height: 35px;
	display: flex;
	background-color: #f5f5dc;
	align-items: center;
	justify-content: center;
}

#tasks {
	border: 1px solid;
	border-radius: 8px;
	font-size: 10px;
	height: 76px;
	margin-top: 30px;
	padding: 9px 5px 0;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 9999999;
}

.zIndex {
	z-index: 9999999;
	position: relative;
}

#hdfsDiv .panel-body {
	height: 65px;
}

.user-btn {
	background-color: green;
}

.introjs-tooltiptext br {
	margin-bottom: 15px;
}

.introjs-tooltip {
	min-width: 250px;
}

#hdfsDiv .panel-heading {
	font-size: 12px;
	font-weight: normal;
	padding: 1px 0;
}

#hdfsDiv .panel-body {
	padding: 4px;
}

.text-content {
	height: 45px;
	overflow: hidden;
}

#inputFilePanel {
	margin-bottom: 2px;
}

#myMapperPanel .panel-heading, #myReducerPanel .panel-heading {
	padding: 0 2px;
	font-size: 11px;
	background-color: #666633;
}

#myMapperPanel .panel-body, #myReducerPanel .panel-body {
	padding: 8px 0;
}

#myMapperPanel {
	margin-bottom: 10px;
}

#myReducerPanel {
	margin-bottom: 0
}

#inputFilePanel .panel-heading, #outputFilePanel .panel-heading {
	background-color: #006666;
}

#jobPanel .panel-body {
	padding: 10px 0;
}

.file-title {
	font-family: serif;
	font-weight: bold;
}

#hdfsText {
	font-size: 16px;
	font-weight: bold;
}

/* svg {
	position: relative;
	z-index: 99;
} */

.margin-top-30 {
	margin-top: 30px;
}

#outputKeyClsPanel, #outputValClsPanel, 
#inputFrmtClsPanel, #outputFrmtClsPanel {
	font-size: 10px;
	font-weight: bold;
}

#outputValClsPanel, #outputFrmtClsPanel {
	margin-bottom: 0;
}

#outputKeyClsPanel, #inputFrmtClsPanel {
	margin-bottom: 8px;
}

#outputKeyClsPanel .panel-body, #outputValClsPanel .panel-body,
#outputFrmtClsPanel .panel-body, #inputFrmtClsPanel .panel-body {
	padding: 7px 0;
}

#clientJVM {
	border: 1px solid gray;
	border-radius: 8px;
	margin-left: 2%;
	width: 14.5%;
}

#jobDiv {
	margin-top: 18px;
}

#jobDiv .panel {
	margin-bottom: 5px;
}

#saveBtn {
	font-size: 10px;
}

#editableText {
	overflow: auto;
}

.background-gray {
	background-color: gray !important;
}

.popover {
	z-index: 10000000;
}

#jobId {
	font-size: 6px;
	font-weight: bold;
}

.display-none {
	display: none;
}

#outputDiv {
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
	height: 110px;
	padding: 10px;
}

.introjs-tooltiptext {
	max-height: 160px;
	overflow: auto;
}

.blinking-border-orange {
	animation-name: blinking-border-orange;
	animation-duration: 1s;
	animation-iteration-count: infinite;
	animation-direction: alternate ;
}

@keyframes blinking-border-orange { 
	50% {
		border-width: 2px solid;
		border-color: orange;
		background-color: pink;
	}
}

#tasks .panel-body {
	padding: 8px 0;
}
</style>

<script type="text/javascript">
	var tl = new TimelineLite();
	var typingSpeed = 5;
	
	$(document) .ready(function() {
		$(".line, .g").hide();
		
		$("g").click(function() {
			$(".popover").remove();
			var value = $(this).text();
			$(this).popover({
				content: value,
				container: '#svgDiv',
				html : true
			}).popover("show");
		});
		
		var l = $("#svgDiv").offset();
		$("#divBox").offset({
			"top" : l.top,
			"left" : l.left
		});
		
		introGuide();
		$("#saveBtn").on("click",function() {
			$(this).remove();
			$("[contenteditable=true]").attr("contenteditable", false);
			$(".introjs-nextbutton").removeClass("hide");
		});
	});

	function introGuide() {
		introjs = introJs();
		introjs.setOptions({
			steps : [{
				element : "#confID",
				intro : "",
				position : "bottom-middle-aligned"
			}, {
				element : "#jobID",
				intro : "",
				position : "bottom-middle-aligned"
			}, {
				element : "#clientJVM",
				intro : "",
				position : "right"
			}, {
				element : "#inputPath",
				intro : "",
				position : "bottom"
			}, {
				element : "#hdfsDiv",
				intro : "",
				position : "bottom"
			}, {
				element : "#outputPath",
				intro : "",
				position : "bottom"
			}, {
				element : "#hdfsDiv",
				intro : "",
				position : "bottom"
			}, {
				element : "#myMapperCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#myMapperPanel",
				intro : "",
				position : "right"
			}, {
				element : "#myReducerCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#myReducerPanel",
				intro : "",
				position : "right"
			}, {
				element : "#setInputFrmtCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#inputFrmtClsPanel",
				intro : "",
				position : "left"
			}, {
				element : "#setOutputFrmtCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#outputFrmtClsPanel",
				intro : "",
				position : "left"
			}, {
				element : "#setOutputKeyCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#outputKeyClsPanel",
				intro : "",
				position : "left"
			}, {
				element : "#setOutputValCls",
				intro : "",
				position : "bottom"
			}, {
				element : "#outputValClsPanel",
				intro : "",
				position : "left"
			}, {
				element : "#jobWaitForCmplt",
				intro : "",
				position : "top"
			}]
		});
		
		introjs.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
			case "confID":
				$(".introjs-nextbutton").addClass("hide");
				var text = "A new configuration.";
				typing(".introjs-tooltiptext", text);
				break;
			case "jobID":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "New job instance created and set job name as wordcount.";
					typing(".introjs-tooltiptext", text);
				});
				break;
			case "clientJVM":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					tl.to("#clientJVM", 1.5, {opacity: 1, onComplete: function() {
						$("#clientJVM").removeClass("opacity00");
						$("#jobID").addClass("zIndex").effect("highlight", {color: '#FFFFFF'}, 1000);
						$('#jobID').effect( "transfer", { to: $("#jobPanel"), className: "ui-effects-transfer" }, 1000, function() {
							$('#jobID').removeClass("zIndex");
							tl.to("#jobPanel", 2, {opacity: 1, onComplete: function() {
								var text = "Now job instance created.<br/> Now we are setting job name as wordcount.";
								typing(".introjs-tooltiptext", text, function() {
									$(".introjs-nextbutton").addClass("hide");
									$("#setJobName").addClass("zIndex").effect("highlight", {color: '#FFFFFF'}, 1000, function() {
										$(this).removeClass("zIndex");
										$('#setJobName').effect( "transfer", { to: $("#jobName"), className: "ui-effects-transfer" }, 1000, function() {
											tl.to("#jobName", 1.5, {opacity: 1, onComplete: function() {
												$(".introjs-nextbutton").removeClass("hide");	
											}});
										});
									});
								});
							}});
						});
					}});
				});
				break;
			case "inputPath":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "This is the path, where the file has located.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "hdfsDiv":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					
					if(introjs._currentStep == 4) {
						tl.to("#hdfsDiv", 1, {opacity : 1, onComplete:function() {
							$("#hdfsDiv").removeClass("opacity00");
							var text = "This is the HDFS, the file we want to perform the job is located here.";
							typing(".introjs-tooltiptext", text, function() {
								$(".introjs-nextbutton").addClass("hide");
								$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='fileZoomEffect()'>Next &#8594;</a>");
							});
						}});
					} else {
						$("#outputFilePanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
							var text = "output path added.";
							typing(".introjs-tooltiptext", text);
						});
					}
				});
				break;
				
			case "hdfsContainer":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#fileLocation").removeClass("opacity00").addClass("blinking");
					var text = "This is the location of the file, which we perform job on.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").addClass("hide");
						$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='fileTransfer()'>Next &#8594;</a>");
					});
				});
				break;
				
			case "outputPath":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we will set output directory for the file.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "myMapperCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Set mapper class as myMapper.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "myMapperPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#myMapperPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "myMapper instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "myReducerCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Set reducer class as myReducer.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
				
			case "myReducerPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#myReducerPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "myReducer instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "setInputFrmtCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we will set input format class as TextInputFormat.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "inputFrmtClsPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#inputFrmtClsPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "InputFormate class instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "setOutputFrmtCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we will set input format class as TextOutputFormat.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "outputFrmtClsPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#outputFrmtClsPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "outputFormat class instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "setOutputKeyCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we will set output key class as Text.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "outputKeyClsPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#outputKeyClsPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "outputKey class instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "setOutputValCls":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Here we will set output value class as IntWritable.";
					typing(".introjs-tooltiptext", text);
				});
				break;
				
			case "outputValClsPanel":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					$("#outputValClsPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animation zoomIn");
						var text = "outputValue class instance created.";
						typing(".introjs-tooltiptext", text);
					});
				});
				break;
				
			case "jobWaitForCmplt":
				$(".introjs-nextbutton").addClass("hide");
				$(".introjs-helperLayer").one("transitionend", function() {
					var text = "waitForCompletion() method wait untill job finish.";
					typing(".introjs-tooltiptext", text, function() {
						$(".introjs-nextbutton").addClass("hide");
						$("svg").css({"position" : "relative", "z-index" : "10000000"});
						$("#divBox").addClass("zIndex").css("background-color", "white");
						$(".introjs-tooltiptext").append("<ul></ul>");
						
						var text = "job instance send a request to the resource manager to get application id.";
						stepsTyping(text, "requestAppId()");
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

	function typing(selector, text, callBackFunction) {
		$(selector).typewriting(text, {
			"typing_interval" : typingSpeed,
			"cursor_color" : 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").removeClass("hide");
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
	
	function fileZoomEffect() {
		$(".user-btn").remove();
		$("#inputFilePanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			$(".introjs-tooltiptext").append("<br/><div></div>");
			var text = "Now you can edit the text in file.";
			$(".introjs-nextbutton").addClass("hide");
			typing(".introjs-tooltiptext > div:last-child()", text, function() {
				$(".introjs-nextbutton").addClass("hide");
				charAtEnd("editableText");
				$("#saveBtn").removeClass("hide");
			});
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
	
	function getAppId() {
		$(".user-btn").remove();
		arrowReveal("#arrow2", "9.5%", "30.5%", function() {
			$('#group1').fadeIn(1500);
			$("#jobId").fadeIn(1500, function() {
				var text = "Move all job related resources to HDFS.";
				stepsTyping(text, "step2()");
			});
		});
	}
	
	function requestAppId() {
		$(".user-btn").remove();
		$("#resourceMngrDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			arrowReveal("#arrow1", "33.2%", "9.3%", function() {
				var text = "Resource manager create application id for job and send back to job instance.";
				stepsTyping(text, "getAppId()");				
			});
		});
	}
	
	function step2() {
		$(".user-btn").remove();
		arrowReveal("#arrow3", "33%", "40%", function() {
			$('#group2').fadeIn(1500, function() {
				var text = "Job submits the application to the resource manager.";
				stepsTyping(text, "step3()");
			});
		});
	}
	
	
	function step3() {
		$(".user-btn").remove();
		arrowReveal("#arrow4", "33.2%", "9.3%", function() {
			$('#group3').fadeIn(1500, function() {
				var text = "Resource Manager chooses a Node Manager with available resources and requests a container for MRAppMaster";
				stepsTyping(text, "step4()");
			});
		});
	}
	
	function step4() {
		$(".user-btn").remove();
		$("#nodeMngrDiv1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			arrowReveal("#arrow5", "39.1%", "26.9%", function() {
				$("#arrow5").css("marker-end","");
				setTimeout(function() {
					arrowReveal("#arrow6", "39.1%", "57.5%", function() {
						$('#group4').fadeIn(1500, function() {
							var text = "Node Manager allocates container for MRAppMaster; MRAppMaster will execute and coordinate MapReduce job";
							stepsTyping(text, "step5()");
						});
					});
				}, 1000);
			});
		});
	}
	
	function step5() {
		$(".user-btn").remove();
		$("#container1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			arrowReveal("#arrow7", "37.6%", "71.5%", function() {
				$('#group5').fadeIn(1500, function() {
					var text = "MRAppMaster grabs required resource from HDFS, such as Input Splits; these resources were copied";
					stepsTyping(text, "step6()");
				});
			});
		});
	}
	
	function step6() {
		$(".user-btn").remove();
		arrowReveal("#arrow11", "29.7%", "46.9%", function() {
			$("#arrow11").css("marker-end","");
			arrowReveal("#arrow12", "33%", "47.0%", function() {
				$('#group6').fadeIn(1500, function() {
					var text = "MapReduce Job Execution on YARN,  MRAppMaster negotiates with" 
								+ "Resource Manager for available resources; Resource Manager " 
								+ "will select Node Manager that has the most resources";
					stepsTyping(text, "step7()");
				});
			});
		});
	}
	
	function step7() {
		$(".user-btn").remove();
		arrowReveal("#arrow10", "52.5%", "51.2%", function() {
			$("#arrow10").css("marker-end","");
			setTimeout(function() {
				arrowReveal("#arrow9", "65.2%", "17.0%", function() {
					$('#group7').fadeIn(1500, function() {
						var text = "MRAppMaster tells selected NodeManager to start Map and Reduce tasks.";
						stepsTyping(text, "step8()");
					});
				});
			}, 1000);
		});
	}
	
	function step8() {
		$(".user-btn").remove();
		$("#nodeMngrDiv2").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			arrowReveal("#arrow8", "58.1%", "64.1%", function() {
				$('#group8').fadeIn(1500, function() {
					var text = "NodeManager creates YarnChild containers that will coordinate and run tasks ";
					stepsTyping(text, "step9()");
				});
			});
		});
	}
	
	function step9() {
		$(".user-btn").remove();
		$("#yarnChild").css({"position" : "relative", "top" : "50px"});
		$("#container2").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			$("#yarnChild").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
				$(this).removeClass("animated zoomIn");
				arrowReveal("#arrow13", "69.7%", "66%", function() {
					$('#group9').fadeIn(1500, function() {
						var text = "YarnChild acquires job resources from HDFS that will be required to execute Map and Reduce tasks";
						stepsTyping(text, "step10()");
					});
				})
				
			});
		});
	}
	
	function step10() {
		$(".user-btn").remove();
		arrowReveal("#arrow14", "78.3%", "46.8%", function() {
			$("#arrow14").css("marker-end","");
			arrowReveal("#arrow15", "75.1%", "47.0%", function() {
				$('#group10').fadeIn(1500, function() {
					var text = "YarnChild create Mapper tasks.";
					stepsTyping(text, "step11()");
				});
			});
		});
	}
	
	function step11() {
		$(".user-btn").remove();
		TweenMax.to("#arrow14", 1, {attr:{x1 : "78.3%", y1 : "68.2%"}});
		TweenMax.to("#yarnChild", 1, {top : 0, onComplete:function() {
			$("#tasks").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
				$(this).removeClass("animated zoomIn");
				$("#mapperPanel").css({"position" : "relative", "left" : "30%"});
				$("#mapperPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					var text = "YarnChild executes Mapper tasks.";
					stepsTyping(text, "step12()");
				});
			});
			
		}});
	}
	
	function step12() {
		$(".user-btn").remove();
		$("#mapperCode").addClass("zIndex").css({"background-color" : "white"});
		$("#mapperPanel .panel-body").removeClass("opacity00");
		$('#mapperCode').effect( "transfer", { to: $("#myMapperPanel"), className: "ui-effects-transfer" }, 2000, function() {
			$("#mapperPanel").addClass("blinking-border-orange");
			loadingEffect("#mapperLoading", function() {
				$("#mapperPanel").removeClass("blinking-border-orange");
				var text = "Reducer gives output to the user from Mapper input." 
							+ "<br/>We can manually set the number of reducers based on our requirement";
				stepsTyping(text, "step13()");
				
			});
		});
	}
	
	function step13() {
		$(".user-btn").remove();
		TweenMax.to("#mapperPanel", 1, {left : 0, onComplete:function() {
			$("#reducerPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
				$(this).removeClass("animated zoomIn");
				$("#mapperCode").removeClass("zIndex").css({"background-color" : ""});
				$("#reducerCode").addClass("zIndex").css({"background-color" : "white"});
				$("#reducerPanel .panel-body").removeClass("opacity00");
				$('#reducerCode').effect( "transfer", { to: $("#myReducerPanel"), className: "ui-effects-transfer" }, 2000, function() {
					$("#reducerPanel").addClass("blinking-border-orange");
					loadingEffect("#reducerLoading", function() {
						$("#reducerPanel").removeClass("blinking-border-orange");
					});
				});
			});
		}});
	}
	
	
	
	function loadingEffect(taskId, callBackFunction) {
		var count = 0;
		var testingInterval = setInterval(function() {
		  count++;
		  $(taskId).text(count);
		  if (parseInt($(taskId).text()) == 100) {
		    clearInterval(testingInterval);
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		  }
		}, 50);
	}
	
	function stepsTyping(text, nextBtnAction) {
		$(".introjs-tooltiptext > ul").append("<li class='opacity00'>" + text + "</li>");
		var container = $('.introjs-tooltiptext');
		scrollTo = $('.introjs-tooltiptext > ul > li:last-child');
			container.animate({
			scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
		}, function() {
			TweenMax.to($(".introjs-tooltiptext > ul li:last-child"), 1, {opacity : 1, onComplete:function() {
				$(".introjs-tooltiptext > ul li:last-child").removeClass("opacity00");
				$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='" + nextBtnAction + "'>Next &#8594;</a>");
			}});
		});
	}
	
	
	function arrowReveal(arrowId, x2, y2, callBackFunction) {
		$(arrowId).show();
		tl.to(arrowId, 2, {attr:{x2: x2, y2: y2}, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}
</script>
</head>
<body>
	
	<div class="text-center">
		<h4>
			<span class="label ct-demo-heading">MapReduce</span>
		</h4>
	</div>

	<div class="col-xs-5 margin-top-10" id="javaCodeDiv">
		<div class="box-border">
			<pre class="creampretab4" id="javaCode"><i class="fa fa-plus-circle" id="accordion"></i> import java.util.*; 

public class WordCount {
	public static void main(String[] args) throws Exception {
		<span id='confID'>Configuration conf = new Configuration();</span>
		<span id='jobID'>Job job = new Job(conf, "<span id='setJobName'>wordcount</span>");</span>
		<span id='inputPath'>FileInputFormat.addInputPath(job, new Path("input.txt"));</span>
		<span id='outputPath'>FileOutputFormat.setOutputPath(job, new Path("output.txt"));</span>
		<span id='myMapperCls'>job.setMapperClass(MyMapper.class);</span>
		<span id='myReducerCls'>job.setReducerClass(MyReducer.class);</span>
		<span id='setInputFrmtCls'>job.setInputFormatClass(TextInputFormat.class);</span>
		<span id='setOutputFrmtCls'>job.setOutputFormatClass(TextOutputFormat.class);</span>
		<span id='setOutputKeyCls'>job.setOutputKeyClass(Text.class);</span>
		<span id='setOutputValCls'>job.setOutputValueClass(IntWritable.class);</span>
		<span id='jobWaitForCmplt'>job.waitForCompletion(true);</span>
	}
	<div id='mapperCode'>public static class MyMapper extends Mapper&lt;LongWritable, Text,  Text, IntWritable&gt; {
		private final static IntWritable one = new IntWritable(1);
		private Text word = new Text();

		public void map(LongWritable key, Text value, Context context)
						 throws IOException, InterruptedException {
			String line = value.toString();
			StringTokenizer tokenizer = new StringTokenizer(line);
			while (tokenizer.hasMoreTokens()) {
				word.set(tokenizer.nextToken());
				context.write(word, one);
			}
		}
	}</div>
	<div id='reducerCode'>public static class MyReducer extends Reducer&lt;Text, IntWritable, Text, IntWritable&gt; {
		public void reduce(Text key, Iterable&lt;IntWritable&gt; values, Context context)
								throws IOException, InterruptedException {
			int sum = 0;
			for (IntWritable val : values) {
				sum += val.get();
			}
			context.write(key, new IntWritable(sum));
		}
	}</div>
}</pre>
		</div>

		<div id="outputDiv" class='col-xs-offset-1 col-xs-10 margin-top-10 hide'>
			<div class="output-console-title-bar">
				<span class="title">Output</span>
			</div>
			<div class="output-console-body">
				<span id="output"></span>
			</div>
		</div>


	</div>
	<div class="col-xs-7 margin-top-10" id="animationDiv">
		<div class="box-border" id="svgDiv">
			<svg height="100%" width="100%">
				<marker id="arrow" refX="4" refY="2.5" markerWidth="5"
					markerHeight="5" orient="auto" style="fill: gray;">
	               	<path d="M0,0 L5,2.5 L0,5 Z" class="arrow" />
	           	</marker>
	           	<!-- <line 
	           			x1="9.5%" y1="30.5%" x2="33.2%" y2="9.3%" id="arrow1" class="line" 
	           			style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;"/> -->
					
				<line
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"
					class="line" id="arrow1" y2="30.5%" x2="9.5%" y1="30.5%" x1="9.5%" />
				<!-- <line x1="33.1%" y1="9.3%" x2="9.5%" y2="30.5%" id="arrow2" 
						class="line" style="marker-end: url(#arrow); stroke: green; stroke-width: 2;"/> -->
				<line x1="33.1%" y1="9.3%" x2="33.1%" y2="9.3%" id="arrow2" class="line"
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;"/>
					
					
				<line
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2"
					class="line" id="arrow4" y2="30.5%" x2="9.5%" y1="30.5%" x1="9.5%" />
					
				<g class="g" id="group3">
					<circle fill="white" stroke-width="2" stroke="black" r="12" cy="13.0%" cx="29%"/>
					<text font-size="15" y="13.9%" x="29%" text-anchor="middle">3</text>
				</g>
				
				<g class="g" id="group1">
					<circle fill="white" stroke-width="2" stroke="black" r="12" cy="26.5%" cx="14%"/>
					<text font-size="15" y="27.3%" x="14%" text-anchor="middle">1</text>
				</g>
				
				<!-- <line
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;"
					id="arrow3" class="line" y2="40%" x2="33%" y1="40%" x1="14.4%" /> -->
				<line
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;"
					id="arrow3" class="line" y2="40%" x2="14.4%" y1="40%" x1="14.4%" />
				
				<g id="group2" class="g">
					<circle style="" cx="23.5%" cy="40%" r="12" stroke="black" stroke-width="2" fill="white"/>
					<text font-size="15" y="40.9%" x="23.4%" text-anchor="middle">2</text>
				</g>
				<!-- <line x1="39.1%" y1="16.5%" x2="39.1%" y2="26.9%" class="line"
					style="stroke: gray; stroke-width: 2;" id="arrow5" /> -->
				<line x1="39.1%" y1="16.5%" x2="39.1%" y2="16.5%" class="line"
					style="marker-end: url(#arrow); stroke: gray; stroke-width: 2;" id="arrow5" />
	
				<g class='g' id='group4'>
					<circle fill="white" stroke-width="2" stroke="black" r="12"
					cy="21.4%" cx="39.1%" style="" />
					<text text-anchor="middle" x="39.1%" y="22.4%" font-size="15">4</text>
				</g>
				<!-- <line x1="39.1%" y1="51.3%" x2="39.1%" y2="57.5%" class="line" id="arrow6"
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" /> -->
				
				
				<line x1="39.1%" y1="51.3%" x2="39.1%" y2="51.3%" class="line" id="arrow6"
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" />
				<!-- <line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow7' y2="71.5%" x2="37.6%" y1="62.8%" x1="37.6%" /> -->
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow7' y2="62.8%" x2="37.6%" y1="62.8%" x1="37.6%" />
	
				<g class='g' id='group5'>
					<circle fill="white" stroke-width="2" stroke="black" r="9"
					cy="66.4%" cx="37.6%" style="" />
					<text text-anchor="middle" font-size="11" y="67.1%" x="37.6%">5</text>
				</g>
				
				<!-- <line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow8' y2="64.1%" x2="58.1%" y1="81.5%" x1="46.0%" /> -->
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow8' y2="81.5%" x2="46.0%" y1="81.5%" x1="46.0%" />
	
				<g class='g' id='group8'>
					<circle fill="white" stroke-width="2" stroke="black" r="12"
					cy="72.4%" cx="52.2%" />
					<text text-anchor="middle" x="52.2%" y="73.4%" font-size="15">8</text>
				</g>
				<!-- <line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow9' y2="17.0%" x2="65.2%" y1="27.1%" x1="61.4%" /> -->
					
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow9' y2="27.1%" x2="61.4%" y1="27.1%" x1="61.4%" />	
				
				<!-- <line x1="43.7%" y1="73.8%" x2="52.5%" y2="51.2%" class="line" id="arrow10"
					style="stroke-width: 2; stroke: gray; position: relative; z-index: 98;" /> -->
					
				<line x1="43.7%" y1="73.8%" x2="43.7%" y2="73.8%" class="line" id="arrow10"
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" />
	
				<g class='g' id='group7'>
					<circle style="" cx="50.7%" cy="55.6%" r="12" stroke="black"
					stroke-width="2" fill="white" />
					<text text-anchor="middle" font-size="15" y="56.5%" x="50.7%">7</text>
				</g>
				<!-- <line x1="29.7%" y1="73.8%" x2="29.7%" y2="46.9%" class="line" id="arrow11"
					style="stroke-width: 2; stroke: gray; position: relative; z-index: 98;" /> -->
					
				<line x1="29.7%" y1="73.8%" x2="29.7%" y2="73.8%" class="line" id="arrow11"
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" />
	
				<g class='g' id='group6'>
					<circle style="" cx="29.6%" cy="63.6%" r="10" stroke="black"
					stroke-width="2" fill="white" />
					<text text-anchor="middle" font-size="11" y="64.3%" x="29.6%">6</text>
				</g>
				<!-- <line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow12' y2="47.0%" x2="33%" y1="47.0%" x1="29.7%" /> -->
					
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow12' y2="47.0%" x2="29.7%" y1="47.0%" x1="29.7%" />
					
				<!-- <line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id="arrow13" y2="66%" x2="69.7%" y1="61.3%" x1="69.7%" /> -->
					
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id="arrow13" y2="61.3%" x2="69.7%" y1="61.3%" x1="69.7%" />	
				
				<g class='g' id='group9'>
					<circle fill="white" stroke-width="2" stroke="black" r="9"
					cy="63.6%" cx="72.0%" style="" />
					<text x="72.0%" y="64.3%" font-size="11" text-anchor="middle">9</text>
				</g>
					
				<!-- <line
					style="stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow14' y2="46.8%" x2="78.3%" y1="67.9%" x1="78.3%" /> -->
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow14' y2="76.9%" x2="78.3%" y1="76.9%" x1="78.3%" />
	
				<g class='g' id='group10'>
					<circle style="" cx="78.3%" cy="53.6%" r="12" stroke="black"
					stroke-width="2" fill="white" />
					<text text-anchor="middle" font-size="13" y="54.4%" x="78.2%">10</text>
				</g>
				<!-- <line x1="78.2%" y1="47.0%" x2="75.1%" y2="47.0%" class="line" id='arrow15'
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" /> -->
				<line x1="78.2%" y1="47.0%" x2="78.2%" y2="47.0%" class="line" id='arrow15'
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;" />
	
				<line
					style="marker-end: url(#arrow); stroke-width: 2; stroke: gray; position: relative; z-index: 98;"
					class="line" id='arrow16' y2="79%" x2="69.7%" y1="74.0%" x1="69.7%" />
				<g class='g' id='group11'>
					<circle fill="white" stroke-width="2" stroke="black" r="10"
					cy="76.6%" cx="71.8%" style="" />
					<text x="71.7%" y="77.3%" font-size="11" text-anchor="middle">11</text>
				</g>
			</svg>
		</div>
		
		<div class="box-border" id="divBox">
			<div class="margin-top-10 col-xs-12 padding0">
				
				<div id="resourceMngrDiv" class="col-xs-5 col-xs-offset-4 padding0 opacity00">
					<div class="panel panel-primary">
						<div class="panel-heading text-center">Resource Manager</div>
						<div class="panel-body padding0"></div>
					</div>
				</div>

				<div class="col-xs-2 padding0 col-xs-offset-1">
					<div class="col-xs-12">
						<div id="inputFrmtClsPanel" class="panel panel-primary opacity00">
							<div class="panel-heading text-center background-gray">inputFormat class</div>
							<div class="panel-body text-center">TextInputFormat</div>
						</div>
						<div id="outputFrmtClsPanel" class="panel panel-primary opacity00">
							<div class="panel-heading text-center background-gray">outputFormat class</div>
							<div class="panel-body text-center">TextOutputFormat</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 margin-top-30 padding0">
				<div id="clientJVM" class="col-xs-2 opacity00">
					<div id="jobDiv" class="col-xs-12 padding0">
						<div id="jobPanel" class="panel panel-primary center opacity00">
							<div class="panel-heading text-center">Job</div>
							<div class="panel-body text-center">
								<span id='jobName' class='opacity00'>wordcount</span>
								<span id='jobId' class='display-none'>job_local1196160880_0001</span>
							</div>
						</div>
					</div>
					<div class="text-center">Client</div>
				</div>
				<div id="hdfsDiv" class="col-xs-offset-2 col-xs-5 padding0 opacity00">
					<div id="hdfsText" class="col-xs-2">
						<div>H</div>
						<div>D</div>
						<div>F</div>
						<div>S</div>
					</div>

					<div class="col-xs-5 opacity00" id="inputFilePanel">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="text-center file-title">input.txt
									<span id="saveBtn" class="btn btn-xs btn-success hide" title='click to save'>save</span>
								</div>
							</div>
							<div id="editableText" spellcheck="false" class="panel-body" contenteditable="true">hello java, hello hadoop</div>
						</div>

					</div>

					<div class="col-xs-5 opacity00" id="outputFilePanel">
						<div class="panel panel-primary">
							<div class="panel-heading">
							<div class="text-center file-title">output.txt</div>
							</div>
							<div class="panel-body"></div>
						</div>

					</div>

				</div>
				<div class="col-xs-2 col-xs-offset-1">
						<div class="panel panel-primary opacity00" id="outputKeyClsPanel">
							<div class="panel-heading text-center background-gray">outputKey class</div>
							<div class="panel-body text-center">Text</div>
						</div>
						<div id="outputValClsPanel" class="panel panel-primary opacity00">
							<div class="panel-heading text-center background-gray">outputValue class</div>
							<div class="panel-body text-center">IntWritable</div>
						</div>
					</div>
			</div>

			<div class="col-xs-12 margin-top-40 text-center padding0">
  				<div class="col-xs-2  user-classes">
					<div id="myMapperPanel" class="panel panel-primary opacity00">
						<div class="panel-heading text-center">Mapper class</div>
						<div class="panel-body text-center">myMapper</div>
					</div>
					<div class="panel panel-primary opacity00" id="myReducerPanel">
						<div class="panel-heading text-center">Reducer class</div>
						<div class="panel-body text-center">myReducer</div>
					</div>
				</div>
  
				<div id="nodeMngrDiv1" class="col-xs-3 col-xs-offset-1 node-mngr padding0 opacity00">
					<span class="title">Node Manager</span>
					<div id="container1" class='opacity00'>
						<div id="mrAppMstr">
							<span class="title">AppMaster</span>
						</div>
					</div>
				</div>
				<div id="nodeMngrDiv2" class="node-mngr col-xs-3 col-xs-offset-1 padding0 opacity00">
					<span class="title">Node Manager</span>
					<div id="container2" class='opacity00'>
						<div id="yarnChild" class='opacity00'>
							<span class="title">Yarn Child</span>
						</div>
						<div id="tasks" class="col-xs-12 opacity00">
							<div class="col-xs-5 panel panel-primary padding0 opacity00" id="mapperPanel">
								<div class="panel-heading text-center">Mapper</div>
								<div class="panel-body opacity00 text-center"><b id='mapperLoading'>0</b>%</div>

							</div>
							<div class="col-xs-5 col-xs-offset-2 panel panel-primary padding0 opacity00" id="reducerPanel">
								<div class="panel-heading text-center">Reducer</div>
								<div class="panel-body opacity00 text-center"><b id='reducerLoading'>0</b>%</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>