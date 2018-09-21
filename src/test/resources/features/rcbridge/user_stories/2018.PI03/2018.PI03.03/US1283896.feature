# Last updated on 
@US1283896
@2018.PI03
@2018.PI03.03
Feature: US1283896 - [Unfinished] Validate Data

  @TC564526
  @Automated
  @Functional
  Scenario: TC564526 - [RL0]
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC564527
  @Automated
  @Functional
  Scenario: TC564527 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

