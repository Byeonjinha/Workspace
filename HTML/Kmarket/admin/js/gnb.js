$(document).ready(function(){
    var gnb = $('#gnb > li > a');

    gnb.click(function(e){
        e.preventDefault();
        
        var isOpen = $(this).next().is(':visible');

        if(isOpen){
            // �꾩옱 �쒕툕硫붾돱瑜� �レ쓬
            $(this).next().slideUp(200);
        }else{
            // �꾩옱 �쒕툕硫붾돱瑜� �쇱묠
            $(this).next().slideDown(200);
        }
    });
});