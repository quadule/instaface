class InstagramSearch
	def self.at(lat, lng)
		Instagram.media_search(lat, lng)
	end
end