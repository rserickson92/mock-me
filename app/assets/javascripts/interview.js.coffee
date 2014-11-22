# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  if $('#firepad').length > 0
    fire_id = $('#firepad').data('fire-id')
    firepadRef = new Firebase("https://mock-me.firebaseio.com/firepads/#{fire_id}")
    editor = ace.edit('firepad')
    editor.setFontSize 20

    #$('.range-slider').on 'change.fndtn.slider', ->
    #  console.log $(@).attr('data-slider')
    #  editor.setFontSize $(@).attr('data-slider')
    #  firepad = Firepad.fromACE(firepadRef, editor)
    #  firepad.on 'ready', ->

    firepad = Firepad.fromACE(firepadRef, editor)

    firepad.on 'ready', ->

    firepadRef.onDisconnect().remove();
