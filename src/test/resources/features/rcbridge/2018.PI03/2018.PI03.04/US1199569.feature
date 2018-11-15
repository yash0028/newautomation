# Last updated on 
@US1199569
@2018.PI03
@2018.PI03.04
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1199569 - [Continued] Validate Data

  @TC615283
  @Manual
  @Functional
  Scenario: TC615283 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

  @TC615282
  @Manual
  @Functional
  Scenario: TC615282 - [RL0]
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546821
  @Manual
  @Functional
  Scenario: TC546821 - Validate Data_valid
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546822
  @Manual
  @Functional
  Scenario: TC546822 - Validate Data_Invalid file
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546823
  @Manual
  @Functional
  Scenario: TC546823 - Validate Data_Invalid data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

