# Last updated on 2018-06-07T21:32:43.560Z
@MVP
@Plus
@Priority_1
Feature: F137903 - Provide Entity Data

  @2018.PI03
  Scenario: US861058
    Given I am the Entity Management Solution
    When an Entity structure changes in the Entity Management Solution
    Then I made the updated Entity structure information available to consuming applications

  @2018.PI03
  Scenario: US861056
    Given I am the Entity Management Solution
    When Entity data is updated in the Entity Management Solution
    Then updated Entity data is made available to consuming applications

