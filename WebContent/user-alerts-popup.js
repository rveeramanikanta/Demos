/**
 * 
 */

var linkAlert = function(selector, alertMsg, duration, callBackFunction) {
	var alertFlag = false;

	var loopingCount = 10;

	var linkAlertClearInterval = setInterval(function() {
		if (alertFlag) {
			clearInterval(linkAlertClearInterval);
		} else if (loopingCount == 0) {
			/*$("body").append("<div id='alertDiv' class='faa-passing animated' style='display: inline-block;'> " 
					+ "<i class='fa fa-long-arrow-right faa-passing fa-2x'></i>" 
					+ "</div>");*/
			
			$("body").append('<div id="alertDiv" class="callout right animated shake" style="display: inline-block"><div class="callout-inner"><div class="callout-content">' 
					+ alertMsg + '</div></div></div>');
			
			var linkOffest = $(selector).offset();
			$("#alertDiv").offset({
				top : linkOffest.top - $(".callout").height() / 2 ,
				left : linkOffest.left + $(selector).width()
			});
			
			$(".fa-long-arrow-right").popover({
				placement: "bottom",
				html: true,
				content: alertMsg,
			}).popover('show');
		}
		loopingCount--;
	}, duration / 10);

	$(selector).on("click", function() {
		alertFlag = !alertFlag;
	});
}



$("body").append('<link rel="stylesheet" href="/css/introjs.css">');
$("body").append('<link rel="stylesheet" href="/css/introjs-ct.css">');
$("body").append('<script type="text/javascript" src="/js/intro.js"></script>');
$("body").append('<script type="text/javascript" src="/js/typewriting.min.js"></script>');

$("body").append('<script type="text/javascript" src="/js/jquery.scrollTo.js"></script>');

function getQuestionType() {
	return questionTypesMap[cq.questionType].description;
}


function initIntroJs() {
	introjs = introJs();
	introjs.setOptions({
		steps : [{
			element : "#questionText",
			intro : "",
			position : "bottom-middle-aligned",
		}, {
			element : ".submitBtn",
			intro: "",
			position: "left"
		}]
	});
	
	introjs.onafterchange(function(targetElement) {
		introjs.refresh();
		var elementId = introjs._options.steps[introjs._currentStep].element
		console.log(elementId);
		switch (elementId) {
			case "#questionText":
				$('.introjs-nextbutton').hide();
				var text = "Please read the content";
				typing($(".introjs-tooltiptext"), text, function() {
					setNewSteps();
					$(".introjs-nextbutton").show();
				});
			break;
			
			case "#mcContainerDiv":
				$('.introjs-nextbutton').hide();
				$(".modal").scrollTo("#mcContainerDiv", 1000);
				//$(".introjs-helperLayer").one("transitionend", function() {
					var text = "Please read the content";
					typing($(".introjs-tooltiptext"), text, function() {
						$(".introjs-nextbutton").show();
					});
				//});
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


function setNewSteps() {
	if (getQuestionType() == "Multiple Choice - Multiple Answers") {
		introjs.insertOption(introjs._currentStep + 1, getStep("#mcContainerDiv", "", "top"));
	} else if (getQuestionType() == "Compilation Errors") {
		introjs.insertOption(introjs._currentStep + 1, getStep("#compilationErrorEditorContainer", "", "top"));
	} else if(getQuestionType() == "Copy Writing") {
		introjs.insertOption(introjs._currentStep + 1, getStep(".copyWritingLeft", "", "top"));
		introjs.insertOption(introjs._currentStep + 2, getStep(".copyWritingRight", "", "top"));
	}
}


function typing(selector, text, callBackFunction) {
	$(selector).typewriting(text, {
		"typing_interval" : 10,
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


$(".questionPanelHeadingBG").append("<span class='btn btn-xs btn-warning' onclick='initIntroJs()'>introjs</span>");