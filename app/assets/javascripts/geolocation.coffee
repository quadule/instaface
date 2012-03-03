navigator.geolocation.getCurrentPosition(geolocate, geolocate, {});

geolocate = (position) -> 
	alert("We have your location. #{position.coords.latitude}, #{position.coords.longitude}")
	
promptForLocation = ->
	# Lightbox a request for a location
	true

true