// $(function() {
// 	$('.movies_link').on("click", function(e) {
// 		// debugger
// 		$.ajax({
// 			method: "GET",
// 			url: this.href
// 		}).success(function(response) {
// 			$('div.movie_info').html(response);
// 		});
// 	e.preventDefault();
// 	});
// })

//     // Fire some ajax.
//     // $.ajax({
//     //   method: "GET",
//     //   url: this.href
//     // }).success(function(response){
//     //   // Get the response (it's the variable data)
//     //   $("div.comments").html(response)
//     //   // We'd really want to load that data into the DOM (add it to the current page)
//     // }).error(function(notNeeded){
//     //   alert("we broke!!!!")
//     // });
// ------------------------
// Submit Comments via AJAX - Soon to be replaced by remote true
// $(function(){
//   $("#new_comment").on("submit", function(e){
//     // 1. we need the URL to submit the POST request too
//     // 2. we need the form data.
//
//     // Low level
//     $.ajax({
//       type: ($("input[name='_method']").val() || this.method),
//       url: this.action,
//       data: $(this).serialize();, // either JSON or querystring serializing
//       success: function(response){
//         $("#comment_content").val("");
//         var $ol = $("div.comments ol")
//         $ol.append(response);
//       }
//     });
//
//     // Send a POST request to the correct place that form would've gone too anyway
//     // along with the actual form data.
//     e.preventDefault();
//   })
// });