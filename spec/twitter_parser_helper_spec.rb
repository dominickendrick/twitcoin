
describe "get_tweets" do
  it "should return a collection of tweets by a specific user" do
    user = "dominickendrick"
    tweets = TwitterParserHelper.get_tweets(user)
    tweets.should be_an Array
    tweets.first.should be_a Twitter::Status
  end
end




describe "get_mentions" do
  before do
    @user = TwitterParserHelper.authenticate_app
  end
  
  it "should return a collection of tweets that mention an authenticated user" do
    mentions = TwitterParserHelper.get_mentions()
    mentions.should be_an Array
    mentions.first.should be_a Twitter::Status
    mentions.first.text should match(#{@user.screen_name})
  end
end



describe "save_mentions" do
  before do
    @mentions = to_return(:body => fixture("sferik.json"), :headers => {:content_type => "application/json; charset=utf-8"})
  end
  
  it "should save all mentions" do
    mentions = TwitterParserHelper.save_mentions(@mentions)
    Tweet.first.should =~ /dominickendrick/
  end

end



describe "parse_tweet" do
  before do
    @tweet = Tweets.new()
  end
  
  it "should parse an unprocessed Tweet and return an order" do
    order = TwitterParserHelper.parse_tweet(@tweet)
    order.should be_an Array
    order.keys.should be [:vendor, :customer, :tweet_id, :order_str_raw]
  end
end

describe "parse_tweet" do
  it "should parse an unprocessed Tweet and return an order" do
    order = TwitterParserHelper.parse_tweet(@tweet)
    order.should be_an Array
    order.keys.should be [:vendor, :customer, :tweet_id, :order_str_raw]
  end
end
