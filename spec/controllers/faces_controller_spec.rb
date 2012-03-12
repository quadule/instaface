require 'spec_helper'

describe FacesController do
  describe 'GET index' do
    it 'succeeds' do
      get :index
    end
  end
end
