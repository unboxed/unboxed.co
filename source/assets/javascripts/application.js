//= require turbolinks
//= require_tree .

Turbolinks.enableTransitionCache();

animationsWhenVisible = new WOW({
  boxClass: 'revealAnimated',
  animateClass: 'animated',
  offset: 160,
  mobile: false,
  live: true
});

document.addEventListener('page:change', function() {
  animationsWhenVisible.init();
});
