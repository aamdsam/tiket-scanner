/*
** Upload File - JavaScript
** Author	:Anang Suryana
** E-mail	:nanxz2008@gmail.com
** url		:http://www.magzimp.com/about
** Powered	:jQuery
*/
$(function() {	
	var UPLOAD ={
		init : function (){
			$('#fupload').change(function(){
				$('#form-upload').submit();	
			});
			
			$('#form-upload').iframePostForm ({
         		post : function (){
					$('#uploading').modal();
        		},
				
        		complete : function (result){
					$.modal.close();
					$("#up-result").html(result);
				}
			});
		}
		
	};
	
	
	UPLOAD.init();	   
});