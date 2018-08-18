<table class="table table-bordered">
	<tr>
		<td>From Date <input type="date" id="from" class="form-control" onchange="search()"></td>
		<td>To Date <input type="date" id="to" class="form-control" onchange="search()"></td>
	</tr>
</table>
<div id="show"></div>
<script type="text/javascript">
	function search(){
		var from=$('#from').val();
	    var to=$('#to').val();
	    $.ajax({
	        url:root_path+"module/fee_dtl/search_date.php",
	        data:"from="+from+"&to="+to,
	        type:"post",
	        success:function(e){
	            $('#show').html(e);
	        },error:function(e){
	            alert(e);
	        }
	    });
	}
</script>