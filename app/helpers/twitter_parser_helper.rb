module TwitterParserHelper
  require 'twitter'

  def self::getTweets(user)
    Twitter.user_timeline(user)
  end

  def self::getMentions(user)
    Twitter.mentions(user)
  end
  
  def authenticateApp()
    
    Twitter.configure do |config|
      config.consumer_key = '71hLarkHBDpXVxCi5Qkw'
      config.consumer_secret = ENV['consumer_secret'] || config['consumer_secret']
      config.oauth_token = '60858645-utsRKX7PEmhcHiOsFY5cfKS3oX81u93bNfFuoM'
      config.oauth_token_secret = ENV['oauth_token_secret'] || config['oauth_token_secret']
    end

  end
    
  
end
