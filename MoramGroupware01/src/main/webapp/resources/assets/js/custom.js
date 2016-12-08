


/*=============================================================
    Authour URI: www.binarytheme.com
    License: Commons Attribution 3.0

    http://creativecommons.org/licenses/by/3.0/

    100% To use For Personal And Commercial Use.
    IN EXCHANGE JUST GIVE US CREDITS AND TELL YOUR FRIENDS ABOUT US
   
    ========================================================  */


(function ($) {
    "use strict";
    var mainApp = {

        main_fun: function () {
            /*====================================
            METIS MENU 
            ======================================*/
            $('#main-menu').metisMenu();

            /*====================================
              LOAD APPROPRIATE MENU BAR
           ======================================*/
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                	var wrapperleft=$('#page-wrapper').css("margin-left");
                	var navPM = $('#navPM').css("margin-left");
                	var idclass=$('div.sidebar-collapse').attr('class');
                	
                    $('div.sidebar-collapse').addClass('collapse')
                    if(wrapperleft!=null){
                    	if(wrapperleft==='260px'){
                    		$('#page-wrapper').css('margin-left', '0px');
                    		if(navPM==='0px'){
                    			$('#page-wrapper').css('margin-left', '260px');
                    			if(idclass==='sidebar-collapse collapse'){
                    				$('#page-wrapper').css('margin-left', '0px');
                    			}
                    		}
                    	}
                    }
                } else {
                	var wrapperleft=$('#page-wrapper').css("margin-left");
                	var navPM = $('#navPM').css("margin-left");
                	
                    $('div.sidebar-collapse').removeClass('collapse');
                    if(wrapperleft!=null){
                    	if(wrapperleft==='0px'){
                    		$('#page-wrapper').css('margin-left', '260px');
                    		if(navPM==='-260px'){
                    			$('#page-wrapper').css('margin-left', '0px');
                    		}
                    	}
                    }
                }
            });

          
     
        },

        initialization: function () {
            mainApp.main_fun();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.main_fun();
    });

}(jQuery));
