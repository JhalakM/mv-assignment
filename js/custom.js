$(document).ready(function(){
	
	//click on td to get its id
	$("#data-table td[class^='col']").click(function(){
		var dataId = $(this).attr("data-id");
		//ajax call to get count of votes
		$.ajax({
			type:"POST",
			url: "ajax.php", 
			dataType:"html",
			data: {"colorId" : dataId},
			success: function(result){
				$("#data-table .vote-"+dataId).html(result);
		}});
	});
	
	
	//click on total count to get sum of all votes
	$(".total-count").click(function(){
		var totalCount = 0;
		$("#data-table td[class^='vote']").each(function(){
			var value = $(this).text();
			if(!isNaN(value) && value.length != 0){
				totalCount += parseFloat(value);
			}
		});
		$(this).next("td").html(totalCount);
	});
});