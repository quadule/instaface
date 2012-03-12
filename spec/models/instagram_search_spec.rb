require 'spec_helper'

describe InstagramSearch, :vcr => true do
  let!(:instagram) { InstagramSearch.new.at(37.757141, -122.456911) }

	it "returns a hash" do
		instagram.class.should eq(Hashie::Mash)
	end
	
	it "should include a photo" do
		instagram.data.first.images.thumbnail.url.should_not eq(nil)
	end
end
