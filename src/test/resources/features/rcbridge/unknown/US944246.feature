# Last updated on
@MVP
@EXARI-11273
@US944246
@MVP
@Plus
@Priority_1
@F152967
@releaseUnknown
@iterationUnknown
Feature: US944246 - Capture Entity Inactivation Time Lining History

  @TC565782
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  @US944246
  Scenario: TC565782 - [RL0]
    Given I am the Entity Management Solution
    When A User inactivates an Entity
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated the Entity

