# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
    $(".button-collapse").sideNav()
    init = ->
      $('.taskcard').draggable
        cursor: 'move'
      $('.sheet').droppable
        drop: dropEvent
    dropEvent = (event, ui) ->
      draggable = ui.draggable
      alert 'таск с ID "' + draggable.attr('id') + '" был доставлен к месту назначения!'
    $ init