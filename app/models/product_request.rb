class ProductRequest < ActiveRecord::Base
  validates :customer, :presence => true
  validates :vendor, :presence => true
  validates :request_text, :presence => true
end
