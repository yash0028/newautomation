# Last updated on 
@EXARI-11273
@US1170984
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1170984 - Capture Timeline History

  @TC565103
  @Automated
  @Functional
  @EXARI-11273
  Scenario: TC565103 - [RL0]
    Given I am the Entity Management Solution
    When a User reactivates an Entity
    Then I capture the time and date of when the User reactivated the Entity
    And I capture the User who performed the change

