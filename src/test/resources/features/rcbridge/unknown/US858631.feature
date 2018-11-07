# Last updated on 
@MVP
@EXARI-11273
@US858631
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858631 - Capture Supplemental Detail Time Lining History

  @TC565800
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  Scenario: TC565800 - [RL0]
    Given I am the Entity Management Solution
    When A User adds a note to an Entity
    And a User updates a note on an Entity
    And a User adds an attachment to an Entity
    And User updates an attachment on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time of when the User performed the change

