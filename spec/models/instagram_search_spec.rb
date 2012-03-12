require 'spec_helper'

describe InstagramSearch, :vcr => true do
  let!(:instagram) { InstagramSearch.new.at }

	it "returns a hash" do
		instagram.class.should eq(Hashie::Mash)
	end
	
	it "should include a photo" do
		instagram.data.first.images.thumbnail.url.should_not eq(nil)
	end
end
