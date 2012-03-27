module TweetParse
  require 'Tweet'
  
  def GetNewTweets
    "@targetacc 1 beer in 5 minutes please. cc @demand"
  end
  
  def StoreNewTweet
    @tweet = Tweet.new(params[:tweet])
  end
  
end