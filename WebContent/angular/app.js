/**
 * 
 */

var app = angular.module("myApp", [ "ngRoute"]);
app.config(["$routeProvider", "$locationProvider" ,function($routeProvider, $locationProvider) {
	/*$locationProvider.html5Mode(true);*/
	$routeProvider.when("/", {
		templateUrl : "courses.html"
	}).when("/jquery", {
		templateUrl : "topics.html",
		sub : jquery
	}).when("/js", {
		templateUrl : "topics.html",
		sub : js
	}).when("/html", {
		templateUrl : "topics.html",
		sub : html
	});
}]);

/*
 * app.controller("mainController", function($scope, $route) {
 * $scope.subController = $route.current.subController; });
 * 
 * 
 * 
 * app.controller("jqueryController", function($scope, $route) { $scope.name =
 * "jquery"; })
 */

app.controller('mainController', function($scope, $route) {
	$scope.expr = $route.current.sub;
});

function jquery($scope) {
	$scope.courses = [ "jquery1", "jquery2", "jquery3" ];
	$scope.desc = "about jquery";
}

function js($scope) {
	$scope.courses = [ "js1", "js2", "js3", "js4", "js5", "js6" ];
	$scope.desc = "about javascript";
}

function html($scope) {
	$scope.courses = [ "html1", "html2", "html3" ];
	$scope.desc = "about html";
}