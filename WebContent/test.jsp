<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-latest.js"></script>
</head>
<body>

	<button onclick="test()">Testing</button>
	<!-- <script type="text/javascript">
		var db = openDatabase('mydb', '1.0', 'Test DB', 2 * 1024 * 1024);
		function test() {
			db.transaction(function(tx) {
				tx.executeSql('create table if not exists student3 (id int primary key, name varchar(20))', [], function(tx, results) {
					console.log("successfully  created");
					console.log(results);
					console.log(tx);
				}, function(tx, error) {
					console.log("error");
					console.log(error);
				});
				
				
				/*
				tx.executeSql('delete from student1 where id = 3;', [], function(tx, results) {
					console.log("successfully  deleted");
					console.log(results)
				}, function(tx, error) {
					console.log("error");
					console.log(error);
				});
				*/
				
				
				tx.executeSql('insert into student3 values (?, ?)', [4, "Ganga1"], function(tx, results) {
					console.log("successfully  inserted");
					console.log(results)
					console.log(tx);
				}, function(tx, error) {
					console.log("error inserting");
					console.log(error);
					console.log(tx);
				});
				tx.executeSql('insert into student3 values (?, ?)', [2, "Yamuna"], function(tx, results) {
					console.log("successfully  inserted");
					console.log(results)
				}, function(tx, error) {
					console.log("error inserting");
					console.log(error);
				});;
				tx.executeSql('insert into student3 values (?, ?)', [2, "Yamuna"], function(tx, results) {
					console.log("successfully  inserted");
					console.log(results)
				}, function(tx, error) {
					console.log("error inserting");
					console.log(error);
				});
				tx.executeSql('insert into student3 values (?, ?)', [3, "Godavari"], function(tx, results) {
					console.log("successfully  inserted");
					console.log(results)
				}, function(tx, error) {
					console.log("error inserting");
					console.log(error);
				});
				
				tx.executeSql('update student3 set name = "Manikanta" where id = 3', [], function(tx, results) {
					console.log(results);
					console.log(tx);
				}, null);
				
				tx.executeSql('select * from student3', [], function(tx, results) {
					console.log(results);
					console.log(tx);
				}, function(tx, error) {
					console.log("error");
					console.log(error);
					console.log(tx);
				});
				
				/* tx.executeSql('show tables;', [], function(tx, results) {
					console.log(results);
				}, null); */
			});
		}
		
		function showTables(tx) {
			
		}
	</script> -->


	<!-- <script type="text/javascript">
		function readTextFile() {
			var file = "abc.txt";
			var rawFile = new XMLHttpRequest();
			rawFile.open("GET", file, true);
			rawFile.onreadystatechange = function() {
				if (rawFile.readyState === 4) {
					if (rawFile.status === 200 || rawFile.status == 0) {
						console.log(rawFile);
						rawFile.send("bye");
						/* var allText = rawFile.responseText;
						alert(allText); */
					}
				}
			}
			rawFile.send(null);
		}
	</script> -->
	<script type="text/javascript">
		var senttext;
		function getData() {
			if (window.XMLHttpRequest) {
				req = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			req.open('GET', "abc.txt");

			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					if (req.status == 200) {
						senttext = '<table style="border:thin black solid"><tr><td><h2>Recent</h2></td><td><h2>Recalls</h2></td><td></td><td></td></tr>';
						var ad2 = req.responseText.split("\n");
						for (i = 0; i < ad2.length - 1; i++) {
							// now split by comma
							var ad3 = ad2[i].split(",");
							senttext += '<tr><td><p>'
									+ ad3[0]
									+ '</p></td><td> <a href="http://www.site6.certcoordering1.com/Download/'+ad3[2]+' rel="nofollow" target="_blank">'
									+ ad3[1] + '</a></td><td></td></tr>'

						}
						senttext += '</table>';
						// I need to return senttext, not alert! When I send it it becomes undefined?
					} else {
						alert('File did not load correctly.');
					}
				}
			}

			req.send("hai");
		}
	</script>

	<p>To sign up for the Excel workshop please fill out the form
		below:</p>
	<button onclick="getData()">test</button>
</body>
</html>