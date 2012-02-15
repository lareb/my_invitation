// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function toggleSignup(){
    if($("#why-invitees").is(':visible')){
        $("#why-invitees").slideToggle("100", function(){
            $("#sign-up").slideToggle("100");
        });
    }else{
        $("#sign-up").slideToggle("100", function(){
            $("#why-invitees").slideToggle("100");
        });
    }
}