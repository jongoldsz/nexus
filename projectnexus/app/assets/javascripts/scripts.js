$(document).ready(function(){
  homeContact();
});
function homeContact(){
  var _infoBounder = $("#contact-info-window-content");
  _infoBounder.click(function(){
    $(this).stop().animate({'left':"0"},'fast');
  });
}