When /^I am looking at the service homepage$/ do
  visit '/'
end

Then /^I will see the tweet "([^"]*)"$/ do |tweet|
  page.should have_content tweet
end
