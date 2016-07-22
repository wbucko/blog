$(document).ready(function($element){
  var speed = 500;
  var autoswitch = false;
  var autoswitch_speed = 4000;
  var $sliderElement = $element.find('.slider-element');
  var $next = $element.find('.next');
  var $prev = $element.find('.prev');


  $($sliderElement).first().addClass('active');
  $($sliderElement).hide();
  $('.active').show();

  $($next).click(nextSlide);
  $($prev).click(prevSlide);

  if (autoswitch == true) {
    setInterval(nextSlide, autoswitch_speed);
  };

  function nextSlide() {
    $('.active').removeClass('active').addClass('oldActive');
    if ($('.oldActive').is(':last-child')){
      $($sliderElement).first().addClass('active');
    } else {
      $('.oldActive').next().addClass('active');
    }
    $('.oldActive').removeClass('oldActive');
    $($sliderElement).fadeOut(speed);
    $('.active').fadeIn(speed);
  };

  function prevSlide() {
    $('.active').removeClass('active').addClass('oldActive');
    if ($('.oldActive').is(':first-child')){
      $($sliderElement).last().addClass('active');
    } else {
      $('.oldActive').prev().addClass('active');
    }
    $('.oldActive').removeClass('oldActive');
    $($sliderElement).fadeOut(speed);
    $('.active').fadeIn(speed);
  };
});
