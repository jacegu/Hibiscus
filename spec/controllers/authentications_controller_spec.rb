require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AuthenticationsController do  
  def mock_authentication(stubs={})
    @mock_authentication ||= mock_model(Authentication, stubs).as_null_object
  end

  describe "when logged out: " do
    it "should not be able to access 'index'" do
      get :index
      response.should redirect_to(root_url)
    end
    
    it "should not be able to access 'destroy'" do
      delete :destroy
      response.should redirect_to(root_url)
    end
    
    it "should be able to access 'create'" do
      post :create
      response.should be_success
    end
  end
  
  describe "when logged in: " do
    before (:each) do
      @user = Factory.create(:user)
      sign_in @user
    end
    
    it "should not be able to access 'index'" do
      get :index
      response.should be_success
    end
    
    it "should not be able to access 'destroy'" do
      delete :destroy
      response.should be_success
    end
    
    it "should be able to access 'create'" do
      post :create
      response.should be_success
    end
  end

end