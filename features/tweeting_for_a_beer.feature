@wip
Feature: Viewing a tweet sent to a buyer cced to @demand
    In order to easily buy products 
    As a consumer
    I want to order a product via twitter from a seller

Scenario: Order a beer
    Given I am an twitter user called "dominickendrick"
    When I tweet "I @demand 1 beer in 5 minutes please @eastonpub"
    Then Twitcoin should process the tweet
    And send a confirmation message
    Then I should receive a confirmation message

Scenario: Receiving an order for a beer
    Given I am a vendor with a twitter account called "eastonpub"
    And a potential customer on twitter user called "dominickendrick"
    When "dominickendrick" tweets "I @demand 1 beer in 5 minutes please @eastonpub"
    Then I should receive a tweet from the service saying "@dominickendrick has ordered 1 beer"
    
