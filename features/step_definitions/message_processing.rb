Given /^I have a valid user who has requested a beer$/ do
  @valid_message = create_request_json(default_valid_user,default_valid_status)
end

When /^I receive that message$/ do
  
  pending # express the regexp above with the code you wish you had
end

Then /^I will store that message$/ do
  pending # express the regexp above with the code you wish you had
end