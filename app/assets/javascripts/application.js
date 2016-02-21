//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require bootstrap-sprockets
//= require materialize-sprockets
//= require_tree .

$(document).on('ready page:load', function () {
    $('#movement_type').material_select();
});
