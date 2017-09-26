/**
 * 
 */

(function(root, factory) {
	if (typeof define == "function" && define.amd) {
		define([ "jquery" ], factory);
	} else if (typeof exports == "object") {
		factory(require([ "jquery" ]));
	} else {
		factory(root.jQuery);
	}
})(this, function(jquery) {
	
});