# Last updated on 
@MVP
@Plus
@Priority_1
@F137679
Feature: F137679 - Exari EM - View Provider

  @MVP
  @EXARI-10529
  @CLM_UAT
  @US858730
  @2018.PI03
  Scenario: US858730 - View Provider Detail
    Given I am a User with access to view and maintain Entity information
    When I am viewing a Provider in the Entity Management Solution
    Then I can see all Identifiers on the Provider record
    And I can see all demographic information on the Provider record

  @MVP
  @CLM_UAT
  @EXARI-10713
  @US1131278
  @2018.PI03
  Scenario: US1131278 - View Contracts Associated to a Provider
    Given I am a User with access to view or modify Entity information
    When I view a Provider
    Then I can see all Contracts associated to the Provider
    And I can see all Interviews associated to the Provider

  @MVP
  @EXARI-10529
  @CLM_UAT
  @US858729
  @2018.PI03
  Scenario: US858729 - View Providers Associated to an Entity
    Given I am a User with access to view and maintain Entity information
    When I want to view Providers associated to an Entity
    Then I can find an Entity
    And I can view all Providers connected to that Entity

