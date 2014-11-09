// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require turbolinks
//= require_tree .

$(document).ready(function(){
$( "#category_switch" ).hide( "slow", function() {
    
  });
/*
	var btnCategory = document.createElement("BUTTON");
	btnCategory.className = "btn btn-default btn-lg";
	btnCategory.style.position = "relative";
	btnCategory.style.right = "700px";
	btnCategory.style.zIndex = "3";

	var spanCategoryIcon = document.createElement("SPAN");
	spanCategoryIcon.className = "glyphicon glyphicon-list";

	var ul = document.createElement("UL");
	ul.className = "dropdown-menu"
	ul.role = "menu";
	ul.ariaLabelledby = "dropdownmenu3";


	var cat1 = document.createElement("LI");
	cat1.role = "presentation";

	var catALink1  = document.createElement("A");
	catALink1.role = "menuitem";
	catALink1.innerText = "A";

	cat1.appendChild(catALink1);

//
	var cat2 = document.createElement("LI");
	cat2.role = "presentation";

	var catALink2  = document.createElement("A");
	catALink2.role = "menuitem";
	catALink2.innerText = "A";

	cat2.appendChild(catALink2);
//
	var cat3 = document.createElement("LI");
	cat3.role = "presentation";

	var catALink3  = document.createElement("A");
	catALink3.role = "menuitem";
	catALink3.innerText = "A";

	cat3.appendChild(catALink3);
//
	var cat4 = document.createElement("LI");
	cat4.role = "presentation";

	var catALink4  = document.createElement("A");
	catALink4.role = "menuitem";
	catALink4.innerText = "A";

	cat4.appendChild(catALink4);
//
	var cat5 = document.createElement("LI");
	cat5.role = "presentation";

	var catALink5  = document.createElement("A");
	catALink5.role = "menuitem";
	catALink5.innerText = "A";

	cat5.appendChild(catALink5);
//
	var cat6 = document.createElement("LI");
	cat6.role = "presentation";

	var catALink6  = document.createElement("A");
	catALink6.role = "menuitem";
	catALink6.innerText = "A";

	cat6.appendChild(catALink6);

	ul.appendChild(cat1);
	ul.appendChild(cat2);
	ul.appendChild(cat3);
	ul.appendChild(cat4);
	ul.appendChild(cat5);
	ul.appendChild(cat6);
*/
var boolBtnCat = 0;
$(document).on('click','#btnCategory', function() {
	
	if(boolBtnCat == 0) {
	$( "#category_switch" ).show( "slow", function() {
    
  	});
  	boolBtnCat = 1;
	} else {
	$( "#category_switch" ).hide( "slow", function() {
    
  	});
  	boolBtnCat = 0;
	}



});

var boolCatInfo = 0;
$(document).on('click','#listCatInfo', function() {
	
	if(boolCatInfo == 0) {
  			boolCatInfo = 1;
	} else {
  			boolCatInfo = 0;
	}
});


})
