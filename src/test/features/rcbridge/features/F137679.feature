# Last updated on 2018-05-21T15:49:13.540Z
@MVP
@Plus
Feature: F137679 - View Provider

  Scenario: US858730
    Given I am a User with access to view and maintain Entity information
    When I am viewing a Provider in the Entity Management Solution
    Then I can see all Identifiers on the Provider record
    Then And I can see all demographic information on the Provider record

  Scenario: US1131278
    Given I am a User with access to view or modify Entity information
    When I view a Provider
    Then I can see all Contracts associated to the Provider
    Then And I can see all Interviews associated to the Provider

  Scenario: US858729
    Given I am a User with access to view and maintain Entity information
    When I want to view Providers associated to an Entity
    Then I can find an Entity
    Then And I can view all Providers connected to that Entity

