jQuery(document).ready(function($) {
  var searchByName = function (searchName) {
    clearTimeout( self.search );
    self.search = setTimeout(function () {
      contacts = "";
      $.getJSON('/contacts.js', {name:searchName}, function (data) {
        $.each(data, function(index, value) {
          contacts += value.contact.name + "<br />";
        });
        $("#contacts-bar-list").html(contacts);
      })
    }, 300);
  };

  $("#contacts-search-box").bind("keyup focus blur change", function (e) {
    name = $(this).val();
    searchByName(name);
    e.stopPropagation();
  });

  $("#contacts-bar-search input[type=reset]").bind("click", function (e) {
    name = "";
    searchByName(name);
  });  

});
