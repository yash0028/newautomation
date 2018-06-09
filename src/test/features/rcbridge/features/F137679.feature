# Last updated on 2018-06-08T18:30:06.053Z
@MVP
@Plus
@Priority_1
Feature: F137679 - View Provider

  @EXARI-10529
  @2018.PI03
  Scenario: US858730
    Given I am a User with access to view and maintain Entity information
    When I am viewing a Provider in the Entity Management Solution
    Then I can see all Identifiers on the Provider record
    Then And I can see all demographic information on the Provider record

  @EXARI-10713
  @2018.PI03
  Scenario: US1131278
    Given I am a User with access to view or modify Entity information
    When I view a Provider
    Then I can see all Contracts associated to the Provider
    Then And I can see all Interviews associated to the Provider

  @EXARI-10529
  @2018.PI03
  Scenario: US858729
    Given I am a User with access to view and maintain Entity information
    When I want to view Providers associated to an Entity
    Then I can find an Entity
    Then And I can view all Providers connected to that Entity

