jQuery ($) ->
  
  $('.j-nav__box').click (ev) -> $('.j-section-nav').toggleClass 'reveal'

  $('.j-section-nav-close').click (ev) -> $('.j-section-nav').toggleClass 'reveal'