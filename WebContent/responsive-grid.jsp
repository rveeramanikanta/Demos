<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/introjs.css">
<link rel="stylesheet" href="css/introjs-ct.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/intro.js"></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<title>Grid System Responsive Examples</title>
</head>
<style>
#totaldiv {
	margin-top: 25px;
}

#div {
	margin:30px;
}

.input-box {
	width:21%;
	border:none;

}

.color-yellow {
	color: yellow;
	font-weight: bold;
}

.errorText {
	color: red;
	font-weight: bold;
}

#col-xs-8Output, #col-xs-6Output,
#col-xs-4Output, #col-xs-2Output {
	margin-top:25px;	
}
 
#TextBox1, #TextBox2, #TextBox3,
#TextBox4, #TextBox5 {
	width:215px;
}

#animationDiv {
	min-height: 60px;
}
</style>
<body>
<div class="container">
<div class="header">
	<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
		<span id='title' class='label ct-demo-heading'>Grid System Responsive Examples</span>
	</div>
</div>
<div id="col-xs-12" class="col-xs-12">
	<div class="col-xs-8 col-xs-offset-2">
	<pre id='div' class="opacity00">
    <span class="div">&lt;div class="container-fluid"&gt;</span>
	<span class="div">&lt;div class="row"&gt;</span>
		<span id="col-xs-12Div"class="div ">&lt;div class=" <input class='input-box' name="TextBox1" type="text" id="TextBox1" maxlength="26"/ > "&gt; <span class="div"> A &lt;div&gt;</span></span>
		<span id="col-xs-8Div" class="div ">&lt;div class=" <input class='input-box' name="TextBox2" type="text" id="TextBox2" maxlength="26"/ > "&gt; <span class="div"> B &lt;div&gt;</span></span>
	<span class="div">&lt;/div&gt;</span>
    <span class="div">&lt;/div&gt;</span>
	</pre>
	</div>
</div >

<div id="animationDiv" class="col-xs-12"></div>
<div id="animationDiv1" class="col-xs-12"> 
	<div id="col-xs-8Output"  class=" text-center  opacity00"  style='border: 1px solid grey;'>B</div>
</div>
</div><br><br>

<div class="button col-xs-12 text-center " id="button">
			<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:4px'>Restart</button>
</div>
            
</body>
<script type="text/javascript">
var intro;
$(document).ready(function() {
	$('#restartBtn').click(function() {
		window.location.search = "?restart=1";
	});
	$(".input-box").on("keypress keyup", function() {
		if (verify($(this).val())) {
			$(".introjs-nextbutton").show();
		} else {
			$(".introjs-nextbutton").hide();
		}
	});
	
	$("body").keypress(function(e) {
		if (e.which === 13) {
			e.preventDefault();
		}
	});
	
	initIntrojs();
});
	
	function verify(text) {
		var gridArr = [];
		for (var i = 1; i <= 12; i++) {
			gridArr.push("col-xs-" + i);
			gridArr.push("col-sm-" + i);
			gridArr.push("col-md-" + i);
			gridArr.push("col-lg-" + i);
			gridArr.push("col-xs-offset-" + i);
			gridArr.push("col-sm-offset-" + i);
			gridArr.push("col-md-offset-" + i);
			gridArr.push("col-lg-offset-" + i);
		}
		var arr = text.split(" ");
		var flag = true;
		$.each(arr, function(i) {
			if (gridArr.indexOf(arr[i]) == -1) {
				flag = !flag;
			}
		});
		return flag;
	}
	
 	function typing(selector, text, callBackFunction) {
		var typingSpeed = 10;
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
				
	function initIntrojs() {
		intro = introJs();
		intro.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
			
			steps :	[{
				element :'#div',
				intro :'',
				position:"bottom" 
			
			},{
				element :'#TextBox1',
				intro :'',
				position:"bottom" 
			},{
				element :'#animationDiv',
				intro :'',
				position:"bottom" 
			
			},{
				element :'#TextBox2',
				intro :'',
				position:"bottom" 
			},{
				element :'#animationDiv',
				intro :'',
				position:"bottom"
			
			}, {
				element :'#restartBtn',
				intro :'',
				position:"bottom"
			}]
		});
		intro.onafterchange(function(targetElement) { 
			var elementId = targetElement.id;
			switch (elementId) {
				case "TextBox1" :
					$('.introjs-nextbutton').hide();
					$('#TextBox1').removeAttr('disabled');
					$(".introjs-helperLayer").one("transitionend", function() {
						$('#TextBox1').removeClass('opacity00');
						$('#TextBox1').focus();
						var text = "Enter class i.e <span class='color-yellow'>col-xs-12</span><br>" 
								+ "<span class='errorText'></span>";
						typing('.introjs-tooltiptext', text); 
					});
					break;
				case "TextBox2" :
					$('.introjs-nextbutton').hide();
					$('#TextBox2').removeAttr('disabled');
					$(".introjs-helperLayer").one("transitionend", function() {
						$('#TextBox2').removeClass('opacity00');
						typing('.introjs-tooltiptext',"Enter class i.e <span class='color-yellow'>col-xs-4</span><br><span class='errorText'></span>",	function() {
							$('.introjs-nextbutton').show();
			 			}); 
					});
					break;
				case "animationDiv":
					$('.introjs-nextbutton').hide();
					$(".introjs-helperLayer").one("transitionend", function() {
						var text = "";
						if (intro._currentStep == 2) {
							$("#animationDiv").append("<div style='border: 2px solid gray; height: 30px;' class='" + $("#TextBox1").val() + "' ></div>")
							text = "about text box1";	
						} else {
							$("#animationDiv").append("<div style='border: 2px solid gray; height: 30px;' class='" + $("#TextBox2").val() + "' ></div>")
							text = "about text box2";
						}
						intro.refresh();
						typing($(".introjs-tooltiptext"), text, function() {
							$('.introjs-nextbutton').show();
						});
					});
					break;
					
				case "restartBtn":
					$('.introjs-nextbutton').hide();
					$("#backgrouncolorAttr").attr("disabled", true);
					$(".introjs-helperLayer").one("transitionend", function() {
					typing('.introjs-tooltiptext', "Click to restart.", function() {
						$("#restartBtn").removeClass("opacity00");
					});
				});
				break;
			}
		});
		intro.start();
		$('.introjs-skipbutton').hide();
		$('.introjs-prevbutton').hide();
		$('.introjs-nextbutton').hide();
		$('#TextBox1').attr('disabled', 'disabled');
		$('#div').removeClass('opacity00');
		var text = "Let us learn how to create columns using bootstrap classes.";
		typing('.introjs-tooltiptext', text, function() {
			$('.introjs-nextbutton').show();
		});
	}
</script>	
</html>