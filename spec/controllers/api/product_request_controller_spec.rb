require 'spec_helper'

describe Api::ProductRequestController do

  def params_to_send
    {
      :customer => "dominickendrick",
      :vendor => "theeaston",
      :request_text => "I @demand 1 beer in 5 minutes please @eastonpub"
    }
  end
  
  def invalid_params_to_send
    {
      :customer => "dominickendrick",
      :request_text => "I @demand 1 beer in 5 minutes please @eastonpub"
    }
  end

  context "#new" do
    it "should create a new request object" do
      expect{ post :create, params_to_send }.should change(ProductRequest, :count).by 1
    end
    
    it "should not create a request object for an invalid request" do
      expect{ post :create, invalid_params_to_send }.should raise_error
    end
  end

end
