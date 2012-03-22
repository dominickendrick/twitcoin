Feature: Using twitcoin
    In order to easily buy products 
    As a consumer
    I want to order a product via twitter from a seller

Scenario: Buying from an authorised seller
    Given I have a twitcoin buyer account
    When a order is made in my name to an authorised seller
    Then my order will be pending

Scenario: Refusing an order to an unauthorised seller
    Given I have a twitcoin buyer account
    When a order is made in my name to an unauthorised seller
    Then my order will be refused

Scenario: Confirming an order from an authorised user
    Given I have a twitcoin seller account
    When I receive an pending order from an authorised buyer
    Then that order will be sent for stock-check

Scenario: Checking an order is in stock
    Given I have a twitcoin seller account
    When I receive a stock-check request for an in stock product
    Then my order will be awaiting-processing

Scenario: Checkin payment for a product
    Given I have a twitcoin seller account
    When I receive an awaiting-processing order from a buyer with sufficient funds
    Then I will invoice for that product

Scenario: Processing an invoice
    Given I have a twitcoin seller account
    When I have an invoice for a product order from a buyer
    Then I will debit that users account for the product
    And I will mark that order as paid

Scenario: Producing an order
    Given I have a twitcoin seller account 
    When I have an order from a user that is marked as paid
    Then I will action that order

Scenario: A user receives a product
    Given I have a twitcoin buyer account
    When I confirm receipt of an actioned product
    Then I will be happy