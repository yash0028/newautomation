# Last updated on 
@MVP
@US1171457
@MVP
@Plus
@Priority_2
@F198810
@releaseUnknown
@iterationUnknown
Feature: US1171457 - Capture Time Lining History

  @TC565036
  @Automated
  @Functional
  @MVP
  @US1171457
  Scenario: TC565036 - [RL0]
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    And I update Tax ID Validation field values
    Then I capture the date and time of the update
    And I capture the User who performed the change
