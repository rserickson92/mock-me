# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#new_post').on('ajax:success', (e, data, status, xhr) ->
		$('#interview-requests').prepend data
	)

	$('.interview-request').on 'ajax:success', (e, data, status, xhr) ->
		$(@).find('a').replaceWith("Accepted!")

