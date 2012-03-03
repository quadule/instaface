$ ->
	navigator.geolocation.getCurrentPosition(geolocate, promptForLocation, {});
	
	geolocate = position ->
		# Async call to server to pull down newest photos
		alert("We have your location. #{position.coords.latitude}, #{position.coords.longitude}")
		
	promptForLocation = ->
		# Lightbox a request for a location