class FacesController < ApplicationController
  def index
    @photos = Photo.faces
    render 'photos/index'
  end
end
