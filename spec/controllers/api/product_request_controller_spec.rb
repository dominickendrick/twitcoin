require 'spec_helper'

describe Api::ProductRequestController do

  def params_to_send
    {
      :customer => "dominickendrick",
      :vendor => "theeaston",
      :request_text => "I @demand 1 beer in 5 minutes please @eastonpub"
    }
  end

  context "#new" do
    it "should create a new request object" do
      expect{ post :create, params_to_send }.should change(ProductRequest, :count).by 1
    end
  end

end
