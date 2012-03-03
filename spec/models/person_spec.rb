require 'spec_helper'

describe Person do
  describe '.api' do
    subject { Person.api }
    it { should respond_to(:faces_detect) }
  end
  
  describe '.create_from_faces' do
    context 'using an image of two people' do
      image_url = "http://www.comicmix.com/wp-content/uploads/2011/02/prince-william-kate-middleton.jpg"
      subject { Person.create_from_faces(image_url) }
      
      it { should have(2).people }
    end
  end
end
