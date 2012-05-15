require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the Api::RequestHandlerHelper. For example:
#
# describe Api::RequestHandlerHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end

describe RequestParser do
  def valid_message
    "I @demand 1 beer in 5 minutes please @eastonpub"
  end

  it "should extract the vendor name from a request" do
     
      request = RequestParser.parse(valid_message) 
      request.vendor.should == "eastonpub"
  
  end
 
  it "should extract the product name from a request" do
     
      request = RequestParser.parse(valid_message) 
      request.product.should == "beer"
  
  end

end
