# Last updated on 
@US1094021
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1094021 - Capture Inactivate and Void Time Lining History

  @TC564816
  @Automated
  @Functional
  Scenario: TC564816 - [RL0]
    Given I am the Entity Management Solution
    When a User inactivates an Identifier
    And a User voids an Identifier
    Then I capture the User who performed the change
    And I capture the date and time of when the User inactivated or voided the Identifier

