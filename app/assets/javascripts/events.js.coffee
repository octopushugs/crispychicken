# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_event").on("ajax:success", (e, data, status, xhr) ->
    if(status == "success")
      $('.alert-success').text('Successfully added event').addClass('show');
      $('#new_event')[0].reset();
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_event").append "<p>ERROR</p>"

class RichMarkerBuilder extends Gmaps.Google.Builders.Marker #inherit from builtin builder
  create_infowindow: ->
    return null unless _.isString @args.infowindow

    boxText = document.createElement("div")
    boxText.setAttribute("class", 'infoboxStyle') #to customize
    boxText.innerHTML = @args.infowindow + "<br />" + @args.address
    @infowindow = new InfoBox(@infobox(boxText))

    # add @bind_infowindow() for < 2.1

  infobox: (boxText)->
    content: boxText
    pixelOffset: new google.maps.Size(-140, 0)
    boxStyle:
      width: "300px"
    closeBoxMargin: "8px 1px 2px 2px"  
    closeBoxURL: "http://maps.google.com/mapfiles/kml/pal5/icon7.png"

@buildMap = (markers) ->
  handler = Gmaps.build 'Google', { builders: { Marker: RichMarkerBuilder} } #dependency injection

  #then standard use
  handler.buildMap { provider: {}, internal: {id: 'map'} }, ->
    markers = handler.addMarkers(markers)
    handler.bounds.extendWith(markers)
    handler.fitMapToBounds()

    $(".mapEventName").on "click", ->
      i = $(this).attr("id")
      marker = markers[i]
      google.maps.event.trigger marker.getServiceObject(), "click"

