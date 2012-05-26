require 'spec_helper'

describe Vendor do
  before(:each) do
    @vendor = Vendor.new({:name=>'Dummy Vendor'})
  end
  
  it "should be valid" do
    @vendor.should be_valid
  end

  it "should have a name" do
    @vendor.name = ''
    @vendor.should_not be_valid
  end

  it { should have_many(:products) }

end
