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
    }
}

export { organizeCarousel };
