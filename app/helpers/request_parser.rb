module RequestParser

  def self.parse(message)
    request = Parser.new(message)
  end

  class Parser

    attr_accessor :message, :vendor, :product

    def initialize(message)
      @message = message
      @vendor = vendor
      @product = product
    end

    def vendor
      @message.gsub(/@demand/,'') =~ /@([\w]+)/
      $1
    end

    def product

      vendor = Vendor.find(:first, :conditions => {:name => @vendor})
      return {:error => 1, :message => "No vendors by the name #{@vendor}"} if vendor.nil?

      products = Product.find(:all, :conditions => { :vendor_id => vendor.id })
      return {:error => 1, :message => "No product for this vendor"} if products.empty?

      {:error => 0, :message => @message }
    end

  end
end
