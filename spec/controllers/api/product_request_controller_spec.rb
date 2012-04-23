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
  
  context "#show" do
    before do
      @pr = ProductRequest.new(params_to_send)
      @pr.save!
    end
    
    it "should show a product for a valid id request" do
         response = get :show, :id => @pr.id
         response.body.should == @pr.to_json
    end
    
    it "should show nothing for an invalid id" do
         response = get :show, :id => "not_a_valid_id"
         response.body.should == "{}"
    end
  end
  
  context "#index" do
    before do
      @pr_all = ProductRequest.all
    end
    
    it "should show all products" do
         response = get :index  
         response.body.should == @pr_all.to_json
    end
  end

end
