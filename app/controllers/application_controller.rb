class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :configure_instagram

	private
	
	def configure_instagram
		Instagram.configure do |config|
			config.client_id = INSTAGRAM_CLIENT_ID
			config.client_secret = INSTAGRAM_CLIENT_SECRET
		end
	end
end
