class Photo < ActiveRecord::Base
  has_many :people, :dependent => :destroy
  
	def self.batch_from_instagram(photos)
		return_photos = []
		photos.each do |photo|
			logger.info photo
			return_photos << self.create({
				url: 									photo.images.standard_resolution.url,
				thumbnail_url: 				photo.images.thumbnail.url,
				caption: 							(photo.caption.text unless photo.caption.blank?),
				filter: 							photo.filter,
				distance: 						photo.distance,
				profile_picture_url: 	photo.user.profile_picture,
				link: 								photo.url,
				taken_at: 						DateTime.new(photo.created_time.to_i),
				username: 						photo.user.username
			})
		end
		return_photos
	end
end
