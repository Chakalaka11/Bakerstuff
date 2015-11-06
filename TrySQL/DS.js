
$("#Div1").hide();
$(document).click(function (event) {
    $("#Comment").stop();
    if (document.getSelection() != "") {
        if ($("#Comment").is(":visible")) {
            $("#Comment").animate({ left: event.clientX, top: event.clientY }, 1000);
        } else {
            $("#Comment").animate({ left: event.clientX, top: event.clientY },0.5);
            $("#Comment").show(1000);

        }
       
    } else {
        $("#Comment").hide(100);
        $("#Div1").hide();
    }
    


});
function Click()
{
  //  alert("awdw");
    $("#Div1").show();
}
 
