var commentDiv = $('#comment-div');
var textBox = $('#comment-input');
var submitButton = $('#submit-comment');

submitButton.on('click', createComment);


function createComment () {
	var photoID = window.location.pathname.match(/\/\d+$/)[0].replace("/","");
	var commentText = $('#comment-input').val();
	$.ajax({
    url: '/comments',
    method: 'post',
    dataType: 'json',
    data: {
    	photo_id: photoID,
      content: commentText,    
    }
  }).done(function(data) {
  	var userAvatarSource = data[0];
  	var currentComment = data[1];
  	var currentCommentContent = currentComment.content;
  	var newComment = $("<p><img class='thumbnail' src=" + userAvatarSource + "'>" + currentCommentContent + "</p>");
  	$('#comment-input').val("");
  	$('#comment-div').append(newComment);
  });
}
