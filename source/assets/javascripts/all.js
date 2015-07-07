//= require turbolinks
//= require_tree .

wow = new WOW({
  boxClass: 'revealAnimated',
  animateClass: 'animated',
  offset: 160,
  mobile: false,
  live: true
});
// mobile false does not work

wow.init();

