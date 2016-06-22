( ($) ->
  header = $('header')
  modal = $('.modal-box')
  trigger = $('header .modal-trigger')
  close = $('.modal-box .close')
  everything = $(document)

  trigger.on 'click', ->
    header.addClass 'is-blurred'
    modal.addClass 'is-active'

  closing = ->
    header.removeClass 'is-blurred'
    modal.removeClass 'is-active'

  close.on 'click', closing

  everything.keyup (e) ->
    if e.keyCode is 27
      closing()

)(jQuery)
