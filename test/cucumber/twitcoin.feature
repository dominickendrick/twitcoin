Scenario: Using twitcoin
    In order to easily buy products 
    As a consumer
    I want to order a product via twitter from a seller

Given I have a twitcoin buyer account
When I order a product from a seller
And I provide payment
Then I will recieve a product

Given I have a twitcoin buyer account
When I confirm receipt of the product
Then I will be happy

Given I have a twitcoin buyer account
When a order is made in my name to an authorised seller
Them my order will be processed for payment

Given I have a twitcoin seller account
When I receive an order
Then I will check if that product is in stock

Given I have a twitcoin seller account
When I receive an order from a buyer
Then I will check that the user has an authorised account

Given I have a twitcoin buyer account
When a order is made in my name to an unauthorised seller
Them my order wil be refused

Given I have a twitcoin seller account
When I recieve an order from a buyer
Then I will check if that user has sufficient funds

Given I have a twitcoin seller account
When I have processed an order from a user with sufficient funds
Then I will debit that users account for the product

Given I have a twitcoin seller account 
When I have an order from a user that has a processed payment
Then I will action that order