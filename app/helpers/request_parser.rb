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
      @message
    end

  end
end
