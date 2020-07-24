var AjaxSubmitForm= {
	submit: function(){
	
	//get data from user's form
	var name= document.getElementById("nombre name").value;//hoặc lấy bằng jQuery thay vì dùng html dom
	var email= document.getElementById("nombre email").value;
	var messenge= document.getElementById("messenge").value;
	
	//conver data to Json
	var data= {
			"name": name,
			"email": email,
			"messenge": messenge
		};
		
	//send java by ajax
	$.ajax({
        	type: "POST",//method post get put or delete...?
       		url: "/contact_no_springform",//url action
        	data: JSON.stringify(data),//convert data json to string
        	contentType: "application/json",//set contentype is application/json
        	dataType: "json",
        	success: function() {//run when success
           		//process data
				alert("thành công!")
        	},
        	error: function() {//if error then?
           		//process error msg
        	},
	});
	
	widow.alert("Đã gửi thông tin!")
	
	}
}