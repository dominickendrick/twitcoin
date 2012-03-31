# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_request do
    customer "MyString"
    vendor "MyString"
    request_text "MyString"
  end
end
