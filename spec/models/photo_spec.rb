require 'spec_helper'


describe Photo do
	let!(:pug) { "http://www.aplacetolovedogs.com/wp-content/uploads/dressed-up-pug1.jpg" }
	let!(:photo) { Photo.new(url: pug, thumbnail_url: pug, caption: "this is a pug in a top hat", 
			filter: nil, distance: 50.0023, profile_picture_url: pug, link: "http://kaiuhl.com") }
			
end
