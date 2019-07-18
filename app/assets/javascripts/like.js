$(document).on('turbolinks:load', function() {
  $(function() {
    $('.scroll-answer').on('click', function(e) {
      e.preventDefault();
      $("html,body").animate({scrollTop:$('.comment-nal').offset().top});
    })
  });
});

