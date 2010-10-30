$(function(){
	$('#noteForm').hide();
	$('#modal_opacity').hide().removeClass('.hidden');
	
	
	$('.noteLink a').click(
	
		function(){
			var e = $(this);
			var typ = e.attr('data-noted_type');
			var id = e.attr('data-noted_id');
			var nam =e.attr('data-noted_name');
			alert('type: '+typ+'\nid= '+id);
			
			$('#noteForm #note_noted_id').attr('value',id);
			$('#noteForm #note_noted_type').attr('value',typ);
			
			$('#noteForm .field label').html('Take a note for '+nam);
			
			$('#noteForm')	.show()
							.animate({'top' : 0},300);
			$('#modal_opacity').fadeIn(500);
		
		
			return false;
		}
	
	
	
	
	);
	
});
