# Last updated on 2018-06-15T14:57:25.347Z
@MVP
@Parity
Feature: F185543 - Configure - Refine the details of a Mass Action Project

  @2018.PI03
  Scenario: US1098385
    Given I am a user with access to the Mass Actions UI
    When I want to identify target providers with Exari search functionality
    Then I can search Exari for providers that fit specific criteria
    And I can select multiple providers from the search output
    And target providers are scrubbed against integration points

  @2018.PI03
  Scenario: US1098383
    Given I am a user with access to the Mass Actions UI
    When I have populated a mass actions template with target providers
    Then I can upload the Mass Action template/spreadsheet
    And target providers are scrubbed against integration points

  @2018.PI03
  Scenario: US1098389
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values within the UI
    Then Exari will produce a list of available fields to update
    And the User can input target values

  @2018.PI03
  Scenario: US1098563
    Given I have identified target providers for the Mass Action Project
    When I want to validate their readiness for update
    Then Exari will initiate validation checks against standard system integrations
    And Exari will derive status of included providers based on validation checks

  @2018.PI03
  Scenario: US1100777
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values with a spreadsheet
    Then the User will be able to import a spreadsheet
    And the spreadsheet direction will be applied to impacted providers

