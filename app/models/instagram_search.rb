class InstagramSearch
	def initialize
		Instagram.configure do |config|
			config.client_id = INSTAGRAM_CLIENT_ID
			config.client_secret = INSTAGRAM_CLIENT_SECRET
		end
	end
	
	def at(lat, lng)
		Instagram.media_search(lat, lng)
	end
end