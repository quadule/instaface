require 'spec_helper'

describe Person, :vcr => true do
  describe '.api' do
    subject { Person.api }
    it { should respond_to(:faces_detect) }
  end
  
  describe '.batch_from_photo' do
    context 'using an image of two people' do
      subject do
        photo = Photo.create url: "http://www.comicmix.com/wp-content/uploads/2011/02/prince-william-kate-middleton.jpg"
        Person.batch_from_photo photo
      end
      
      it 'should have two people' do
        should have(2).people
      end
    end
  end
end
