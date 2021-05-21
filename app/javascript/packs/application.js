// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery")
import '../packs/stylesheets/application'
import 'materialize-css/dist/js/materialize'


// Materialize Theme

Rails.start()
ActiveStorage.start()


$( document ).ready(function() {
    M.AutoInit();
    console.log( "Materialize is Bootstrapped!" );
});


$(document).ready(function () {
    if ($("#toast_notice").attr("data-id") !== undefined) {
        M.toast({ html: $("#toast_notice").attr("data-id") })
    }
    if ($("#toast_alert").attr("data-id") !== undefined) {
        M.toast({ html: $("#toast_alert").attr("data-id") })
    }
});




require("trix")
require("@rails/actiontext")

$('.mail-choice').change(function() {
    if($(this).is(":checked")) {
        $(this).parent().addClass('selected-bg');
  } else {
    $(this).parent().removeClass('selected-bg');
  }
});

const colorInput = document.getElementById("colorpicker");

colorInput.addEventListener("input", (e) => {
 document.body.style.setProperty("--button-color", e.target.value);
});

$('.inbox-calendar').click(function(){
  $('.calendar-container').toggleClass('calendar-show');
 $('.inbox-container').toggleClass('hide');
 $('.mail-detail').toggleClass('hide'); 
});

