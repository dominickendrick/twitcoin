Given /^I am an twitter user called "([^"]*)"$/ do |username|
  @twitter_user = username
end

When /^I tweet "([^"]*)"$/ do |status|
  @tweet = create_tweet_json(@twitter_user,status)
end

Then /^I should receive a confirmation message$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am a vendor with a twitter account called "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^a potential customer on twitter user called "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^"([^"]*)" tweets "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then /^I should receive a tweet from the service saying "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^Twitcoin should process the tweet$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^send a confirmation message$/ do
  pending # express the regexp above with the code you wish you had
end