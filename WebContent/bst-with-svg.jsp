<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
<title>Insert title here</title>

<style type="text/css">
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
</style>

<script type="text/javascript">
var tl = new TimelineLite();
var count = 1;

$(document).ready(function() {
	createNode("A");
	//setNode("B", "#circle1", "left");
	//setConnection("#circle1", "#circle2");
});

function createNode(node, parent, position, callBackFunction) {
	var x, y;
	if (parent === undefined || parent === "") {
		x = "50%";
		y = "20%"
	} else {
		y = (parseInt($(parent).attr("cy")) + 15) + "%";
	}
	
	if (position === "left") {
		x = (parseInt($(parent).attr("cx")) - 5) + "%";
	} else if (position === "right") {
		x = (parseInt($(parent).attr("cx")) + 5) + "%";
	}
	
	var circle = document.createElementNS('http://www.w3.org/2000/svg', 'circle');
	circle.setAttribute('class', 'svg-line');
	circle.setAttribute('cx', x);
	circle.setAttribute('cy', y);
	circle.setAttribute('r', "2%");
	circle.setAttribute('fill', "white");
	circle.setAttribute('stroke', "black");
	circle.setAttribute('stroke-width', "2");
	circle.setAttribute('id', "circle" + count);
	circle.setAttribute('position', position);
	$('#mySvg').append(circle);
	
	var text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
	x = (parseInt(x) - 0.3) + "%";
	y = (parseInt(y) + 0.5) + "%";
	text.setAttribute('x', x);
	text.setAttribute('y', y);
	text.setAttribute('fill', 'red');
	text.textContent = node;
	text.setAttribute('style', 'font-family: monospace; font-size: 15px;');
	$('#mySvg').append(text);
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
	count++;
}

function createConnection(node1, node2, callBackFunction) {
	var x1 = parseInt($(node1).attr("cx"));
	var x2 = parseInt($(node2).attr("cx"));
	var y1 = parseInt($(node1).attr("cy"));
	var y2 = parseInt($(node2).attr("cy"));
	
	var position = $(node2).attr("position");
	if (position === "left") {
		x1 = x1 - 1;
		x2 = x2 + 1.5;
		y1 = y1 + 4.5;
		y2 = y2 - 4.5
	} else if (position === "right") {
		x1 = x1 + 1;
		x2 = x2 - 1.5;
		y1 = y1 + 4.5;
		y2 = y2 - 4.5
	}
	
	var line = document.createElementNS('http://www.w3.org/2000/svg', 'line');
	line.setAttribute('class', 'svg-line');
	line.setAttribute('x1', x1 + '%');
	line.setAttribute('y1', y1 + '%');
	line.setAttribute('x2', x1 + '%');
	line.setAttribute('y2', y1 + '%');
	line.style.markerEnd = 'url("#myMarker")';
	$('#mySvg').append(line);
	tl.to($("line").last(), 1, {attr : {x2 : x2 + '%', y2 : y2 + '%'}, onComplete: function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}});
}
</script>

</head>
<body>
	<svg class="svg-css" id="mySvg">
		<marker style="fill: gray;" orient="auto" markerHeight="5"
			markerWidth="5" refY="2.5" refX="4" id="myMarker">
			<path class="arrow" d="M0,0 L5,2.5 L0,5 Z" />
		</marker>
	</svg>
</body>
</html>