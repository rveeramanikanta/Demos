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
<!-- <link rel="stylesheet" href="css/font-awesome-animation.min.css"> -->


<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="js/intro.js"></script>
<script type="text/javascript" src="js/typewriting.min.js"></script>
<script type="text/javascript" src="js/gs/TweenMax.min.js"></script>

<script src="user-alerts-popup.js"></script>

<style type="text/css">


.callout {
    position: relative;
    top: 0;
    left: 0;
    display: block;
    padding: 10px;
}
.callout.right {
    margin-left: 10px;
}
.callout.right::before {
    position: absolute;
    top: 50%;
    left: 0;
    width: 0;
    height: 0;
    margin-top: -10px;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-right: 10px solid #a8c3e5;
    content: '';
}
.callout.right::after {
    position: absolute;
    top: 50%;
    left: 2px;
    width: 0;
    height: 0;
    margin-top: -10px;
    border-top: 10px solid transparent;
    border-bottom: 10px solid transparent;
    border-right: 10px solid #f9f9f9;
    content: '';
}
.callout-inner {
    padding: 2px;
    overflow: hidden;
    background: black;
    background: #a8c3e5;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}
.callout-content {
    padding: 14px;
    margin: 0;
    background-color: #f9f9f9;
    color: #39569A;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    -webkit-background-clip: padding-box;
    -moz-background-clip: padding-box;
    background-clip: padding-box;
}


@-webkit-keyframes shake {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

@keyframes shake {
  from, to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }

  10%, 30%, 50%, 70%, 90% {
    -webkit-transform: translate3d(-10px, 0, 0);
    transform: translate3d(-10px, 0, 0);
  }

  20%, 40%, 60%, 80% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
}

.shake {
  -webkit-animation-name: shake;
  animation-name: shake;
  animation-duration: 5s;
  animation-iteration-count: infinite;
}
</style>

</head>
<body>
	<div class='text-center' style="margin-top: 75px;">
		<a href="https://www.codetantra.com" id='myLink' target="_blank">codetantra</a>
	</div>
</body>
</html>