(function(){!function(e){var o,r,n,a,c,i,l;return a=e("header"),c=e(".modal-box"),l=e("header .modal-trigger"),o=e(".modal-box .close"),n=e(document),i=e(".modal-box .background-overlay"),l.on("click",function(){return a.addClass("is-blurred"),c.addClass("is-active")}),r=function(){return a.removeClass("is-blurred"),c.removeClass("is-active")},o.on("click",r),i.on("click",r),n.keyup(function(e){if(27===e.keyCode)return r()})}(jQuery)}).call(this);