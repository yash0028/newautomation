# Last updated on 
@MVP
@EXARI-11273
@US1081001
@MVP
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1081001 - Capture Entity Time Lining History - Updated Entity

  @TC565780
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  Scenario: TC565780 - [RL0]
    Given I am the Entity Management solution
    When A User updates an Entity
    Then I store the previous value for the updated field
    And the current value for the updated field
    And the User who performed update
    And the Date and time when User performed update

