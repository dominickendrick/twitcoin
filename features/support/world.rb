def request_beer_via_internal_api

end

def create_request_json(user,status)
  "{user:{screen_name:#{user}},text:'#{status}'}"
end

def default_valid_user
  "dominickendrick"
end

def default_valid_status
  "I @demand 1 beer in 5 minutes please @eastonpub"
end

def params_to_send
  {
    :customer => "dominickendrick",
    :vendor => "theeaston",
    :request_text => "I @demand 1 beer in 5 minutes please @eastonpub"
  }
end

def create_tweet_json(username,status)
  post "/api/product_request", params_to_send
end
