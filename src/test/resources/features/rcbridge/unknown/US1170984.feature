# Last updated on 
@MVP
@EXARI-11273
@US1170984
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1170984 - Capture Timeline History

  @TC565103
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  Scenario: TC565103 - [RL0]
    Given I am the Entity Management Solution
    When a User reactivates an Entity
    Then I capture the time and date of when the User reactivated the Entity
    And I capture the User who performed the change

