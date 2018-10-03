# Last updated on 
@MVP
@Plus
@US1098385
@2018.PI04
@MVP
@Parity
@F185543
Feature: US1098385 - Search & filter Exari database to identify target providers

  @TC565390
  @Automated
  @Functional
  @MVP
  @Plus
  @US1098385
  @2018.PI04
  Scenario: TC565390 - [RL0]
    Given I am a user with access to the Mass Actions UI
    When I want to identify target providers with Exari search functionality
    Then I can search Exari for providers that fit specific criteria
    And I can select multiple providers from the search output
    And target providers are scrubbed against integration points

