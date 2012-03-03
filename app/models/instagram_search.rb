class InstagramSearch
	def initialize
		Instagram.configure do |config|
			config.client_id = INSTAGRAM_CLIENT_ID
			config.client_secret = INSTAGRAM_CLIENT_SECRET
		end
	end
	
	def at(lat = 37.757141, lng = -122.456911)
		Instagram.media_search(lat, lng, distance: 5000)
	end
end