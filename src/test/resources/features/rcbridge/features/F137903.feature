# Last updated on 
@MVP
@Plus
@Priority_1
@F137903
Feature: F137903 - Exari EM - Provide Entity Data

  @MVP
  @EXARI-11271
  @EXARI-8724
  @US861058
  Scenario: US861058 - Publish Events When Entity Structures Change
    Given I am the Entity Management Solution
    When an Entity structure changes in the Entity Management Solution
    Then I made the updated Entity structure information available to consuming applications

  @MVP
  @US861056
  Scenario: US861056 - Map Entity Data Elements for Downstream Consumption
    Given I am the Entity Management Solution
    When Entity data is updated in the Entity Management Solution
    Then updated Entity data is made available to consuming applications

