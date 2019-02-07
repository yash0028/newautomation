# Last updated on 
@CMD
@US1518109
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1518109 - Identify contract master selection

  @TC693621
  @Manual
  @Functional
  @CMD
  Scenario: TC693621 - [RL0]
    Given multiple contract masters were found
    When the user selects a contract maser to be used
    And the user clicks "edit" to review the identified contract masters
    Then the selected contract master will be clearly identified on the listing of contract masters

