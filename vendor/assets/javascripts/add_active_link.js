
function setActiveLink(active_elements) {
  var path = window.location.pathname;
  path = path.replace(/\/$/, "");
  path = decodeURIComponent(path);

  active_elements.each(function() {
    var href = $(this).attr('href');
    if (path.substring(0, href.length) === href) {
        $(this).closest('a').addClass('active');
    }
  });
}
