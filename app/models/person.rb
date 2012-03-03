class Person < ActiveRecord::Base
  serialize :data
  
  def self.api
    @@api ||= Face.get_client api_key:    ENV.fetch('FACE_API_KEY'),
                              api_secret: ENV.fetch('FACE_API_SECRET')
  end
end
