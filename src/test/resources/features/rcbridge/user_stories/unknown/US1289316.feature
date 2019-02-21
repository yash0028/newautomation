# Last updated on 
@CMD2
@A_UI_Story
@US1289316
@releaseUnknown
@iterationUnknown
Feature: US1289316 - View Contract Config Summary web page

  @TC616509
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC616509 - [RL0]
    Given an contract configuration summary record exists
    When a contract configuration request is initiated from within Exari
    Then a web page displaying the record is made available

  @TC616510
  @Manual
  @Functional
  @CMD2
  @A_UI_Story
  Scenario: TC616510 - [RL1]
    Given an contract configuration summary record does not exist
    When a contract configuration request is initiated from within Exari
    Then an error message is returned to the user
    And a web page is not made available

