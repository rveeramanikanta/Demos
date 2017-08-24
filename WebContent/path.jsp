<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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


<style type="text/css">
.svg-css {
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
}

.svg-line {
	position: relative;
	stroke-width: 3;
}

#discsStand .svg-line {
	stroke: gray;
}

.padding0 {
	padding: 0;
}

.svg-text {
	font-family: monospace;
	font-size: 100%;
	font-weight: bold;
}

.svg-disc {
	transform: rotateX(70deg);
	fill: white;
}

.stand1-disc1, .stand2-disc1, .stand3-disc1 {
	stroke: orange;
}

.stand1-disc2, .stand2-disc2, .stand3-disc2 {
	stroke: blue;
}

.stand1-disc3, .stand2-disc3, .stand3-disc3 {
	stroke: green;
}

.stand1-disc4, .stand2-disc4, .stand3-disc4 {
	stroke: red;
}

.stand1-disc5, .stand2-disc5, .stand3-disc5 {
	stroke: violet;
}

.stand1-disc-lines-group line, 
.stand2-disc-lines-group line, 
.stand3-disc-lines-group line {
	stroke-width: 4;
}
</style>
</head>
<body>

	<!-- <svg style="width: 700px; height: 500px;"> -->
	<!-- <circle
			style="transform: rotateX(73deg); stroke-width: 27; stroke: blue; fill: white;"
			r="25" cx="100" cy="260" />
		<circle
			style="transform: rotateX(73deg); stroke-width: 30; stroke: orange; fill: white;"
			r="31" cx="100" cy="370" />
		<circle
			style="transform: rotateX(73deg); stroke-width: 34; stroke: red; fill: white;"
			r="38" cx="100" cy="484" />
		<line y2="170" x1="10" y1="170" x2="623" style="stroke-width:3; stroke:black"/>

		<line style="stroke-width:3; stroke:black" x2="100" y1="12" x1="100"
			y2="168" />
		<line style="stroke-width: 4; stroke: red;" x2="100" y1="158" x1="100"
					y2="147" />
		<line style="stroke-width: 4; stroke: orange;" x2="100" y1="113"
					x1="100" y2="122" />
		<line y2="88" x1="100" y1="80" x2="100"
					style="stroke-width: 4; stroke: blue;" />
					
					
					
		<line style="stroke-width:3; stroke:black" x2="300" y1="12" x1="300" y2="168"/>
		<line style="stroke-width:3; stroke:black" x2="500" y1="12" x1="500" y2="168"/> -->



	<!-- <circle
			style="transform: rotateX(73deg); stroke-width: 27; stroke: blue; fill: white;"
			r="25" cx="100" cy="260" />
		<circle
			style="transform: rotateX(73deg); stroke-width: 30; stroke: orange; fill: white;"
			r="31" cx="100" cy="370" />
		<circle
			style="transform: rotateX(73deg); stroke-width: 34; stroke: red; fill: white;"
			r="38" cx="100" cy="484" />
		<line y2="170" x1="10" y1="170" x2="623" style="stroke-width:3; stroke:black"/>

		<line style="stroke-width:3; stroke:black" x2="100" y1="12" x1="100"
			y2="168" />
		<line style="stroke-width: 4; stroke: red;" x2="100" y1="158" x1="100"
					y2="147" />
		<line style="stroke-width: 4; stroke: orange;" x2="100" y1="113"
					x1="100" y2="122" />
		<line y2="88" x1="100" y1="80" x2="100"
					style="stroke-width: 4; stroke: blue;" />
					
					
					
		<line style="stroke-width:3; stroke:black" x2="300" y1="12" x1="300" y2="168"/>
		<line style="stroke-width:3; stroke:black" x2="500" y1="12" x1="500" y2="168"/> -->


	<!-- </svg> -->

	<div class='col-xs-12 padding0' style="height: 500px;">
		<svg class='svg-css'>
		
			<!-- <circle class='svg-disc stand1-disc1' r='3%' cx='30%' cy='230%' stroke-width="35"></circle>
			<circle class='svg-disc stand1-disc2' r='3%' cx='30%' cy='220%' stroke-width="35"></circle> -->
			
			
			<g class='stand1-discs-group'>
				<circle class="svg-disc stand1-disc1" r="4%" cx="30%" cy="230%"  stroke-width="45" discIdx="4" />
				<circle class="svg-disc stand1-disc2" r="3.5%" cx="30%" cy="204%" stroke-width="40" discIdx="3" />
				<circle class="svg-disc stand1-disc3" r="3.3%" cx="30%" cy="180%" stroke-width="37" discIdx="2" />
				<circle class="svg-disc stand1-disc4" r="3%" cx="30%" cy="157%" stroke-width="34" discIdx="1" />
				<circle class="svg-disc stand1-disc5 source-top-disc" r="2.6%" cx="30%" cy="135%" stroke-width="30" discIdx="0" />
			</g>
			
			<g class='stand2-discs-group'>
				<circle class="svg-disc stand2-disc1" r="4%" cx="50%" cy="230%"  stroke-width="45" discIdx="4" />
				<circle class="svg-disc stand2-disc2" r="3.5%" cx="50%" cy="204%" stroke-width="40" discIdx="3" />
				<circle class="svg-disc stand2-disc3" r="3.3%" cx="50%" cy="180%" stroke-width="37" discIdx="2"/>
				<circle class="svg-disc stand2-disc4" r="3%" cx="50%" cy="157%" stroke-width="34" discIdx="1" />
				<circle class="svg-disc stand2-disc5" r="2.6%" cx="50%" cy="135%" stroke-width="30" discIdx="0" />
			</g>
			
			<g class='stand3-discs-group'>
				<circle class="svg-disc stand3-disc1" r="4%" cx="70%" cy="230%"  stroke-width="45" discIdx="4" />
				<circle class="svg-disc stand3-disc2" r="3.5%" cx="70%" cy="204%" stroke-width="40" discIdx="3" />
				<circle class="svg-disc stand3-disc3" r="3.3%" cx="70%" cy="180%" stroke-width="37" discIdx="2" />
				<circle class="svg-disc stand3-disc4" r="3%" cx="70%" cy="157%" stroke-width="34" discIdx="1" />
				<circle class="svg-disc stand3-disc5" r="2.6%" cx="70%" cy="135%" stroke-width="30" discIdx="0" />
			</g>
			<g id='discsStand'>
				<line id='baseStand' class='svg-line' x1="20%" x2="80%" y1="85%"
				y2="85%" />
				<g>
					<line class='svg-line' x1="30%" x2="30%" y1="30%"
				y2="85%" />
					<text class='svg-text' x='28%' y='90%'>Source</text>
				</g>
				
				<g>
					<line class='svg-line' x1="50%" x2="50%" y1="30%"
				y2="85%" />
					<text class='svg-text' x='47.5%' y='90%'>Temporary</text>
				</g>
				
				<g>
					<line class='svg-line' x1="70%" x2="70%" y1="30%"
				y2="85%" />
					<text class='svg-text' x='67%' y='90%'>Destination</text>
				</g>
			</g>
			
			<g class='stand1-disc-lines-group'>
			
				<line class="svg-line stand1-disc1-line" x1="30%" x2="30%" y1="79.9%" y2="83%" stroke="orange"/>
				<line class="svg-line stand1-disc2-line" x1="30%" x2="30%" y1="71%" y2="73.7%" stroke="blue"/>
				<line class="svg-line stand1-disc3-line" x1="30%" x2="30%" y1="62.6%" y2="65%" stroke="green"/>
				<line class="svg-line stand1-disc4-line" x1="30%" x2="30%" y1="54.8%" y2="57%" stroke="red"/>
				<line class="svg-line stand1-disc5-line source-top-disc-line" x1="30%" x2="30%" y1="46.8%" y2="49%" stroke="violet"/>
			</g>
			
			<g class='stand2-disc-lines-group'>
				<line class="svg-line stand2-disc1-line" x1="50%" x2="50%" y1="79.9%" y2="83%" stroke="orange"/>
				<line class="svg-line stand2-disc2-line" x1="50%" x2="50%" y1="71%" y2="73.7%" stroke="blue"/>
				<line class="svg-line stand2-disc3-line" x1="50%" x2="50%" y1="62.6%" y2="65%" stroke="green"/>
				<line class="svg-line stand2-disc4-line" x1="50%" x2="50%" y1="54.8%" y2="57%" stroke="red"/>
				<line class="svg-line stand2-disc5-line" x1="50%" x2="50%" y1="46.8%" y2="49%" stroke="violet"/>
			</g>
			
			<g class='stand3-disc-lines-group'>
				<line class="svg-line stand3-disc1-line" x1="70%" x2="70%" y1="79.9%" y2="83%" stroke="orange"/>
				<line class="svg-line stand3-disc2-line" x1="70%" x2="70%" y1="71%" y2="73.7%" stroke="blue"/>
				<line class="svg-line stand3-disc3-line" x1="70%" x2="70%" y1="62.6%" y2="65%" stroke="green"/>
				<line class="svg-line stand3-disc4-line" x1="70%" x2="70%" y1="54.8%" y2="57%" stroke="red"/>
				<line class="svg-line stand3-disc5-line" x1="70%" x2="70%" y1="46.8%" y2="49%" stroke="violet"/>
			</g>
		</svg>
	</div>
	
	<script type="text/javascript">
	
		// 23.4 21.4
		// 21.8
		var lineYPosMap = {};
		var circleYPosMap = {};
	
		$(document).ready(function() {
			$(".stand2-discs-group circle, .stand3-discs-group circle").hide();
			$(".stand2-disc-lines-group line, .stand3-disc-lines-group line").hide();
			$.each($(".stand1-disc-lines-group line"), function(index) {
				lineYPosMap[index] = {"y1" : $(this).attr("y1"), "y2" : $(this).attr("y2")}; 
			});
			
			$.each($(".stand1-discs-group circle"), function(index) {
				circleYPosMap[index] = {"cy" : $(this).attr("cy")}; 
			});
		});
		
		
		function movedisc(source, destination) {
			var xPos = getXPos(destination);
			TweenMax.to(getdisc(source), 3, { attr: {"cy" : "60%"}, onComplete:function() {
				TweenMax.to(getdisc(source), 2, { attr : {"cx" : xPos}, onComplete:function() {
					TweenMax.to(getdisc(source), 3, {
						attr : {
							"cy" : circleYPosMap[4 - getdiscNo(source)].cy
						}
					});
					
					
				}});
			}});
			TweenMax.to(getdiscLine(source), 3, { attr : { "y1" : "21.8%", "y2" : getNewY2Pos(getdiscNo(source)) + "%"},
				onComplete:function() {
					TweenMax.to(getdiscLine(source), 2, { attr : {"x1" : xPos, "x2" : xPos}, 
						onComplete:function() {
							TweenMax.to(getdiscLine(source), 3, { attr : { "y1" : lineYPosMap[4 - getdiscNo(source)].y1,
								"y2" : lineYPosMap[4 - getdiscNo(source)].y2	
							}});
						}});
				}});
		}
		
		
		function getdiscNo(source) {
			var discNo;
			if (source == "source") {
				discNo = $(".stand1-discs-group circle:not('.used')").attr("discidx");
			} else if(source == "temporary") {
				discNo = $(".stand2-discs-group circle:not('.used')").attr("discidx");
			} else {
				discNo = $(".stand3-discs-group circle:not('.used')").attr("discidx"); 
			}
			return parseInt(discNo);
		}
		
		function getdisc(source) {
			var disc;
			if (source == "source") {
				disc = $(".stand1-discs-group circle:not('.used')").last();
			} else if(source == "temporary") {
				disc = $(".stand2-discs-group circle:not('.used')").last();
			} else {
				disc = $(".stand3-discs-group circle:not('.used')").last(); 
			}
			return disc;
		}
		
		function getdiscLine(source) {
			var discLine;
			if (source == "source") {
				discLine = $(".stand1-disc-lines-group line:not('.used')").last();
			} else if(source == "temporary") {
				discLine = $(".stand2-disc-lines-group line:not('.used')").last();
			} else {
				discLine = $(".stand3-disc-lines-group line:not('.used')").last(); 
			}
			return discLine;
		}
		
		function getXPos(destination) {
			var xPos;
			if (destination == "source") {
				xPos = "30%";
			} else if(destination == "temporary") {
				xPos = "50%";
			} else {
				xPos = "70%";
			}
			return xPos;
		}
		
		function getNewY2Pos(discNo) {
			var y1 = lineYPosMap[discNo].y1.substring(0, lineYPosMap[discNo].y1.length - 1);
			var y2 = lineYPosMap[discNo].y2.substring(0, lineYPosMap[discNo].y2.length - 1);
			return 21.8 + ( (y2 - y1) - 0.5); 
		}
	</script>
</body>
</html>