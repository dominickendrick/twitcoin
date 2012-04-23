@wip
Feature: Processing a product request
    In order to handle a request for a beer
    As an application
    I want to process a users message

Scenario: Process a valid product request
    Given I have a valid product request
    When I receive that message
    Then I will store that message

Scenario: Process an invalid product request
    Given I have an invalid product request
    When I receive that message
    Then I will store that message
    
    