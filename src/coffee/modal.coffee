( ($) ->
  header = $('header')
  modal = $('.modal-box')
  trigger = $('header .modal-trigger')
  close = $('.modal-box .close')
  trigger.on 'click', ->
    header.addClass 'is-blurred'
    modal.addClass 'is-active'

  close.on 'click', ->
    header.removeClass 'is-blurred'
    modal.removeClass 'is-active'

)(jQuery)
