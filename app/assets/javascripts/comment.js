$(function() {
  function buildHTML(comment) {
    var html = `<p>
                  <strong>
                    <a href="/users/${comment.user_id}">${comment.user_name}</a>
                    :
                  </strong>
                  ${comment.text}
                </p>`
    return html;
  }
  
  $('#comment').on("submit", function(e) {
    e.preventDefault();
    var formdata = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formdata,
      dataType: 'JSON',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.comments').append(html);
      $('#comment-form').val('');
      $('#btn_mouth').prop('disabled', false);
    })
    .fail(function() {
      alert("エラー");
    })
  });
});