$(document).ready(function(){
	jQuery(".best_in_place").best_in_place();
	$(".youtubeLink").YouTubePopup({ idAttribute: 'id', title: 'My New Title'});
	$('#gallery a').lightBox();

	$('#title').click(function(){
		var value = $(this).text();
		alert(value);
	});
// $('#add_topic').click(function(){
// 		alert($(this).val(data-value));
//  		$.ajax({
//  			url: "/users/add_post",
//  			method: 'POST',
//  			dataType: 'html',
// 			data: '',
// 			 success: function(data){
// 			 		//	alert(data);
// 					// $(data).appendTo('#result');
// 					 }
// 			});
// });
$('#about_id').click(function(){
	$('#report_div').hide();
	$('#portfolio_div').hide();
	$('#about_div').show();	
});
$('#portfolio_id').click(function(){
	$('#about_div').hide();
	$('#report_div').hide();
	$('#portfolio_div').show();
});
$('#report_id').click(function(){
	$('#about_div').hide();
	$('#portfolio_div').hide();
	$('#report_div').show();	
});
$('#photos_click').click(function(){
	$('#user_musics').hide();	
	$('#user_videos').hide();
	$('#user_events').hide();	
	$('#user_images').show();
	
});
$("#video_link").click(function(){
	$('#user_musics').hide();	
	$('#user_events').hide();
	$('#user_images').hide();
	$('#user_videos').show();
});
$("#music_click").click(function(){
	$('#user_events').hide();
	$('#user_images').hide();
	$('#user_videos').hide();
	$('#user_musics').show();	
});
$("#event_click").click(function(){
	$('#user_musics').hide();	
	$('#user_images').hide();
	$('#user_videos').hide();
	$('#user_events').show();
});
});
