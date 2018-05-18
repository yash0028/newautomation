# Last updated on 2018-05-14T20:54:44.035Z
@MVP
@Plus
Feature: F137679 - View Provider

  Scenario: US858730
    Given I am a User with access to view and maintain Entity information
    When I am viewing a Provider in the Entity Management Solution
    Then I can see all Identifiers on the Provider record
    Then And I can see all demographic information on the Provider record

  Scenario: US858729
    Given I am a User with access to view and maintain Entity information
    When I want to view Providers associated to an Entity
    Then I can find an Entity
    Then And I can view all Providers connected to that Entity

