begin
  namespace :twitcoin do

    task :fetch => :environment do
      TwitterParserHelper.authenticate_app()
      @mentions = TwitterParserHelper.get_mentions()
      TwitterParserHelper.save_mentions(@mentions)
    end
    
    task :parse => :environment do
      @tweets = Tweet.all
      @tweets.each do |tweet| 
          TwitterParserHelper.parse_tweet(tweet)
      end
    end
  end
end