$(function() {
  $(document).on('click', '.nikoniko', function() {
    $('.nikoniko').animate({
      'top': '120px',
      'right': '820px'
    },{
      'duration': 500,
     });
  });
});

$(function() {
  function buildHTML(answer) {
    var html = `<div class="answers-show">
                  <div class="answer-user">
                    <p class="answer-que-myname">${answer.user_name}</p>
                  </div>
                  <div class="heaven-voice">
                    <p>${answer.body}</p>
                  </div>
                </div>`
  return html;
  }
    $('#new_answer').on('submit', function(e) {
      e.preventDefault();
      var answer = new FormData(this);
      var url = $(this).attr('action');
      $.ajax( {
        url: url,
        type: 'POST',
        data: answer,
        dataType: 'json',
        processData: false,
        contentType: false
      })
      .done(function(data) {
        var html = buildHTML(data);
        $('.answers').append(html)
        $('form')[0].reset();
      })
      .fail(function(data) {
        alert('エラーが発生しました。')
      })
      .always(function(data){
        $('.submit-btn').prop('disabled', false);
      })
    })
 })