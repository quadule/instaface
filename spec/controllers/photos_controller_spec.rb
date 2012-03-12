require 'spec_helper'

describe PhotosController, :vcr => true do
  describe 'GET index' do
    it 'succeeds' do
      get :index
      response.should be_success
    end
  end
end
