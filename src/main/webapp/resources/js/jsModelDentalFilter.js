$(document).ready(function(){
	$("input[name='field']").on("click",function(){
		if($('input[name="field"]').is(':checked')){
			 console.log("**^^^***&&&^^^*****");
		     $('input[type="checkbox"][name="field"]').prop('checked',false);
		     $(this).prop('checked',true);
	    }
		var field = $('input[name="field"]:checked').val();
        console.log(field);
	})
	$("input[name='sort'], input[name='style'], input[name='color'], input[name='field']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
        var styleArrVal = [];
        var style = $('input[name="style"]:checked').each(function(){
			//var styleVal = $(this).val();
			//console.log(styleVal);
			styleArrVal.push($(this).val());
		})
		console.log(styleArrVal);
		var colorArrVal = [];
		var color = $('input[name="color"]:checked').each(function(){
			//var colorVal = $(this).val();
			//console.log(colorVal);
			colorArrVal.push($(this).val());
		})
		console.log(colorArrVal);
		var field = $('input[name="field"]:checked').val();
   
		$.ajax({
			url:"goModelDental",
			method: "get",
			data: {sort:sort,
					styleArr:styleArrVal,
					colorArr:colorArrVal,
					field},
			dataType: "json"
		}).done((data)=>{
			var cnt=0;
			for(let item of data){
				cnt = cnt+1;
			}
			console.log(data);
			console.log(cnt);
			//result = '<div class="text-center mt-5 mb-5">';
			result = '<div class="ml-3 text-left model_dental_cnt">';
			result += '<p class="model_dental_cnt_p">전체 '+cnt+'</p>';
			result += '</div>';
			result += '<section>';
			result += '<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:996px; ">';
			for(let item of data){
				console.log(item);
				result += '<li class="m-3 pb-3 model_dental_content" style="list-style:none; padding-left:0px; width:300px;">';
				result += '<a href="${pageContext.request.contextPath}/model_dental/model_dental_detail?ino='+item.ino+'" class="model_dental_content_a">';
				result += '<img class="model_dental_content_img" src="/springframework-mini-project/model_dental/display?fileName='+item.imImgPath+'"/>';
				result += '<b class="model_dental_content_b">'+item.isummary+'</b>';
				result += '<small class="d-block model_dental_content_sm">mansik</small>';
				result += '</a></li>';
			}
			result += '</ul>';
			result += '</section> ';
			//result += '</div>';
			$("#dental_model_filter_content_wrap").html(result);
		});
		console.log("~~~~~~~~~~~~~~~~~~");
	});
});