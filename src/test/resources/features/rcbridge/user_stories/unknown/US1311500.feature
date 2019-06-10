# Last updated on 
@US1311500
@2018.PI03.05
@releaseUnknown
@iterationUnknown
Feature: US1311500 - Cleanup RC-Link Test Cases

  @TC572220
  @Manual
  @Functional
  Scenario: TC572220 - [RL0] Verify cleanup of test cases
    Given RC-Link has been run
    And is automating creation of test-cases for acceptance criteria
    When duplicates are created
    And some test-cases are marked as "Automated" instead of "Manual"
    Then duplicates need to be removed
    And the stories marked incorrectly as "Automated" are changed to "Manual"

