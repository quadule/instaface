class PhotosController < ApplicationController
  def index
		@photos = Photo.batch_from_instagram(InstagramSearch.new.at.data)
  end
end
