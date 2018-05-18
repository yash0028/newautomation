# Last updated on 2018-05-17T20:12:41.664Z
@MVP
@Parity
Feature: F185543 - Refine the details of a Mass Action Project

  Scenario: US1098385
    Given I am a user with access to the Mass Actions UI
    When I want to identify target providers with Exari search functionality
    Then I can search Exari for providers that fit specific criteria
    Then And I can select multiple providers from the search output
    Then And target providers are scrubbed against integration points

  Scenario: US1098383
    Given I am a user with access to the Mass Actions UI
    When I have populated a mass actions template with target providers
    Then I can upload the Mass Action template/spreadsheet
    Then And target providers are scrubbed against integration points

  Scenario: US1098389
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values within the UI
    Then Exari will produce a list of available fields to update
    Then And the User can input target values

  Scenario: US1098563
    Given I have identified target providers for the Mass Action Project
    When I want to validate their readiness for update
    Then Exari will initiate validation checks against standard system integrations
    Then And Exari will derive status of included providers based on validation checks

  Scenario: US1100777
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values with a spreadsheet
    Then the User will be able to import a spreadsheet
    Then And the spreadsheet direction will be applied to impacted providers

