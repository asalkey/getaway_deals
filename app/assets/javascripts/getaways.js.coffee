$ ->
  $("#city").autocomplete
    source: (request, response) ->
      $.ajax
        url: "http://ws.geonames.org/searchJSON"
        dataType: "jsonp"
        data:
          featureClass: "P"
          style: "full"
          maxRows: 12
          name_startsWith: request.term

        success: (data) ->
          response $.map(data.geonames, (item) ->
            label: item.name + ((if item.adminName1 then ", " + item.adminName1 else "")) + ", " + item.countryName
            value: item.name
          )


    minLength: 1

    open: ->
      $(this).removeClass("ui-corner-all").addClass "ui-corner-top"

    close: ->
      $(this).removeClass("ui-corner-top").addClass "ui-corner-all"

  $( ".datepicker" ).datepicker dateFormat: "yy-mm-dd"
