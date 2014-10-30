$(document).ready(function(){
    
    $('#navi').click(function(){
        $(this).animate({ "left": "-=50px" });
            panelStatus = true;
            returnStatus(panelStatus);
    });
    
    $('#panel').click(function(){
        $(this).animate({ "left": "-=110px" });
        $('#navi').delay(100).animate({ "left": "+=50px" });
        $('#contentArea').animate({ "left": "-=110px" });
    });
    
    var returnStatus = function(panelStatus){
        if (panelStatus == true) {
            $('#panel').delay(100).animate({ "left": "+=110px" });
            $('#contentArea').delay(100).animate({ "left": "+=110px" });
        }
    }
    
});