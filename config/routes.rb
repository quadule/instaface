Instaface::Application.routes.draw do
  resources :faces, :only => :index
  resources :photos, :only => :index
end
