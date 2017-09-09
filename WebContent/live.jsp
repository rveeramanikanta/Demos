<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="http://vasavi1.codetantra.com/js/gs/TweenMax.min.js"></script>
  <script src="http://vasavi1.codetantra.com/js/gs/utils/SplitText.min.js"></script>
<!--   <script src="http://vasavi1.codetantra.com/js/gs/plugins/CSSPlugin.min.js"></script>
 --><!--   <script src="http://vasavi1.codetantra.com/js/gs/TweenLite.min.js"></script>
 -->   <link href="introjs.css" rel="stylesheet"> 
     <script type="text/javascript" src="/js/intro.js"></script>
<title>Insert title here</title>
<style type="text/css">
.method-style {
 border: 1px solid gray;
    border-radius: 10px;
    margin-top: 20px;
    height:292px;
}

body{
-moz-tab-size:4;
}

.introjs-tooltip {
	padding: 5px !important;
} 

.introjs-tooltiptext {
	border-top-left-radius: 3px !important;
	border-top-right-radius: 3px !important;
}

.introjs-tooltipbuttons {
	border-bottom-left-radius: 3px !important;
	border-bottom-right-radius: 3px !important;
}

.introjs-tooltiptext, .introjs-tooltipbuttons {
	background-color: #003399;
	color: white; 
	padding: 2px;
}

.introjs-button {
	margin: 10px 2px 2px !important;
	padding: 3px !important;
}

.introjs-prevbutton, .introjs-nextbutton, .introjs-skipbutton {
	border-radius: 3px !important; 
}

.introjs-skipbutton {
	margin-right: 15px !important; 
}

</style>

<script type="text/javascript">
     $n1 = parseInt($('#number1').text());
     $n2 = parseInt($('#number2').text());
     $n3 = parseInt($('#number3').text());
     $n4 = parseInt($('#number3').text());
     $('window').ready(function(){
    	 var intro = introJs();
    	 intro.setOption('positionPrecedence', ['left', 'right', 'bottom', 'top']);
	      intro.setOption('showStepNumbers','false');	
    	 intro.start();
    	 $('.introjs-skipbutton').hide();
 		 $('.introjs-prevbutton').hide();
 		 $('.introjs-nextbutton').hide();
 		 $('.introjs-bullets').hide(); 
 		 $('.introjs-tooltipbuttons').append("<a class='introjs-button eclick'>Execute</a>")
      var j=0;
 		var box =   $('.eclick').click(function(){
 			 $('.introjs-nextbutton').click();
 			
 			 if(j >=1){
 			  a.click();
 			 }
 			 j++;
 		 })  		 
 		// $("#exp").append("<div id='val' style='display:none'>&emsp;&emsp;"+$n1+'&emsp;&ensp; *&emsp;&emsp;'+$n2+'&emsp;&ensp; -&emsp;&emsp;'+$n3+'&emsp;&emsp;+'+' ((&emsp;&emsp;'+$n2+'&emsp;&ensp;&nbsp+&emsp;&emsp;'+$n3+'&emsp;&ensp;) *&emsp;&emsp;'+$n4+'&emsp;&ensp;) /&emsp;&emsp;'+$n2+"</div>");
      var i=0;    	
 	var a=	$('#next').click(function(){
 		
      if(i==0){
 		
    	 
 		  $("#exp").append("<div id='val'  style='display:none'>&emsp;"+$n1+'&emsp; *&emsp;'+$n2+'&emsp; -&emsp;'+$n3+'&emsp;&ensp;+'+' ((&emsp;'+$n2+'&emsp;&ensp;+&emsp;'+$n3+'&emsp;&ensp;) *&emsp;'+$n4+'&emsp;) /&emsp;'+$n2+"</div>");
    	   TweenMax.set($('#exp'),{lineHeight:"2.0"});
    	   var split = new SplitText("#val",{type:'words',charsClass :'words++'});
    	   TweenMax.set($('#val'),{display:""});
           TweenMax.staggerFrom("#val > div",0.2,{opacity:0,delay:0.5,y:-40},0.1);
           $('#exp').append("<div  id='val1' style='position:relative;display:none;margin-left:35px'>"+$n1+"&emsp;*&emsp;"+ $n2+"&emsp;-&emsp;"+$n3+"&emsp;+&emsp;(&emsp;<div id='eefirst' style='position:absolute;display:inline-block'></div><div id='efirst' style='position:relative;display:none;'>"+ ($n2+$n3) +"</div><span id='fright' style='margin-left:50px;'>&emsp;*&emsp;<span id='ssright' style='position:absolute' ></span><span id='sright'>"+$n4+"</span>&emsp;) /&emsp;"+$n2+"</span></div>");
           //$("#exp").append("<div id='val' style='display:none'>&emsp;"+$n1+'&emsp; *&emsp;'+$n2+'&emsp; -&emsp;'+$n3+'&emsp;&ensp;+'+' ((&emsp;'+$n2+'&emsp;&ensp;+&emsp;'+$n3+'&emsp;&ensp;) *&emsp;'+$n4+'&emsp;) /&emsp;'+$n2+"</div>");
    	console.log('i=0***');
 			
 		}
      //$('.eclick').show();
      if(i == 1){
    	  TweenMax.set('#val1',{delay:1,display:""});
     	   TweenMax.staggerFrom("#val1",1,{opacity:0,delay:1,y:-40},1);
     	  $(".char16").append("<div  style='position: absolute; display: inline-block;' class='box'>"+$n2+"</div>");
    	  $(".char21").append("<div  style='position: absolute; display: inline-block;' class='box'>"+$n3+"</div>");
          //TweenMax.staggerTo('.char17',2,{autoAlpha:0,delay:1,x:30,y:40});
          //TweenMax.staggerTo('.char22',2,{opacity:0,delay:1,x:-30,y:40});
          TweenMax.set($('#efirst'),{display:'inline-block',delay:2.5});
          TweenMax.set($('#fright'),{marginLeft:'',delay:2.5});
    	  
      }
      if(i == 2){
    	  $('#exp').append("<div id='val2'> <span style='margin-left:65px'>"+$n1+"&emsp;*&emsp;"+$n2+"&emsp;-&emsp;"+$n3+"&emsp;+</span>&emsp;<div id='eesecond' style='position:absolute;display:inline-block'></div><div style='display:none;position:relative;' id='esecond'>"+($n2+$n3)*$n4+"</div><span style='margin-left:60px;' id='dright'>&nbsp; /&emsp;<div id='ttright' style='position:absolute;display:inline-block'></div><div id='tright' style='display:inline-block;'>"+$n2+"</div></span></div>");
       	  $("#eefirst").append("<div id='b2' style='position: absolute; display: inline-block;' class='box'>"+($n2+$n3)+"</div>");
          $("#ssright").append("<div id='b3' style='position: absolute; display: inline-block;' class='box'>"+$n4+"</div>");
          TweenMax.staggerTo('#b2',1.5,{opacity:0,delay:1,x:30,y:40});
          TweenMax.staggerTo('#b3',1.5,{opacity:0,delay:1,x:-30,y:40});
          TweenMax.set($('#esecond'),{display:'inline-block',delay:2});
          TweenMax.set($('#dright'),{marginLeft:'',delay:2});
    	  
      }
      
      if(i == 3){
    	  $('#exp').append("<div id='val3'><span style='margin-left:85px'><div id='ttf' style='position:absolute;display:inline-block'></div><div style='position:relative;display:inline-block;' id='tf' >"+$n1+"</div>&emsp;*&emsp;<div id='tts' style='position:absolute;display:inline-block'></div><div id='ts' style='position:relative;display:inline-block'>"+$n2+"</div>&emsp;-&emsp;"+$n3+"&emsp;+</span><span id='dres' style='display:none'>&emsp;"+($n2+$n3)*$n4/$n2+"</span></div>");
          $('#eesecond').append("<div id='sm' style='position:absolute;display:inline-block;' >"+($n2+$n3)*$n4+"</div>");
          $('#ttright').append("<div  id='smv' style='position:absolute;display:inline-block; '>"+$n2+"</div>");  
          TweenMax.staggerTo('#sm',1.5,{opacity:0,delay:1,x:20,y:40});
          TweenMax.staggerTo('#smv',1.5,{opacity:0,delay:1,x:-40,y:40});
          TweenMax.set($('#dres'),{display:'inline-block',delay:2});
    	  
      }
      
      if(i == 4){
    	  $('#exp').append(" <div id='val4'><span id='' style='margin-left:116px'><div id='fff' style='position:absolute;display:inline-block'></div><div id='ff' style='position:relative;display:none'>"+($n1*$n2)+"</div>&emsp;-&emsp;<div id='ffou' style='position:absolute;display:inline-block'></div><div id='fou' style='position:relative;display:inline-block;'>"+$n3+"</div></span>&emsp;+<span>&emsp;"+($n2+$n3)*$n4/$n2+"</span></div>");
          $('#ttf').append("<span id='fs' style='position:absolute;display:inline-block;'>"+$n1+"</span>");
          $('#tts').append("<span  id='ft' style='position:absolute;display:inline-block;'>"+$n2+"</span>");
          TweenMax.staggerTo($('#fs'),1.5,{opacity:0,delay:1,x:20,y:40});
          TweenMax.staggerTo($('#ft'),1.5,{opacity:0,delay:1,x:-40,y:40});
     	  TweenMax.set($('#ff'),{display:'inline-block',delay:2});
      }
      
      if(i==5){
    	  $('#exp').append(" <div id='val5'><span  style='margin-left:146px'><span id='fffi' style='position:absolute;display:inline-block'></span><span id='ffi' style='display:none;position:relative;'>"+(($n1*$n2)-$n3)+"</span>&emsp;</span>+&emsp;<span id='ssifi' style='position:absolute;display:inline-block'></span><span id='sifi' style='position:relative;display:inline-block;'>"+($n2+$n3)*$n4/$n2+"</span></div>");
          $('#fff').append("<span id='sfi' style='position:absolute;display:inline-block;' >"+($n1*$n2)+"</span>");  
     	 $('#ffou').append("<span id='tfi' style='position:absolute;display:inline-block;' >"+$n3+"</span>");
     	  TweenMax.staggerTo($('#sfi'),1.5,{opacity:0,delay:1,x:30,y:40});
          TweenMax.staggerTo($('#tfi'),1.5,{opacity:0,delay:1,x:-30,y:40});
          TweenMax.set($('#ffi'),{display:'inline-block',delay:2});
    	  
      }
      
      if(i==6){
    	  $('#exp').append("<div id='val6'><span   id='si' style='display:none;margin-left:176px'>"+((($n1*$n2)-$n3)+($n2+$n3)*$n4/$n2)+"</span></div>");
          $('#fffi').append("<span id='xf'  style='position:relative;display:inline-block;'>"+(($n1*$n2)-$n3)+"</span>");
          $('#ssifi').append("<span id='xs'  style='position:relative;display:inline-block;'>"+($n2+$n3)*$n4/$n2+"</span>");
          TweenMax.staggerTo($('#xf'),1,{opacity:0,delay:0.5,x:30,y:40});
          TweenMax.staggerTo($('#xs'),1,{opacity:0,delay:0.5,x:-30,y:40});
          TweenMax.set($('#si'),{display:'inline-block',delay:1});
      }
      
      i++;
 		});// next click end braces
 		
     });
 		
    
     function goBack(){
    	/*   TweenMax.set('#val1',{delay:1,display:""});
  	   TweenMax.staggerFrom("#val1",1,{opacity:0,delay:1,y:-40},1,val); */
     }
     
     var boxNum=0;
     
     function val(){
    	 
    	 /*  $(".char16").append("<div  style='position: relative; display: inline-block;margin-right: -10px;' class='box'>"+$n2+"</div>");
    	  $(".char21").append("<div  style='position: absolute; display: inline-block;margin-right: -10px;' class='box'>"+$n3+"</div>");
          TweenMax.staggerTo('.char16',1.5,{opacity:0,delay:1,x:30,y:40});
          TweenMax.staggerTo('.char21',1.5,{opacity:0,delay:1,x:-30,y:40});
          TweenMax.set($('#efirst'),{display:'',delay:2.5});
          TweenMax.set($('#fright'),{marginLeft:'',delay:2.5,onComplete:second}); */
     
     }
     
     function second(){
     /*  $('#exp').append(" <div id='val2'><span style='margin-left:95px'>"+$n1+"&emsp;*&emsp;"+$n2+"&emsp;-&emsp;"+$n3+"&emsp;+</span><span style='display:none;margin-left: 30px;' id='esecond'>"+($n2+$n3)*$n4+"</span><span style='margin-left:60px;' id='dright'> /&emsp;<span id='tright'>"+$n2+"</span></span></div>");
   	  $("#efirst").append("<div id='b2' style='position: relative; display: inline-block;margin-left: -10px;' class='box'>"+($n2+$n3)+"</div>");
      $("#sright").append("<div id='b3' style='position: relative; display: inline-block;margin-left: -10px;' class='box'>"+$n4+"</div>");
      TweenMax.staggerTo('#b2',1.5,{opacity:0,delay:1,x:30,y:40});
      TweenMax.staggerTo('#b3',1.5,{opacity:0,delay:1,x:-30,y:40});
      TweenMax.set($('#esecond'),{display:'',delay:2});
      TweenMax.set($('#dright'),{marginLeft:'',delay:2,onComplete:third}); */
     }
     
     function third(){
       /*  $('#exp').append(" <div id='val3'><span style='margin-left:95px'><span id='tf'>"+$n1+"</span>&emsp;*&emsp;<span id='ts'>"+$n2+"</span>&emsp;-&emsp;"+$n3+"&emsp;+</span><span id='dres' style='display:none'>&emsp;"+($n2+$n3)*$n4/$n2+"</span></div>");
         $('#esecond').append("<span id='sm' style='position:relative;display:inline-block;margin-left: -20px ' >"+($n2+$n3)*$n4+"</span>");
         $('#tright').append("<span  id='smv' style='position:relative;display:inline-block;margin-left:  -10px '>"+$n2+"</span>");  
         TweenMax.staggerTo('#sm',1.5,{opacity:0,delay:1,x:-20,y:30});
         TweenMax.staggerTo('#smv',1.5,{opacity:0,delay:1,x:-60,y:30});
         TweenMax.set($('#dres'),{display:'',delay:2,onComplete:fourth}); */
     }
     
     function fourth(){
        /*  $('#exp').append(" <div id='val4'><span id='fou' style='margin-left:116px'><span id='ff' style='display:none'>"+($n1*$n2)+"</span>&emsp;-&emsp;"+$n3+"</span>&emsp;+<span>&emsp;"+($n2+$n3)*$n4/$n2+"</span></div>");
         $('#tf').append("<span id='fs' style='position:relative;display:inline-block;margin-left: -10px'>"+$n1+"</span>");
         $('#ts').append("<span  id='ft' style='position:relative;display:inline-block;margin-left: -10px'>"+$n2+"</span>");
         TweenMax.staggerTo($('#fs'),1.5,{opacity:0,delay:1,x:20,y:40});
         TweenMax.staggerTo($('#ft'),1.5,{opacity:0,delay:1,x:-40,y:40});
    	 TweenMax.set($('#ff'),{display:'',delay:2,onComplete:fifth}); */
     }
     
     function fifth(){
         /* $('#exp').append(" <div id='val5'><span  style='margin-left:146px'><span id='ffi' style='display:none'>"+(($n1*$n2)-$n3)+"</span>&emsp;</span>+<span id='sifi'>&emsp;"+($n2+$n3)*$n4/$n2+"</span></div>");
         $('#ff').append("<span id='sfi' style='position:relative;display:inline-block;margin-left: -20px' >"+($n1*$n2)+"</span>");  
    	 $('#fou').append("<span id='tfi' style='position:relative;display:inline-block;margin-left: -10px' >"+$n3+"</span>");
    	  TweenMax.staggerTo($('#sfi'),1.5,{opacity:0,delay:1,x:30,y:40});
          TweenMax.staggerTo($('#tfi'),1.5,{opacity:0,delay:1,x:-30,y:40});
         TweenMax.set($('#ffi'),{display:'',delay:2,onComplete:sixth}); */
     }
     
     function sixth(){
        /*  $('#exp').append(" <div id='val6'><span   id='si' style='display:none;margin-left:176px'>"+((($n1*$n2)-$n3)+($n2+$n3)*$n4/$n2)+"</span></div>");
         $('#ffi').append("<span id='xf'  style='position:relative;display:inline-block;margin-left: -20px'>"+(($n1*$n2)-$n3)+"</span>");
         $('#sifi').append("<span id='xs'  style='position:relative;display:inline-block;margin-left: -10px'>"+($n2+$n3)*$n4/$n2+"</span>");
         TweenMax.staggerTo($('#xf'),1,{opacity:0,delay:0.5,x:30,y:40});
         TweenMax.staggerTo($('#xs'),1,{opacity:0,delay:0.5,x:-30,y:40});
         TweenMax.set($('#si'),{display:'',delay:1}); 
         */
     }
     
     </script>
</head>
<body>
<div class="col-xs-12">
 	<div class="col-xs-9 ">
 		<div align="center"> <h4><span class="label label-default">SourceCode</span></h4></div>
			<div data-step="1" data-intro="first">
			<div>
				<pre>
	public class OperatorPrecedence {
		public static void main(String args[]) {
			int num1 = <span id="number1" contenteditable="true" >4</span>;
    		int num2 = <span id="number2" contenteditable="true" >6</span>;	
    		int num3 = <span id="number3" contenteditable="true" >3</span>;
    		int num4 = <span id="number4" contenteditable="true" >2</span>;
    	    double finalValue = num1 * num2 - num3 + ((num2 + num3) * num4) / num2;
			System.out.println("finalValue :" + finalValue);
     	} 
	}
</pre></div>
</div>
 <!-- <button id="click" class="btn btn-success">Click</button>  4 * 6 - 3 + ((6 + 3) * 2) / 6-->
	</div>
	
	
	
	
	
	
	
	
	
	<div  class="col-xs-8  method-style">
	<div style='height:290px;' data-step='9' data-intro='9'>
	<div style='height:245px;' data-step='8' data-intro='8'>
	<div style='height:210px;'data-step='7' data-intro='7'>
	<div style='height:180px;'data-step='6' data-intro='6'>
	<div style='height:145px;' data-step='5' data-intro='5'>
	<div style='height: 120px;' data-step='4' data-intro='4'>
	<div   data-step='3' style='height: 80px;' data-intro='exp'>
	        <div id="exp"  data-step='2' data-intro='2'  style="font-size: 18px;">num1 * num2 - num3 + ((num2 + num3) * num4) / num2 <a id='next' class='btn btn-primary' style='display:none;'>next</a></div>
	     </div> 
	     </div>
	</div>
	</div>
	 </div>
	 </div>
	 </div>
	  </div>
		
</body>
</html>
