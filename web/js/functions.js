function encontrar_ciudad(lat,long)
{
    $.ajax({
        type: 'GET',
        dataType: "json",
        url: "http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+long+"&sensor=false",
        data: {},
        success: function(data) {
            $('#city').html(data);
            $.each( data['results'],function(i, val) {
                $.each( val['address_components'],function(i, val) {
                    if (val['types'] == "locality,political") {
                        if (val['long_name']!="") {
                            $('#city').html(val['long_name']);
                        }
                        else {
                            $('#city').html("desconocida");
                        }
                        console.log(i+", " + val['long_name']);
                        console.log(i+", " + val['types']);
                    }
                });
            });
            console.log('Success');
        },
        error: function () { console.log('error'); } 
    });
});
