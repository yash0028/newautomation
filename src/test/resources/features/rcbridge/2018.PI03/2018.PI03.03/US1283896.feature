# Last updated on 
@US1283896
@2018.PI03
@2018.PI03.03
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
@releasePast
@iterationPast
Feature: US1283896 - [Unfinished] Validate Data

  @TC605404
  @Manual
  @Functional
  @US1283896
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605404 - [RL0]
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC605405
  @Manual
  @Functional
  @US1283896
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605405 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

