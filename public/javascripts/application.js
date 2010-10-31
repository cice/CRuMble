$(function(){
  $.getJSON('http://localhost:3000/notes/4.json', function(data){
    alert(data.note);
  });
  
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
      
      $('#noteForm')  .show()
              .animate({'top' : 0},300);
      $('#modal_opacity').fadeIn(500);
    
    
      return false;
    }
  
  
  
  
  );
  
  

  jQuery("form.new_note").bind('ajax:success', function(data, status, xhr){
  
    $("#noteForm").stop().animate({'top' : '-400px'}, 200, function () {
    
      $("#noteForm").hide();
    
      // $("#stickyNotesBoard").html("schipps");
    
      // alert(status);
    
       //$("#noteJsonTempl").tmpl(status).prependTo("#stickyNotesBoard");
    
    });
    
    $("#modal_opacity").fadeOut(200);
    this.reset();
    return false;
  });
  
  jQuery('#cancel_note').click(function () {
    $("#noteForm").stop().animate({'top' : '-400px'}, 200, function() {
      $("#noteForm").hide();
    });
    $("#modal_opacity").fadeOut(200);
    return false;
  });
});
