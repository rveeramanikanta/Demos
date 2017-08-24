<!DOCTYPE html>
      <html>
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="/css/bootstrap.min.css" />
      <link rel="stylesheet" href="/css/jquery-ui.css">
      <link rel="stylesheet" href="/css/font-awesome.min.css" />
      <link rel="stylesheet" href="/css/introjs.css">
      <link rel="stylesheet" href="/css/introjs-ct.css" />
      <link rel="stylesheet" href="/css/animate.css" />
      <link rel="stylesheet" href="/css/custom-styles.css" />
      
      <script type="text/javascript" src="/js/jquery-latest.js"></script>
      <script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
      <script type="text/javascript" src="/js/intro.js"></script>
      <script type="text/javascript" src="/js/typewriting.min.js"></script>
      <script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
      <script type="text/javascript" src="/js/gs/TweenLite.min.js"></script>
      <script type="text/javascript" src="/js/gs/TimelineLite.min.js"></script>
      <title>Insert title here</title>
      <style type="text/css">
      
      .padding00 {
      	padding: 0;
      }
      
      .borderToMainBox {
      	border: 2px solid gray;
      	border-radius: 5px;
      }
      
      .div-margin-top-bottom {
      	margin: 13px 0;
      }
      
      .oval {
      	border: 2px solid gray;
      	-moz-border-radius: 100px/35px;
      	border-radius: 100px/35px;
      	display: inline-block;
      	height: 56px;
      	/* width: 168px; */
      	width: 27%;
      	background: rgba(0, 0, 0, 0) linear-gradient(0deg, rgba(0, 128, 0, 0.83)
      		12%, rgba(0, 128, 0, 0.34) 78%);
      	box-shadow: 0 1px 2px 0 gray;
      }
      
      .margin-top-bottom {
      	margin: 15px 0;
      	line-height: 56px;
      }
      
      .rectangle {
      	border: 2px solid gray;
      	height: 56px;
      	width: 168px;
      	display: inline-block;
      	background: rgba(0, 0, 0, 0) linear-gradient(0deg, rgb(222, 222, 18) 12%,
      		rgba(255, 255, 0, 0.23) 78%);
      	box-shadow: 0 1px 2px 0 gray;
      }
      
      .rhombus {
      	height: 70px;
      	width: 70px;
      	margin: 30px 0;
      	transform: rotate(45deg) skew(15deg, 15deg);
      	display: inline-block;
      	border: 2px solid gray;
      	background: rgba(0, 0, 0, 0) linear-gradient(0deg, rgb(255, 192, 192)
      		12%, rgba(255, 192, 201, 0.66) 78%);
      	box-shadow: 0 1px 2px 0 gray;
      }
      
      .rmbsText {
      	display: inline-block;
      	font-family: verdana;
      	font-size: 10px;
      	font-weight: bold;
      	line-height: 70px;
      	transform: rotate(-45deg);
      }
      
      .display-inline-block {
      	display: inline-block;
      }
      
      .parallelogram {
      	height: 56px;
      	width: 100%;
      	-webkit-transform: skew(-36deg);
      	-moz-transform: skew(-36deg);
      	transform: skew(-36deg);
      	display: inline-block;
      	border: 2px solid gray;
      	background: rgba(0, 0, 0, 0)
      		linear-gradient(0deg, rgba(0, 141, 255, 0.85) 12%,
      		rgba(0, 115, 255, 0.21) 78%);
      	box-shadow: 0 1px 2px 0 gray;
      }
      
      .transform-text {
      	display: inline-block;
      	transform: skew(28deg);
      }
      
      .svg-css {
      	position: absolute;
      	top: 0;
      	left: 0;
      	height: 100%;
      	width: 100%;
      }
      
      .svg-line {
      	display: none;
      	marker-end: url("#arrowEnd");
      	position: relative;
      	stroke: gray;
      	stroke-width: 2;
      }
      
      #flowChartBox {
      	min-height: 900px;
      }
      
      #description {
      	line-height: 1.7;
      	padding: 8px;
      }
      
      .step-arrow {
      	background-color: #a1126c;
      	height: 30px;
      	line-height: 30px;
      	display: table-row-group;
      	border-bottom-left-radius: 8px;
      	border-top-left-radius: 8px;
      	color: white;
      }
      
      .step-arrow::after {
      	color: #a1126c;
      	border-left: 15px solid;
      	border-top: 15px solid transparent;
      	border-bottom: 15px solid transparent;
      	content: ' ';
      	position: absolute;
      }
      
      .step-explanation {
      	background-color: #fffae6;
      	border: 2px solid green;
      	border-radius: 8px;
      	line-height: 1.7;
      }
      
      .user-btn {
      	background-color: green;
      	margin-top: 4px !important;
      }
      
      .center {
      	margin-left: auto;
      	margin-right: auto;
      	display: block;
      }
      
      .b-green {
      	font-family: monospace;
      	font-weight: bold;
      	color: green;
      }
      
      .zIndex {
      	z-index: 10000000;
      }
      
      #step9 {
      	background: rgba(0, 0, 0, 0)
      		linear-gradient(0deg, orange 12%, rgba(255, 165, 0, 0.29) 78%);
      }
      
      .step-padding {
      	padding: 0 3px;
      }
      
      #step2, #flow6, #flow7, #flow9 {
      	width: 25%;
      }
      
      #flow7 {
      	margin: 0 11%;
      }
      </style>
      <script type="text/javascript">
      
      var introjs;
      var typingSpeed = 5;
      var tl;
      var stepCount = 1;
      var step = 1;
      $(document).ready(function() {
      	introGuide();
      	$('line').hide();
      	tl = new TimelineLite();
      	fadeEffect("#desText1", function() {
      		fadeEffect("#desText2", function() {
      			
      		});
      	});
      	
      	$("#restart").click(function() {
      		location.reload();
      	});
      });
      
      function introGuide() {
      	introjs = introJs();
      	introjs.setOptions({
      		steps : [{
      			element : "#description",
      			intro : "",
      			tooltipClass: "hide"
      		},{
      			element : "#flowChartBox",
      			intro : "",
      			tooltipClass: "hide"
      		},{
      			element : "#restart",
      			intro : "",
      			position : "right"
      		}]
      	});
      	
      	introjs.onafterchange(function(targetElement) {
      		var elementId = targetElement.id;
      		
      		switch (elementId) {
      			case "flowChartBox":
      				$(".introjs-nextbutton").hide();
      				$(".introjs-helperLayer").one("transitionend", function() {
      					algorithmText();
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
      
      function fadeEffect(element, callBackFunction) {
      	tl.to(element, 0.5, {opacity:1, onComplete: function() {
      		$(element).removeClass("opacity00");
      		if (typeof callBackFunction === "function") {
      			callBackFunction();
      		}
      	}});
      }
      
      function nextStep() {
      	$(".user-next").remove();
      	introjs.nextStep();
      }
      
      function arrowAppend() {
      	$(".user-btn" + stepCount).remove();
      	if(stepCount == 1) {
      		$("#step" + stepCount).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
      			$(this).removeClass("animated zoomIn");
      			stepCount++;
      			algorithmText();
      		});
      	} else {
      		if (stepCount >= 4) {
      			arrowReveal(stepCount + '1', function() {
      				$("#svgLine" + (stepCount + '1')).css('marker-end', '');
      				arrowReveal(stepCount + '2', function() {
      					if (stepCount == 8) {
      						stepCount++;
      						algorithmText();
      					} else if (stepCount == 10) {
      						arrowReveal('102', function() {
      							console.log("a");
      						});
      						
      						arrowReveal('101', function() {
      							console.log("b");
      							$("#svgLine101").css('marker-end', '');
      							/* arrowReveal('Stop1', function() {
      								
      							}); */
      						});
      						/* arrowReveal('103', function() {
      							$("#svgLine103").css('marker-end', '');
      							arrowReveal('Stop2', function() {
      								$("#step" + stepCount).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
      									$("#step" + stepCount).removeClass("animated zoomIn");
      								});
      							});
      						}); */
      					} else {
      						$("#step" + stepCount).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
      							$("#step" + stepCount).removeClass("animated zoomIn");
      							stepCount++;
      							algorithmText();
      						});
      					}
      				});
      			});
      		} else {
      			arrowReveal(stepCount, function() {
      				$("#step" + stepCount).removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
      					$("#step" + stepCount).removeClass("animated zoomIn");
      					stepCount++;
      					algorithmText();
      				});
      			});
      		}
      	}
      }
      
      
      function arrowReveal(lineNumber, callBackFunction) {
      	var x2 = $("#svgLine" + lineNumber).attr("x2");
      	var y2 = $("#svgLine" + lineNumber).attr("y2");
      	$("#svgLine" + lineNumber).attr("x2", $("#svgLine" + lineNumber).attr("x1"));
      	$("#svgLine" + lineNumber).attr("y2", $("#svgLine" + lineNumber).attr("y1"));
      	
      	TweenMax.to($("#svgLine" + lineNumber).show(), 1, {attr: {x2: x2, y2 : y2}, onComplete: function() {
      		if (typeof callBackFunction === "function") {
      			callBackFunction();
      		}
      	}});
      }
      
      function algorithmText() {
      	fadeEffect("#stepArrow" + stepCount, function() {
      		$("#algorithm" + stepCount).removeClass("opacity00");
      		if(stepCount == 1) {
      			var text = "Let us start the program by analysing the given requirement. ";
      		} else if(stepCount == 2) {
      			var text = "Read the input from the user as radius. ";
      		} else if(stepCount == 3) {
      			var text = "Read the input from the user as radius. ";
      		} else if(stepCount == 4) {
      			var text = "In the process we are calculating the area of circle by using formula Area = 3.14 * r * r";
      		} else {
      			var text = "After getting the required output let us end the process. ";
      		}
      		
      		typing("#algorithm" + stepCount, text, function() {
      			$("#algorithm" + stepCount).append("<a class='introjs-button user-btn user-btn"+stepCount+"' onclick='arrowAppend()'>Next &#8594;</a>");
      		});
      	});
      }
      
      </script>
      </head>
      <body>
      	<div class="col-xs-12 div-margin-top-bottom padding00">
      		<div class="text-center">
      			<h1 id="heading" class="label ct-demo-heading text-center">Largest
      				of Three Numbers</h1>
      		</div>
      	</div>
      
      	<div class="col-xs-12 padding00" style="margin-top: 10px;">
      		<div id="description"
      			class="col-xs-offset-3 col-xs-6 borderToMainBox padding00">
      			<ul>
      				<li id="desText1" class='opacity00'>Let us learn how to design
      					a flowchart and the related algorithm for finding the <span
      					class="b-green">largest</span> of <span class="b-green">three
      						numbers</span> form the given inputs.
      				</li>
      				<li id="desText2" class='opacity00'>The <span class="b-green">flowchart</span>
      					and the <span class="b-green">algorithm</span> will depict the
      					various steps involved in arriving at a required solution for
      					finding the largest of three numbers. <a
      					class="introjs-button user-btn user-next" onclick="nextStep()">Next
      						&#8594;</a></li>
      			</ul>
      		</div>
      	</div>
      
      	<div class="col-xs-12 div-margin-top-bottom padding00">
      		<div id="flowChartBox"
      			class="col-xs-offset-1 col-xs-10 padding00 borderToMainBox">
      			<div class="col-xs-12 padding00">
      				<div class="col-xs-4 padding00" style="margin-top: 16px;">
      					<div class="col-xs-12">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow1" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 1 :</span>
      						</div>
      
      						<div id="algorithm1"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00"></div>
      					</div>
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow2" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 2 :</span>
      						</div>
      
      						<div id="algorithm2"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00"></div>
      					</div>
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow3" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 3 :</span>
      						</div>
      
      						<div id="algorithm3"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00"></div>
      					</div>
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow4" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 4 :</span>
      						</div>
      
      						<div id="algorithm4"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00"></div>
      					</div>
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow5" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 5 :</span>
      						</div>
      						<div id="algorithm5"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow6" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 6 :</span>
      						</div>
      						<div id="algorithm6"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow7" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 7 :</span>
      						</div>
      						<div id="algorithm7"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow8" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 8 :</span>
      						</div>
      						<div id="algorithm8"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow9" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 9 :</span>
      						</div>
      						<div id="algorithm9"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      					
      					
      					<div class="col-xs-12" style="margin-top: 55px;">
      						<div class="col-xs-3 step-padding">
      							<span id="stepArrow10" class="step-arrow opacity00">&nbsp;
      								&nbsp;Step 10 :</span>
      						</div>
      						<div id="algorithm10"
      							class="step-explanation col-xs-8 col-xs-offset-1 opacity00">
      						</div>
      					</div>
      					
      				</div>
      
      				<div id="flowChartBoxChild" class="col-xs-8">
      					<div class="col-xs-10 col-xs-offset-2 padding00">
      						<svg class="svg-css" id="svg">
      							<marker id="arrow" refX="5" refY="2.5" markerWidth="5"
      								markerHeight="5" orient="auto" style="fill: gray;">
      							<path d="M0,0 L5,2.5 L0,5 Z" /></marker>
      							<line id="svgLine2" class="svg-line" x1="50%" y1="7.5%" x2="50%"
      								y2="13.5%"
      								style="marker-end: url('#arrow'); display: inline;" />
      
      							<line id="svgLine3" class="svg-line" x1="50%" y1="20.5%" x2="50%"
      								y2="25%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine41" class="svg-line" x1="44%" y1="32.7%" x2="25.1%"
      								y2="32.7%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine42" class="svg-line" x1="25.2%" y1="32.7%"
      								x2="25.2%" y2="41.7%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine51" class="svg-line" x1="55.5%" y1="32.7%" x2="75%"
      								y2="32.7%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine52" class="svg-line" x1="74.8%" y1="32.7%"
      								x2="75.0%" y2="41.7%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine61" class="svg-line" x1="20%" y1="49.4%" x2="12%"
      								y2="49.4%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine62" class="svg-line" x1="12%" y1="49.4%"
      								x2="12%" y2="71.2%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							
      							<line id="svgLine71" class="svg-line" x1="30.8%" y1="49.5%"
      								x2="48.5%" y2="49.5%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine72" class="svg-line" x1="48.5%" y1="49.4%"
      								x2="48.5%" y2="71%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine81" class="svg-line" x1="69.5%" y1="49.5%"
      								x2="51.5%" y2="49.5%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine82" class="svg-line" x1="51.6%" y1="49.5%"
      								x2="51.6%" y2="71%"
      								style="marker-end: url('#arrow'); display: inline;" />
      								
      							<line id="svgLine91" class="svg-line" x1="80.5%" y1="49.3%" x2="88%"
      								y2="49.3%"
      								style="marker-end: url('#arrow'); display: inline;" />
      							<line id="svgLine92" class="svg-line" x1="87.8%" y1="49.3%"
      								x2="87.8%" y2="71%"
      								style="marker-end: url('#arrow'); display: inline;" />
      								
      							<line id="svgLine101" class="svg-line"
      								style="marker-end: url('#arrow'); display: inline;"
      								x2="12%" x1="12%" y1="78%" y2="97%"></line>
      								
      								
      							<line id="svgLine102" class="svg-line"
      								style="marker-end: url('#arrow'); display: inline;"
      								x1="50%" x2="50%" y2="93%" y1="78%"></line>
      								
      							<line id="svgLine103" class="svg-line" x1="87.8%" x2="87.8%"
      								style="marker-end: url('#arrow'); display: inline;"
      								y2="97%" y1="78%"></line>
      								
      							<line class="svg-line"
      								style="marker-end: url('#arrow'); display: inline;"
      								y2="97%" id="svgLineStop1" x1="12%" y1="97%" x2="36%"></line>
      								
      							<line class="svg-line"
      								style="marker-end: url('#arrow'); display: inline;"
      								y2="97%" id="svgLineStop2" y1="97%" x2="64%" x1="88%"></line>
      						</svg>
      
      
      						<div id="step1" class="center text-center oval opacity00"
      							style="margin-top: 10px; line-height: 50px;">Start</div>
      
      						<div id="step2" class="center text-center parallelogram opacity00"
      							style="margin-top: 50px; line-height: 56px;">
      							<span class="transform-text">Read Radius</span>
      						</div>
      
      						<div id="step3" class="col-xs-12 opacity00 padding00"
      							style="margin-top: 50px;">
      							<div id="flow3" style="display: inline;">
      								<div class="center text-center rhombus"
      									style="margin-top: 15px; line-height: 56px;">
      									<span class="rmbsText">A &gt; B ?</span>
      								</div>
      							</div>
      						</div>
      
      						<div class="col-xs-12 padding00"
      							style="margin-top: 10px; display: inline-flex;">
      							<div id="step4" class="opacity00 col-xs-6 padding00">
      								<div id="flow4" style="display: inline;">
      									<div class="center text-center rhombus"
      										style="line-height: 56px;">
      										<span class="rmbsText">A &gt; C ?</span>
      									</div>
      								</div>
      							</div>
      
      							<div id="step5" class="opacity00 col-xs-6 padding00">
      								<div id="flow5" style="display: inline;">
      									<div class="center text-center rhombus"
      										style="line-height: 56px;">
      										<span class="rmbsText"> B &gt; C ?</span>
      									</div>
      								</div>
      							</div>
      						</div>
      
      						<div class="col-xs-12 center padding00"
      							style="margin-top: 120px; display: inline-flex; padding: 0;">
      							<div id="flow6" class="col-xs-10 padding00">
      								<div id="step6"
      									class="center text-center parallelogram print-max opacity00"
      									style="line-height: 45px; padding: 0;">
      									<span class="transform-text">Max = A</span>
      								</div>
      							</div>
      
      							<div id="flow7" class="col-xs-10 padding00">
      								<div id="step7"
      									class="center text-center parallelogram print-max opacity00"
      									style="line-height: 45px;">
      									<span class="transform-text">Max = C</span>
      								</div>
      							</div>
      
      							<div id="flow9" class="col-xs-10 padding00">
      								<div id="step9"
      									class="center text-center parallelogram print-max opacity00"
      									style="line-height: 45px;">
      									<span class="transform-text">Max = B</span>
      								</div>
      							</div>
      						</div>
      
      						<div class="col-xs-12 padding00">
      							<div id="step10" class="center text-center oval opacity00"
      								style="margin-top: 125px; line-height: 50px;">Stop</div>
      						</div>
      					</div>
      				</div>
      			</div>
      		</div>
      	</div>
      
      	<div class="col-xs-12 text-center" style="margin-top: 20px;">
      		<span id="restart" class="btn btn-warning opacity00">Restart</span>
      	</div>
      
      </body>
      </html>");
