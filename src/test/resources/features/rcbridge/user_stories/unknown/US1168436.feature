# Last updated on 
@MVP
@US1168436
@MVP
@Plus
@Priority_1
@F137660
Feature: US1168436 - Check for Contract Dependencies

  @TC565479
  @Automated
  @Functional
  @MVP
  @US1168436
  Scenario: TC565479 - [RL0]
    Given I am the Entity Management Solution
    When a User inactivates an Identifier relationship with an Entity
    Then I check for active contracts associated to the Entity associated to that Identifier

