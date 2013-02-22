$(document).ready ->
  $(".wymupdate.button").live "click", ->
    $(".social input").first().attr "name", "speaker[social_contacts][" + $("#speaker_github option:selected").text() + "][]"
