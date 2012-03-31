def create_tweet_json(user,status)
 "{user:{screen_name:#{user}},text:'#{status}'}"
end

def default_valid_user
  "dominickendrick"
end

def default_valid_status
  "I @demand 1 beer in 5 minutes please @eastonpub"
end