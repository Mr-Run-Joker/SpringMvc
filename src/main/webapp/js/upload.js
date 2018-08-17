
$(function () {
	$("#upload").click(function(){
		var formData=new FormData($("#uploadForm")[0]);
		$.ajax({
			type : "post",
			url : "/LibraryWeb/foregroundPageAjax/uploadAjax",
			data : formData,
			cache : false,
			   //必填
	        processData: false,
	       //必填
	        contentType: false,
			dataType : "json",
			success : function(dta) {
				alert(dta);
				
			},
			error : function(dta) {
				alert("保存失败...");
			}
		});
	});
});