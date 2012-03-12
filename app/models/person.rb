class Person < ActiveRecord::Base
  belongs_to :photo
  serialize :data
  
  def self.api
    @@api ||= Face.get_client api_key: FACE_API_KEY, api_secret: FACE_API_SECRET
  end
  
  def self.batch_from_photo(photo)
    response = api.faces_detect(:urls => photo.url, :attributes => :all)
    faces = response['photos'].first['tags']
    
    faces.map do |face|
      photo.people.create(:data => face)
    end
  end
end
