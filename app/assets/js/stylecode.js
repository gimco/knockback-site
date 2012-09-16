// From StackOverflow. Find all </code><pre><code>
// elements on the page and add the "prettyprint" style. If at least one
// prettyprint element was found, call the Google Prettify prettyPrint() API.
//http://sstatic.net/so/js/master.js?v=6523
$(function() {
  if (typeof disableStyleCode != "undefined") {
    return;
  }

  var a = false;

  $("pre").each(function() {
    if (!$(this).hasClass("prettyprint")) {
      $(this).addClass("prettyprint linenums");
      a = true
    }
  });

  if (a) {
    prettyPrint();
  }
});