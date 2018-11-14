# Last updated on 
@US1224873
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1224873 - Created NPI/TIN Relationship

  @TC565627
  @Automated
  @Functional
  Scenario: TC565627 - [RL0]
    Given I am the Entity Management Solution
    When an NPI relationship is created with that TIN in NDB
    And the TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the created NPI/TIN relationship is visible in the Entity Management Solution

