require 'spec_helper'

describe FacesController do
  describe 'GET index' do
    it 'succeeds' do
      get :index
      response.should be_success
    end
  end
end
