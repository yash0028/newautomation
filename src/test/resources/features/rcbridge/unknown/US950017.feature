# Last updated on 
@US950017
@releaseUnknown
@iterationUnknown
Feature: US950017 - Void Identifier Relationship with Entity

  @TC564729
  @Automated
  @Functional
  Scenario: TC564729 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to void the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity
    And the relationship effective and expiration dates are NOT stored on either party to the relationship

