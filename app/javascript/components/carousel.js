$(document).ready(function() {

    var multiItemCarousel4 = document.querySelector(".multi-item-carousel-4");


    $('.multi-item-carousel-4').carousel({

      interval: 3000
    });
    // for every slide in carousel, copy the next slide's item in the slide.
    // Do the same for the next, next item.

    $('.multi-item-carousel-4 .item').each(function(){
      var next = $(this).next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      next.children(':first-child').clone().appendTo($(this));

      if (next.next().length>0) {
        next.next().children(':first-child').clone().appendTo($(this));
      }
      else {
        $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
      }
      if (next.next().next().length>0) {
        next.next().next().children(':first-child').clone().appendTo($(this));
      }else {
        $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
      }
    });

      // carousel a 3 photos

    var multiItemCarousel = document.querySelector(".multi-item-carousel");

    $('.multi-item-carousel').carousel({

      interval: 3000
    });
    // for every slide in carousel, copy the next slide's item in the slide.
    // Do the same for the next, next item.

    $('.multi-item-carousel .item').each(function(){
      var next = $(this).next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      next.children(':first-child').clone().appendTo($(this));

      if (next.next().length>0) {
        next.next().children(':first-child').clone().appendTo($(this));
      }

      // if (next.next().next().length > 0) {
      //   next.next().next().children(':first-child').clone().appendTo($(this));
      // }
      else {
        $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
      }
    });
});
