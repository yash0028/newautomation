# Last updated on 
@kumar,_Sachin
@US1283914
@2018.PI03
@2018.PI03.03
Feature: US1283914 - [Unfinished] Validate Table data

  @TC564568
  @Automated
  @Functional
  Scenario: TC564568 - [RL0]
    Given a template has records populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC564569
  @Automated
  @Functional
  Scenario: TC564569 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

