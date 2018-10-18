# Last updated on
@US1089633
@F207077
@releaseUnknown
@iterationUnknown
Feature: US1089633 - Assign Owner to Identifier

  @TC565389
  @Automated
  @Functional
  @US1089633
  Scenario: TC565389 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to add an Owner to an Identifier
    Then I can access the Identifier
    And I can search for an Entity to establish as the new Owner
    And Entities matching my search are displayed
    And I can select an Entity from search results to establish as the new Owner
    And I can enter the effective date for the new Identifier Owner
    And Effective date can be in the future or retroactive
    And Standard field validation rules applied
    And An Identifier must only have one active Owner at a time
    And the updated Identifier enters the approval process workflow

