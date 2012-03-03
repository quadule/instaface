class Person < ActiveRecord::Base
  serialize :data
  
  def self.api
    @@api ||= Face.get_client api_key:    ENV.fetch('FACE_API_KEY'),
                              api_secret: ENV.fetch('FACE_API_SECRET')
  end
  
  def self.create_from_faces(image_url)
    response = api.faces_detect(:urls => image_url, :attributes => :all)
    faces = response['photos'].first['tags']
    faces.map { |face| create(:data => face) }
  end
end
