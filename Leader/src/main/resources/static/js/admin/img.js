/**
 * 
 */
$(".card-body").on("click", function() {
	sreenShot($(".card-body"));
});
function sreenShot(target) {
	if (target != null && target.length > 0) {
		var t = target[0];
		html2canvas(t).then(function(canvas) {
			var myImg = canvas.toDataURL("image/png");
			myImg = myImg.replace("data:image/png;base64,", "");

			$.ajax({
				type : "POST",
				data : {
					"imgSrc" : myImg
				},
				dataType : "text",
				url : contextPath + "/public/ImgSaveTest.do",
				success : function(data) {
					console.log(data);
				},
				error : function(a, b, c) {
					alert("error");
				}
			});
		});
	}
}