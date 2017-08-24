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
<title>Vote Count</title>
<style>
.margin-top-20 {
	margin-top: 20px;
}

.margin-top-60 {
	margin-top: 60px;
}

.margin-top-80 {
	margin-top: 80px;
}

.padding0 {
	padding: 0px;
}

.box-border {
	border: 1px solid gray;
	border-radius: 4px;
}

.creampretab4 {
	-moz-tab-size: 2;
	background-color: lavender !important;
	font-size: 10.8px;
	font-style: inherit;
	line-height: 1.2;
	overflow-y: auto;
	padding: 5px;
	white-space: pre;
	word-spacing: -3px;
}

#animationDiv {
	height: 585px;
}

/* #inputFile {
	border: 1px solid gray;
} */

.file {
	border: 1px solid gray;
	border-radius: 10px;
	min-height: 90px;
	padding: 7px;
}

.mapper-file {
	border: 1px solid gray;
	border-radius: 15px;
	padding: 10px;
	text-align: center;
}

.file-name {
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.svg-css {
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 9999999;
}

.line {
	marker-end: url(#arrow);
	stroke: gray;
	stroke-width: 2;
}

.btn-warning {
	background-color: #f0ad4e;
	border-color: #eea236;
	color: #fff;
}

.zIndex {
	z-index: 9999999;
	position: relative;
}

.user-btn {
	background-color: green;
}

.panel {
	margin-bottom: 0;
}

.panel-body {
	padding: 15px 0;
}
</style>
<script>
var tl = new TimelineLite();
var typingSpeed = 5;

$(document).ready(function() {
	introGuide();
	$(".line").hide();
	$('#restart').click(function() {
		location.reload();
	});
	
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		steps : 
			[{
				element: '#heading',
				intro: '',
				position: 'right',
			}, {
				element: '#driverClassName',
				intro: '',
				position: 'right'
			}, {
				 element: '#newJob',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#jobPanel',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#jobRequirements',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#setJarByCls',
				 intro: '',
				 position: 'right'
			}, {
				element : '#setJobName',
				intro : '',
				position : 'right'
			}, {
				 element: '#jobPanel',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#setOutputKeyCls',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#setOutputValueCls',
				 intro: '',
				 position: 'right',
			},{
				 element: '#setMapperCls',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#mapperPanel',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#setReducerCls',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#reducerPanel',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#setInputFormatCls',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#setOutputFormatCls',
				 intro: '',
				 position: 'right'
			}, {
				element : "#fileInputFormat",
				intro : "",
				position : "right"
			}, {
				element : "#inputFileDiv",
				intro : "",
				position : "left",
				tooltipClass : "hide"
			}, {
				element : "#fileOutputFormat",
				intro : "",
				position : "right"
			}, {
				element : "#outputFileDiv",
				intro : "",
				position : "left",
				tooltipClass : "hide"
			}, {
				 element: '#jobWaitForCompletion',
				 intro: '',
				 position: 'top'
			}, {
				 element: '#mapperClass',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#mapMethod',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#wordsSplit',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#mapContext',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#jobWaitForCompletion',
				 intro: '',
				 position: 'top'
			}, {
				 element: '#reducerClass',
				 intro: '',
				 tooltipClass: 'hide'
			}, {
				 element: '#reducerMethod',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#votCountDec',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#forLoop',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#getVoteCount',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#reducerContext',
				 intro: '',
				 position: 'right'
			}, {
				 element: '#jobWaitForCompletion',
				 intro: '',
				 position: 'top'
			}, {
				 element : "#restart",
				 intro : "",
				 position : "right"
			 }]
	});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "heading":
			$('.introjs-nextbutton').hide();
			var text = "In mapreduce algorithm mainly involved three classes,<br/> that are <span class='ct-code-b-yellow'>driver</span>," 
				+ " <span class='ct-code-b-yellow'>mapper</span> and <span class='ct-code-b-yellow'>reducer</span>.";
			typing('.introjs-tooltiptext',text, function() {
				$("#driverClass").addClass("zIndex").effect("highlight", {'color' : '#FFFFFF'}, 1000, function() {
					$(this).removeClass("zIndex");
					$("#mapperClass").addClass("zIndex").effect("highlight", {'color' : '#FFFFFF'}, 1000, function() {
						$(this).removeClass("zIndex");
						$("#reducerClass").addClass("zIndex").effect("highlight", {'color' : '#FFFFFF'}, 1000, function() {
							$(this).removeClass("zIndex");
							$('.introjs-nextbutton').show();
						});
					});
				});
			});
		break;
		
		case "driverClassName":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Inside the driver class job is created and tasks are assigned to that job. All job requirements are initialized in this driver class.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "newJob":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Creates a new job without a particular Cluster and a given Configuration."+
					"<br><br>A Cluster will be created from the conf parameter only when it's needed.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "jobPanel":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 3) {
					$("#jobPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$(this).removeClass("animated zoomIn");
						$(".introjs-tooltip").removeClass("hide");
						var text = "After creation of a job the user needs to configure all the requirements for job tasks.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-nextbutton").show();
						});
					});
				} else {
					$("#jobName").addClass("zIndex").effect("highlight", {color: '#FFFFFF'}, 1000, function() {
						$(this).removeClass("zIndex");
					});
					$('#jobName').effect( "transfer", { to: $("#panelJobName"), className: "ui-effects-transfer" }, 1000, function() {
						$("#panelJobName").removeClass("opacity00");
						setTimeout(function() {
							introjs.nextStep();
						}, 500);
					});
				}
			});
			break;
			
		case "jobRequirements":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "All job requirements are initialized by using set methods.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "setJarByCls":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {	
				var text = "Set the Jar by finding where a given class came from.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "setJobName":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Set the user specified job name."+
				"<br><br>i.e. <span class='ct-code-b-yellow'>Vote Count</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "jobPanel":
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#jobPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
				});
			});
			break;
			
		case "fileInputFormat":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Add a Path to the list of inputs for the map-reduce job.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "inputFileDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#inputFileDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					$(".introjs-tooltip").removeClass("hide");
					var text = "Add input path to the map-reduce job.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
			break;
			
		case "fileOutputFormat":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Set the path of the output directory for the map-reduce job.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "outputFileDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#outputFileDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					$(".introjs-tooltip").removeClass("hide");
					var text = "Once successfully submit the job, in this location directory is created with name of output.";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			});
			break;
			
		case "setMapperCls":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {	
				var text = "Set the <span class='ct-code-b-yellow'>Mapper</span> class for the job.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "mapperPanel":
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#mapperPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
				});
			});
			break;
			
		case "setReducerCls":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {	
				var text = "Set the <span class='ct-code-b-yellow'>Reducer</span> class for the job.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "reducerPanel":
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#reducerPanel").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
					$(this).removeClass("animated zoomIn");
					setTimeout(function() {
						introjs.nextStep();
					}, 500);
				});
			});
			break;
			
		case "setInputFormatCls":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {	
				var text = "Set the <span class='ct-code-b-yellow'>InputFormat</span> for the job.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "setOutputFormatCls":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {	
				var text = "Set the <span class='ct-code-b-yellow'>OutputFormat</span> for the job.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "setOutputKeyCls":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we will set the types expected as output <span class='ct-code-b-yellow'>key</span> " 
							+ "from both the map and reduce phases.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "setOutputValueCls":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we will set the types expected as output <span class='ct-code-b-yellow'>value</span> " 
							+ "from both the map and reduce phases.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "jobWaitForCompletion":
			$(".introjs-nextbutton").hide();
			$('.introjs-tooltiptext').css({"max-height" : "160px", "overflow" : "auto"});
			$(".introjs-helperLayer").one("transitionend", function() {
				if (introjs._currentStep == 20) {
					var text = "Submit the job to the cluster and wait for it to finish.<br/><br/>" 
								+ "The job submission process involves:"; 
					typing(".introjs-tooltiptext", text, function() {
						$("#animationDiv").addClass("zIndex").css("background-color", "white");
						$(".introjs-tooltiptext").append("<ul><li class='opacity00'>Checking the input and output specifications of the job.</li></ul>");
						
						TweenMax.to($(".introjs-tooltiptext > ul li:last-child"), 1, {opacity : 1, onComplete:function() {
							$(".introjs-tooltiptext > ul li:last-child").removeClass("opacity00");
							$(".introjs-tooltipbuttons").append("<a class='introjs-button user-btn' onclick='inputOuputSpec()'>Next &#8594;</a>");
						}});
					});
				} else if (introjs._currentStep == 25) {
					var text = "Finally we get a output from the mapper.";
					stepsTyping(text, "mappersOuput()");
				} else {
					var text = "Reducer process the intermediate output and finally write into output file.";
					stepsTyping(text, "finalOuput()");
				}
			});
			break;
			
		case "mapperClass":
		case "reducerClass":
			$('.introjs-tooltiptext').removeAttr("style");
			$(".introjs-helperLayer").one("transitionend", function() {
				setTimeout(function() {
					introjs.nextStep();
				}, 500);
			});
			break;
			
		case "mapMethod":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "In <span class='ct-code-b-yellow'>map</span> phase each line would be split as words" 
							+ " then considers only the first word which is contestant name.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "wordsSplit":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Split each line with space and stored into a String " 
							+ "array <span class='ct-code-b-yellow'>word</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "mapContext":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Finally we write a key/value pairs into map context.<br/><br/> " 
							+ "That become a input key/value pair to the reducer phase.";
				typing('.introjs-tooltiptext', text, function() {
					introjs._introItems[introjs._currentStep + 1].intro = introjs._introItems[20].intro
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "votCountDec":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we declare a int variable <span class='ct-code-b-yellow'>voteCount</span> " 
							+ "and stored into value 0."; 
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "getVoteCount":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Here we will get values for similar keys are added and stored " 
						+ "into <span class='ct-code-b-yellow'>voteCount</span>.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			});
			break;
			
		case "reducerMethod":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "In <span class='ct-code-b-yellow'>reduce</span> phase the keys are grouped together and the " 
							+ "values for similar keys are added.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
		
		case "forLoop":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "By using for-each loop we iterate each value.";
				typing('.introjs-tooltiptext', text, function() {
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "reducerContext":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Finally key/value pair write into output file.";
				typing('.introjs-tooltiptext', text, function() {
					introjs._introItems[introjs._currentStep + 1].intro = introjs._introItems[25].intro
					$(".introjs-nextbutton").show();
				});
			});
			break;
			
		case "restart":
			introjs.refresh();
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#restart").removeClass("opacity00");
				var text = "Click to restart.";
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

function inputOuputSpec() {
	$(".user-btn").remove();
	arrowReveal("#arrow1", "33.7%", "29%", function() {
		arrowReveal("#arrow2", "74.7%", "29%", function() {
			$('.introjs-tooltiptext ul').append('<li></li>');
			var text = "Computing the InputSplit for the job.";
			typing($('.introjs-tooltiptext ul li:last-child'), text, function() {
				introjs._introItems[introjs._currentStep].intro = $(".introjs-tooltiptext").html()
				$('.introjs-nextbutton').show();
			});
		});
	});
}

function arrowReveal(arrowId, x2, y2, callBackFunction) {
	$(arrowId).show();
	tl.to(arrowId, 1, {attr:{x2: x2, y2: y2}, onComplete:function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
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

function mappersOuput() {
	$(".user-btn").remove();
	arrowReveal("#arrow3", "41.5%", "90%", function() {
		$("#mapperDiv").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
			$(this).removeClass("animated zoomIn");
			var text = "After complition of mapper map-reduce transfer the intermediate output to reducer as a input.";
			stepsTyping(text, "reducerInput()");
		});
	});
}

function reducerInput() {
	$(".user-btn").remove();
	arrowReveal("#arrow4", "66.3%", "90%", function() {
		introjs._introItems[introjs._currentStep].intro = $(".introjs-tooltiptext").html();
		$(".introjs-nextbutton").show();
	});
}

function finalOuput() {
	$(".user-btn").remove(); 
	arrowReveal("#arrow5", "87.5%", "42%", function() {
		$("#outputFile div").removeClass("opacity00");
		introjs._introItems[introjs._currentStep].intro = $(".introjs-tooltiptext").html(); 
		$(".introjs-nextbutton").show();
	});
}

</script>
</head>
<body>
	<div class="margin-top-20 text-center">
		<h4 class="label ct-demo-heading" id="heading">Explanation of
			Vote Count</h4>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-6 margin-top-20">
			<pre class="box-border creampretab4" id="javaCode"><i class="fa fa-plus-circle"></i> import org.apache.hadoop.conf.Configuration;
			
<span id="driverClass">public class<span id="driverClassName"> VotesCount</span> extends Configured {
	<span id="main">public static void main(String[] args) throws Exception	{</span>
		<span id="newJob">Job job = Job.getInstance(new Configuration());</span>
		<span id="jobRequirements"><span id="setJarByCls">job.setJarByClass(VotesCount.class);</span>
		<span id="setJobName">job.setJobName(<span id="jobName">"Votes Count"</span>);</span>
		<span id="setOutputKeyCls">job.setOutputKeyClass(Text.class);</span>
		<span id="setOutputValueCls">job.setOutputValueClass(IntWritable.class);</span>
		<span id="setMapperCls">job.setMapperClass(VotesCountMapper.class);</span>
		<span id="setReducerCls">job.setReducerClass(VotesCountReducer.class);</span>
		<span id="setInputFormatCls">job.setInputFormatClass(TextInputFormat.class);</span>
		<span id="setOutputFormatCls">job.setOutputFormatClass(TextOutputFormat.class);</span>
		<span id="fileInputFormat">FileInputFormat.addInputPath(job, new Path(args[0]));</span>
		<span id="fileOutputFormat">FileOutputFormat.setOutputPath(job, new Path(args[1]));</span></span>
		<span id="jobWaitForCompletion">System.exit(job.waitForCompletion(true) ? 0 : 1);</span>
	}</span>
	
	<span id="mapperClass">private static class VotesCountMapper extends
				 Mapper&lt;Object, Text, Text, IntWritable&gt;	{
	private final static IntWritable one = new IntWritable(1);
	
	<span id="mapMethod">@Override
	public void map(Object key, Text value, Context context) throws
				 IOException, InterruptedException	{
			<span id='wordsSplit'>String[] words = value.toString().split(" ");</span>
			<span id='mapContext'>output.write(new Text(words[0]), one);</span>
		}</span>
	}</span>
	
	<span id="reducerClass">private static class VotesCountReducer extends
			 Reducer &lt;Text, IntWritable, Text, IntWritable&gt; {
		<span id="reducerMethod">@Override
		public void reduce(Text	key, Iterable&lt;IntWritable&gt; values, Context context) throws
			 IOException, InterruptedException {
			<span id="votCountDec">int voteCount = 0;</span>
			<span id="forLoop">for (IntWritable value : values) {
				<span id="getVoteCount">voteCount+= value.get();</span>
			}</span>
			<span id="reducerContext">context.write(key, new IntWritable(voteCount));</span>
		}
	}</span></span>
}
			</pre>
		</div>
		<div class="col-xs-6">
			<div class="box-border col-xs-12 margin-top-20" id="animationDiv">
				<div class='col-xs-12 padding0'>
					<svg class="svg-css">
						<marker style="fill: gray;" orient="auto" markerHeight="5"
							markerWidth="5" refY="2.5" refX="4" id="arrow">
		               		<path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
		           		</marker>
						<line id="arrow1" class="line" x1="45%" y1="29%" x2="45%" y2="29%" />
						<line id="arrow2" class="line" x1="63.5%" y1="29%" x2="63.5%"
							y2="29%" />
						<line id="arrow3" class="line" x1="33%" y1="90%" x2="33%" y2="90%" />
						<line id="arrow4" class="line" x1="58.3%" y1="90%" x2="58.3%"
							y2="90%" />
						<line y2="70%" x2="85.5%" y1="70%" x1="85.5%" class="line" id="arrow5" />
					</svg>

					<div class="col-xs-12  margin-top-20 padding0"
						style="display: flex; align-items: center;">
						<div class="col-xs-4 opacity00 padding0" id='inputFileDiv'>
							<div class='file' id="inputFile">
								<div>ramana</div>
								<div>raj</div>
								<div>sudhakar good politician</div>
								<div>sudhakar</div>
							</div>
							<div class="file-name">inputFile</div>
						</div>
						<div class="col-xs-offset-1 col-xs-3 padding0" id="jobDiv">
							<div class="panel panel-primary opacity00" id="jobPanel">
								<div class="panel-heading text-center">Job</div>
								<div class="panel-body text-center">
									<div class="opacity00" id="panelJobName">Vote Count</div>
								</div>
							</div>
						</div>
						<div class="col-xs-offset-1 col-xs-3 padding0 opacity00"
							id='outputFileDiv'>
							<div class='file text-center' id="outputFile">
								<div class='opacity00'>raj, 1</div>
								<div class='opacity00'>ramana, 1</div>
								<div class='opacity00'>sudhakar, 2</div>
							</div>
							<div class="file-name">outputFile</div>
						</div>
					</div>

					<div
						style="display: flex; align-items: center; justify-content: center;"
						class="col-xs-12 padding0 margin-top-80">
						<div
							class="col-xs-4 opacity00 padding0 panel panel-primary opacity00"
							id="mapperPanel">
							<div class="panel-heading text-center">Mapper</div>
							<div style="font-size: 12px;" class="panel-body text-center">
								<div>VotesCountMapper</div>
							</div>
						</div>
						<div class="col-xs-offset-1 col-xs-2 padding0 opacity00"
							id="mapperDiv">
							<div class="mapper-file">
								<div>ramana, 1</div>
								<div>raj, 1</div>
								<div>sudhakar, 1</div>
								<div>sudhakar, 1</div>
							</div>
						</div>
						<div id="reducerPanel"
							class="col-xs-offset-1 col-xs-4 panel panel-primary padding0 opacity00">
							<div class="panel-heading text-center">Reducer</div>
							<div class="panel-body text-center" style="font-size: 12px;">
								<div>VotesCountReducer</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 text-center margin-top-20">
		<span id="restart" class="opacity00 btn btn-warning">Restart</span>
	</div>
</body>
</html>