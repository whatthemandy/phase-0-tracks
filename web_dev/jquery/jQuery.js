$(document).ready(function(){

  //click button to make paragraph disappear/reappear slowly
  $("#toggle").click(function(){
    $("#gibberish").toggle(2000);
  });

  // click button to animate the image (push to the center/right and back)
  $("#guess").click(function(){
    var img = $("img");
    img.animate({left:"500px"}, "slow");
    img.animate({left:"1000px", opacity: '0.2'}, "slow");
    img.animate({left:"500px", opacity: '1'}, "slow");
    img.animate({left:"0px"}, "slow");
  });

  // double-click the word "me" to get a pop-up
  // remove paragraph after event
  $("em").dblclick(function(){
    alert("You will become very rich!");
    $("#remove").remove();
  });

 // GET text content a la Rihanna
 $("#name").click(function(){
   alert("Name: " + $("#test").val());
 });

 // get link (img source attribute) when image is double-clicked
 $("img").dblclick(function(){
    alert($("img").attr("src"));
 });

 // SET content on clicks - text and html
 $("#1").click(function(){
    $("#1").text("I have no idea!");
 });
 $("#2").click(function(){
    $("#2").html("<b>Because?</b>");
 });


});
