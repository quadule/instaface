require 'spec_helper'

describe Person do
  describe '.api' do
    subject { Person.api }
    it { should respond_to(:faces_detect) }
  end
  
  describe '.batch_from_photo' do
    context 'using an image of two people' do
      photo =  Photo.create url: "http://www.comicmix.com/wp-content/uploads/2011/02/prince-william-kate-middleton.jpg"
      subject { Person.batch_from_photo(photo) }
      
      it { should have(2).people }
    end
  end
end
