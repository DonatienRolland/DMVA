$('.owl-carousel').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
    "<i class='fa fa-caret-left'></i>",
    "<i class='fa fa-caret-right'></i>"
  ],
  autoplay: true,
  autoplayHoverPause: true,
  responsive: {
    0: {
      items: 1
    },
    600: {
      items: 3
    },
    1000: {
      items: 5
    }
  }
})


function organizeCarousel() {
    // Instantiate the Bootstrap carousel
    var multiItemCarousel = document.querySelector(".multi-item-carousel");
    var simpleItemCarousel = document.querySelector(".owl-demo");

    if (multiItemCarousel) {

      $('.multi-item-carousel').carousel({

        //interval: false
      });
    // for every slide in carousel, copy the next slide's item in the slide.
    // Do the same for the next, next item.
      $('.multi-item-carousel .item').each(function(){
        var next = $(this).next();
        console.log(next)
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
      });
    }

    if (simpleItemCarousel) {
      $(".owl-demo").owlCarousel({
        autoPlay : 2000,
        stopOnHover : true,
        navigation:true,
        paginationSpeed : 1000,
        goToFirstSpeed : 1000,
        singleItem : true,
        autoHeight : true,
        transitionStyle:"fade"
      });
      $(".carousel").swipe({

          swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
              console.log('you in')
            if (direction == 'left') $(this).carousel('next');
            if (direction == 'right') $(this).carousel('prev');

          },
          allowPageScroll:"vertical"

        });
    }
}

export { organizeCarousel };
