(function() {
  (function($) {
    var close, closing, everything, header, modal, overlay, trigger;
    header = $('header');
    modal = $('.modal-box');
    trigger = $('header .modal-trigger');
    close = $('.modal-box .close');
    everything = $(document);
    overlay = $('.modal-box .background-overlay');
    trigger.on('click', function() {
      header.addClass('is-blurred');
      return modal.addClass('is-active');
    });
    closing = function() {
      header.removeClass('is-blurred');
      return modal.removeClass('is-active');
    };
    close.on('click', closing);
    overlay.on('click', closing);
    return everything.keyup(function(e) {
      if (e.keyCode === 27) {
        return closing();
      }
    });
  })(jQuery);

}).call(this);

//# sourceMappingURL=app.js.map
