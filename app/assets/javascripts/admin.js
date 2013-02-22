// Use this to customize the wymeditor boot process
// Just mirror the options specified in boot_wym.js with the new options here.
// This will completely override anything specified in boot_wym.js for that key.
// e.g. skin: 'something_else'
//= require jquery
//= require jquery_ujs
if (typeof(custom_wymeditor_boot_options) == "undefined") { custom_wymeditor_boot_options = {}; }


$(document).ready(function() {
  $(".wymupdate.button").live("click", function() {
    $(".social input").each(function() {
      $(this).attr("name", "speaker[social_contacts][" + $(this).find("#speaker_github option:selected").text() + "][]");
    });
  });
});

