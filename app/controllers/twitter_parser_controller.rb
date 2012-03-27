class TwitterParserController < ApplicationController
  def index
    @tweet = Tweet.first.content
  end
end
