// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
	$('.new_comment').on("submit", function(e) {
		$('.new_comment').attr('disabled', 'disabled');
		url = this.action

		data = {
			'authenticity_token': $("input[name='authenticity_token']").val(),
			'comment': {
				'body': $('#comment_body').val()
			}
		};

		$.ajax({
			type: "POST",
			url: url,
			data: data,
			success: function(response) {
				const $ul = $(".comment_list")
				$ul.prepend(response);
				$("#comment_body").val("");
				$('.new_comment').removeAttr('disabled');
			}
		});

		e.preventDefault();
		return false;
	})
});