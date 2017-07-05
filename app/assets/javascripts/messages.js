// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// window.updateMessagesViaJSON = function() {
//   console.log("inside updateMessagesViaJSON");
//   $.getJSON("http://localhost:3000/rooms/1/messages.json", function(messages) {
    
//     // you can use $(".messages").append("blah") 
//     // to add blah to the <div class="messages">...</div> element
//   })
// }

window.updateMessagesViaJSON = function() {

  $.getJSON( "http://localhost:3000/rooms/1/messages.json", function( data ) {
    var items = [];
    $.each( data, function( key, val ) {
      console.log(key, val)
    });
  });
}

window.updateMessagesViaJS = function() {
  $.ajax({ url: window.location.pathname, dataType: 'script' });
}