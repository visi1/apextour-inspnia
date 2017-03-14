//= require iCheck/icheck.min.js
//= require jeditable/jquery.jeditable.js
//= require dataTables/datatables.min.js
//= require jqGrid/i18n/grid.locale-el.js
//= require jqGrid/jquery.jqGrid.min.js
//= require jquery-ui/jquery-ui.min.js
//= require jquery
//= require dynamyc_select.js




//fileupload style and name file
$('#basicUploadFile').live('change', function ()
{
    for (var i = 0; i < this.files.length; i++)
    {
        alert(this.files[i].name);
        alert(this.files.item(i).name); // alternatively
    }
});