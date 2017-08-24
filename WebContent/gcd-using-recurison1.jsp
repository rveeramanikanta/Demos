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
<title>gcd using recursion</title>
      
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
		min-height: 100px;
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
		font-size: 10px;
		font-style: inherit;
		margin-bottom: 0;
		padding: 5px;
		overflow-y: auto;
	}
	
	#outputDiv {
		margin-top: 70px;
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
	
	.outline-none {
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
	
	.svg-css {
		position: absolute;
		top: 0;
		left: 0;
		height: 100%;
		width: 100%;
	}
	
	.svg-line {
		position: relative;
		stroke: gray;
		stroke-width: 2; 
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
	
	.bg-blinking {
		animation: bg-blinking 1s infinite;
	}
	
	@keyframes bg-blinking {
	  0% {
	  background-color: white;
	  }
	  
	  100% {
	  background-color: lightblue;
	  }
	 }
	 
	 #dummySpan {
		font-family: monospace;
		font-size: 10px;
		position: relative;
		z-index: 9999999;
	}
	
	.introjs-fixParent {
		position: relative !important;
	}
	
	.introjs-tooltip {
		min-width: 250px;
	}
</style>
      
      <script type="text/javascript">
      var typingSpeed = 5;
      var introjs;
      var tl = new TimelineLite();
      var number = 5;
      var idsArr = [];
      var factVal = 5;
      var num1 = 5, num2 = 3
      var autoAnimationFlag = false;
      
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
      element :"#informationDiv",
      intro :"",
      position :"bottom",
      tooltipClass :"hide"
      }, {
      element :"#cCode",
      intro :"",
      position :"right"
      }, {
      element :"#mainStack",
      intro :"",
      position :"left",
      tooltipClass :"hide"
      }, {
      element :"#main",
      intro :"",
      position :"right"
      }, {
      element :"#animationDiv",
      intro :"",
      position :"left",
      tooltipClass :"hide"
      }]
      });
      
      introjs.onafterchange(function(targetElement) {
      var elementId = targetElement.id;
      switch (elementId) {
      case"informationDiv":
      $("#informationDiv").append("<ul></ul>");
      var text ="<li>A function which calls <span class='ct-code-b-red'>directly</span> or" 
      +"<span class='ct-code-b-red'>indirectly</span> again and again is known as a" 
      +"<span class='ct-code-b-red'>recursive function</span>.</li>" 
      +"<li>Recursive functions are very useful while constructing the data structures like stacks,"
      +"queues, and linked lists and for also trees.</li>";
      
      typing($("#informationDiv ul"), text, function() {
      $(".introjs-tooltip").removeClass("hide");
      });
      break;
      
      case"cCode":
      $('.introjs-nextbutton').hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      $("#cCode").removeClass("opacity00");
      var text ="In the below code we will learn how a recursion function call"
      +"work using example of <span class='ct-code-b-yellow'>gcd</span> function.";
      typing($(".introjs-tooltiptext"), text, function() {
      $(".introjs-nextbutton").show();
      });
      });
      break;
      
      case"mainStack":
      $('.introjs-nextbutton').hide();
      $("#animationDiv").removeClass("opacity00");
      $(".introjs-helperLayer").one("transitionend", function() {
      setTimeout(function() {
      introjs.nextStep();
      }, 1000)
      });
      break;
      
      case"main":
      $('.introjs-nextbutton').hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      var text ="Since the main function is the first function to be executed," 
      +" it is the first function to be pushed into the <span class='ct-code-b-yellow'>stack</span>.";
      typing($(".introjs-tooltiptext"), text, function() {
      $(".introjs-nextbutton").show();
      });
      });
      break;
      
      case"animationDiv":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      var fromId;
      if (introjs._currentStep == 4) {
      createMainStack();
      fromId ="#mainBlk";
      } else if (number >= 0) {
      createGcdStack();
      fromId ="#gcdFun";
      }
      
      if (number >= 0) {
      $(fromId).effect("transfer", { to: $("#invisibleDiv .panel"), className:"ui-effects-transfer" }, 1000, function() {
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
      
      returnAnimation();
      //$(".introjs-tooltip").removeClass("hide");
      //var text ="Now the  backtrack process is going on.";
      //typing(".introjs-tooltiptext", text, function() {
      //$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='returnAnimation()'>Next →</a>");
      //});
      }
      });
      break;
      
      case"mainStackNumsDec":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      /* var text ="int variables <span class='ct-code-b-yellow'>num1</span> and" 
      +"<span class='ct-code-b-yellow'>num2</span> are declared and initialized to" 
      +"<span id='tooltipnum1Val' class='ct-code-b-yellow'>5</span>," 
      +"<span id='tooltipnum2Val' class='ct-code-b-yellow'>3</span>" 
      +"<br/>We can also change the value."; */
      
      
      var text ="Here two <span class='ct-code-b-yellow'>int</span>" 
      +" variables <span class='ct-code-b-yellow'>num1</span> and" 
      +"<span class='ct-code-b-yellow'>num2</span> are declared." 
      +"<br/><br/>You can also change the values of <span class='ct-code-b-yellow'>num1</span>" 
      +" and <span class='ct-code-b-yellow'>num2</span>, whose" 
      +" <span class='ct-code-b-yellow'>GCD</span> we will be calculating in this program.";
      
      typing(".introjs-tooltiptext", text, function() {
      $(".introjs-nextbutton").show();
      blinkCursorAtEnd("num1Val");
      });
      });
      break;
      
      case"stack" + number +"ElseBlk":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      $("[contenteditable=true]").attr("contenteditable", false);
      setTimeout(function() {
      introjs.nextStep();
      }, 800);
      });
      break;
      
      case"mainStackPrintf":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      
      if (introjs._currentStep == 6) {
      $("[contenteditable=true]").attr("contenteditable", false);
      setTimeout(function() {
      introjs.nextStep();
      }, 800);
      } else {
      var text ="Finally the value <span class='ct-code-b-yellow'>" + $(".returned-val").text() +"</span>" 
      +", which is the <span class='ct-code-b-yellow'>GCD</span>" 
      +" of two numbers <span class='ct-code-b-yellow'>" + num1 +"</span>" 
      +" and <span class='ct-code-b-yellow'>" + num2 +"</span> will be printed to the output.";
      
      typing(".introjs-tooltiptext", text, function() {
      $(".introjs-nextbutton").show();
      });
      }
      });
      break;
      
      case"mainStackGcdFunCall":
      $(".introjs-nextbutton").hide();
      introjs.refresh();
      $(".introjs-helperLayer").one("transitionend", function() {
      num1 = $("#num1Val").text();
      num2 = $("#num2Val").text();
      flipEffect($(".number:eq(0)"), num1, function() {
      introjs.refresh();
      flipEffect($(".number:eq(1)"), num2, function() {
      introjs.refresh();
      //var text ="Now call the function <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span>"
      var text ="When the system enters into the function <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span>" 
      +" to execute it, It will push the <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span> function" 
      +" along with paramenters <span class='ct-code-b-yellow'>" + num1 +"," + num2 +"</span> into" 
      +"the <span class='ct-code-b-yellow'>stack</span> above" 
      +"the <span class='ct-code-b-yellow'>main</span> function call.";
      
      typing($(".introjs-tooltiptext"), text, function() {
      $(".introjs-nextbutton").show();
      });
      });
      });
      });
      break;
      
      case"stack" + number +"IfBlk":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      $(".introjs-tooltiptext").append("Since the condition : <br/><span class='ct-code-b-yellow'>num1 % num2 == 0</span>" 
      +" <br/><span id='tooltipIfCndtn'>" 
      +"<span id='tooltipNumber' class='flip-css'>" 
      +"<span id='tooltipNum1' class='flip-css'>num1</span> %" 
      +"<span id='tooltipNum2' class='flip-css'>num2</span></span> == 0</span>");
      var ifCndtnOffset = $("#stack" + number +"IfCdtn").offset();
      $("#tooltipIfCndtn").offset({
     "top" : ifCndtnOffset.top,
     "left" : ifCndtnOffset.left
      }).css("font-family","monospace");
      
      tl.to("#tooltipIfCndtn", 1, {top : 0, left : 0, onComplete:function() {
      flipEffect("#tooltipNum1", num1, function() {
      flipEffect("#tooltipNum2", num2, function() {
      flipEffect("#tooltipNumber", (num1 % num2), function() {
      var text ="";
      if (num1 % num2 == 0) {
      text ="evaluates to <span class='ct-code-b-yellow'>true</span>, the control enters into" 
      +"<span class='ct-code-b-yellow'>if-block</span>.";
      $("#stackBody .panel:eq(0) .returned-val:eq(1)").removeClass("returned-val flip-css");
      introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number +"IfBlkReturnStmt","","top"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#animationDiv","","left","hide"));
      } else {
      text ="evaluates to <span class='ct-code-b-red'>false</span>, the control enters into" 
      +"<span class='ct-code-b-yellow'>else-block</span>.";
      $("#stackBody .panel:eq(0) .returned-val:eq(0)").removeClass("returned-val flip-css");
      introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number +"ElseBlk","","top","hide"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#stack" + number +"ElseBlkReturnStmt","","top","hide"));
      introjs.insertOption(introjs._currentStep + 3, getStep("#stack" + number +"GcdCall","","top"));
      introjs.insertOption(introjs._currentStep + 4, getStep("#animationDiv","","left","hide"));
      }
      $(".introjs-tooltiptext").append("<div></div>");
      typing($(".introjs-tooltiptext div:last-child"), text, function() {
      $(".introjs-nextbutton").removeClass("introjs-disabled").show();
      });
      });
      });
      });
      }});
      });
      break;
      
      case"stack" + number +"ElseBlkReturnStmt":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      flipEffect($("#stack" + number +"ElseBlkReturnStmt .number").eq(0), num2, function() {
      introjs.refresh();
      flipEffect($("#stack" + number +"ElseBlkReturnStmt .number").eq(2), num1, function() {
      flipEffect($("#stack" + number +"ElseBlkReturnStmt .number").eq(3), num2, function() {
      introjs.refresh();
      flipEffect($("#stack" + number +"ElseBlkReturnStmt .number").eq(1), (num1 % num2), function() {
      num1 = num2;
      num2 = $("#stack" + number +"ElseBlkReturnStmt .number").eq(1).text();
      
      introjs.refresh();
      number--;
      setTimeout(function() {
      introjs.nextStep();
      }, 800);
      });
      });
      });
      });
      });
      break;
      
      case"stack" + (number + 1) +"GcdCall":
      $(".introjs-nextbutton").hide();
      $("#stack" + (number + 1) +"GcdCall").addClass("returned-val");
      $(".introjs-helperLayer").one("transitionend", function() {
      //var text ="Now call function <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span>";
      
      var text ="When the system enters into the function <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span>" 
      +" to execute it, It will push the <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span> function" 
      +" along with paramenters <span class='ct-code-b-yellow'>" + num1 +"," + num2 +"</span> into" 
      +"the <span class='ct-code-b-yellow'>stack</span> above" 
      +"the <span class='ct-code-b-yellow'>previous</span> function call.";
      
      typing(".introjs-tooltiptext", text, function() {
      $(".introjs-nextbutton").show();
      });
      });
      break;
      
      case"stack" + number +"IfBlkReturnStmt":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      flipEffect($("#stack" + number +"IfBlkReturnStmt .flip-css"), num2, function() {
      $(".introjs-tooltiptext").append("<ul></ul>");
      /* var text ="<li>This function <span class='ct-code-b-yellow'>gcd(" + num1 +"," + num2 +")</span>" 
      +" return the value <span class='ct-code-b-yellow'>1</span>.</li>" 
      +"<li>Whenever a functionn returns value, the memory space allocated for that function will be destroyed.</li>"; */
      
      var text ="When the <span class='ct-code-b-yellow'>return;</span> statement is executed" 
      +" the control is transfered from this location" 
      +" to the <span class='ct-code-b-yellow'>caller's</span> location.<br/><br/>"
      +"Now the current function call will be poped out from the <span class='ct-code-b-yellow'>stack</span>" 
      +" and control is transfered back to the <span class='ct-code-b-yellow'>caller's</span> location.";
      
      typing($(".introjs-tooltiptext"), text, function() {
      number = -1;
      $(".introjs-nextbutton").show();
      });
      });
      });
      break;
      
      case $(".panel:eq(0) span:last()").attr("id") :
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      var text ="Here the return of the value previous function call is being substituted in the current location.";
      typing(".introjs-tooltiptext", text, function() {
      $(".introjs-nextbutton").show();
      });
      });
      break;
      
      case"outputDiv":
      $("#outputDiv").removeClass("opacity00");
      $(".returned-val").removeClass("bg-blinking");
      $(".introjs-helperLayer").one("transitionend", function() {
      var text ="gcd of" + $("#num1Val").text() +"," + $("#num2Val").text() +" is :" + num2;
      typing("#output", text, function() {
      setTimeout(function() {
      introjs.nextStep();
      }, 800);
      });
      });
      break;
      
      case"restart":
      $(".introjs-nextbutton").hide();
      $(".introjs-helperLayer").one("transitionend", function() {
      tl.to($("#stackBody .panel").eq(0), 1, {top :"-400", onComplete:function() {
      $("#stackBody .panel").eq(0).remove();
      }});
      $("#restart").removeClass("opacity00");
      var text ="Click here to restart.";
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
      $("#invisibleDiv").empty();
      $("#stackBody > div:first-child").removeClass("opacity00");
      if ($("#stackBody .panel").length > 1) {
      reArrangeArrows(true, function() {
      setTimeout(function() {
      introjs.nextStep();
      }, 800);
      });
      }
      
      if (typeof callBackFunction ==="function") {
      callBackFunction();
      }
      }})
      }
      
      function createMainStack() {
      $("#stackBody").prepend("<div class='panel panel-primary opacity00'>" 
      +"<div class='panel-heading text-center'>main</div>" 
      +"<div class='panel-body'>" 
      +"<div><div id='mainStackNumsDec' style='display: inline-block;'>int num1 = <div id='num1Val' class='outline-none' contenteditable='true' maxlength='1' style='display: inline-block;'>5</div>," 
      +" num2 = <div id='num2Val' class='outline-none' contenteditable='true' maxlength='1' style='display: inline-block;'>3</div>;</div></div>" 
      +"<div><span id='mainStackPrintf'>printf(\\"gcd of %d, %d is : %d\\", num1, num2," 
      +"<span id='mainStackGcdFunCall' class='returned-val'><b>gcd(<span class='number flip-css'>num1</span>, <span class='number flip-css'>num2</span>)</span>)</b>;</span></div></div></div>");
      introjs.insertOption(introjs._currentStep + 1, getStep("#mainStackNumsDec","","top"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#mainStackPrintf","","top","hide"));
      introjs.insertOption(introjs._currentStep + 3, getStep("#mainStackGcdFunCall","","top"));
      introjs.insertOption(introjs._currentStep + 4, getStep("#animationDiv","","top","hide"));
      keyDownEvent();
      createInvisiableDiv();
      setStackLocationToBottom();
      idsArr.push("#mainStackGcdFunCall");
      }
      
      function keyDownEvent() {
      $("[contenteditable=true]").on("keydown", function(e) {
      introjs.refresh();
      $('.errMsg').remove();
      $("#changedVal").text($(this).text());
      var max = $(this).attr("maxlength");
      if ($.inArray(e.keyCode, [46, 8, 9, 27]) !== -1 || (e.keyCode >= 37 && e.keyCode <= 39)) {
      return;
      }
      if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
      e.preventDefault();
      }
      if ($(this).text().length > max) {
      $('.introjs-tooltiptext').append("<div class='errMsg'><br/>Enter a number of maximum 2 digits.</div>");
      e.preventDefault();
      }
      });
      
      $("[contenteditable=true]").on("keyup", function(e) {
      introjs.refresh();
      $("#changedVal").text($(this).text());
      if ($(this).text().length > 0) {
      $(".introjs-nextbutton").show();
      } else {
      $('.errMsg').remove();
             $('.introjs-tooltiptext').append("<div class='errMsg'><br/><br/>Please enter a value.</div>");
      $(".introjs-nextbutton").hide();
      }
      });
      }
      
      function createGcdStack() {
      $("#stackBody").prepend("<div class='panel panel-primary opacity00'>"
      +"<div class='panel-heading text-center'>gcd(" + num1 +"," + num2 +")</div>" 
      +"<div class='panel-body'>"
      +"<div><span id='stack" + number +"IfBlk'>if (<span id='stack" + number +"IfCdtn'>num1 % num2 == 0</span>) {</span></div>" 
      +"<div>&nbsp;&nbsp;<span id='stack" + number +"IfBlkReturnStmt'>return <span class='returned-val flip-css'>num2</span>;</span></div>" 
      +"<div id='stack" + number +"ElseBlk'>} else {" 
      +"<div>&nbsp;&nbsp;<span id='stack" + number +"ElseBlkReturnStmt'>return" 
      +"<span id='stack" + number +"GcdCall'><b>gcd(" 
      +"<span class='number flip-css'>num2</span>, <span class='number flip-css'>" 
      +"<span class='number flip-css'>num1</span> % <span class='number flip-css'>num2</span></span>)</b></span></span>;" 
      +"</div>}</div></div>" 
      +"</div>");
      
      reChangeArrowHeight();
      introjs.insertOption(introjs._currentStep + 1, getStep("#stack" + number +"IfBlk","","top"));
      createInvisiableDiv();
      setStackLocationToBottom();
      idsArr.push("#stack" + number +"GcdCall");
      }
      
      function createInvisiableDiv() {
      $("#invisibleDiv").append("<div class='col-xs-offset-2 col-xs-10 padding0'>" 
      +"<div class='col-xs-12 padding0'>" 
      +"<div class='col-xs-10 padding0 opacity00 panel panel-primary'>" 
      + $("#stackBody > div:first-child").html() 
      + "</div></div></div>");
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
      $('.svg-line').remove();
      var y1, y2, x1;
      for (var i = 0; i < idsArr.length - 1; i++) {
      var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
      line.setAttribute('class', 'svg-line');
      x1 = $(idsArr[i]).offset().left - $('#stackBody').offset().left + $(idsArr[i]).width();
      y1 = $(idsArr[i]).offset().top - $('#stackBody').offset().top + $(idsArr[i]).height() / 2;
      
      x1 = x1 / ($("#mySvg").width()/ 100);
      line.setAttribute('x1', x1 +"%");
      line.setAttribute('y1', y1);
      line.setAttribute('x2', '90%');
      line.setAttribute('y2', y1);
      $('#mySvg').append(line);
      
      var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
      y1 = $(idsArr[(idsArr.length - i) - 1]).offset().top - $('#stackBody').offset().top + $(idsArr[(idsArr.length - i) - 1]).height() / 2;
      y2 = $('#stackBody').height() - y1 - $('#stackBody .panel').height();
      line.setAttribute('class', 'svg-line');
      line.setAttribute('x1', '90%');
      line.setAttribute('y1', y2);
      line.setAttribute('x2', '85%');
      line.setAttribute('y2', y2);
      line.style.markerEnd = 'url("#grayMarker")';
      $('#mySvg').append(line);
      
      var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
      y1 = $(idsArr[i]).offset().top - $('#stackBody').offset().top + $(idsArr[i]).height() / 2;
      line.setAttribute('class', 'svg-line');
      line.setAttribute('x1', '90%');
      line.setAttribute('y1', y1);
      line.setAttribute('x2', '90%');
      line.setAttribute('y2', y2);
      $('#mySvg').append(line);
      }
      
      
      $(".svg-line").eq($(".svg-line").length - 3).attr("id","arrow1").css({"display" :"none","stroke" :"blue"});
      $(".svg-line").eq($(".svg-line").length - 2).attr("id","arrow2").css({"display" :"none","stroke" :"blue"});
      $(".svg-line").eq($(".svg-line").length - 1).attr("id","arrow3").css({"display" :"none","stroke" :"blue"});
      
      if (flag) {
      $("#arrow1").attr("x2" , $("#arrow1").attr("x1")).css({"display" :"","marker-end" :"url('#blueMarker')"});
      tl.to($("#arrow1"), 1, {attr : {x2 :"90%"}, onComplete: function() {
      $("#arrow1").css("marker-end","url()");
      $("#arrow3").attr("y2" , $("#arrow3").attr("y1")).css({"display" :"","marker-end" :"url('#blueMarker')"});
      tl.to($("#arrow3"), 1, {attr : {y2 : $("#arrow2").attr("y1")}, onComplete: function() {
      $("#arrow3").css("marker-end","url()");
      $("#arrow2").attr("x2","90%").css({"display" :"","marker-end" :"url('#blueMarker')" });
      tl.to($("#arrow2"), 1, {attr : {x2 :"85%"}, onComplete: function() {
      if (typeof callBackFunction ==="function") {
      callBackFunction();
      }
      }});
      }});
      }});
      }
      }
      
      function reChangeArrowHeight() {
        $.each($('.svg-line'), function (index) {
          $($('.svg-line').eq(index)).attr({
           "y1" : parseInt($(this).attr("y1")) + $('#stackBody .panel').outerHeight() + 5,
           "y2" : parseInt($(this).attr("y2")) + $('#stackBody .panel').outerHeight() + 5
          })
        })
      }
      
      function returnAnimation() {
      $(".user-btn").remove();
      $(".returned-val:eq(1) .number:last").parent().addClass("bg-blinking");
      $(".returned-val").eq(0).addClass("bg-blinking");
      if ($("#stackBody .panel").length >= 2) {
      reverseRevealEffect();
      } else {
      introjs.insertOption(introjs._currentStep + 1, getStep("#mainStackPrintf","","top","hide"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#outputDiv","","top","hide"));
      introjs.insertOption(introjs._currentStep + 3, getStep("#restart","","right",""));
      introjs.nextStep();
      }
      }
      
      function valueReplaceEffect() {
      $("body").append("<span id='dummySpan'>" + $(".returned-val").eq(0).text() +"</span>");
      var l1 = $(".returned-val").eq(0).removeClass("bg-blinking").css("z-index","1").offset();
      $("#dummySpan").offset({
     "top" : l1.top,
     "left" : l1.left
      }).addClass("bg-blinking");
      var l2 = $(".returned-val:eq(1)").offset();
      var topLength = l2.top - l1.top;
      var leftLength = l2.left - l1.left;
      TweenMax.to($(".returned-val").eq(0), 1, {top : topLength, left : leftLength});
      TweenMax.to($(".returned-val:eq(1)"), 0.5, {opacity: 0, delay: 0.5, onComplete:function() {
      $(".returned-val:eq(1)").text($(".returned-val").eq(0).text()).css("opacity","1");
      stackVanishEffect();
      }});
      }
      
      
      
      function stackVanishEffect() {
      $("#dummySpan").remove();
      tl.to($("#stackBody .panel").eq(0), 1, {top :"-400", onComplete:function() {
      $("#stackBody .panel").eq(0).remove();
      setStackLocationToBottom();
      idsArr.pop();
      reArrangeArrows();
      $("#arrow1, #arrow3").css({"display" :"","marker-end" :"url()"});
      $("#arrow2").css({"display" :"","marker-end" :"url('#blueMarker')"});
      
      if ($("#stackBody .panel").length >= 2) {
      introjs.insertOption(introjs._currentStep + 1, getStep("#" + $(".panel:eq(0) span:last()").attr("id"),"","right"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#animationDiv","","left","hide"));
      introjs.nextStep();
      } else {
      introjs.insertOption(introjs._currentStep + 1, getStep("#mainStackPrintf","","top"));
      introjs.insertOption(introjs._currentStep + 2, getStep("#outputDiv","","top","hide"));
      introjs.insertOption(introjs._currentStep + 3, getStep("#restart","","right",""));
      introjs.nextStep();
      }
      }});
      }
      
      /* function stackVanishEffect() {
      $("#dummySpan").remove();
      tl.to($("#stackBody .panel").eq(0), 1, {top :"-400", onComplete:function() {
      $("#stackBody .panel").eq(0).remove();
      setStackLocationToBottom();
      idsArr.pop();
      reArrangeArrows();
      $("#arrow1, #arrow3").css({"display" :"","marker-end" :"url()"});
      $("#arrow2").css({"display" :""});
      $(".bg-blinking").removeClass("bg-blinking");
      if(!autoAnimationFlag) {
      autoAnimationFlag = !autoAnimationFlag;
      $(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='returnAnimation()'>Next →</a>");
      } else {
      returnAnimation()
      }
      }})
      } */
      
      
      function reverseRevealEffect() {
      $("#arrow2").css("marker-end" ,"url('#blueMarker')")
      tl.to($("#arrow2"), 1, {attr : {x2 :"90%"}, onComplete: function() {
      $("#arrow2").css("marker-end","url()");
      $("#arrow3").css("marker-end","url('#blueMarker')");
      tl.to($("#arrow3"), 1, {attr : {y2 : $("#arrow3").attr("y1")}, onComplete: function() {
      $("#arrow3").css("marker-end","url()");
      $("#arrow1").css("marker-end","url('#blueMarker')");
      tl.to($("#arrow1"), 1, {attr : {x2 : $("#arrow1").attr("x1")}, onComplete: function() {
      $("#arrow1").css("marker-end","url()");
      valueReplaceEffect();
      }});
      }});
      }});
      }
      
      
      function flipEffect(selector, val, callBackFunction) {
      TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
      $(selector).text(val);
      TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
      if (typeof callBackFunction ==="function") {
      callBackFunction();
      }
      }});
      }});
      }
      
      function typing(selector, text, callBackFunction) {
      $(selector).typewriting(text, {
     "typing_interval" : typingSpeed,
     "cursor_color" : 'white',
      }, function() {
      $(selector).removeClass("typingCursor");
      if (typeof callBackFunction ==="function") {
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
      <h4 class='label ct-demo-heading'>GCD using Recursion</h4>
      </div>
      
      <div class='col-xs-offset-2 col-xs-8 box-border margin-top-20 bg-info'
      id='informationDiv'></div>
      <div class='col-xs-12 margin-top-40'>
      <div class='col-xs-offset-1 col-xs-4'>
      <pre class='creampretab4 box-border opacity00' id='cCode'>#include &lt;stdio.h&gt;
      
      <span id='mainBlk'>void <span id='main'>main() {</span>
      int num1 = 5, num2 = 3;
      printf("gcd of %d, %d is : %d", num1, num2, gcd(num1, num2));
      }</span>
       
      <span id='gcdFun'>int gcd(int num1, int num2) {
      if (num1 % num2 == 0) {
      return num2;
      } else {
      return gcd(num2, num1 % num2);
      } 
      }</span>
      </pre>
      <div id="outputDiv" class='opacity00'>
      <div class="output-console-title-bar">
      <span class="title">Output</span>
      </div>
      <div class="output-console-body"><span id="output"></span>
      </div>
      </div>
      </div>
      <div class='col-xs-offset-1 col-xs-5 box-border opacity00' id='animationDiv'>
      <div class='col-xs-offset-1 col-xs-10'>
      <div id='invisibleDiv' class='col-xs-12 padding0'></div>
      <div id='mainStack' class='col-xs-12 padding0'>
      <div class='col-xs-offset-2 col-xs-10 padding0'>
      <div class='col-xs-12 padding0'>
      <div id='stackBody' class='col-xs-10 padding0'></div>
      <svg class="svg-css" id="mySvg">
      <marker style="fill: gray;" orient="auto" markerHeight="5"
      markerWidth="5" refY="2.5" refX="4" id="grayMarker">
                     <path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
      </marker>
      
      <marker style="fill: blue;" orient="auto" markerHeight="5"
      markerWidth="5" refY="2.5" refX="4" id="blueMarker">
                     <path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
      </marker>
      
      <line class="svg-line" id="arrow2" y2="0%" x2="0%" y1="0%"
      x1="0%" style="display: none; marker-end: url('#grayMarker')" />
      </svg>
      </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      <div class="text-center margin-top-20 col-xs-12">
      <a class="btn btn-warning opacity00" id="restart">&nbsp;Restart</a>
      </div>
      </body>
      </html>");