@now
Feature: Processing a request
    In order to handle a request for a beer
    As an application
    I want to process a users tweet

Scenario: Process a valid message
    Given I have a valid user who has requested a beer
    When I receive that message
    Then I will store that message