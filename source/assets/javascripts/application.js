//= require tiler
//= require waypoints.min

var waypointElement = document.querySelector('[data-header-waypoint]');

if (waypointElement !== null) {
  new Waypoint({
    element: waypointElement,
    handler: function(direction) {
      var siteHeader = document.querySelector('.site-header');
      if (direction === 'down') {
        siteHeader.classList.add('site-header--active-scroll');
      } else {
        siteHeader.classList.remove('site-header--active-scroll');
      }
    },
    offset: document.querySelector('[data-site-header]').offsetHeight
  });
}

if (/iPad|iPhone|iPod/.test(navigator.userAgent)) {
  document.documentElement.className += " ios-device";
}
