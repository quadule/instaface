class Photo < ActiveRecord::Base
  scope :faces, joins(:people).group(:photo_id)
  
  has_many :people, :dependent => :destroy
  
  validates :instagram_id, uniqueness: true, allow_nil: true
  
  def self.batch_from_instagram(response_photos)
    response_photos.inject([]) do |photos, photo|
      logger.info photo
      photos << create(
        instagram_id:         photo.id,
        url:                  photo.images.standard_resolution.url,
        thumbnail_url:        photo.images.thumbnail.url,
        caption:              (photo.caption.text unless photo.caption.blank?),
        filter:               photo.filter,
        distance:             photo.distance,
        profile_picture_url:  photo.user.profile_picture,
        link:                 photo.url,
        taken_at:             DateTime.new(photo.created_time.to_i),
        username:             photo.user.username
      )
    end
  end
end
