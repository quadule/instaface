require 'spec_helper'

describe InstagramSearch do
  let!(:instagram) { InstagramSearch.new.at(45.5, -122.69) }

	it "returns a hash including photos" do
		instagram.class.should eq(Hash)
	end
end
