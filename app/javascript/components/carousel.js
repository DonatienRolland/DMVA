function organizeCarousel() {
    // Instantiate the Bootstrap carousel
    $('.multi-item-carousel').carousel({
      //interval: false
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
    else {
      $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
    }
  });

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

export { organizeCarousel };
