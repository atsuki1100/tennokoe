$(document).on('turbolinks:load', function() {
$(function() {
  $(".libtn").on('click', function (e) {
    e.preventDefault();
    console.log(this)
    $.ajax( {
      url: question_answer_likes_path(question.id, answer.id),
      type: 'POST',
      data: this,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      console.log('ok')
      debugger
    })
  });
});
});