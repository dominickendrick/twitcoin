module TwitterParserHelper
    
  require 'twitter'

  def self.get_tweets(user)
    Twitter.user_timeline(user)
  end

  def self.get_mentions()
    Twitter.mentions
  end
  
  def self.save_mentions(mentions)
    mentions.each do | mention |
      Tweet.create( :name =>      mention.user.screen_name, 
                    :content =>   mention.text, 
                    :tweet_id =>  mention.id,
                    :processed => false
      )
    end
  end
  
  def self.authenticate_app()

    Twitter.configure do |config|
      config.consumer_key = '71hLarkHBDpXVxCi5Qkw'
      config.consumer_secret = ENV['consumer_secret'] || config['consumer_secret']
      config.oauth_token = '60858645-utsRKX7PEmhcHiOsFY5cfKS3oX81u93bNfFuoM'
      config.oauth_token_secret = ENV['oauth_token_secret'] || config['oauth_token_secret']
    end
    Twitter.current_user
  end
  
  def self.parse_tweet(tweet)
    if tweet.processed == false && tweet.content =~ /\$\$(.+?)\s/ then
      order_raw = $1
      items = order_raw.split(';')
          
      items.each do | item |
        item_order = item.split('x')
        items_hash = {
          :item_id => item_order[0],
          :quantity => item_order[1]
        }
        
        order = [
          :vendor =>  tweet.mentions?,
          :customer =>  tweet.author,
          :tweet_id =>  tweet.id,
          :order_str_raw =>  order_raw,
          :order_parsed => items_hash
        ]
      end
      return order
    end
  end
end
