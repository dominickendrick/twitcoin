class Api::ProductRequestController < ApplicationController
  
  def create
    
    pp params
    
    pr = ProductRequest.new(
        create_params(params)
      )
    if pr.save!
      render :json => { :success =>true, :id => pr.id }.to_json
    end
  end
  
  private
  def create_params params 
    params.select{|k| [:vendor,:request_text,:customer].include? k.to_sym}
  end
  
end
