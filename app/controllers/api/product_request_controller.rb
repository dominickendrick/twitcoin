class Api::ProductRequestController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :not_found
  
  def create        
    pr = ProductRequest.new(
        create_params(params)
      )
    if pr.save!
      render :json => { :success =>true, :id => pr.id }.to_json
    end
  end
  
  def index
    @pr = ProductRequest.all
    render :json => @pr.to_json
  end
  
  def show
    render :json => ProductRequest.find(params[:id]).to_json
  end
  
  protected
  def not_found
    render :json => "{}"
  end
  
  private
  def create_params params 
    params.select{|k| [:vendor,:request_text,:customer].include? k.to_sym}
  end
  
end
