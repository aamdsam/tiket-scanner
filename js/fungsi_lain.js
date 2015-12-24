
function get_select_kec_value(a,b){
	$.loader({ className:"blue-with-image",  content:''  });
	$.ajax({
	    type:"GET",
	    url: "../form/proses.php",
	    data: "aksi=get_select_kec_value&kd_kab=" + a,
	    success: function(data){
	        $("#"+b).html(data);
	        $.loader('close');
	    }
	});
}

function get_select_kel_value(a,b){
	$.loader({ className:"blue-with-image",  content:''  });
	$.ajax({
	    type:"GET",
	    url: "../form/proses.php",
	    data: "aksi=get_select_kel_value&kd_kec=" + a,
	    success: function(data){
	        $("#"+b).html(data);
	        $.loader('close');
	    }
	});
}

function title_bg(a){
	//alert (a);
	$("#title_bg").html(a);
}

