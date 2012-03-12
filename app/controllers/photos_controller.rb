class PhotosController < ApplicationController
  def index
    @search = InstagramSearch.new.at(37.757141, -122.456911, count: 100)
    @photos = Photo.batch_from_instagram(@search.data)
  end
end
