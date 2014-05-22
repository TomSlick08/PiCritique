// var settingInput = $('#rating_setting').val();
// var hotnessInput = $('#rating_hotness').val();
// var originalityInput = $('#rating_originality').val();
// var styleInput = $('#rating_style').val();
// var attitudeInput = $('#rating_attitude').val();

// function displayRatings() {
// 	$.ajax({
// 		url: '/ratings',
// 		method: 'get',
// 		dataType: 'json',
// 		data: {
// 			setting: settingInput,
// 			hotness: hotnessInput
// 			originality: originalityInput,
// 			style: styleInput,
// 			attitude: attitudeInput
// 		}
// 	}).done(function(data) {
// 		var settingResponse = data['setting'];
// 		var hotnessResponse = data['hotness'];
// 		var originalityResponse = data['originality'];
// 		var styleResponse = data['style'];
// 		var attitudeResponse = data['attitude'];
// 		var contentBox = $('#ratings-content');
// 		var ratingDisplay = ("<h2>Last Rating:</h2></br><p> settingInput </br> + hotnessInput  </br> + originalityInput </br> + styleInput </br> + attitudeInput</p>");
// 		$('#ratings-content').prependd(ratingDisplay);
// 		settingInput = "";
// 		hotnessInput = "";
// 		originalityInput = "";
// 		styleInput = "";
// 		attitudeInput = "";
// 	});			
// }