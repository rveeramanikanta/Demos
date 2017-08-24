<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SQL Queries</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<script type="text/javascript" src="/js/ArtLayer.js"></script>

<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.margin-top-40 {
	margin-top: 40px;
}

.border {
	border: 2px solid gray;
	border-radius: 8px;
}

#queryEditor, #animationDiv {
	height: 200px;
}

.output-console-body {
	background: #270018 none repeat scroll 0 0;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	color: #f0f0f0;
	font-family: monospace;
	font-weight: bold;
	height: 200px;
	overflow: auto;
	padding: 6px;
	/* white-space: pre-line; */
	white-space: pre;
}

.output-console-title-bar {
	background-image: linear-gradient(#677867, #000000);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	color: white;
	font-family: monospace;
	padding: 6px;
	text-align: left;
}

/* .blinking-cursor {
	background-color: white;
	animation: 1.2s blink step-end infinite;
}

@keyframes blink {
	from, to {
		background-color: transparent;
	}
	50% {
		background-color: white;
	}
} */
.query {
	color: white;
	background: #270018 none repeat scroll 0 0;
	border: none;
	outline: none;
	width: 85%;
}

th, td {
	border: 1px solid gray;
	text-align: center;
	padding: 2px;
}

.table-css {
	background-color: rgba(242, 222, 222, 0.65);
	font-family: monospace;
	margin: auto auto 20px auto;
	text-align: center;
	table-layout: fixed;
	/* width: 60%; */
}

/* .rotate {
	animation-name:rotater; 
	animation-duration:100ms; 
	animation-iteration-count:3; 
	animation-timing-function: ease-out;
}

@keyframes rotater {
	0% { transform:rotate(0) scale(1) }
	50% { transform:rotate(360deg) scale(2) }
	100% { transform:rotate(720deg) scale(1) }
} */
		
</style>

<script type="text/javascript">
var db = openDatabase('mydb', '1.0', 'Test DB', 2 * 1024 * 1024);
var historyArr = [], historyCount = 0;
var flag = false;

$(document).ready(function() {
	//keyDownEvent();
	//getAllTables();
	
	$(".submitBtn").on("click", function() {
		var option = $("#myOptions").val();
		if (option == "create") {
			createTable(createTableInfo, function() {
				$("#" + createTableInfo.tableName).addClass("animated zoomInDown").one("animationend", function() {
					$(this).removeClass("animated zoomInDown");
				});
			});
		} else if (option == "insert") {
			insertRow(insertInfo, function() {
				$("#" + insertInfo.tableName + " tr:last()").addClass("animated slideInDown").one("animationend", function() {
					//$(this).removeClass("animated flipInX");
				});
			});
		}
	});
	
});


function keyDownEvent() {
	$(".query").off("keydown").focus();
	$(".query").on("keydown", function(e) {
		if (e.keyCode == 13) {
			//flag = true;
			//historyArr.push($(this).val());
			$(".query").attr("disabled", "disabled");
			$("#consoleBodyDiv").append("<br/>");	
			if ($(this).val().endsWith(";") && $(this).val().trim().length > 0) {
				query($(this).val());
				$("#consoleBodyDiv").append("<div style='display: inline;'><span>mysql></span> <input type='text' class='query'></div>");
			} else if ($(this).val().trim().length == 0 && $(this).prev().text() == "mysql>") {
				$("#consoleBodyDiv").append("<div style='display: inline;'><span>mysql></span> <input type='text' class='query'></div>");
			} else {
				$("#consoleBodyDiv").append("<div style='display: inline;'><span>&emsp; &emsp;&emsp;-></span> <input type='text' class='query'></div>");	
			}
			keyDownEvent();
		}
		/* if (flag && historyCount < historyArr.length - 1) {
			if (e.keyCode == 38) {
				historyCount++;
				$(".query:last()").val(historyArr[historyCount]);
			} else if (e.keyCode == 40) {
				historyCount--;
				$(".query:last()").val(historyArr[historyCount]);
			}
		} */
	});
}


var query = function(query) {
	db.transaction(function(tx) {
		tx.executeSql(query, [], function(tx, results) {
			var stringTokens = query.split(/[ \n\(\);]+/);
			var tableName;
			if (query.indexOf('create') != -1 && query.indexOf(' table ') != -1) {
				if (query.indexOf('if') != -1) {
					tableName = stringTokens[stringTokens.indexOf('exists') + 1];
				} else {
					tableName = stringTokens[2];
				}
				tx.executeSql("select sql from sqlite_master where name = '" + tableName + "';", [], function(tx, results) {
					console.log(results);
					initTable(results.rows[0].sql, tableName, function() {
						$("#animationDiv table:not(#" + tableName + ")").hide();
						$("#animationDiv #" + tableName).show().addClass("animated zoomIn").one("animationend", function() {
							$(this).removeClass("animated zoomIn");
						});
					});
					$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());
				});
			} else if (query.indexOf('insert') != -1 && query.indexOf(' into ') != -1) {
				$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());
				tableName = stringTokens[stringTokens.indexOf('into') + 1];
				var rowId = results.insertId;
				tx.executeSql("select * from '" + tableName + "' where rowid = '" + rowId + "';", [], function(tx, results) {
					insertRow1(results, tableName, rowId, function () {
						$("#" + tableName).show();
					});
				});
			} else if (query.indexOf('update') != -1) {
				tableName = stringTokens[1];
				getSelectionRows(tableName, function() {
					$("#" + tableName).show();
				});
				console.log(results);
				$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());
			} else if (query.indexOf('drop') != -1 && query.indexOf(' table ') != -1) {
				tableName = stringTokens[2];
				console.log(tableName);
				$("table").hide();
				$("#" + tableName).show();
				highlight($("#" + tableName), function() {
					$("#" + tableName).hide( "explode", {pieces: 4 }, 2000, function() {
						$("#" + tableName).remove();
					});
				});
				console.log(results);
				$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());
			} else if (query.indexOf('select') != -1) {
				tableName = stringTokens[stringTokens.length - 2];
				getSelectionRows(tableName, function() {
					$("#" + tableName).show();
				});
				console.log(results);
				$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());
			} else {
				console.log(results);
				$("<div style='color:green;'>Query ok, " + results.rowsAffected + " rows affected</div>").insertBefore($(".query:last()").parent());	
			}
			return true;
		}, function(tx, error) {
			console.log(error);
			$("<div style='color: red;'>Error " + error.message + "</div>").insertBefore($(".query:last()").parent());
			return false;
		});
	}); 
}

function initTable(query, tableName, callBackFunction) {
	query = query.substring(query.indexOf("(") + 1, query.lastIndexOf(")")).split(",");
	var tableText = "<table class='table-css' id='" + tableName + "'><thead><tr><th colspan='" + query.length + "'>'" + tableName + "'</th></tr><tr>"
	$.each(query, function(idx, value) {
		tableText = tableText + "<th>" + value + "</th>";	
	});
	tableText = tableText + "</tr></thead><tbody>";
	// dummy records
	for (var i = 0; i <= 2; i++) {
		tableText = tableText + "<tr class='empty-records'>";
		for (var j = 0; j < query.length; j++) {
			tableText = tableText + "<td>&nbsp;</td>";	
		}
		tableText = tableText + "</tr>";
	}
	tableText = tableText + "</tbody></table>";
	$("#animationDiv").append(tableText);
	//$("#animationDiv table").hide();
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
}

function insertRow1(results, tableName, rowId, callBackFunction) {
	$("#" + tableName + " .empty-records").remove();
	var tableText = "";
	$.each(results.rows, function(idx) {
		tableText = tableText + "<tr class='rowId" + rowId + "'>";
		$.each(results.rows.item(idx), function(key, val) {
			tableText = tableText + "<td>" + val + "</td>";
		});
		tableText = tableText + "</tr>";
	});
	$("#" + tableName).append(tableText);
	//$("#animationDiv table").hide();
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
}

function delay() {
	if ($("#animationDiv table").length > 0) {
		return 1000;
	}
	return 0;
}

function getAllTables() {
	db.transaction(function(tx) {
		var query = "select tbl_name, sql from sqlite_master where type='table';";
		tx.executeSql(query, [], function(tx, results) {
			$.each(results.rows, function (idx) {
				var tableName = results.rows[idx].tbl_name;
				if (tableName != "__WebKitDatabaseInfoTable__") {
					initTable(results.rows[idx].sql, tableName);
					getSelectionRows(tableName);
				}
			});
		});
	});
}

var existingTableDataMap = {};
function getSelectionRows(tableName, callBackFunction) {
	var tempExistingData = {};
	$("#" + tableName + " tbody").empty();
	db.transaction(function(tx) {
		var query = "select rowid, * from " + tableName + ";";
		tx.executeSql(query, [], function(tx, results) {
			$("#" + tableName + " .empty-records").remove();
			$.each(results.rows, function(idx) {
				existingTableDataMap[getKeyForRow(results.rows[idx])] = results.rows[idx].rowid;
				addToTable(results.rows[idx], tableName, callBackFunction);
			});
		});
	});
}

function getKeyForRow(row) {
	var keyString = "-";
	$.each(row, function(key, val) {
		if (key != 'rowid') {
			keyString = keyString + val + "-";
		}
	});
	
	//console.log(keyString);
	return keyString;
}

function addToTable(results, tableName, callBackFunction) {
	//$("#" + tableName + " .empty-records").remove();
	//$.each(results.rows, function(idx) {
		var tableText = "";
		var rowId = results.rowid;
		tableText = tableText + "<tr class='rowId" + rowId + "'>";
		$.each(results, function(key, val) {
			if (key != "rowid") {
				tableText = tableText + "<td>" + val + "</td>";
			}
		});
		tableText = tableText + "</tr>";
		$("#" + tableName).append(tableText);
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	//});
}

var highlight = function(highlightId, callBackFunction) {
	$(highlightId).effect("highlight", {color : "yellow"}, 1000, function() {
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

//SELECT tbl_name from sqlite_master WHERE type = "table"';//
//SELECT sql FROM sqlite_master WHERE tbl_name = 'student' AND type = 'table';//
</script>

<script type="text/javascript">
var keys = {
	"primary key" : "&emsp;[<i class='fa fa-key' title='primary key' style='color: red;'></i>]",
	"foreign key" : "&emsp;[<i class='fa fa-key' title='foreign key' style='color: green;'></i>]",
	"composite key" : "&emsp;[<i class='fa fa-key' title='composite key' style='color: blue;'></i>]"
}
</script>
<script type="text/javascript">
	var createTableInfo = {
		"databaseName" : "ct",
		"tableName" : "ct1",
		"fields" : {
			"id" : "int",
			"name" : "varchar(20)"
		},
		"keys" : {
			"id" : ["primary key"]
		}
	};
	
	var insertInfo = {
		"databaseName" : "ct",
		"tableName" : "ct1",
		"values" : ["1001", "Ganga"]
	}
	
	var updateInfo = {
		"databaseName" : "ct",
		"tableName" : "ct1"
	}
</script>

<script type="text/javascript">
	function insertRow(info, callBackFunction) {
		var tableText = "<tr>";
		$(".empty-records").remove();
		$.each(info.values, function(idx, val) {
			tableText = tableText + "<td>" + val + "</td>"
		});
		tableText = tableText + "</tr>";
		$("#" + info.tableName).append(tableText);
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}

	function createTable(info, callBackFunction) {
		var fieldsLength = Object.keys(createTableInfo.fields).length;
		var tableText = "<table class='table-css' id='" + info.tableName + "'>" 
				+ "<thead><tr><th colspan='" + fieldsLength + "'>" + info.tableName + "</th><tr><tr>";
				
		$.each(info.fields, function(key, val) {
			tableText = tableText + "<th>" + key + " (" + val + ")" + ((info.keys[key] !== undefined) ? getKeys(info.keys[key]) : "") + "</th>";
		});
		tableText = tableText + "</tr></thead><tbody>";
		// dummy records
		/* for (var i = 0; i <= 0; i++) {
			tableText = tableText + "<tr class='empty-records'>";
			for (var j = 0; j < fieldsLength; j++) {
				tableText = tableText + "<td>&nbsp;</td>";
			}
			tableText = tableText + "</tr>";
		} */
		tableText = tableText + "<tr class='empty-records'><td colspan='" + fieldsLength + "'>Empty Records</td></tr>"
		tableText = tableText + "</tbody></table>";
		$("#animationDiv").append(tableText);
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	}
	
	function getKeys(info) {
		var keysText = "";
		$.each(info, function(idx, val) {
			keysText = keysText + keys[val];
		});
		return keysText;
	}
</script>
</head>
<body>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading'>SQL Queries</h4>
	</div>

	<div class='col-xs-12 margin-top-40'>
		<div class='col-xs-offset-1 col-xs-4'>
			<div id="consoleId">
				<div class="output-console-title-bar">
					<span class="title"><i style="color: red;"
						class="fa fa-times-circle"></i><i class="fa fa-minus-circle"
						style="margin-left: 5px"></i><b style="margin-left: 6px;">codetantra@:~</b></span>
				</div>
				<div id="consoleBodyDiv" class="output-console-body"><div style='display: inline;'><span>mysql></span> <input type='text' class='query'></div>
					<span class="blinking-cursor">&nbsp;</span>
				</div>
			</div>
		</div>
		<div class='col-xs-offset-1 col-xs-6'>
			<div id='animationDiv'></div>
		</div>
	</div>
	<div class='col-xs-offset-5 col-xs-2'>
		<select id='myOptions'>
			<option value='create'>create</option>
			<option value='insert'>Insert</option>
		</select>
		<span class='btn btn-xs btn-warning submitBtn'>submit</span>
	</div>
	
	<div class='col-xs-12'></div>
	
	
	<!-- <div class='col-xs-offset-1 col-xs-4 browser'>
		<div class='' style="background-image: url('images/heading.png'); background-repeat: no-repeat; height: 30px; display:flex; padding-left: 25px; align-items: center;">
			<span>form-elements</span>
		</div>
		<div class='' style="background-image: url('images/address-bar.png'); background-repeat: no-repeat; height: 30px; display:flex; padding-left: 25px; align-items: center;">
			<span>form-elements</span>
		</div>
	</div> -->
</body>
</html>