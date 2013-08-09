jQuery ($) ->

  ###
  splashimage = $('[data-splashimage]').each (index, element) =>
    name = $(element).data('splashimage')
    $(element).css({'background': "url("+name+")"})
    console.log name
  ###