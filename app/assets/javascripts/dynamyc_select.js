jQuery(function() {
    var towns;
    $('#hotel_town_id').parent().hide();
    towns = $('#hotel_town_id').html();
    console.log(towns);
    return $('#hotel_region_id').change(function() {
        var region, escaped_region, options;
        region = $('#hotel_region_id :selected').text();
        escaped_region = region.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = $(towns).filter("optgroup[label=" + escaped_region + "]").html();
        console.log(options);
        if (options) {
            $('#hotel_town_id').html(options);
            return $('#hotel_town_id').parent().show();
        } else {
            $('#hotel_town_id').empty();
            return $('#hotel_town_id').parent().hide();
        }
    });
});