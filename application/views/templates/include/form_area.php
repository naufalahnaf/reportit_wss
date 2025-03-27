<script type="text/javascript">
	$(document).ready(function(){
		$('body').on("change", "#form_area", function() {
			var id = $(this).val();
			var data = "id="+id+"&data=waroeng";

			$.ajax({
				type: 'POST',
				url: "<?= base_url('pengaduan/getWaroengFile'); ?>",
				data: data,
				success: function(hasil) {
					$("#form_waroeng").html(hasil);
					$("#form_waroeng").show();
				}
			});
		});
	});
</script>