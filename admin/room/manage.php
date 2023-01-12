<?php
require_once('../../config.php');
if (isset($_GET['id']) && $_GET['id'] > 0) {
	$qry = $conn->query("SELECT * from `rooms` where id = '{$_GET['id']}' ");
	if ($qry->num_rows > 0) {
		foreach ($qry->fetch_assoc() as $k => $v) {
			$$k = $v;
		}
	}
}
?>
<style>
	img#cimg {
		height: 15vh;
		width: 15vh;
		object-fit: scale-down;
		object-position: center center;
	}
</style>
<!-- id 	room_co 	stock 	count 	from_to 	user_name -->

<div class="container-fluid">
	<form action="" id="supplier-form">
		<input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
		<div class="form-group">
			<label for="room_co" class="control-label text-right">Room code</label>
			<input name="room_co" id="room_co" class="form-control rounded-0" value="<?php echo isset($room_co) ? $room_co : ''; ?>">
		</div>
		<div class="form-group">
			<label for="count" class="control-label text-right">count</label>
			<textarea name="count" id="count" cols="30" rows="2" class="form-control form no-resize"><?php echo isset($count) ? $count : ''; ?></textarea>
		</div>


		<input type="hidden" name="from_to" id="from_to" value="2021-2022">


		<input type="hidden" name="user_name" id="user_name" value="<?php echo ucwords('' . $_settings->userdata('lastname')) ?>">
		<input type="hidden" name="stock" id="stock" value="nu">


	</form>
</div>
<script>
	$(document).ready(function() {
		$('#supplier-form').submit(function(e) {
			e.preventDefault();
			var _this = $(this)
			$('.err-msg').remove();
			start_loader();
			$.ajax({
				url: _base_url_ + "classes/Maste.php?f=save_rooms",
				data: new FormData($(this)[0]),
				cache: false,
				contentType: false,
				processData: false,
				method: 'POST',
				type: 'POST',
				dataType: 'json',
				error: err => {
					console.log(err)
					alert_toast("An error occured", 'error');
					end_loader();
				},
				success: function(resp) {
					if (typeof resp == 'object' && resp.status == 'success') {
						location.reload();
					} else if (resp.status == 'failed' && !!resp.msg) {
						var el = $('<div>')
						el.addClass("alert alert-danger err-msg").text(resp.msg)
						_this.prepend(el)
						el.show('slow')
						end_loader()
					} else {
						alert_toast("An error occured", 'error');
						end_loader();
						console.log(resp)
					}
				}
			})
		})
	})
</script>