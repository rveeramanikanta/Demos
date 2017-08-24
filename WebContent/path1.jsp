<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/jquery-ui.css">

<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>



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

.circle-lines line {
	stroke-width: 4;
}


.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
  animation-duration: 1s;
  animation-iteration-count: infinite;
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
			<circle discidx="1" stroke-width="45" cy="230%" cx="30%" r="4%" class="svg-disc stand1-disc1 disc1"/>
			<circle discidx="2" stroke-width="40" cy="205%" cx="30%" r="3.5%" class="svg-disc stand1-disc2 disc2"/>
			<circle discidx="3" stroke-width="37" cy="180%" cx="30%" r="3.3%" class="svg-disc stand1-disc3 disc3"/>
			<circle discidx="4" stroke-width="34" cy="155%" cx="30%" r="3%" class="svg-disc stand1-disc4 disc4"/>
			<circle discidx="5" stroke-width="30" cy="130%" cx="30%" r="2.6%" class="svg-disc stand1-disc5 source-disc source-top-disc disc5"/>
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
			
			
			<g class='circle-lines'>
				<line stroke="orange" y2="83%" y1="79.9%" x2="30%" x1="30%" class="svg-line"/>
				<line stroke="blue" y2="74.0%" y1="71.2%" x2="30%" x1="30%" class="svg-line"/>
				<line stroke="green" y2="65%" y1="62.6%" x2="30%" x1="30%" class="svg-line"/>
				<line stroke="red" y2="56.3%" y1="54%" x2="30%" x1="30%" class="svg-line"/>
				<line stroke="violet" y2="47.2%" y1="45.3%" x2="30%" x1="30%" class="svg-line top-disc-line"/>
			</g>
		</svg>
		
		<div class='col-xs-12 text-center'>
			<select id='select1'>
				<option>source</option>
				<option>temporary</option>
				<option>destination</option>
			</select>
			
			<select id='select2'>
				<option>source</option>
				<option>temporary</option>
				<option>destination</option>
			</select>
			<button class='submitBtn'>move</button>
		</div>
	</div>
	
	<div class='col-xs-offset-4 col-xs-4 text-center opacity00' style='margin-top: 60px;'>
		<i class="fa fa-hand-o-up fa-5x" aria-hidden="true"></i>
	</div>
	
	<script type="text/javascript">
	var linePos = [ [
						{"y1" : "79.9%", "y2" : "83%"},
						{"y1" : "71.5%", "y2" : "74.5%"},
						{"y1" : "62.9%", "y2" : "66.0%"},
						{"y1" : "54.4%", "y2" : "57.5%"},
						{"y1" : "45.8%", "y2" : "48.9%"}
	                 ],
	                 
	                 [
						{"y1" : "79.8%", "y2" : "82.5%"},
						{"y1" : "71.2%", "y2" : "74.0%"},
						{"y1" : "62.6%", "y2" : "65.3%"},
						{"y1" : "54.2%", "y2" : "56.7%"},
						{"y1" : "45.5%", "y2" : "48.3%"}
	                 ],
	                 [
						{"y1" : "80%", "y2" : "82.3%"},
						{"y1" : "71.3%", "y2" : "73.6%"},
						{"y1" : "62.6%", "y2" : "65%"},
						{"y1" : "54.4%", "y2" : "56.6%"},
						{"y1" : "45.6%", "y2" : "48.1%"}
	                  
	                 ], 
	                 [
						{"y1" : "79.8%", "y2" : "81.9%"},
						{"y1" : "71.2%", "y2" : "73.3%"},
						{"y1" : "62.6%", "y2" : "64.6%"},
						{"y1" : "54%", "y2" : "56.3%"},
						{"y1" : "45.3%", "y2" : "47.6%"}
	                 ],
	                 [
						{"y1" : "79.6%", "y2" : "81.6%"},
						{"y1" : "71%", "y2" : "73%"},
						{"y1" : "62.5%", "y2" : "64.5%"},
						{"y1" : "54%", "y2" : "56%"},
						{"y1" : "45.3%", "y2" : "47.2%"}
	                 ]
	             ];
	
	
		var lineYPosMap = {};
		var circleYPosMap = {};
		
		var sourceDiscsCount = 5;
		var temporaryDiscsCount = 0;
		var destinationDiscsCount = 0;
		
		
		var sourceArr = ["disc1", "disc2", "disc3", "disc4", "disc5"];
		var tempArr = [];
		var destinationArr = [];
	
		$(document).ready(function() {
			$.each($(".circle-lines line"), function(index) {
				lineYPosMap[index] = {"y1" : $(this).attr("y1"), "y2" : $(this).attr("y2")}; 
			});
			
			$.each($("circle"), function(index) {
				circleYPosMap[index] = {"cy" : $(this).attr("cy")}; 
			});
			
			$(".submitBtn").click(function() {
				$(".fadeInUp").addClass("opacity00").removeClass("fadeInUp animated");
				if ($("#select1").val() == $("#select2").val()) {
				//	$(".fa-hand-o-up").parent().removeClass("opacity00").addClass("fadeInUp animated");
					alertify.log("move not possible", "error", 1000);
				} else {
					moveDisc($("#select1").val(), $("#select2").val());
				}
				
			});
		});
		
		
		
		function moveDisc(source, destination) {
			var xPos = getXPos(destination);
			TweenMax.to(getTopDisc(source), 1, { attr: {"cy" : "60%"}, onComplete:function() {
				TweenMax.to(getTopDisc(source), 1, { attr: {"cx" : xPos}, onComplete:function() {
					TweenMax.to(getTopDisc(source), 1, { attr: {"cy" : getDestinationYPos(destination) + "%"}, onComplete:function() {
						updateDiscsCount(source, destination);
						//updateDiscsTops(source, destination);
						updateDiscsArr(source, destination);
					}});
				}});
			}});
			
			TweenMax.to(getTopDiscLine(source), 1, { attr : { "y1" : "21.8%", "y2" : getNewY2Pos(sourceDiscsCount - 1) + "%"}, 
				onComplete:function() {
					TweenMax.to(getTopDiscLine(source), 1, {
						attr : {
							"x1" : xPos,
							"x2" : xPos
						}, onComplete:function() {
							
							var y1 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y1;
							var y2 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y2;
							
							TweenMax.to(getTopDiscLine(source), 1, {
								attr : {
									"y1" : y1,
									"y2" : y2
								}, onComplete:function() {
									
									
									
									
								}});
						}
					});
				}});
		}
		
		function updateDiscsCount(source, destination) {
			if (source == "source") {
				sourceDiscsCount--;
			} else if (source == "temporary") {
				temporaryDiscsCount--;
			} else if (source == "destination"){
				destinationDiscsCount--;
			}
			
			
			if (destination == "source") {
				sourceDiscsCount++;
			} else if (destination == "temporary") {
				temporaryDiscsCount++;
			} else if (destination == "destination") {
				destinationDiscsCount++;
			}
		}
		
		
		function updateDiscsArr(source, destination) {
			var popedDisc;
			if (source == "source") {
				popedDisc = sourceArr.pop();
			} else if (source == "temporary") {
				popedDisc = tempArr.pop();
			} else if (source == "destination"){
				popedDisc = destinationArr.pop();
			}
			
			if (destination == "source") {
				sourceArr.push(popedDisc);
			} else if (destination == "temporary") {
				tempArr.push(popedDisc);
			} else if (destination == "destination") {
				destinationArr.push(popedDisc);
			}
		}
		
		
		
		function updateDiscsTops(source, destination) {
			/* var desClasses = "svg-disc " + destination + "-disc " + destination + "-top-disc stand1-disc" + getTopDisc(source).attr("discidx");
			var sourceClasses = "svg-disc " + source + "-disc " + source + "-top-disc"; */
			
			$("." + destination + "-disc").attr("class", "svg-disc " + "stand1-disc"
					+ ($("." + destination + "-disc").last().attr("discidx") ) );
			
			if ($("." + destination + "-top-disc").length == 0) {
				var desClasses = "svg-disc " + destination + "-disc " + destination + "-top-disc stand1-disc" 
							+ $("." + source + "-top-disc").attr("discidx");
				
				$("." + source + "-top-disc").attr("class", desClasses);
			}
			
			
			// var sourceClasses = $("." + source + "-top-disc").attr("class")
			// $("." + source + "-top-disc").attr("class", "svg-disc ")
			
			if (getDiscCount(source) > 1 && $("." + source + "-top-disc").length == 0) {
				var classes = $("circle").eq(getDiscCount(source) - 1).attr("class") + " " + source + "-top-disc " + source + "-disc";
				$("circle").eq(getDiscCount(source) - 1).attr("class", classes);
			} else {
				//getTopDisc(source).next().attr("class", "svg-disc stand1-disc" + $("." + destination + "-top-disc").attr("discidx"));
				//$("." + source + "-top-disc")
				/* var classes = $("circle").eq(getDiscCount(source) - 1).attr("class") + " " + source + "-top-disc " + source + "-disc";
				$("circle").eq(getDiscCount(source) - 1).attr("class", "svg-disc " + ); */
			}
		}
		
		function getDestinationYPos(destination) {
			return 230 - (getDiscCount(destination) * 25);
		}
		
		
		function getDiscCount(source) {
			var dicsCount;
			if (source == "source") {
				dicsCount = sourceDiscsCount;
			} else if (source == "temporary") {
				dicsCount = temporaryDiscsCount;
			} else {
				dicsCount = destinationDiscsCount;
			}
			
			return dicsCount;
		}
		
		
		function getTopDisc(source) {
			//return $("." + source + "-top-disc");
			return $("." + getTopDiscArrVal(source));
		}
		
		
		function getTopDiscArrVal(source) {
			if (source == "source") {
				return sourceArr[getDiscCount(source) - 1];
			} else if (source == "temporary") {
				return tempArr[getDiscCount(source) - 1];
			} else if (source == "destination") {
				return destinationArr[getDiscCount(source) - 1];
			}
		}
		
		function getTopDiscLine(source) {
			//return $("." + source + "-top-disc-line");
			return $(".circle-lines line").eq(parseInt(getTopDisc(source).attr("discidx")) - 1);
			//return $(".top-disc-line");
		}
		
		/* function movedisc(source, destination) {
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
		} */
		
		
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
		
		/* function getdisc(source) {
			var disc;
			if (source == "source") {
				disc = $(".stand1-discs-group circle:not('.used')").last();
			} else if(source == "temporary") {
				disc = $(".stand2-discs-group circle:not('.used')").last();
			} else {
				disc = $(".stand3-discs-group circle:not('.used')").last(); 
			}
			return disc;
		} */
		
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
			return 21.8 + ( (y2 - y1) - 0.8); 
		}
	</script>
</body>
</html>
