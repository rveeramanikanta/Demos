/**
 * 
 */

/*var linePos = [ [
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
	             ];*/

/*var linePos = [ [
						{"y1" : "78.9%", "y2" : "83%"},
						{"y1" : "71%", "y2" : "75%"},
						{"y1" : "63.5%", "y2" : "67%"},
						{"y1" : "55.7%", "y2" : "59.5%"},
						{"y1" : "47.7%", "y2" : "51.5%"}
	                 ],
	                 
	                 [
						{"y1" : "78.5%", "y2" : "82%"},
						{"y1" : "71%", "y2" : "74.3%"},
						{"y1" : "63%", "y2" : "66.3%"},
						{"y1" : "55%", "y2" : "58.5%"},
						{"y1" : "47.5%", "y2" : "51%"}
	                 ],
	                 [
						{"y1" : "79%", "y2" : "81.6%"},
						{"y1" : "71%", "y2" : "73.8%"},
						{"y1" : "63.5%", "y2" : "66.3%"},
						{"y1" : "55.5%", "y2" : "58%"},
						{"y1" : "47.8%", "y2" : "50.5%"}
	                  
	                 ], 
	                 [
						{"y1" : "78.5%", "y2" : "80.6%"},
						{"y1" : "70.8%", "y2" : "73%"},
						{"y1" : "63%", "y2" : "65.4%"},
						{"y1" : "55%", "y2" : "57.4%"},
						{"y1" : "47.4%", "y2" : "49.5%"}
	                 ],
	                 [
						{"y1" : "78.5%", "y2" : "80.5%"},
						{"y1" : "71%", "y2" : "72.7%"},
						{"y1" : "62.8%", "y2" : "64.8%"},
						{"y1" : "55.5%", "y2" : "57%"},
						{"y1" : "47.8%", "y2" : "49%"}
	                 ]
	             ];*/

var linePos = [ [
						{"y1" : "79", "y2" : "83"},
						{"y1" : "71.3", "y2" : "75.3"},
						{"y1" : "63.5", "y2" : "67.5"},
						{"y1" : "55.7", "y2" : "59.8"},
						{"y1" : "47.9", "y2" : "52"}
	                 ],
	                 
	                 [
						{"y1" : "78.8", "y2" : "82.3"},
						{"y1" : "71", "y2" : "74.6"},
						{"y1" : "63.2", "y2" : "66.9"},
						{"y1" : "55.4", "y2" : "59"},
						{"y1" : "47.7", "y2" : "51.3"}
	                 ],
	                 [
						{"y1" : "78.6", "y2" : "81.5"},
						{"y1" : "70.9", "y2" : "73.7"},
						{"y1" : "63.2", "y2" : "66"},
						{"y1" : "55.3", "y2" : "58.2"},
						{"y1" : "47.6", "y2" : "50.5"}
	                  
	                 ], 
	                 [
						{"y1" : "78.5", "y2" : "80.8"},
						{"y1" : "70.7", "y2" : "73.1"},
						{"y1" : "63", "y2" : "65.1"},
						{"y1" : "55.2", "y2" : "57.4"},
						{"y1" : "47.3", "y2" : "49.6"}
	                 ],
	                 [
						{"y1" : "78.4", "y2" : "80.1"},
						{"y1" : "70.7", "y2" : "72.4"},
						{"y1" : "62.8", "y2" : "64.6"},
						{"y1" : "55.1", "y2" : "56.9"},
						{"y1" : "47.3", "y2" : "49.1"}
	                 ]
	             ];

		var getStandNames = {
			'A': 'source',
			'B': 'temporary',
			'C': 'destination'
		}
		
		var fromPoint = "source";
		var toPoint = "destination";
		var functionName = "Hanoi1";
		var lineYPosMap = {};
		var circleYPosMap = {};
		
		var sourceDiscsCount = 5;
		var temporaryDiscsCount = 0;
		var destinationDiscsCount = 0;
		
		
		var sourceArr = ["disc1", "disc2", "disc3", "disc4", "disc5"];
		var tempArr = [];
		var destinationArr = [];
		
		function moveDisc(source, destination, callBackFunction) {
			var xPos = getXPos(destination);
			TweenMax.to(getTopDisc(source), 1, { attr: {"cy" : "60%"}, onComplete:function() {
				TweenMax.to(getTopDisc(source), 1, { attr: {"cx" : xPos}, onComplete:function() {
					TweenMax.to(getTopDisc(source), 1, { attr: {"cy" : getDestinationYPos(destination) + "%"}, onComplete:function() {
						updateDiscsCount(source, destination);
						updateDiscsArr(source, destination);
						if (typeof callBackFunction === "function") {
							callBackFunction();
	     				}
					}});
				}});
			}});
			
			TweenMax.to(getTopDiscLine(source), 1, { attr : { "y1" : "16.5%", "y2" : getNewY2Pos(source, destination) + "%"}, 
				onComplete:function() {
					TweenMax.to(getTopDiscLine(source), 1, {
						attr : {
							"x1" : xPos,
							"x2" : xPos,
							"y1" : "16.5%",
							"y2" : "16.5%"
						}, onComplete:function() {
							
						var y1 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y1;
						var y2 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y2;
						
						TweenMax.to(getTopDiscLine(source), 1, {
							attr : {
								"y1" : y1 + "%",
								"y2" : y2 + "%"
							}});
						}});
				}});
			
			TweenMax.to(getTopDiscText(source), 1, {attr : { "y" : getTopDiscText(source).attr("fixedTop") + "%"}, onComplete : function() {
				TweenMax.to(getTopDiscText(source), 1, { attr: {"x" : getTextXPos(source, destination)}, onComplete : function() {
					var y = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y1;
					TweenMax.to(getTopDiscText(source), 1, {
						attr : {
							"y" : y + "%"
						}});
				}});
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
		
		
		function getDestinationYPos(destination) {
			return 300 - (getDiscCount(destination) * 30);
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
			return $(".circles-lines line").eq(parseInt(getTopDisc(source).attr("discidx")) - 1);
		}
		
		function getTopDiscText(source) {
			return $(".circles-text text").eq(parseInt(getTopDisc(source).attr("discidx")) - 1);
		}
		
		function getXPos(destination) {
			var xPos;
			if (destination == "source") {
				xPos = "17.5%";
			} else if(destination == "temporary") {
				xPos = "47.5%";
			} else {
				xPos = "77.5%";
			}
			return xPos;
		}
		
		function getTextXPos(source, destination) {
			var xPos;
			if (destination == "source") {
				if (getTopDisc(source).attr("discidx") == 4 || getTopDisc(source).attr("discidx") == 5) {
					xPos = "13%";
				} else {
					xPos = "12%";
				}
			} else if(destination == "temporary") {
				if (getTopDisc(source).attr("discidx") == 4 || getTopDisc(source).attr("discidx") == 5) {
					xPos = "43%";
				} else {
					xPos = "42%";
				}
			} else {
				if (getTopDisc(source).attr("discidx") == 4 || getTopDisc(source).attr("discidx") == 5) {
					xPos = "73%";
				} else {
					xPos = "72%";
				}
			}
			return xPos;
		}
		
		function getNewY2Pos(source, destination) {
			
			//var y1 = lineYPosMap[discNo].y1.substring(0, lineYPosMap[discNo].y1.length - 1);
			//var y2 = lineYPosMap[discNo].y2.substring(0, lineYPosMap[discNo].y2.length - 1);
			
			//var y1 = parseInt(linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y1);
			//var y2 = parseInt(linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y2);
			
			/*var y1 = parseInt(linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][4 - (getDiscCount(source) - 1)].y1);
			var y2 = parseInt(linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][4 - (getDiscCount(source) - 1)].y2);*/
			
			var y1 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y1;
			var y2 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getDiscCount(destination)].y2;
			/*var y1 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getTopDisc(source).attr("discidx") - 1].y1;
			var y2 = linePos[parseInt(getTopDisc(source).attr("discidx")) - 1][getTopDisc(source).attr("discidx") - 1].y2;*/
			
			/*return 21.8 + ( (y2 - y1) - 0.8);*/
			return 16.5 + ((y2 - y1 - 0.2));
		}