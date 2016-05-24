$(function() {
	var postList = $('.post-li');
	postList.hide();
	postList.slice(0, 6).fadeIn("slow");
	var i = 7;
	$(window).scroll(function() {
		if(($(window).height() + $(window).scrollTop()) >=  $(document).height()) {
			var elem = postList[i];
			$(elem).fadeIn("slow");
			i++;
		}
	});
});