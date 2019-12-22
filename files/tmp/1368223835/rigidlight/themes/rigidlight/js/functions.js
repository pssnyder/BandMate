
$(document).ready(function() {
						   
	//this gives class to a 4 column row in C5
	$(".ccm-layout-row").each(function(){
		
		var numOfCols = $(this).find(".ccm-layout-col").length
		if ( numOfCols == 4 ){
			$(this).addClass("fourColRow");	
		}
		
	});						   
						   
	//Add a Last Item class to a few things
	$("nav ul li:last-child").addClass("lastItem");
			
	//cool little animation on sub li hover
	$("header nav>ul>li>ul>li>a").hover(
		function(){
			$(this).animate({ left: "5px" }, 200 );
		},
		function(){
			$(this).animate({ left: "0px" }, 200 );
		}
	);
	
	//give order to ctas
	var ctaOrder = 1
	$("#ctaShell .cta").each(function(){
		$(this).addClass("cta" + ctaOrder);
		ctaOrder++
	});
	
	//add spacers to footer nav
	$("footer nav ul li:not(:first-child)").before("<li>&nbsp;| </li>");

});