/**
--------------------------------------------------
|           kodefuge.js                          |
--------------------------------------------------
**/

$(document).ready(function(){
	$('.headers' ).on('mouseenter', 'h2', function(){
       $(this).closest('.headers').find('p').slideDown('slow');
	});
	$('.headers' ).on('mouseleave', 'h2', function(){
       $(this).closest('.headers').find('p').hide('slow');
	});
    $('.title').on('mouseenter', 'h2', function() {
       $(this).closest('.container5').find('p').slideDown('slow');
    });
    $('.title').on('mouseleave', 'h2', function() {
       $(this).closest('.container5').find('p').hide('slow');
    });
    $('.title').on('mouseenter', 'h2', function() {
       $(this).closest('.container5').find('h4').slideDown('slow');
    });
    $('.title').on('mouseleave', 'h2', function() {
       $(this).closest('.container5').find('h4').hide('slow');
    });

    // $('.da-slider').hover(function() {
    //   $(this).find('.da-silde').stop(true, true).fadeOut();
    //   },                       function() {
    //   $(this).find('.da-slide').stop(true, true).fadeIn();
    // });
     // $('.container5').on('mouseenter', '.title', function(event) {
     // 	event.preventDefault();
     //    $(this).closest('.container5').find( 'p').slideDown('slow');
        // $(this).closest('.container5').find( 'p').hide('slow');
        // $(this).css('padding-top', '-45px');
     // });
    // $('.title').on('mouseenter', 'h2', function() {
    //    $(this).closest('.title').find( 'p').hide('slow');
    // });
	// $('.da-slider').on('mouseleave', 'div', function() {
 //       $(this).closest('.da-slider').find( 'div').start();
	// });
});