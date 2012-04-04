Given /^I have a valid user who has requested a beer$/ do
  @valid_message = create_request_json(default_valid_user,default_valid_status)
end

When /^I receive that message$/ do
  @response = post("/api/product_request", @valid_message, {"Content-type" => "application/json"})
end

Then /^I will store that message$/ do
  response_body = JSON.parse(@response.body)
  response_body["success"].should be_true
end