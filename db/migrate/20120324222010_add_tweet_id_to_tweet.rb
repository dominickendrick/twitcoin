class AddTweetIdToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_id, :float

  end
end
