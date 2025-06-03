<script type="text/javascript">
	$(document).ready(function(){
		$('body').on("change", "#form_kategori", function() {
			var id = $(this).val();
			var data = "id="+id+"&data=subkategori";

			$.ajax({
				type: 'POST',
				url: "<?= base_url('pengaduan/getSubKategoriFile'); ?>",
				data: data,
				success: function(hasil) {
					$("#form_subkategori").html(hasil);
					$("#form_subkategori").show();
				}
			});
		});
	});
</script>