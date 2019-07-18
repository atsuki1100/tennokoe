$(document).on('turbolinks:load', function () {
$(function() {
  $(document).on('click', '.nikoniko', function() {
    var num = 0
    $('.nikoniko__mark').text("ヽ(｀Д´)ﾉガード!!")
    $('.nikoniko__mark').css("color", "orange")
    $('.nikoniko__mark').css("-webkit-text-stroke", "3px white")
    // $('.nikoniko').css("background", "#55FFFF")
    $('.nikoniko').css("background", "repeating-linear-gradient(45deg, blue 0, yellow 10px, orange 10px, green 20px)")
    $('.nikoniko').css("position", "fixed")
    $('.nikoniko').css("width", "580px")
    $('.nikoniko').css("height", "580px")
    $('.nikoniko').css("border-radius", "1000px")
    $('.nikoniko').css("font-size", "700%")
    $('.nikoniko').css("z-index", "200")

    $('.answer-form').hide();
    $('.submit-btn').hide();
    $('.scroll-answer').hide();

    while(num < 100){
      $('.nikoniko')
        .animate({'top': '120px','left': '60px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '100px','left': '200px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '0px','left': '120px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '0px','left': '200px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '160px','left': '230px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '30px','left': '30px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '60px','left': '190px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '130px','left': '140px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '160px','left': '100px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '160px','left': '20px'},{'duration': 500,});
      $('.nikoniko')
        .animate({'top': '230px','left': '300px'},{'duration': 200,});
      $('.nikoniko')
        .animate({'top': '130px','left': '140px'},{'duration': 400,});
      $('.nikoniko')
        .animate({'top': '260px','left': '220px'},{'duration': 500,});
      $('.nikoniko')
        .animate({'top': '130px','left': '30px'},{'duration': 2000,});
      $('.nikoniko')
        .animate({'top': '60px','left': '200px'},{'duration': 500,});
      $('.nikoniko')
        .animate({'top': '60px','left': '120px'},{'duration': 1000,});
      $('.nikoniko')
        .animate({'top': '120px','left': '120px'},{'duration': 500,});
      $('.nikoniko')
        .animate({'top': '60px','left': '120px'},{'duration': 1000,});
      $('.nikoniko')
        .animate({'top': '130px','left': '30px'},{'duration': 1000,});
      $('.nikoniko')
        .animate({'top': '230px','left': '30px'},{'duration': 1500,});
      num++
    }
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

$(function() {
  $('#all-btn').on('click', function(e) {
    e.preventDefault();
    $('.question-rank').hide();
    $('.question-rank#all').show();
    $('.ranking_btn').css("background-color", "white")
    $('#all-btn').css("background-color", "orange")
  })
});

$(function() {
  $('#day-btn').on('click', function(e) {
    e.preventDefault();
    $('.question-rank').hide();
    $('.question-rank#day').show();
    $('.ranking_btn').css("background-color", "white")
    $('#day-btn').css("background-color", "orange")
  })
});

$(function() {
  $('#week-btn').on('click', function(e) {
    e.preventDefault();
    $('.question-rank').hide();
    $('.question-rank#week').show();
    $('.ranking_btn').css("background-color", "white")
    $('#week-btn').css("background-color", "orange")
  })
});

$(function() {
  $('#month-btn').on('click', function(e) {
    e.preventDefault();
    $('.question-rank').hide();
    $('.question-rank#month').show();
    $('.ranking_btn').css("background-color", "white")
    $('#month-btn').css("background-color", "orange")
  })
});
});
