/**
 * 
 */

var app = angular.module("myApp", [ "ngRoute" ]);
app.config(function($routeProvider) {
	$routeProvider.when("/", {
		templateUrl : "home.html",
		/*controller : "homeController"*/
	}).when("/contactus", {
		templateUrl : "contact-us.html"
	}).when("/order", {
		templateUrl : "order.html",
		controller : "orderController"
	}).when("/blue", {
		templateUrl : "blue.html"
	});
});

app.controller("homeController", function($scope) {
	$scope.width = "460";
	$scope.height = "345";
	$scope.images = [ {
		"image_location" : "/images/img_chania.jpg",
		"alter" : "chania",
		"data_slide" : 0
	}, {
		"image_location" : "/images/img_chania.jpg",
		"alter" : "chania",
		"data_slide" : 1
	}, {
		"image_location" : "/images/img_chania.jpg",
		"alter" : "chania",
		"data_slide" : 2
	} ];
});

app.controller("orderController", function($scope) {
	$scope.date = new Date();
});
