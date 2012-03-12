class InstagramSearch
	def initialize
		Instagram.configure do |config|
			config.client_id = INSTAGRAM_CLIENT_ID
			config.client_secret = INSTAGRAM_CLIENT_SECRET
		end
	end
	
	def at(lat, lng, options={})
	  options.reverse_merge!(distance: 5000)
		Instagram.media_search(lat, lng, options)
	rescue SocketError
		Hashie::Mash.new data: []
	end
end
