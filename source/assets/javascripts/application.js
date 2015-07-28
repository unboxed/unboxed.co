//= require turbolinks

Turbolinks.enableTransitionCache();

animationsWhenVisible = new WOW({
  boxClass: 'revealAnimated',
  animateClass: 'animated',
  offset: 210,
  mobile: false,
  live: true
});

document.addEventListener('page:change', function() {
  animationsWhenVisible.init();
});
