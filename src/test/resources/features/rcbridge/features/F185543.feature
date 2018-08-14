# Last updated on 
@MVP
@Parity
@F185543
Feature: F185543 - Refine the details of a Mass Action Project

  @MVP
  @Plus
  @US1098385
  @2018.PI04
  Scenario: US1098385 - Search & filter Exari database to identify target providers
    Given I am a user with access to the Mass Actions UI
    When I want to identify target providers with Exari search functionality
    Then I can search Exari for providers that fit specific criteria
    And I can select multiple providers from the search output
    And target providers are scrubbed against integration points

  @MVP
  @Parity
  @US1098383
  @2018.PI04
  Scenario: US1098383 - Upload spreadsheet to identify target providers
    Given I am a user with access to the Mass Actions UI
    When I have populated a mass actions template with target providers
    Then I can upload the Mass Action template/spreadsheet
    And target providers are scrubbed against integration points

  @MVP
  @Plus
  @US1098389
  @2018.PI04
  Scenario: US1098389 - Specify transactions values via UI
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values within the UI
    Then Exari will produce a list of available fields to update
    And the User can input target values

  @MVP
  @Parity
  @US1183043
  @2018.PI04
  Scenario: US1183043 - View search results
    Given I have initiated a search within the Mass Actions widget
    When the search identifies providers/contracts that meet the provided criteria
    Then I can view all of the required data elements

  @MVP
  @Plus
  @US1098563
  @2018.PI04
  Scenario: US1098563 - Scrub impacted providers against integration points
    Given I have identified target providers for the Mass Action Project
    When I want to validate their readiness for update
    Then Exari will initiate validation checks against standard system integrations
    And Exari will derive status of included providers based on validation checks

  @MVP
  @Parity
  @US1183047
  @2018.PI04
  Scenario: US1183047 - Filter search results
    Given I have initiated a search within the Mass Actions widget
    When I have received the results of my search
    Then I will be able to filter the results
    And I will be able to sort the results

  @MVP
  @Parity
  @US1100777
  @2018.PI04
  Scenario: US1100777 - Specify transaction values via spreadsheet
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values with a spreadsheet
    Then the User will be able to import a spreadsheet
    And the spreadsheet direction will be applied to impacted providers

