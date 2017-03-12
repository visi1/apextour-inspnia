//= require iCheck/icheck.min.js
//= require jeditable/jquery.jeditable.js
//= require dataTables/datatables.min.js
//= require jqGrid/i18n/grid.locale-el.js
//= require jqGrid/jquery.jqGrid.min.js
//= require jquery-ui/jquery-ui.min.js



$(document).ready(function(){
    // disable auto discover
    Dropzone.autoDiscover = false;

    // grap our upload form by its id
    $("#new_upload").dropzone({
        // restrict image size to a maximum 1MB
        maxFilesize: 1,
        // changed the passed param to one accepted by
        // our rails app
        paramName: "upload[image]",
        // show remove links on each image upload
        addRemoveLinks: true
    });
});

