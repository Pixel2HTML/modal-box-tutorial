(function() {
  (function($) {
    var close, header, modal, trigger;
    header = $('header');
    modal = $('.modal-box');
    trigger = $('header .modal-trigger');
    close = $('.modal-box .close');
    trigger.on('click', function() {
      header.addClass('is-blurred');
      return modal.addClass('is-active');
    });
    return close.on('click', function() {
      header.removeClass('is-blurred');
      return modal.removeClass('is-active');
    });
  })(jQuery);

}).call(this);

(function() {
  console.log('La vida es más que bella, es hermosa');

}).call(this);

//# sourceMappingURL=app.js.map
